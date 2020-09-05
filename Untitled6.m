x0=8;y0=4;
a=15;b=40;
Theta = 1:180;
Theta = Theta*pi/180;
d = 2 .* sqrt(a.^2 ./ tan(Theta + atan(y0/x0)).^2 + b.^2) .* sin(Theta + atan(y0/x0));


 plot(1:180,abs(d))
