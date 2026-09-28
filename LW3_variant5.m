%% 3 Laboratory Work - Preparation of 2D graphics
% Variant 5
% Figures 1-4

clear;
clc;
close all;

x1 = 0:0.5:2*pi;
y1 = sin(x1) + cos(x1).^2;

figure(1);
plot(x1, y1, 'ro', ...
    'MarkerFaceColor', 'y', ...
    'MarkerSize', 7);

grid on;
xlabel('x');
ylabel('f(x)');
title('f(x) = sin(x) + cos^2(x)');
legend('f(x) = sin(x) + cos^2(x)', 'Location', 'best');

xlim([min(x1) max(x1)]);
ylim([min(y1) max(y1)]);


x2 = linspace(0, 1, 200);

f1 = x2.^exp(1);
f2 = x2.^(2*exp(1));
f3 = x2.^(3*exp(1));

figure(2);

plot(x2, f1, 'LineWidth', 1.5);
hold on;
plot(x2, f2, 'LineWidth', 1.5);
plot(x2, f3, 'LineWidth', 1.5);
hold off;

grid on;
xlabel('x');
ylabel('f(x)');
title('Functions x^e, x^{2e}, x^{3e}');
legend('x^e', 'x^{2e}', 'x^{2e}', 'Location', 'best');

xlim([0 1]);
ylim([0 1]);



x3 = -2*pi:0.5:2*pi;
y3 = x3.^3 + sin(x3);


figure(3);

stem(x3, y3, 'LineWidth', 1);

hold on;
plot([-2*pi 2*pi], [0 0], 'k-', 'LineWidth', 1);
hold off;

grid on;
xlabel('x');
ylabel('y');
title('y(x) = x^3 + sin(x)');

xlim([-2*pi 2*pi]);
ylim([min(y3)-5 max(y3)+5]);



figure(4);

bar(x3, y3);

grid on;
xlabel('x');
ylabel('y(x)');
title('y(x) = x^3 + sin(x)');

xlim([-2*pi 2*pi]);
ylim([min(y3)-5 max(y3)+5]);


