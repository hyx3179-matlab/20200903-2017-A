% asedf=zeros(1,180);
% 
% for ii = 1:180
%     
% asedf(ii)  = bdmbjsxx(tuo(1,ii),ii);
% 
% end


clear
load('matlab.data.mat','bdmbjsxx')
imshow(iradon([bdmbjsxx(:,152:end) flipud(bdmbjsxx(:,1:151))],1:180))