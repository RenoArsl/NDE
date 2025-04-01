% Use 11 nodes for interpolation of f(x) = e^(-x)
n = 11;
x = linspace(0, 1, n);
y = exp(-x);

% Evaluation points for error analysis
points = [0.1, 0.15, 1.5];

% Compute the interpolated values using polyinterp
p_values = polyinterp(x, y, points);
true_values = exp(-points);
true_errors = abs(true_values - p_values);

% Estimated error using the error formula
est_errors = zeros(size(points));
for k = 1:length(points)
    prod_term = prod(points(k) - x);
    est_errors(k) = abs(prod_term) / factorial(n);
end

% Display results
disp('    x      True Error      Estimated Error');
disp([points(:) true_errors(:) est_errors(:)]);