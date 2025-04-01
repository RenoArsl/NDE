% Define the nodes and corresponding function values from p̂(x)= x^3+2x^2+5x+1
x = [-1; 0; 1];
% Calculate function values:
% p̂(-1) = (-1)^3 + 2*(-1)^2 + 5*(-1) + 1 = -3
% p̂(0) = 0 + 0 + 0 + 1 = 1
% p̂(1) = 1 + 2 + 5 + 1 = 9
y = [-3; 1; 9];

% Define a set of evaluation points for plotting (or verification)
u = linspace(-2, 2, 100);

% Use the provided polyinterp function to compute the interpolated values
v = polyinterp(x, y, u);

% Plot the interpolated polynomial and the original data points
figure;
plot(u, v, 'b-', 'LineWidth', 2); hold on;
plot(x, y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
xlabel('x');
ylabel('p(x)');
title('3-Point Lagrange Interpolation Verification');
legend('Interpolated Polynomial', 'Data Points');
grid on;

% Additionally, verify by evaluating the polynomial at the nodes:
v_nodes = polyinterp(x, y, x);
disp('Interpolated values at the nodes:');
disp(v_nodes);
% They should match the vector y = [-3; 1; 9].
