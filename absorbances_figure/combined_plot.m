%% mono methoxy
subplot(3,1,1)
plot(wavelengths1, e, 'LineWidth',2);
xlim([200 450])
ylim([0 25000])
xlabel('wavelength [nm]', Interpreter='latex')
ylabel({'molar absorptivity'  '$[M^{-1}cm^{-1}]$'}, Interpreter='latex')
title('Absorptions of \textbf{1} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
legend boxoff
hold on


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


plot(x, spectrum*max(e), 'LineWidth', 2, 'Color', 'r');
xlim([200 450])

legend('experimental' , 'predicted',  Interpreter='latex');
legend boxoff

%% dimethoxy
subplot(3,1,2)
plot(wavelengths2, e2, 'LineWidth',2);
xlim([200 450])
ylim([0 25000])
xlabel('wavelength [nm]', Interpreter='latex')
ylabel({'molar absorptivity'  '$[M^{-1}cm^{-1}]$'}, Interpreter='latex')
title('Absorptions of \textbf{2} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
legend boxoff
hold on

ws = [335.24 301.15]; 
osc_strengths = [0.355779 0.331913]; 
sigma = 13; % Broadening factor

% 2. Create wavelength range for plotting
x = min(ws)-50 : 0.1 : max(ws)+50;
spectrum = zeros(size(x));

% 3. Calculate Gaussian Broadening
for i = 1:length(ws)
    spectrum = spectrum + osc_strengths(i) * exp(-(x - ws(i)).^2 / (2 * sigma^2));
end

% 4. Plot
plot(x, spectrum*max(e), 'LineWidth', 2, 'Color', 'r');
xlim([200 450])

legend('experimental' , 'predicted',  Interpreter='latex');
legend boxoff


%% trimethoxy
subplot(3,1,3)
plot(wavelengths3, e3, 'LineWidth',2);
xlim([200 450])
ylim([0 25000])
xlabel('wavelength [nm]', Interpreter='latex')
ylabel({'molar absorptivity'  '$[M^{-1}cm^{-1}]$'}, Interpreter='latex')
title('Absorptions of \textbf{3} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
legend boxoff
hold on

ws = [328.48 321.4]; 
osc_strengths = [0.541964 0.02117]; 
sigma = 20; % Broadening factor

% 2. Create wavelength range for plotting
x = min(ws)-50 : 0.1 : max(ws)+50;
spectrum = zeros(size(x));

% 3. Calculate Gaussian Broadening
for i = 1:length(ws)
    spectrum = spectrum + osc_strengths(i) * exp(-(x - ws(i)).^2 / (2 * sigma^2));
end

% 4. Plot
plot(x, spectrum*20000, 'LineWidth', 2, 'Color', 'r');
xlim([200 450])

legend('experimental' , 'predicted',  Interpreter='latex');
legend boxoff
