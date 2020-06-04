function [lambda, X, k, flag] = sp_max(A, Y, eps, max_it)
% ������� ������: - � - ������� n*n
%                  - eps - ���������� �����������
%                  - max_it - ������������ ����� ��������
% �������� ������: - lambda_max - ������������ �� ������ �.�.
%                  - X_max - ��������������� ������������� ����������� ������
%                  - k - ����� ��������
%                  - flag: ��������� ���������(1) ��� (0) � ��������� ������
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