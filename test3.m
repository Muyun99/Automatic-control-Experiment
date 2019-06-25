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
sys=tf(num,den)


%求取系统单位阶跃响应：step()
%求取系统的冲激响应：impulse()
%求取系统任意激励响应：lsim()
%gensig     - 对LSIM产生输入信号
%stepfun   - 产生单位阶跃输入

t=0:0.01:5;
y_step=step(sys,t);
[y_step,x,t]=step(sys);

y_impulse=impulse(sys,t);
[y_impulse,x,t]=impulse(sys);

t = 0:0.01:10; 
u = sin(t);
%figure(1)
lsim(sys,u,t);   %为单输入模型sys对u(t)=sin(t)在5秒之内的输入响应仿真。



[u,t] = gensig('square',4,10,0.1);
lsim(sys,u,t);

t=0:1;10;
to=1;
y=stepfun(t,to);

%figure(2)
%[u,t]=gensig('square',6,12,0.1);
%plot(t,u,'r-');
%hold on;
%sys=tf([1,1],[1,2,5]);
%lsim(sys,u,t);

t = 0:0.01:150;
numtemp = [0,0,50];
dentemp = [25,2,1];
systemp = tf(numtemp,dentemp)
step(systemp)

%利用阶跃响应求斜坡响应

