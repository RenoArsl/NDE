clc; clear; close all;
x = [0, 1, 2, 3];
y = [1, 3, 2, 5];
u = 1.5;  

v_newton = interp_newton(x, y, u);

v_polyinterp_sta = polyinterp_sta(x, y', u);

fprintf('Using interp_newton:  p(%.2f) = %.6f\n', u, v_newton);
fprintf('Using polyinterp_sta:     p(%.2f) = %.6f\n', u, v_polyinterp_sta);
fprintf('Difference:           %.6e\n', abs(v_newton - v_polyinterp_sta));

