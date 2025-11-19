% Load symbolic package if running in Octave
if exist('OCTAVE_VERSION', 'builtin') ~= 0
    pkg load symbolic
end

% variable declaration
syms x;
coeffs = [];
factors = [];
p = 0;
r = 0;

% get user input for the coefficients of the polynomial
disp(' ');
disp('***** FACTORING CALCULATOR *****')
coeffs = input('Enter the coefficients of the polynomial in descending degree order using brackets (e.g., [1, 5, 8]): ');

% convert the coefficient vector into a symbolic polynomial
p = poly2sym(coeffs, x);

% compute the factoring
factors = factor(p);

% check to see if the polynomial is factorable or not
if isequal(factors, p)
    disp(' ');
    disp('The polynomial is not factorable');
else
    disp(' ');
    disp('Factored polynomial:');
    disp(factors);
end

% find the numerical roots of a polynomial from a coefficient vector
r = roots(coeffs);

disp(' '); % add a space between

% display the resultant roots
disp('The roots are:');
disp(r);

disp(' '); % add a space after