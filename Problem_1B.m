%% 1 Setup

tspan = [0 30];
y0 = 0;

func = @(t,y) cos(t) - y.^3;

%% 1a

[t, y] = ode45(func, tspan, y0);

plot(t, y)

%% 1b

disp( deval( ode45(func, tspan, y0), 1.513) ) 

%% 2 Setup

%% 2