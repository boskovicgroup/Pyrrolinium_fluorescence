subplot(3,3,1)
x = [0.021 0.46];
y = [0.964 0.0246];
ylim([0 1]);
yneg = [0.024/2 0.012/2];
ypos = [0.024/2 0.012/2];
xneg = [0.001/2 0.31/2];
xpos = [0.001/2 0.31/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'O', 'MarkerFaceColor', 'b','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','lat');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{1} $\cdot$ HClO$_4$ in MeOH','Interpreter','latex')
xlim([-0.2 2]);


subplot(3,3,2)
x = [0.016 0.22];
y = [0.7348 0.264];
yneg = [0.005/2 0.005/2];
ypos = [0.005/2 0.005/2];
xneg = [0.002/2 0.01/2];
xpos = [0.002/2 0.01/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ro', 'MarkerFaceColor', 'r','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{2} $\cdot$ HClO$_4$ in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

subplot(3,3,3)
x = [0.24 0.74];
y = [0.85 0.14];
yneg = [0.04/2 0.039/2];
ypos = [0.04/2 0.039/2];
xneg = [0.017/2 0.0709/2];
xpos = [0.017/2 0.0709/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HClO$_4$ in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 1]);

subplot(3,3,4)
x = [0.39 1.73];
y = [0.1245 0.8755];
yneg = [0.00/2 0.00/2];
ypos = [0.00/2 0.00/2];
xneg = [0.01/2 0.00/2];
xpos = [0.01/2 0.00/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HClO$_4$ in benzene','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

subplot(3,3,5)
x = [0.2 0.41];
y = [0.81 0.1852];
yneg = [0.16/2 0.16/2];
ypos = [0.16/2 0.16/2];
xneg = [0.02/2 0.12/2];
xpos = [0.02/2 0.12/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HClO$_4$ in MeCN','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

subplot(3,3,6)
x = [0.35 0.95];
y = [0.3654 0.613];
yneg = [0.21/2 0.19/2];
ypos = [0.21/2 0.19/2];
xneg = [0.34/2 0.1/2];
xpos = [0.34/2 0.1/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HClO$_4$ in DMF','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

subplot(3,3,7)
x = [0.26 0.65];
y = [0.841 0.151];
yneg = [0.09/2 0.09/2];
ypos = [0.09/2 0.09/2];
xneg = [0.02/2 0.19/2];
xpos = [0.02/2 0.19/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HCl in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);
hold on
x1 = [0.29 0.77];
y1 = [0.916 0.081];
yneg1 = [0.07/2 0.07/2];
ypos1 = [0.07/2 0.07/2];
xneg1 = [0.02/2 0.21/2];
xpos1 = [0.02/2 0.21/2];
errorbar(x1, y1, yneg1, ypos1, xneg1, xpos1,'ko', 'MarkerFaceColor', 'r','MarkerSize', 6, 'CapSize',5);
legend('protonated', 'deuterated');

subplot(3,3,8)
x = [0.15 0.37];
y = [0.459 0.531];
yneg = [0.06/2 0.06/2];
ypos = [0.06/2 0.06/2];
xneg = [0.02/2 0.01/2];
xpos = [0.02/2 0.01/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'o', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HBr in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);

subplot(3,3,9)
x = [0.17 0.39];
y = [0.493 0.502];
yneg = [0.02/2 0.02/2];
ypos = [0.02/2 0.02/2];
xneg = [0.00/2 0.01/2];
xpos = [0.00/2 0.01/2];
errorbar(x ,y,yneg,ypos,xneg,xpos,'ko', 'MarkerFaceColor', 'k','MarkerSize', 10, 'CapSize',5);
ylabel('fraction', 'Interpreter','latex');
xlabel('lifetime [ns]', 'Interpreter','latex')
title('\textbf{3} $\cdot$ HOTf in MeOH','Interpreter','latex')
ylim([0 1]);
xlim([-0.2 2]);