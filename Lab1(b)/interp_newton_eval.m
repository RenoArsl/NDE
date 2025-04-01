function v = interp_newton_eval(x, c, u)
    n = length(c);
    v = c(n);
    
    for i = n-1:-1:1
        v = v * (u - x(i)) + c(i);
    end
end