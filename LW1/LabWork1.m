% LW1_DanieliusDubinskas.m
% Name: Danielius
% Surname: Dubinskas
% Group: EDIfu25-2
% Date: 2026-09-14

%% Mandatory task

x = 1:32;
y = x.^2;

plot(x, y, 'r--', 'LineWidth', 1.5);
title('My function');
xlabel('x');
ylabel('y = x^2');
legend('y = x^2');

%% Complementary task

N = 5;

v = N+1:0.5:N+4;

A = reshape(N:N+8, 3, 3).';

a = A(3,2);

b = A(2:3,1:2);

c = A([1 3],[1 3]);

v_modified = v(1:3);

A_concatenated = [A; v_modified];

% Display results

disp('N =');
disp(N);

disp('Vector v =');
disp(v);

disp('Matrix A =');
disp(A);

disp('a) Selected elements =');
disp(a);

disp('b) Selected elements =');
disp(b);

disp('c) Selected elements =');
disp(c);

disp('Modified vector =');
disp(v_modified);

disp('A concatenated with modified vector =');
disp(A_concatenated);