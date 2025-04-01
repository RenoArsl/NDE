% Define 11 equally spaced nodes in [0, 1]
x = linspace(0, 1, 11);
y = exp(-x);

% Define evaluation points for plotting
u = linspace(0, 1, 200);

% Compute the interpolating polynomial using polyinterp
v = polyinterp(x, y, u);

% Plot the original function and the interpolating polynomial
figure;
plot(u, exp(-u), 'r--', 'LineWidth', 2); hold on;
plot(u, v, 'b-', 'LineWidth', 2);
plot(x, y, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
xlabel('x'); ylabel('y');
title('Interpolation of f(x) = e^{-x} with 11 Nodes');
legend('f(x) = e^{-x}', 'Interpolating Polynomial', 'Data Points');
grid on;