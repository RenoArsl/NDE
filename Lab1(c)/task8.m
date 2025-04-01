% Define 11 equally spaced nodes in [0, 1]
x = linspace(0, 1, 11);
y = exp(-x);
u = linspace(0, 1, 200);

% Using polyinterp
v_polyinterp = polyinterp(x, y, u);

% Using interp1 with spline interpolation
v_interp1 = interp1(x, y, u, 'spline');

% Using polyfit and polyval to get the interpolation polynomial
p_coeff = polyfit(x, y, length(x)-1);
v_polyfit = polyval(p_coeff, u);

% Plot comparison
figure;
plot(u, exp(-u), 'r--', 'LineWidth', 2); hold on;
plot(u, v_polyinterp, 'b-', 'LineWidth', 2);
plot(u, v_interp1, 'g-.', 'LineWidth', 2);
plot(u, v_polyfit, 'k:', 'LineWidth', 2);
plot(x, y, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
xlabel('x'); ylabel('y');
title('Comparison of Different Interpolation Methods');
legend('f(x)=e^{-x}', 'polyinterp', 'interp1 (spline)', 'polyfit', 'Data Points');
grid on;