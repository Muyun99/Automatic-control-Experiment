clc,clear;
num1=[1];
den1=[1 1];

num2=[1];
den2=[1 1 1];

num3=[1];
den3=[1 2];

[num4,den4]=parallel(num1,den1,num2,den2);
[numg,deng]=series(num4,den4,num3,den3);

numh=[1];
denh=[1 1];

[num,den]=feedback(numg,deng,numh,denh,-1);
sys=tf(num,den);

[z,p,k]=tf2zp(num,den);

s=zpk(z,p,k,-1);

[r,p1,k1]=residue(num,den);
s1=residue(r,p1,k1);

%step(num,den);
%impulse(num,den)
%t = 0:0.01:10;
%u = log(t+1);
%lsim(num,den,u,t)

%[u,t] = gensig('square',1,10,0.1);
%lsim(num,den,u,t)
%t=0:1:10;
%to=1;
%y=stepfun(t,to)

%w=logspace(-2,3,100);
%w=logspace(0,2,5)
%figure(1)
%rlocus(num,den);
%nyquist(num,den)
%plot(re,im)
%figure(2)
%bode(num,den,w)
%grid
%pzmap(num,den)
ii=find(real(p)>0);
n1=length(ii)
if(n1>0)
    disp(['System is unstable, with ' int2str(n1) 'unstable poles']);
else 
    disp('Syatem is stable');
end