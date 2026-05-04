%% NAMES: Jeremy Bel, Nathan Story, Diego Olivar-Rodriguez
% Math243
%% Code for Problem 1 

format short

A = [8 -12 -12 7; -2 4 7 11; 2 -1 6 13];

%% 1a
Arr = rref(A);

disp(Arr)

%% 1b
disp( [Arr(1,4); Arr(2,4); Arr(3,4)] )

%% 1c
format rat

rref(A)

%% 1d

disp( [Arr(1,4); Arr(2,4); Arr(3,4)] )

%% Code for Problem 2
%% 2A
A=[25.1, 26.1, 24.1 ; 20.9, 15.9, 17.9 ; 27.7, 23.7, 24.7];
rref(A)
%% 2B
% yes, the vector is a span because there is no row in which the matrix
% has zeros on the left and non zeros on the right.
%% 2C
% These vectors are linearly dependent becuase there are only 2 pivot
% colums and a free variable 
%% Code for Problem 3

B=[7;1;4;2]
C=[6;-2;-2;-3]
D=[7;5;8;1]
E=[9;11;20;11]
F=[-7;0;4;-5]
%% 3a
A=[B C D E F]
rref(A)
%% 3b
% Column 4 is NOT a pivot column because it doesn't have a leading 1 with
% zeroes everywhere above and below it.
%% 3c
% A nontrivial linear combination of the vectors which yield 0 is
% [-2;2;-1;1;0]
%% 3d
% The number of entries indicates that the vectors are a part of R^4 but
% the set contains 5 vectors. This means the vectors are linearly
% dependent.
%% 3e
% The set of vector span R^4 because Rank(A)=4. The number of pivots is 4.
% The one of the four vectors is redundent and can be written as a linear combination
% of the others.

%% Code for Problem 4
syms y(t)
equn=t*diff(y)+2*y==exp(t);
initial=y(1)==4;
%% 4a
z=dsolve(equn,initial)
%% 4b
j=[-3 -2 -1 0 1 2 3];
x=[.1:.1:2];
figure

hold on
for k= 1:length (j)
    initial=y(1)==j(k);
    f=dsolve(equn,initial);
     yv=double(subs(f,t,x));
    plot(x,yv)
end
%% 4c
% Based off of the graph, there is a finite soultion near t=0 for the value
% j=0. 
%% Code for Problem 5
syms y(t)
ODE = 4*t^3*y^3+3*t^2+(3*t^4*y^2+6*y^2)*diff(y,t,1) == 0;

%% Output for Problem 5
hold off
Implicit_Solution=dsolve(ODE,y(0)==0.2, 'Implicit', true)

syms t y  
f1 = 2*y^3 + t^4*y^3 - 2/125 + t^3;
fimplicit(f1, [-5 5 -5 5]);
xlabel("t")
ylabel("y")
title("Implicit Solution for ODE")
grid on;

%% Code for Problem 6
disp( [Arr(1,4); Arr(2,4); Arr(3,4)] )

f = @(t,y) t^2 - t*y % right-side of ODE input values here.
tinit = 0 % initial time
yinit = 3 % initial y-value
n = 50 % number of subintervals to use
b = 6;% final time

% Calculation of h from tinit, b, and n.
h = 6/50; % h is our step size (delta_time(b - tinit) / # of steps (n))

% Initialize t and y as length n + 1 column vectors.
t = zeros(n + 1, 1);
y = zeros(n + 1, 1);

% Calculation of points t(i) and the corresponding
% approximate values y(i) from the Euler Method formula.
t(1) = tinit;
y(1) = yinit;

%% Output for Problem 6

for i = 1:n
t(i + 1) = t(i) + h;
y(i + 1) = y(i) + h*f(t(i), y(i));
end

plot(t, y)