% Define function f(x)
f = @(x) 1 ./ (x.^2 + 1);

% Define 11 equally spaced nodes in [-5, 5]
x = linspace(-5, 5, 11)';
y = f(x);  % Compute function values

% Construct Vandermonde matrix
A = vander(x);

% Flip columns to match standard order (constant term first)
A = fliplr(A);

% Compute polynomial coefficients
coeffs = A \ y;

% Compute condition number of Vandermonde matrix
cond_A = cond(A);

% Compute error norm
error_norm = norm(A * coeffs - y, 2);

% Display results
fprintf('Condition number of Vandermonde matrix: %.4e\n', cond_A);
fprintf('Error norm ||A * c - y||_2: %.4e\n', error_norm);
