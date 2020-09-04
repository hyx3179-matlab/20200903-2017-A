clear
load('matlab.data.mat')
% plot(1:512,bdmbjsxx(:,60))
figure
imshow(bdmbjsxx)
bdmbjsxx=[bdmbjsxx,flipud(bdmbjsxx)];
% bdmbjsxx=[bdmbjsxx,bdmbjsxx];
% figure
% imshow(256-uint8(bdmbjsxx./max(max(bdmbjsxx))*256))

% for ii=2:512
% if bdmbjsxx(ii,1)
I1=iradon(bdmbjsxx,0:359);
I1=(I1-0.1>0);
imshow(I1)

imshow(imrotate(I1,0.1*pi))
% bdmbjsxx=bdmbjsxx>0;
% for ii=2:512
%     if bdmbjsxx(ii,1)>bdmbjsxx(ii-1,1)
%         
% plot(1:512,bdmbjsxx(:,1)>0)