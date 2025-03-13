x = [1/3; 1/4; 1];  
y = [2; -1; 7];

coeffs = compute_poly_coeffs(x, y);

u = [0.5; 0.75; 1.2];

p_values = polyval(coeffs, u);

disp('Evaluation of P_2(x) at different points:');
for i = 1:length(u)
    fprintf('P_2(%.2f) = %.4f\n', u(i), p_values(i));
end
