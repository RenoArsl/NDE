function p_value = polyinterp_sta(x, y, u)
    A = vander(x);
    A = fliplr(A);

    coeffs = A \ y;

    p_value = polyval(flip(coeffs), u);
end
