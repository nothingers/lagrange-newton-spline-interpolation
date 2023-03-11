xi;
yi;
plot(xi,yi,'c')
hold on
% 简要绘制xi与yi的函数关系

% 进行三次样条插值操作
x=linspace(0,30,100);
y=interp1(xi,yi,x,'spline');
plot(x,y,'-*')
xlabel('x')
ylabel('y')
