%% mono methoxy experimental
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

%%
subplot(3,1,1)
yyaxis left
plot(wavelengths1, e, 'LineWidth',2);
xlim([200 450])
ylim([0 27000])
% xlabel('wavelength [nm]', Interpreter='latex')
% ylabel({'molar absorptivity'  '$[M^{-1}cm^{-1}]$'}, Interpreter='latex')
title('\textbf{1} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
legend boxoff
hold on


%% TD-DFT data
lambda = [305.60, 281.07, 232.15, 216.00, 208.04, ...
          204.78, 196.95, 193.36, 191.93, 187.11];

f = [0.7075, 0.0135, 0.0950, 0.1032, 0.0002, ...
     0.0017, 0.0928, 0.2087, 0.0202, 0.0001];

%% Constant-energy Gaussian broadening
FWHM_E = 0.3;                         % eV
sigma_E = FWHM_E/(2*sqrt(2*log(2)));

% Wavelength grid for plotting
x = linspace(200,450,4000);

% Convert wavelength grid to energy
Egrid = 1239.841984 ./ x;

% Convert excitation wavelengths to energies
E = 1239.841984 ./ lambda;

% Construct spectrum in energy space
y = zeros(size(Egrid));

for i = 1:length(E)
    y = y + f(i) .* exp(-(Egrid-E(i)).^2/(2*sigma_E^2));
end

% Normalize
y = y/max(y);

%% Plot
subplot(3,1,1)
yyaxis right
plot(x,y,'LineWidth',2)
hold on

% Stick spectrum
stem(lambda,f/max(f)*0.9,...
    'Color',[0.7 0 0],...
    'LineStyle','-',...
    'Marker','none',...
    'LineWidth',1.5)

set(gca,'FontSize',14,'LineWidth',1.2)

xlim([200 450])
ylim([-0.1 1.1])
box on

legend('experimental','simulated','oscillator strength',...
       'Interpreter','latex');
legend boxoff

%% dimethoxy
%% import data
data = readtable("mbg_2_134_dmppp.csv");

%% data modification
wavelengths2 = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 10:-2:2));
c= fliplr([0.7e-5 1.5e-5 3.1e-5 6.2e-5 120e-6]);
% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e2 = a*pinv(c);

subplot(3,1,2)
yyaxis left
plot(wavelengths2, e2, 'LineWidth',2);
xlim([200 450])
ylim([0 25000])
ylabel({'$\epsilon / M^{-1}cm^{-1}$'}, Interpreter='latex')
title('\textbf{2} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
legend boxoff
hold on

lambda2 = [315.80, 291.36, 269.65, 233.06, 216.34, ...
              207.91, 207.40, 206.86, 198.90, 196.97];   % nm
f2 = [0.5334, 0.1492, 0.0005, 0.1263, 0.1172, ...
              0.0081, 0.0027, 0.0025, 0.3394, 0.0037];

%% Constant-energy Gaussian broadening

FWHM_E = 0.3;                         % eV
sigma_E = FWHM_E/(2*sqrt(2*log(2)));

x2 = linspace(200,450,4000);

% Convert wavelength grid to energy
Egrid2 = 1239.841984 ./ x2;

% Convert transitions to energy
E2 = 1239.841984 ./ lambda2;

% Construct spectrum in energy space
y2 = zeros(size(Egrid2));

for i = 1:length(E2)
    y2 = y2 + f2(i) .* ...
        exp(-(Egrid2-E2(i)).^2/(2*sigma_E^2));
end

% Normalize
y2 = y2/max(y2);

%% Plot
subplot(3,1,2)
yyaxis right
plot(x2,y2,'LineWidth',2)
ylabel('simulated absorbance', 'FontSize', 30 , 'Interpreter','latex')

hold on

stem(lambda2,f2/max(f2)*0.9,...
    'Color',[0.7 0 0],...
    'LineStyle','-',...
    'Marker','none',...
    'LineWidth',1.5)

set(gca,'FontSize',14,'LineWidth',1.2)

xlim([200 450])
ylim([-0.1 1.1])
box on

legend('experimental','simulated','oscillator strength',...
       'Interpreter','latex');
legend boxoff

%% trimethoxy
%% import data
data = readtable("mbg_2_tmppp.csv");

%% data modification
wavelengths3 = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 10:-2:2));
c= fliplr([0.7e-5 1.5e-5 3.1e-5 6.2e-5 120e-6]);
% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e3 = a*pinv(c);

subplot(3,1,3)
yyaxis left
plot(wavelengths3, e3, 'LineWidth',2);
xlim([200 450])
ylim([0 25000])
xlabel('$\lambda /nm$ ', Interpreter='latex')
title('\textbf{3} $\cdot$ HClO$_4$ in MeCN', Interpreter='latex')
hold on


lambda3 = [321.09, 312.91, 277.52, 265.79, 234.39, ...
              220.39, 210.88, 209.90, 209.44, 205.41];   % nm
f3 = [0.5450, 0.0630, 0.0214, 0.0009, 0.1260, ...
              0.1770, 0.0257, 0.0379, 0.0108, 0.1911];
%% Constant-energy Gaussian broadening

FWHM_E = 0.3;                         % eV
sigma_E = FWHM_E/(2*sqrt(2*log(2)));

x3 = linspace(200,450,4000);

% Convert wavelength grid to energy
Egrid3 = 1239.841984 ./ x3;

% Convert transitions to energy
E3 = 1239.841984 ./ lambda3;

% Construct spectrum in energy space
y3 = zeros(size(Egrid3));

for i = 1:length(E3)
    y3 = y3 + f3(i) .* ...
        exp(-(Egrid3-E3(i)).^2/(2*sigma_E^2));
end

% Normalize
y3 = y3/max(y3);

%% Plot
subplot(3,1,3)
yyaxis right
plot(x3,y3,'LineWidth',2)
hold on

stem(lambda3,f3/max(f3)*0.9,...
    'Color',[0.7 0 0],...
    'LineStyle','-',...
    'Marker','none',...
    'LineWidth',1.5)

set(gca,'FontSize',14,'LineWidth',1.2)

xlim([200 450])
ylim([-0.1 1.1])
box on

legend('experimental','simulated','oscillator strength',...
       'Interpreter','latex');
legend boxoff
xticks(angles)