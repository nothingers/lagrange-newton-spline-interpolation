xi;
yi;
plot(xi,yi,'c')
hold on
% 简要绘制xi与yi的函数关系

%  计算拉格朗日基函数
  x=linspace(0,30,100);
  Ln=zeros(size(x));
  n=length(xi);
  for i=1:n
    ln=1;
    for j=1:n
        if j~=i
            ln=ln.*(x-xi(j))/(xi(i)-xi(j));
        end
    end
    Ln=Ln+yi(i)*ln;
  end
  plot(x,Ln,'-*')
  xlabel('x')
  ylabel('y')

