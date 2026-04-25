pmpp_emiss = table2array(readtable('pmpp_125uM_MeOH_scan_emiss'));
pmpp_exc = table2array(readtable('pmpp_125uM_MeOH_scan_exc'));

tmpp_emiss = table2array(readtable('tmpp_125uM_MeOH_scan_emiss'));
tmpp_exc = table2array(readtable('tmpp_125uM_MeOH_scan_exc'));

dmpp_emiss = table2array(readtable('dmpp_125uM_MeOH_scan_emiss'));
dmpp_exc = table2array(readtable('dmpp_125uM_MeOH_scan_exc'));



subplot(3,1,1)
plot(pmpp_emiss(:,1), pmpp_emiss(:,2), 'LineWidth',3);
hold on
plot(pmpp_exc(:,1), pmpp_exc(:,2), 'LineWidth',3);
xlim([200 600])
legend('$\lambda_{ex} = 310 nm$ ', '$\lambda_{em} = 360 nm$', 'Interpreter','latex')
title('\textbf{1} $\cdot$ HClO$_4$ 125 $\mu$ M MeOH', 'Interpreter','latex')
xlabel('wavelength, [nm]', 'Interpreter','latex')
ylabel({'fluorescence';'intensity'}, 'Interpreter','latex')

subplot(3,1,2)
plot(dmpp_emiss(:,1), dmpp_emiss(:,2), 'LineWidth',3);
hold on
plot(dmpp_exc(:,1), dmpp_exc(:,2), 'LineWidth',3);
xlim([200 600])
legend('$\lambda_{ex} = 335 nm$ ', '$\lambda_{em} = 430 nm$', 'Interpreter','latex')
title('\textbf{2} $\cdot$ HClO$_4$ 125 $\mu$ M MeOH', 'Interpreter','latex')
xlabel('wavelength, [nm]', 'Interpreter','latex')
ylabel({'fluorescence';'intensity'}, 'Interpreter','latex')


subplot(3,1,3)
plot(tmpp_emiss(:,1), tmpp_emiss(:,2), 'LineWidth',3);
hold on
plot(tmpp_exc(:,1), tmpp_exc(:,2), 'LineWidth',3);
xlim([200 600])
legend('$\lambda_{ex} = 320 nm $', '$\lambda_{em} = 435 nm$', 'Interpreter','latex')
title('$\textbf{3}$ $\cdot$ HClO$_4$ 125 $\mu$ M MeOH', 'Interpreter','latex')
xlabel('wavelength, [nm]', 'Interpreter','latex')
ylabel({'fluorescence';'intensity'}, 'Interpreter','latex')
