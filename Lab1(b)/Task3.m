x = [1/3, 1/4, 1]; 
y = [2, -1, 7]';
u = 0.5;  

v = polyinterp_sta(x, y, u);
fprintf('p2(%.2f) = %.4f\n', u, v);