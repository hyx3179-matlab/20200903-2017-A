clear
load('matlab.data.mat','bdmbjsxx')

% plot(1:512,bdmbjsxx(:,104))
% figure
% imshow(edge(bdmbjsxx,'Prewitt'))

% bdmbjsxx=[bdmbjsxx,flipud(bdmbjsxx)];
% bdmbjsxx=[bdmbjsxx,bdmbjsxx];
% figure
% RAW = uint8(bdmbjsxx./max(max(bdmbjsxx))*256);
% imshow(RAW)
% imwrite(RAW,'myGray.bmp')
% bdmbjsxx=bdmbjsxx>0;

% BW=bwmorph(bdmbjsxx,'remove');
% BW=bwmorph(cdata,'remove');
% imshow(BW)
% for ii=2:512
% if bdmbjsxx(ii,1)
% I1=iradon(bdmbjsxx,0:359);
% I1=(I1-0.1>0);
% imshow(I1)
% 
% imshow(imrotate(I1,0.1*pi))
% bdmbjsxx=bdmbjsxx>0;
% for ii=2:512
%     if bdmbjsxx(ii,1)>bdmbjsxx(ii-1,1)
%         
plot(1:512,bdmbjsxx(:,1))

% a=40;b=15;
% x0=1;y0=1;
% Theta = 0.1;
% 
% 