%%%%%%%%%%%%%%%%%%%%%%%%%
% systeme :
%
% x'=y
% y'=eps(1-x2)y-x
%
%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
max=1000;
nbit=50;
X=zeros(1,max);
Y=zeros(1,max);
%
% Cond Init
%
X(1)=0;
Y(1)=0.5;
epsi=0.3;
h=0.001;

%%%%%%%%%%%%%%%%%%%%%%%%%
% Euler
%%%%%%%%%%%%%%%%%%%%%%%%%
% x'=y
% y'=eps(1-x2)y+x
%
for i=1:max+1
y0=Y(i);
x0=X(i);
     for j=1:nbit
          x1=x0+h*    y0 ;
          y1=y0+h*    (epsi*(1-x0*x0)*y0)  -h*x0 ;
          x0=x1;
          y0=y1;
     end;
     Y(i+1)=y1;
     X(i+1)=x1;
end;
     
%%%%%%%%%%%%%%%%%%%%%%%%%%

plot(X,Y)




%print -deps pol03i.eps
