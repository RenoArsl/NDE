function coeffs = compute_poly_coeffs(x, y)
    % Construct the Vandermonde matrix
    A = vander(x);
    A = fliplr(A);
    % Solve for the coefficients
    coeffs = A \ y;
end