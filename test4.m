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
waergq = zeros(1,180);
srgfnhbedthn = zeros(1,180);
tic
for jj=1:180
    
    data = [];
    
    for ii=2:512
        data = [data (bdmbjsxx(ii-1,jj)-bdmbjsxx(ii,jj))];
    end
    
    data = [0 data];
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
        if data2(2)<data3(2)
            data2 = flip(data2);
        end
    end
    
    data3 = data3+1;
    data2 = data2-1;
    
    srgfnhbedthn(jj) = min(abs(data2-data3));
    waergq(jj) = max(abs(data2-data3));
end
toc

we = 1;
if we==1
    plot(1:180,waergq)
    hold on
    plot(1:180,srgfnhbedthn)
else
    plot(1:512,data)
    %     figure
    hold on
    plot(1:512,bdmbjsxx(:,jj))
    scatter(data2,bdmbjsxx(data2,jj),'r')
    scatter(data3,bdmbjsxx(data3,jj),'g')
end