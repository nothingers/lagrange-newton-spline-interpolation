xi;
yi;
plot(xi,yi,'c')
hold on
% ��Ҫ����xi��yi�ĺ�����ϵ

% ��������������ֵ����
x=linspace(0,30,100);
y=interp1(xi,yi,x,'spline');
plot(x,y,'-*')
xlabel('x')
ylabel('y')
