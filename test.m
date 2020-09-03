clear
load('matlab.data.mat')
plot(1:512,bdmbjsxx(:,60))
% figure
% imshow(bdmbjsxx)
% bdmbjsxx=[bdmbjsxx,flipud(bdmbjsxx)];
% bdmbjsxx=[bdmbjsxx,bdmbjsxx];
% figure
% imshow(256-uint8(bdmbjsxx./max(max(bdmbjsxx))*256))

for ii=2:512
if bdmbjsxx(ii,1)


bdmbjsxx=bdmbjsxx>0;
for ii=2:512
    if bdmbjsxx(ii,1)>bdmbjsxx(ii-1,1)
        
plot(1:512,bdmbjsxx(:,1)>0)