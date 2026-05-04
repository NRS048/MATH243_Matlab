%% 1 Setup

format short

A = [8 -12 -12 7; -2 4 7 11; 2 -1 6 13];

% 1a

Arr = rref(A);

disp(Arr)

% 1b

disp( [Arr(1,4); Arr(2,4); Arr(3,4)] )

% 1c

format rat

rref(A)

% 1d

disp( [Arr(1,4); Arr(2,4); Arr(3,4)] )

%% 6 

f = @(t,y) t^2; % right-side of ODE input values here.
tinit = 0; % initial time
yinit = 3; % initial y-value
n = 50; % number of subintervals to use
b = 6; % final time

% Calculation of h from tinit, b, and n.
h = 6/50; % h is our step size (delta_time(b - tinit) / # of steps (n))

% Initialize t and y as length n + 1 column vectors.
t = zeros(n + 1, 1);
y = zeros(n + 1, 1);

% Calculation of points t(i) and the corresponding
% approximate values y(i) from the Euler Method formula.
t(1) = tinit;
y(1) = yinit;

% Euler's method loop!
for i = 1:n
t(i + 1) = t(i) + h;
y(i + 1) = y(i) + h*f(t(i), y(i));
end

plot(t, y)