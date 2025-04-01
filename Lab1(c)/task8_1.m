% Define f(x) = |x|
f = @(x) abs(x);

% Nodes: few to make差異明顯
x = linspace(-1, 1, 7); % 奇數個點，剛好涵蓋 x=0
y = f(x);

% Evaluation points
u = linspace(-1, 1, 1000);
f_true = f(u);

% polyinterp
v_polyinterp = polyinterp(x, y, u);

% interp1 with spline
v_interp1 = interp1(x, y, u, 'spline');

% polyfit
coeffs = polyfit(x, y, length(x)-1);
v_polyfit = polyval(coeffs, u);

% Plot
figure;
plot(u, f_true, 'r--', 'LineWidth', 2); hold on;
plot(u, v_polyinterp, 'b-', 'LineWidth', 1.5);
plot(u, v_interp1, 'g-.', 'LineWidth', 1.5);
plot(u, v_polyfit, 'k:', 'LineWidth', 1.5);
plot(x, y, 'ko', 'MarkerFaceColor', 'k');
legend('f(x)=|x|', 'polyinterp', 'interp1 (spline)', 'polyfit', 'Data Points');
xlabel('x'); ylabel('y');
title('Interpolation of |x| function');
grid on;
