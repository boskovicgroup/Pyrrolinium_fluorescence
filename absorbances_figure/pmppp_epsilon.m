%% import data
data = readtable("pmppp_mecn.csv");

%% data modification
wavelengths1 = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 10:2:16));
c= [6.2e-5 3.1e-5 1.5e-5 0.7e-5];

% compute extinction coefficients
epsilon1= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);


%% plotting
subplot(3,1,1)
plot(wavelengths, a, 'LineWidth',2);
xlabel('wavelength [$nm$]', Interpreter='latex')
ylabel('absorption [a.u.]', Interpreter='latex')
legend('$62 \mu M$', '$31 \mu M$', '$15 \mu M$', '$7.0 \mu M$', Interpreter='latex')
legend boxoff
title('Absorptions of \textbf{1} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
xlim([200 450])
ylim([0 2])


subplot(3,1,2)
plot(wavelengths, e, 'LineWidth',2);
xlim([200 450])
ylim([0 30000])
xlabel('wavelength [nm]', Interpreter='latex')
ylabel({'molar absorptivity'  '$[M^{-1}cm^{-1}]$'}, Interpreter='latex')
legend('experimental spectrum', Interpreter='latex')
legend boxoff

%% predicted
% 1. Sample Data (Wavelength in nm, Oscillator Strength)
ws = [309.36 284.58]; 
osc_strengths = [0.706181 0.014944]; 
sigma = 13; % Broadening factor

% 2. Create wavelength range for plotting
x = min(ws)-50 : 0.1 : max(ws)+50;
spectrum = zeros(size(x));

% 3. Calculate Gaussian Broadening
for i = 1:length(ws)
    spectrum = spectrum + osc_strengths(i) * exp(-(x - ws(i)).^2 / (2 * sigma^2));
end

% 4. Plot
subplot(3,1,3)
plot(x, spectrum, 'LineWidth', 2, 'Color', 'r');
xlim([200 450])
ylim([0 max(spectrum)+0.1*max(spectrum)])
xlabel('wavelength [nm]', Interpreter='latex');
ylabel('intensity', Interpreter='latex');
legend('predicted spectrum',  Interpreter='latex');
legend boxoff

