% %�������� �������������� ������� � ��������� ������������ �������
function A = generate_matrix(n)
    v = randi(10, n, 1);
    C = zeros(n);
    C = diag(v);
    C = C*C';
    w = rand(n,1);
    norm(w,2);
    P = zeros(n);
    P = eye(n) - (2*w*w')/(w'*w);
    %����������������� ������� � ��������� ������������ �������
    A = P'*C*P;
%     A = A*A';
end
