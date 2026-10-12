%% Laboratory Work 5 - Data structures and operation flow control

clc;
clear;
format compact;

%% Mandatory Task 1 - Data structures

studentCell = {'Danielius', 'Dubinskas', 'Vilnius'};
fieldNames = {'name', 'surname', 'address'};

studentStruct = cell2struct(studentCell, fieldNames, 2);

disp('--- Mandatory Task 1: Student structure ---');
disp(studentStruct);

if isstruct(studentStruct)
    disp('Validation: studentStruct is a structure.');
else
    disp('Validation: studentStruct is not a structure.');
end

%% Mandatory Task 2 - Operation flow control

disp('--- Mandatory Task 2: De Moivre formula ---');
disp('Enter x = 0 and y = 0 to stop.');

while true
    x = input('Enter x: ');
    y = input('Enter y: ');

    if x == 0 && y == 0
        disp('Program stopped.');
        break;
    end

    if ~isscalar(x) || ~isscalar(y) || ~isreal(x) || ~isreal(y) || ...
            ~isfinite(x) || ~isfinite(y)
        disp('Please enter finite real scalar numbers.');
        continue;
    end

    if x == 0
        
        b = atan2(y, x);
    else
       
        b = atan2(y, x);
    end

    n = (1:10).';
    leftSide = (cos(b) + 1i * sin(b)).^n;
    rightSide = cos(n * b) + 1i * sin(n * b);
    difference = leftSide - rightSide;

    resultsTable = table(leftSide, rightSide, difference, ...
        'VariableNames', {'LeftSide', 'RightSide', 'Difference'});

    disp(resultsTable);
end

%% Complementary Task - 20 matrix iterations

disp('--- Complementary Task: 20 matrix iterations ---');

for k = 1:20
    fprintf('Iteration %d of 20\n', k);

    x = input('Enter number of rows x (positive integer): ');
    y = input('Enter number of columns y (positive integer): ');

    if ~isscalar(x) || ~isscalar(y) || ~isreal(x) || ~isreal(y) || ...
            ~isfinite(x) || ~isfinite(y) || x < 1 || y < 1 || ...
            x ~= fix(x) || y ~= fix(y)
        disp('Invalid input: x and y must be positive integers.');
        disp('This iteration is skipped.');
        pause(2);
        continue;
    end

    A = zeros(x, y);
    m = randi(x);
    n = randi(y);
    A(m, n) = NaN;

    fprintf('Matrix A (%d x %d), with NaN at A(%d,%d):\n', x, y, m, n);
    disp(A);

    pause(2);
end

disp('All tasks are finished.');
