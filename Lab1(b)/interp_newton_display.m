function interp_newton_display(x, y, c)
    syms u;
    n = length(c);
    poly_expr = c(1);
    
    term = 1;
    fprintf('Newton Form: \n');
    fprintf('%.4f',y(1));
    for i = 2:n
        term = term * (u - x(i-1));
        fprintf(' + %.4f * (%s)', c(i), char(term)); 
        poly_expr = poly_expr + c(i) * term;
    end
    fprintf('\n');
end
