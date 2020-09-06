function [yuan,tuo,yuand,tuod] = get_d(bdmbjsxx)

yuan = zeros(2,180);
tuo = zeros(2,180);

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
    
    if (jj>14 && jj<24) || (jj>99 && jj<110)
        [~,yuan1] = max(data(data2));
        [~,yuan2] = min(data(data3));
        [~,tuo1] = min(data(data2));
        [~,tuo2] = max(data(data3));
    else
        [~,yuan1] = min(abs(data2-data3));
        [~,tuo1] = max(abs(data2-data3));
        yuan2=yuan1;tuo2=tuo1;
    end
    yuan(:,jj) = [data2(yuan1)-1 data3(yuan2)+1];
    tuo(:,jj) = [data2(tuo1)-1 data3(tuo2)+1];
end

yuan(2,22) = tuo(2,22);

yuand = abs(yuan(1,:)-yuan(2,:));
tuod = abs(tuo(1,:)-tuo(2,:));

