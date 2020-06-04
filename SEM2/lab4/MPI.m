c = 100;
m = 1;
x0 = 0;
v0 = 10;
g = 9.81;

X = [];
V = [];
X(1) = x0;
V(1) = v0;

dt = 0.01;

for i = 2:1000
    a = g - c*X(i-1)/m;
    V(i) = V(i-1) + a*dt;
    X(i) = X(i-1) + V(i)*dt;
end

figure
plot(1:1000, X);
hold on;
plot(1:1000, V);