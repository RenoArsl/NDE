x = [1/3; 1/4; 1];  
y = [2; -1; 7];

A = vander(x);

cond_A = cond(A);

coeffs = A \ y;

error_norm = norm(A * coeffs - y, 2);

disp('Condition number of Vandermonde matrix:');
disp(cond_A);
disp('Error norm:');
disp(error_norm);
