num=4*conv([1,2],conv([1,6,6],[1,6,6]));
den=conv([1,0],conv([1,1],conv([1,1],conv([1,1],[1,3,2,5]))));

%零极点增益模型
num=[1,11,30,0];     %传递函数分子系数
den=[1,9,45,87,50];  %传递函数分母系数
disp(roots(den));    %输出零点
disp(roots(num));    %输出极点
zplane(num,den);     %绘制系统函数的零极点图
[z,p,k]=tf2zp(num,den); %求得有理分式形式的零极点,p为零点，k为极点
s1=zpk(z,p,k,-1);  %得到模型

sys=tf(num,den);
sys1=zpk(sys);
[z,p,k]=tf2zp(num,den);  %传递函数形式转化为零极点形式
[num,den]=zp2tf(z,p,k)   %零极点形式转化为传递函数形式

[r,p,k]=residue(num,den) %求出传递函数部分分式展开式中的留数、极点和余项
%s2=rpk(r,p,k)