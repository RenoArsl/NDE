% Define function f(x)
f = @(x) 1 ./ (x.^2 + 1);

% Define 11 equally spaced nodes in [-5, 5]
x = linspace(-5, 5, 11)';
y = f(x);  % Compute function values

% Generate fine grid for plotting
x_plot = linspace(-5, 5, 1000);
y_plot = f(x_plot);  % True function values

% Compute interpolating polynomial values
p_plot = polyinterp_sta(x, y, x_plot);

% Plot the true function
plot(x_plot, y_plot, 'k-', 'LineWidth', 2);
hold on;

% Plot the interpolating polynomial
plot(x_plot, p_plot, 'b-', 'LineWidth', 2);

% Plot the interpolation nodes
plot(x, y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

% Labels and legend
xlabel('x');
ylabel('Function Value');
title('Interpolation of f(x) = 1 / (x^2 + 1)');
legend('Original Function f(x)', 'Interpolating Polynomial P_{10}(x)', 'Data Points');

hold off;
