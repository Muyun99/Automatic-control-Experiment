%求取系统对数频率特性图（波特图）：bode()
%求取系统奈奎斯特图（幅相曲线图或极坐标图）：nyquist()


%bode       - 频率响应伯德图
%nyquist  - 频率响应乃奎斯特图
%nichols   - 频率响应尼柯尔斯图
%freqresp - 求取频率响应数据
%margin   - 幅值裕量与相位裕量
%pzmap    - 零极点图
%ltiview可以画时域响应和频域响应图
num=[0,0,50];
den=[25,2,1];
w=logspace(-2,3,100)
%bode(num,den,w)
rlocus(num,den)
grid
title('Bode Diagram of  G(s)=50/(25s^2+2s+1)')

%nyquist(num,den)

%A=[-1  -1;6.5  0];
%B=[1  1;1  0];
%C=[1  0;0  1];
%D=[0  0;0  0]; 
%nyquist(A,B,C,D);

%num=[1,3];
%den1=[1,2,0];
%dem2=[1,1,2];
%den=conv(den1,den2);
%rlocus(num,den);
%v=[-10 10 -10 10];
%axis(v);
%grid
%title('Root-Locus Plot of  G(s)=K(s+3)/s(s+2)(s^2+s+2)')


%num=[3,2,1,4,2];
%den=[3,5,1,2,2,1];
%[z,p]=tf2zp(num,den)
%pzmap(num,den) %零极点图
%ii=find(real(p)>0);
%n=length(ii)
%if(n>0) 
%    disp(['System is unstable, with ' int2str(n) ' unstable poles']);
%else
%    disp('Syatem is stable');
%end
%disp('The unstable poles are: '), disp(p(ii))
%%%
