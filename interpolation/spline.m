xi;
yi;
plot(xi,yi,'c')
hold on
% ��Ҫ����xi��yi�ĺ�����ϵ

% ��������������ֵ����
x=linspace(0,30,100);
y=interp1(xi,yi,x,'spline');
plot(x,y,'-*')
 xlabel('x','FontSize',20)
  ylabel('y','FontSize',20)
title('spline ��ֵ','FontSize',30)