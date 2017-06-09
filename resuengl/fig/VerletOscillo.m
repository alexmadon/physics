%%%%%%%%%%%%%%%%%%%%%%%%%
% systeme :
%
% x'=y
% y'=-x
%
%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%
max=300;
nbit=100;
X=zeros(1,max);
Y=zeros(1,max);
%
% Cond Init
%
X(1)=0.1;
Y(1)=0.00;
epsi=0.000;
h=0.01;
%%%%%%%%%%%%%%%%%%%%%%%%%
% systeme :
% x'=y
% y'=-x
%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%
% Verlet
%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:max+1
y0=Y(i);
x0=X(i);
     for j=1:nbit
          x1=x0  - h*y0;
          y1=y0  + h*x1;
          x0=x1;
          y0=y1;
     end;
     Y(i+1)=y1;
     X(i+1)=x1;
end;
     
%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verlet Rectifie; Staggered
%%%%%%%%%%%%%%%%%%%%%%%%%%
%demi-pas init

for i=1:max+1
%demi-pas init
     ym0=Y(i)+h*X(i)/2;
     x0=X(i);

     for j=1:nbit
          x1=x0  - h*ym0;
          ym1=ym0+h*x1;
          x0=x1;
          ym0=ym1;
     end;

%demi-pas concl
    Y(i+1)=ym1-h*x1/2;
     X(i+1)=x1;
end;
     

%%%%%%%%%%%%%%%%%%%%
plot(X,Y,'.')


%for i=2:max
  %   Y(i)=Y(i-1)+h*        (     epsi*   (1- X(i-1)*X(i-1))  *   Y(i-1)   +     X(i-1));
   %  X(i)=X(i-1)+h*Y(i-1);
%end;

%for i=2:max
 %    Y(i)=Y(i-1)+h*        (     epsi*   (1- X(i-1)*X(i-1))  *   Y(i-1)   +     X(i-1));
  %   X(i)=X(i-1)+h*Y(i);
%end;
