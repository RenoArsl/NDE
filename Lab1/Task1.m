% Given data points
x = [1; 2; 3];   
y = [2; 3; 5];  

% Compute polynomial coefficients
coeffs = compute_poly_coeffs(x, y);

% Evaluate polynomial at a given point u
u = 1.5;  % Example evaluation point
p_value = polyval(coeffs, u);

% Display the result
fprintf('P(%f) = %f\n', u, p_value);
