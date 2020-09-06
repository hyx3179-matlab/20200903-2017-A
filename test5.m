clear
load('matlab.data.mat','bdmbjsxx')

[yuan,tuo,yuand,tuod] = get_d(bdmbjsxx);

defd = (80/max(tuod) + 30/min(tuod))/2;

[~,sd]=max(tuod);
[~,adrfsg3wrt]=min(tuod);
% yuand = mean(yuand)*defd;
% dmax = max(tuod)*defd;
% dmin = min(tuod)*defd;
yuand = yuand*defd;
tuod = tuod*defd;

% Theta = 1:180;
% Theta = Theta*pi/180;
% 
% p = polyfit(Theta,tuod,9);
% 
% T1 = 40*pi/180;
% T2 = 90*pi/180;
% d1 = polyval(p,T1);
% d2 = polyval(p,T2);

we = 1;
if we==1
    plot(1:180,tuod)
    hold on
    plot(1:180,yuand)
    figure
    plot(1:180,tuo,'r')
    hold on
    plot(1:180,yuan,'g')
    plot(1:180,sum(tuo)/2)
    plot(1:180,sum(yuan)/2)
else
    plot(1:512,data)
    hold on
    plot(1:512,bdmbjsxx(:,jj))
    scatter(yuan(:,jj),bdmbjsxx(yuan(:,jj),jj),'r')
    scatter(tuo(:,jj),bdmbjsxx(tuo(:,jj),jj),'g')
end
