%% VILNIUS TECH EF - Script programming - 2026
% 4 laboratory work - Preparation of 3D graphics
% Variant 5
% Student: Danielius Dubinskas
% Group: EDIfu/25-2

clear;
clc;
close all;

x = (-1 : 2/199 : 1) * sqrt(pi/2);
y = (-1 : 2/199 : 1) * sqrt(pi/2);

[X, Y] = meshgrid(x, y);
Z = sin(X.^2 + Y.^2);

figure('Name','Variant 5 - Task 1a');
surf(X, Y, Z);
shading interp;
colormap parula;
view(50, 50);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin(x^2 + y^2)');
grid on;

x = -2:0.05:1;
y = -2:0.05:1;

[X, Y] = meshgrid(x, y);
Z = 1 - 2*X.^2 - 3*Y.^2;

figure('Name','Variant 5 - Task 1b');
surf(X, Y, Z);
shading interp;
colormap turbo;
view(60, 60);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
grid on;

%% Complementary task.
x = -1:0.05:1;
y = -1:0.05:1;

[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);

figure('Name','Variant 5 - Complementary Task');
h = surf(X, Y, Z);
h.FaceColor = 'blue';
h.EdgeColor = 'none';
alpha(h, 0.55);

xlabel('x');
ylabel('y');
zlabel('z(x,y)');
title('z(x,y) = 1 - (x^2 + y^2)');
grid on;
view(50, 50);
