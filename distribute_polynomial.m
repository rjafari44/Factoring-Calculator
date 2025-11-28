% Load symbolic package if running in Octave
if exist('OCTAVE_VERSION', 'builtin') ~= 0
    pkg load symbolic
end

% variable declaration
syms x;
factored_p = [];
expanded_p = [];

% get user input for the coefficients of the polynomial
disp(' ');
disp('***** DISTRIBUTING CALCULATOR *****')
factored_p = input('Enter a factored polynomial (e.g., (x+5)*(x-6)): ');

% compute the distribution
expanded_p = expand(factored_p);

% display the result
disp (' ');
disp('Expanded polynomial:');
disp(expanded_p);
disp (' ');