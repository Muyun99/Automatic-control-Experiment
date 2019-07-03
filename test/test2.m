%两个传递函数串联
num1=[1 1];     %G1(s)的传递函数分母
den1=[500 0 0]; %G1(s)的传递函数分母

num2=[1];       %G2(s)的传递函数分母
den2=[1 2];     %G2(s)的传递函数分母

[num3,den3]=series(num1,den1,num2,den2);  %G1(s)与G2(s)串联连接的传递函数分子与分母
[num4,den4]=parallel(num1,den1,num2,den2);%G1(s)与G2(s)并联连接的传递函数分子与分母
printsys(num,den)

%反馈--闭环传递函数
[num5,den5]=cloop(numg,deng,sign); %其中numg与deng分别为G(s)的分子与坟墓多项式，sign=1为正反馈，sign=-1为负反馈(默认值)
[num6,den6]=feedback(numg,deng,numh,denh,sign) %其中numh为H(s)的分子多项式，denh为分母多项式

