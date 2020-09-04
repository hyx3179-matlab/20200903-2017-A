clear
load('2018-A.data.mat')
% C 比热
% rho 密度
% K 热传导率
X = [0.6 6 3.6 5]*10^-3;
u40 = 37;

Q = rho(4) * X(4) * C(4) * (u-u40);
p = Q(2:end) - Q(1:end-1);

u3 = [K(3) / X(3) .* p;0] + u;

% u=u.*(u<48);

% u=u(u<48);
u=u(u>37.6);
aenr= 1:length(u);
cftool
