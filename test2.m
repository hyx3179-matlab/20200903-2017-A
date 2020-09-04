clear
load('matlab.data.mat')
[a,b]=ind2sub(size(biaodingmoban),find(biaodingmoban>0));
data = a+1i*b;
data = data * (cos(0.1*pi)+1i*sin(0.1*pi));
plot(1:length(data),real(data))