node_counts = [3, 5, 11, 21];
u = linspace(0, 1, 200);

figure;
for k = 1:length(node_counts)
    n = node_counts(k);
    x = linspace(0, 1, n);
    y = exp(-x);
    v = polyinterp(x, y, u);
    
    subplot(2, 2, k);
    plot(u, exp(-u), 'r--', 'LineWidth', 2); hold on;
    plot(u, v, 'b-', 'LineWidth', 2);
    plot(x, y, 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k');
    title(sprintf('%d Node Interpolation', n));
    xlabel('x'); ylabel('y');
    grid on;
end