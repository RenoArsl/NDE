x = [1/3; 1/4; 1];  
y = [2; -1; 7];

A = vander(x);

A = fliplr(A);

coeffs = A \ y;

disp('Polynomial coefficients (from lowest to highest order):');
disp(coeffs');
% Define evaluation point

p_value = polyval(flip(coeffs), u);

% Display result
fprintf('P_n(%.2f) = %.4f\n', u, p_value);
