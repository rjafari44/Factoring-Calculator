% Load symbolic package if running in Octave
if exist('OCTAVE_VERSION', 'builtin') ~= 0
    pkg load symbolic
end

% variable declaration
graph_func = [];
s = [];
f_handle = [];
x_val = [];
y_val = [];

disp(' ');
disp('***** LINEAR EQUATION GRAPHING CALCULATOR *****');

% Get user input as a string
graph_func = input('Enter a linear equation in x (e.g., 2*x + 3):');

disp(' ');
disp('Plotting...');
disp(' ');

% Convert input string to a symbolic expression
s = sym(graph_func);

% Convert symbolic expression to a function handle for numeric evaluation
f_handle = matlabFunction(s);

% Define range for x
x_val = -10:0.1:10;  % adjustable range

% Compute corresponding y values
y_val = f_handle(x_val);

% Plot the line
plot(x_val, y_val, 'LineWidth', 2, 'color', 'b');
grid on;
grid minor;
xlabel('x');
ylabel('y');
title(['Graph of Equation y = ', char(s)]);
