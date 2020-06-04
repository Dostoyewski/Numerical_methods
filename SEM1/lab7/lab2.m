A = [1 4 1 3; 0 -1 3 -1; 3 1 0 2; 1 -2 5 1]
b = [1; 2; 3; 4]
disp ('������� ������� A = L*U')
[L, U] = LUfanc (A, b)
disp('������� ������� L*y0 = b')
y0 = forwsub(L,b)
disp('������� ������� U*x0 = y0')
x0 = backsub(U,y0)
     
b1 = disturbance_b(b)
[L, U] = LUfanc (A, b1)
disp('������� ������� L*y1 = b1')
y1 = forwsub(L,b1)
disp('������� ������� U*x1 = y1')
x1 = backsub(U,y1)

A1 = disturbance_A (A, b)
[L, U] = LUfanc (A1, b)
disp('������� ������� L*y2 = b')
y2 = forwsub(L,b)
disp('������� ������� U*x2 = y2')
x2 = backsub(U,y2)

