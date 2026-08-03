"""
Parse Gaussian .log scan files and extract excited state and geometry data.

For each stationary point found (convergence marker), extracts:
- Dihedral angle D(5,4,16,18)
- Excited State 1 energy (eV), wavelength (nm), oscillator strength
- Total energy E(TD-HF/TD-DFT)
- Ground state energy E(RB3LYP)

Outputs to CSV format.
"""

import re
import os
import glob
import csv
from pathlib import Path


def parse_gaussian_log(filename):
    """
    Parse a Gaussian .log file and extract data at each stationary point.
    
    The excited state and energy data PRECEDES the "Stationary point found" line,
    so we look backwards from each convergence point.
    
    Returns:
        list of dict: Each dict contains data for one stationary point convergence
    """
    results = []
    
    with open(filename, 'r') as f:
        content = f.read()
    
    # Find all "Stationary point found" positions
    stationary_pattern = r'-- Stationary point found\.'
    stationary_matches = list(re.finditer(stationary_pattern, content))
    
    for i, stat_match in enumerate(stationary_matches):
        data = {}
        
        # Get the position of this stationary point
        stat_pos = stat_match.start()
        
        # Get the position of the next stationary point (or end of file)
        if i + 1 < len(stationary_matches):
            next_stat_pos = stationary_matches[i + 1].start()
        else:
            next_stat_pos = len(content)
        
        # Look in the section from this stationary point to the next
        section = content[stat_pos:next_stat_pos]
        
        # Also look in the preceding section for excited state data
        if i > 0:
            prev_stat_pos = stationary_matches[i - 1].start()
        else:
            prev_stat_pos = 0
        
        preceding_section = content[prev_stat_pos:stat_pos]
        
        # Extract dihedral D(5,4,16,18) from optimized parameters table
        # Look in current section after "Stationary point found"
        # Pattern: ! D26   D(5,4,16,18)           value         -DE/DX = ...
        dihedral_pattern = r'!\s*D26\s+D\(5,4,16,18\)\s+([-\d.]+)'
        dihedral_match = re.search(dihedral_pattern, section)
        if dihedral_match:
            data['dihedral_D5416'] = float(dihedral_match.group(1))
        else:
            data['dihedral_D5416'] = None
        
        # Look for Excited State 1 info in the PRECEDING section
        # We want the LAST (most recent) excited state before the stationary point
        # Pattern: Excited State   1:      Singlet-A      X.XXXX eV  XXX.XX nm  f=X.XXXX  <S**2>=0.000
        excited_pattern = r'Excited State\s+1:.*?(\d+\.\d+)\s+eV\s+([\d.]+)\s+nm\s+f=([\d.]+)'
        excited_matches = list(re.finditer(excited_pattern, preceding_section, re.DOTALL))
        if excited_matches:
            # Get the LAST excited state match in the preceding section
            excited_match = excited_matches[-1]
            data['excited_energy_ev'] = float(excited_match.group(1))
            data['wavelength_nm'] = float(excited_match.group(2))
            data['oscillator_strength'] = float(excited_match.group(3))
        else:
            data['excited_energy_ev'] = None
            data['wavelength_nm'] = None
            data['oscillator_strength'] = None
        
        # Extract total energy E(TD-HF/TD-DFT) - in the preceding section
        # Get the LAST occurrence (most recent)
        total_energy_pattern = r'Total Energy, E\(TD-HF/TD-DFT\)\s+=\s+([-\d.]+)'
        total_energy_matches = list(re.finditer(total_energy_pattern, preceding_section))
        if total_energy_matches:
            data['total_energy_td_dft'] = float(total_energy_matches[-1].group(1))
        else:
            data['total_energy_td_dft'] = None
        
        # Extract ground state energy E(RB3LYP) - look in preceding section
        scf_pattern = r'SCF Done:\s+E\(RB3LYP\)\s+=\s+([-\d.]+)'
        scf_matches = list(re.finditer(scf_pattern, preceding_section))
        
        if scf_matches:
            # Get the LAST SCF energy in the preceding section
            data['b3lyp_energy'] = float(scf_matches[-1].group(1))
        else:
            data['b3lyp_energy'] = None
        
        results.append(data)
    
    return results


def process_all_logs(directory='.', output_csv='scan_results.csv'):
    """
    Process all .log files in the directory and write results to CSV.
    
    Args:
        directory: Directory containing .log files (default: current directory)
        output_csv: Output CSV filename
    """
    log_files = sorted(glob.glob(os.path.join(directory, '*.log')))
    
    if not log_files:
        print(f"No .log files found in {directory}")
        return
    
    all_results = []
    
    for log_file in log_files:
        print(f"Processing {os.path.basename(log_file)}...")
        results = parse_gaussian_log(log_file)
        
        for i, data in enumerate(results):
            result = {
                'filename': os.path.basename(log_file),
                'point': i + 1,
                'dihedral_D(5,4,16,18)_deg': data.get('dihedral_D5416'),
                'excited_state_1_energy_eV': data.get('excited_energy_ev'),
                'wavelength_nm': data.get('wavelength_nm'),
                'oscillator_strength': data.get('oscillator_strength'),
                'total_energy_TD_DFT_au': data.get('total_energy_td_dft'),
                'E_RB3LYP_au': data.get('b3lyp_energy'),
            }
            all_results.append(result)
    
    # Write to CSV
    if all_results:
        keys = all_results[0].keys()
        with open(output_csv, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=keys)
            writer.writeheader()
            writer.writerows(all_results)
        print(f"\nResults written to {output_csv}")
        print(f"Total data points extracted: {len(all_results)}")
    else:
        print("No results to write.")


if __name__ == '__main__':
    # Change to the scan-plots directory if needed
    import sys
    
    if len(sys.argv) > 1:
        directory = sys.argv[1]
    else:
        directory = '.'
    
    if len(sys.argv) > 2:
        output_csv = sys.argv[2]
    else:
        output_csv = 'scan_results.csv'
    
    process_all_logs(directory, output_csv)
