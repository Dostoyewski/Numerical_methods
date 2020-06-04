function A = generatematrix(n)
    A = generate_matrix(n);
    A = A*A';
    %A = A + n*eye(n);
end
