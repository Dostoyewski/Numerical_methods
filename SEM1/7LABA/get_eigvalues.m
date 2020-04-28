function [X, d] = get_eigvalues(A0, index, n, A)
    d = diag(A0);
    B = (A - d(index)*eye(n));
    Z = [];
    for i = 1:n
        Z(i) = 1e-300;
    end
    Z = Z';
    for i = 1:n
       if B(i, i) == 0
           B(i, i) = 1e-300;
       end
    end
%     B = [B Z];
%     X = res(B);
    X = B \ Z;
    X = X./norm(X);
end