function [lambda, X, k, flag] = sp_max(A, Y, eps, max_it)
% входные данные: - ј - матрица n*n
%                  - eps - допустима€ погрешность
%                  - max_it - максимальное число итераций
% выходные данные: - lambda_max - максимальное по модулю с.ч.
%                  - X_max - —оответствующий нормированный собственный вектор
%                  - k - „исло итераций
%                  - flag: результат достигнут(1) или (0) в противном случае
flag = 0;
X = Y/norm(Y);
for k = 1:max_it
    Y = A*X;
    if k >= 2
        lambda_s = lambda;
%           X_s = X;
    end
    lambda = dot(Y,X)/dot(X,X);
    X = Y/norm(Y);
    if k >= 2
        if  abs(lambda - lambda_s)/abs(lambda) <= eps
%             norm(X - X_s)/norm(X) <= eps
            
%    rd        
            flag = 1;
            break
        end
    end
end
end