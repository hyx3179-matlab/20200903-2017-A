clear
load('matlab.data.mat','bdmbjsxx')



% asd = flip(bdmbjsxx(:,jj));
% [~,n1]=max(bdmbjsxx(:,jj));
% [~,n2]=max(asd);
% asd = (n1>n2)*asd([length(asd)-abs(n1-n2)+1:end 1:length(asd)-abs(n1-n2)]) ...
%     + (n1<n2)*asd([abs(n1-n2)+1:end 1:abs(n1-n2)]);
% safasdf = bdmbjsxx(:,jj) - asd;

% hold on
% plot(1:512,bdmbjsxx(:,jj))
% plot(1:512,asd,'*')
% figure
% plot(1:512,safasdf)
yuan = zeros(2,180);
tuo = zeros(2,180);
tic
for jj=1:180
    
    data = [];
    
    for ii=2:512
        data = [data (bdmbjsxx(ii-1,jj)-bdmbjsxx(ii,jj))];
    end
    
%     data = [0 data];
    data2 = [];
    data3 = [];
    for ii=2:511
        if data(ii-1)>data(ii) && data(ii+1)>data(ii)
            data2 = [data2 ii];
        end
        if data(ii-1)<data(ii) && data(ii+1)<data(ii)
            data3 = [data3 ii];
        end
    end
    
    if length(data2)>2
        [~,n] = max(data(data2));
        data2(n)=[];
        [~,n] = min(data(data3));
        data3(n)=[];
    end
    
    [~,yuan1] = max(data(data2));
    [~,yuan2] = min(data(data3));
    
    [~,tuo1] = min(data(data2));
    [~,tuo2] = max(data(data3));
    
    %     data3 = data3+1;
    %     data2 = data2-1;
    yuan(:,jj) = [data2(yuan1)-1 data3(yuan2)+1];
    tuo(:,jj) = [data2(tuo1)-1 data3(tuo2)+1];
end
toc
yuan1 = abs(yuan(1,:)-yuan(2,:));
tuo1 = abs(tuo(1,:)-tuo(2,:));

we = 1;
if we==1
    plot(1:180,tuo1)
    hold on
    plot(1:180,yuan1)
else
%     plot(1:512,data)
    %     figure
    hold on
    plot(1:512,bdmbjsxx(:,jj))
    scatter(yuan(:,jj),bdmbjsxx(yuan(:,jj),jj),'r')
    scatter(tuo(:,jj),bdmbjsxx(tuo(:,jj),jj),'g')
end