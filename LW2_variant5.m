%% LW2 - Script programming - Variant 5
% Application of elementary functions and matrix operations

clc;
clear;
close all;

%% 1. Vectors

% 1a) Column vector from -2*pi to 2*pi with pi/4 step
v1 = (-2*pi : pi/4 : 2*pi).';

% 1b) Tangent of every element
v2 = tan(v1);

% 1c) Element-by-element division of the first vector by the second
v3 = v1 ./ v2;

disp('1a) First vector v1:');
disp(v1);

disp('1b) Second vector v2 = tan(v1):');
disp(v2);

disp('1c) Third vector v3 = v1 ./ v2:');
disp(v3);


%% 2. Matrices

% 2a) Create matrix Z with 6 elements (2x3)
Z = randn(2, 3);

% 2b) Transpose matrix Z
ZT = Z.';

% 2c) Create matrix A with 3 elements and join it with ZT
A = randn(3, 1);
M = [ZT A];

% 2d) Calculate determinant
detM = det(M);

disp('2a) Matrix Z:');
disp(Z);

disp('2b) Transposed matrix ZT:');
disp(ZT);

disp('2c) Matrix A:');
disp(A);

disp('2c) Joined matrix M = [ZT A]:');
disp(M);

disp('2d) Determinant of M:');
disp(detM);


%% 3. Practical applications

% Given data
t = 0 : 0.005 : 2;
A_signal = 6;       
f = 2;              
sigma = 1.5;        
U1 = 4;             
U2 = 2;             

s = A_signal * cos(2*pi*f*t);
n = sigma * randn(size(t));
S = s + n;

% 3a) Select samples exceeding voltage threshold U1
selected_samples = S(abs(S) > U1);

% 3b) Filter signal: values with absolute value below U2 become zero
S_filtered = S;
S_filtered(abs(S_filtered) < U2) = 0;

% 3c) Number of samples in the unfiltered signal
number_unfiltered = numel(S);

% 3d) Number of samples selected in part 3a
number_selected = numel(selected_samples);

% 3e) Minimum and maximum values of the filtered signal
minimum_filtered = min(S_filtered);
maximum_filtered = max(S_filtered);

disp('3a) Samples exceeding U1:');
disp(selected_samples);

fprintf('3c) Number of samples in unfiltered signal: %d\n', ...
    number_unfiltered);

fprintf('3d) Number of selected samples: %d\n', ...
    number_selected);

fprintf('3e) Minimum value of filtered signal: %.4f V\n', ...
    minimum_filtered);

fprintf('3e) Maximum value of filtered signal: %.4f V\n', ...
    maximum_filtered);


%% Optional plots

figure;
plot(t, S);
grid on;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Noisy signal S(t)');

figure;
plot(t, S_filtered);
grid on;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Filtered signal');
