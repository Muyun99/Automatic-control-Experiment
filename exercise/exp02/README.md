# MatLab 时域分析方法

## 实验目的

- 熟悉 MatLab 时域分析方法
- 掌握 MatLab 求解系统响应的应用。
- 熟悉 MatLab 稳定性分析与指标

## 实验内容

### question-1

#### description

设二阶系统的传递函数为

<!-- $$
G(S)=\frac{\omega_n^2}{s^2+2\xi\omega_ns+\omega_n^2}
$$ --> 

<div align="center"><img style="background: white;" src="https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cbbox%5Bwhite%5D%7BG(S)%3D%5Cfrac%7B%5Comega_n%5E2%7D%7Bs%5E2%2B2%5Cxi%5Comega_ns%2B%5Comega_n%5E2%7D%0D%7D"></div>

利用 Matlab 绘制:

> 1. <!-- $\omega _ { n }$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cbbox%5Bwhite%5D%7B%5Comega%20_%20%7B%20n%20%7D%7D"> = 10, 而 <!-- $\xi$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cbbox%5Bwhite%5D%7B%5Cxi%7D"> = 0.1, 0.2, ..., 1, 1.2, 1.5, 2 的一组单位阶跃响应曲线
> 2. 绘制 <!-- $\xi$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cbbox%5Bwhite%5D%7B%5Cxi%7D"> = 0.707，而 <!-- $\omega _ { n }$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cbbox%5Bwhite%5D%7B%5Comega%20_%20%7B%20n%20%7D%7D"> = 2, 4, 6, 8, 10 的一组单位阶跃响应曲线，比较两组曲线

#### code

##### part-1

```matlab
t = 0:0.01:12;
wn = 10;
num = [1 * wn^2];

for zeta = [0.1:0.1:2, 1.2, 1.5, 2]
    den = [1, 2 * zeta * wn, 1 * wn^2];
    [y, x, t] = step(num, den, t);
    plot(t, y, 'DisplayName', num2str(zeta))
    hold on
    grid on
end

legend('show')
```
##### result

![](assets/question-1-part-1.png)

##### part-2

```matlab
t = 0:0.01:12;
zeta = 0.707;

for wn = [2, 4, 6, 8, 10]
    num = [1 * wn^2];
    den = [1, 2 * zeta * wn, 1 * wn^2];
    [y, x, t] = step(num, den, t);
    plot(t, y, 'DisplayName', [num2str(zeta), '-', num2str(wn)])
    hold on
    grid on
end

legend('show')
```

##### result

![](assets/question-1-part-2.png)


#### compare

![](assets/question-1-compare.png)