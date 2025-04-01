x = [1; 2; 3];   % 給定的 x 節點
y = [2; 3; 5];   % 對應的 y 值

coeffs = compute_poly_coeffs(x, y);
disp('Computed polynomial coefficients:');
disp(coeffs');



% Given data points
x = [1; 2; 3];   
y = [2; 3; 5];  

% Compute polynomial coefficients
coeffs = compute_poly_coeffs(x, y);


u = 1.5;  
p_value = polyval(flip(coeffs), u);


fprintf('P(%f) = %f\n', u, p_value);

x_vals = linspace(min(x), max(x), 100); 


y_vals = polyval(fliplr(coeffs), x_vals);


figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 2); % Polynomial curve


hold on;
plot(x, y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Data points


xlabel('x');
ylabel('P_n(x)');
title('Interpolating Polynomial');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'Best');
grid on;
hold off;