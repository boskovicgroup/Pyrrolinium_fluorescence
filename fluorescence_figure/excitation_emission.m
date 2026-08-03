pmpp_emiss = table2array(readtable('pmpp_125uM_MeOH_scan_emiss'));
pmpp_exc = table2array(readtable('pmpp_125uM_MeOH_scan_exc'));

tmpp_emiss = table2array(readtable('tmpp_125uM_MeOH_scan_emiss'));
tmpp_exc = table2array(readtable('tmpp_125uM_MeOH_scan_exc'));

dmpp_emiss = table2array(readtable('dmpp_125uM_MeOH_scan_emiss'));
dmpp_exc = table2array(readtable('dmpp_125uM_MeOH_scan_exc'));


t1 = tiledlayout(3, 1,'TileSpacing','Compact');

tile1=nexttile;
plot(pmpp_emiss(:,1), pmpp_emiss(:,2), 'LineWidth',3);
hold on
plot(pmpp_exc(:,1), pmpp_exc(:,2), 'LineWidth',3);
xlim([200 525])
title('\textbf{1} $\cdot$ HClO$_4$ 125 $\mu$ M MeOH', 'FontSize', 18 ,'Interpreter','latex')


yyaxis right
% Stick spectrum
stem(349.4,0.8765,...
    'Color','k',...
    'LineStyle','-',...
    'Marker','none',...
    'LineWidth',2)
legend('$\lambda_{ex} = 310 nm$ ', '$\lambda_{em} = 360 nm$', 'Predicted emission','FontSize', 16 ,'Interpreter','latex')
set(gca, 'TickLabelInterpreter', 'latex')

tile2 = nexttile;
plot(dmpp_emiss(:,1), dmpp_emiss(:,2), 'LineWidth',3);
hold on
plot(dmpp_exc(:,1), dmpp_exc(:,2), 'LineWidth',3);
xlim([200 525])
title('\textbf{2} $\cdot$ HClO$_4$ 125 $\mu$ M MeOH', 'FontSize', 18 ,'Interpreter','latex')


yyaxis right
% Stick spectrum
stem(454.8,0.2434,...
    'Color','k',...
    'LineStyle','-',...
    'Marker','none',...
    'LineWidth',2)

legend('$\lambda_{ex} = 335 nm$ ', '$\lambda_{em} = 430 nm$', 'Predicted emission','FontSize', 16 ,'Interpreter','latex')
set(gca, 'TickLabelInterpreter', 'latex')
ylabel('oscillator strength', 'FontSize', 18 , 'Interpreter','latex')

tile3 = nexttile;
plot(tmpp_emiss(:,1), tmpp_emiss(:,2), 'LineWidth',3);
hold on
plot(tmpp_exc(:,1), tmpp_exc(:,2), 'LineWidth',3);
xlim([200 525])
title('$\textbf{3}$ $\cdot$ HClO$_4$ 125 $\mu$ M MeOH', 'FontSize', 18 ,'Interpreter','latex')

yyaxis right
stem(433.6, 0.2911,...
    'Color','k',...
    'LineStyle','-',...
    'Marker','none',...
    'LineWidth',2)
legend('$\lambda_{ex} = 320 nm $', '$\lambda_{em} = 435 nm$', 'predicted emission','FontSize', 16 ,'Interpreter','latex')


linkaxes([tile1, tile2, tile3], 'x');

xlabel(t1, 'wavelength / nm', 'FontSize',18, 'Interpreter','latex')
yyaxis left
ylabel(t1, {'fluorescence intensity / arb. u. '}, 'FontSize',18, 'Interpreter','latex')
set(gca, 'TickLabelInterpreter', 'latex')
