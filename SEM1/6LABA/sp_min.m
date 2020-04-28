function [lambda, X, k, flag] = sp_min(A, Y_min, eps, max_it)
% входные данные: - ј - матрица n*n
%                  - eps - допустима€ погрешность
%                  - max_it - максимальное число итераций
% выходные данные: - lambda_min - минимальное по модулю с.ч.
%                  - X_min - —оответствующий нормированный собственный вектор
%                  - k - „исло итераций
%                  - flag: результат достигнут(1) или (0) в противном случае
flag = 0;
X = Y_min/norm(Y_min);
for k = 1:max_it
    Y_min = A\X;
    if k >= 2
        lambda_s = lambda;
%           X_s = X;
    end
    lambda = dot(Y_min,X);
    X = Y_min/norm(Y_min);
    if k >= 2
        if abs(1/lambda - 1/lambda_s)/abs(1/lambda) <= eps
            
%             norm(X - X_s)/norm(X) <= eps
            
            flag = 1;             
            break
        end
    end
end
lambda = lambda^(-1);
end