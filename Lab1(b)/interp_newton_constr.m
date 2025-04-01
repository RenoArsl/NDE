function c = interp_newton_constr(x, y)
    n = length(x);
    c = y; 

    for j = 2:n
        for i = n:-1:j
            c(i) = (c(i) - c(i-1)) / (x(i) - x(i-j+1));
        end
    end
end