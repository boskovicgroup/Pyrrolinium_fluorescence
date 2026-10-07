t = tiledlayout(3,3,'TileSpacing','Compact');
nexttile
x = [0.021 0.46];
y = [0.964 0.0246];
ylim([0 1]);
yneg = [0.024 0.012];
ypos = [0.024 0.012];
xneg = [0.001 0.31];
xpos = [0.001 0.31];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'b','MarkerSize', 10, 'CapSize',5);
text(0.021, 0.85, '0.02 (0.96)', 'Interpreter','latex')
text(0.5, 0.15, '0.46 (0.03)', 'Interpreter','latex')
yline(0.5, 'LineStyle',':')
title('\textbf{1} -- HClO$_4$ in MeOH','Interpreter','latex')
xlim([-0.2 2]);


nexttile
x = [0.016 0.22];
y = [0.7348 0.264];
yneg = [0.005 0.005];
ypos = [0.005 0.005];
xneg = [0.002 0.01];
xpos = [0.002 0.01];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'r','MarkerSize', 10, 'CapSize',5);
text(0.016, 0.85, '0.02 (0.74)', 'Interpreter','latex')
text(0.22, 0.37, '0.22 (0.26)', 'Interpreter','latex')
yline(0.5, 'LineStyle',':')

title('\textbf{2} -- HClO$_4$ in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

nexttile
x = [0.24 0.74];
y = [0.85 0.14];
yneg = [0.04 0.039];
ypos = [0.04 0.039];
xneg = [0.017 0.0709];
xpos = [0.017 0.0709];
errorbar(x ,y,yneg,ypos,xneg,xpos,'wo', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.34, 0.85, '0.24 (0.85)', 'Interpreter','latex')
text(0.74, 0.22, '0.74 (0.14)', 'Interpreter','latex')
yline(0.5, 'LineStyle',':')

title('\textbf{3} -- HClO$_4$ in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

nexttile
x = [0.39 1.73];
y = [0.1245 0.8755];
yneg = [0.00 0.00];
ypos = [0.00 0.00];
xneg = [0.01 0.00];
xpos = [0.01 0.00];
errorbar(x ,y,yneg,ypos,xneg,xpos,'wo', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.39, 0.23, '0.39 (0.13)', 'Interpreter','latex')
text(1.4, 0.65, {'1.73', '(0.87)'}, 'Interpreter','latex')
yline(0.5, 'LineStyle',':')

title('\textbf{3} -- HClO$_4$ in benzene','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

nexttile
x = [0.2 0.41];
y = [0.81 0.1852];
yneg = [0.16 0.16];
ypos = [0.16 0.16];
xneg = [0.02 0.12];
xpos = [0.02 0.12];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.32, 0.81, '0.2 (0.81)', 'Interpreter','latex')
text(0.55, 0.18, '0.41 (0.18)', 'Interpreter','latex')
yline(0.5, 'LineStyle',':')

title('\textbf{3} -- HClO$_4$ in MeCN','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

nexttile
x = [0.35 0.95];
y = [0.3654 0.613];
yneg = [0.21 0.19];
ypos = [0.21 0.19];
xneg = [0.34 0.1];
xpos = [0.34 0.1];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.50, 0.28, '0.35 (0.37)', 'Interpreter','latex')
text(1.11, 0.62, {'0.95' '(0.61)'}, 'Interpreter','latex')
yline(0.5, 'LineStyle',':')

title('\textbf{3} -- HClO$_4$ in DMF','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

nexttile
x = [0.26 0.65];
y = [0.841 0.151];
yneg = [0.09 0.09];
ypos = [0.09 0.09];
xneg = [0.02 0.19];
xpos = [0.02 0.19];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.2, 0.6, {'0.26' '(0.84)'}, 'Interpreter','latex')
text(0.65, 0.30, '0.65 (0.15)', 'Interpreter','latex')

title('\textbf{3} -- HCl (DCl) in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);
hold on
x1 = [0.29 0.77];
y1 = [0.916 0.081];
yneg1 = [0.07 0.07];
ypos1 = [0.07 0.07];
xneg1 = [0.02 0.21];
xpos1 = [0.02 0.21];
errorbar(x1, y1, yneg1, ypos1, xneg1, xpos1,'ko', 'MarkerFaceColor', 'r','MarkerSize', 6, 'CapSize',5);
legend('protonated', 'deuterated');
yline(0.5, 'LineStyle',':','HandleVisibility','off')

nexttile
x = [0.15 0.37];
y = [0.459 0.531];
yneg = [0.06 0.06];
ypos = [0.06 0.06];
xneg = [0.02 0.01];
xpos = [0.02 0.01];
errorbar(x ,y,yneg,ypos,xneg,xpos,'wo', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.15, 0.35, '0.15 (0.46)', 'Interpreter','latex')
text(0.5, 0.55, '0.37 (0.53)', 'Interpreter','latex')
yline(0.5, 'LineStyle',':')

title('\textbf{3} -- HBr in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

nexttile
x = [0.17 0.39];
y = [0.493 0.502];
yneg = [0.02 0.02];
ypos = [0.02 0.02];
xneg = [0.00 0.01];
xpos = [0.00 0.01];
errorbar(x ,y,yneg,ypos,xneg,xpos,'wo', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
text(0.15, 0.35, '0.17 (0.49)', 'Interpreter','latex')
text(0.41, 0.60, '0.39 (0.50)', 'Interpreter','latex')

title('\textbf{3} -- HOTf in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);
yline(0.5, 'LineStyle',':')

ylabel(t, 'fraction', 'FontSize', 14, 'Interpreter','latex');
xlabel(t, 'lifetime / ns', 'FontSize', 14, 'Interpreter','latex')
title(t, 'Lifetimes of fluorescence decay', 'FontSize', 18, 'Interpreter', 'latex')