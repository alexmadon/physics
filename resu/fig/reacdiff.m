m=100;n=50;
U=zeros(m,n);  %0.2525
UU=U;
V=U;
VV=U; 
%gamma=.5;dt=.01
%gamma=5;a=.5;b=2;D=10;dt=0.01;U=0.25+0.001*rand(m,n);V=0.6+0.001*rand(m,n);
%gamma=5;a=-.5;b=2;D=10;dt=0.01;U=-0.24+0.001*rand(m,n);V=60+0.001*rand(m,n);

gamma=5;a=.5;b=2;D=10;dt=0.01;U=0.25+0.001*rand(m,n);V=0.6+0.001*rand(m,n);


maxi=50;
nbimag=10;
for j=1:nbimag%%%%%%%%%%%%%%%%%%%%%%%
%for j=nbimag+1:nbimag+nbimag%%%%%%%%%%%%%%%%%%%%%%%
for i=1:maxi
UU=U+dt*gamma*(a-b*U+U.*U./V)+dt*([U(2:m,:);U(1,:)]+[U(:,2:n) U(:,1)]+...
[U(:,n) U(:,1:n-1)]+[U(m,:);U(1:m-1,:)]-4*U);
VV=V+dt*gamma*(U.*U-V)+dt*D*([V(2:m,:);V(1,:)]+[V(:,2:n) V(:,1)]+...
[V(:,n) V(:,1:n-1)]+[V(m,:);V(1:m-1,:)]-4*V);
U=UU;
V=VV;
end;

figurepap([1 1 12 6])
maxU=max(max(UU))
minU=min(min(UU))
PP=(UU-minU)/(maxU-minU);
nbc=2;
colormap(gray(nbc));
PPP=(nbc*(PP+1/nbc));
image(PPP')
imag=['reacdt',num2str(100*dt),'ga',num2str(10000*gamma),'ite',int2str(j)];
fprintf(1,['save ps-file ',imag,'.eps\n'])
print('-deps',imag)

end;%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%imag=['reacdt',num2str(100*dt),'ga',num2str(10000*gamma),'ite',int2str(j)];
%fprintf(1,['save ps-file ',imag,'.eps\n'])
%print('-deps',imag)

