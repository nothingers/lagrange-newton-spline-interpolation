xi;
yi;
plot(xi,yi,'c')
hold on;

% 计算n阶均值表
n=length(xi);
B=zeros(n,n+1);
for i=1:n
    B(i,1)=xi(i);
    B(i,2)=yi(i);
end
for k=3:n+1
    for j=1:n
        if j+1>=k
            B(j,k)=(B(j,k-1)-B(j-1,k-1))/(B(j,1)-B(j-k+2,1));
        end
    end
end

% 计算newtoon插值


x=linspace(0,30,100);
Nn=zeros(size(x));
Nn=Nn+xi(1);
for m=2:n
    nn=1;
    for p=2:n
        if p<=m
            nn=nn.*(x-xi(p-1));
        end
       
    end
         Nn=Nn+nn*B(m,m+1);
end


% 画出Nn与x的图像

plot(x,Nn,'-*')
xlabel('x')
ylabel('y')
