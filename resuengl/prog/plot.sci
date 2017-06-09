
i=100;
str=sprintf('%d',i);
'b'+str+'a';


// SOLUTIONS
// brownian motion:
// S_t=sigma*W_t

// brownian motion + drift
// S_t=sigma*W_t+mu*t

//exponential brownian motion+drift:
// S_t=exp(sigma*W_t+mu*t)

// STOCHASTIC DIFFERENTIAL EQUATIONS
//dX_t=sigma(t,X_t)dW_t+mu(t,X_t)dt

rand('normal')
maxim=32001;
x=0:maxim-1;
y=zeros(1,maxim);
for i=2:maxim
y(i)=y(i-1)+rand;
end;

x=x/1000;
y=y/10;


//=============================
//plotting window 1
xbasc(); //clear window
xdel()//delete window
driver('Rec')
xset("font",4,8) // fontid, fontsize
xsetech([-0.0,-0.0,1.,1.]);//Upper-Left Width Height


xbasc(); //clear window
t=1:1:1001;
rect=[min(x(t)),min(y(t)),max(x(t)),max(y(t))];
plot2d(x(t)',y(t)',-1,'011',' ',rect,[5,3,5,3])
file_ps='b0_5.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)

told=t;

xbasc(); //clear window
t=1:6:6000;
rect=[min(x(t)),min(y(t)),max(x(t)),max(y(t))];
plot2d(x(t)',y(t)',-1,'011',' ',rect,[5,3,5,3])
xrect(min(x(told)),max(y(told)),max(x(told))-min(x(told)),max(y(told))-min(y(told)))
file_ps='b0_4.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)


told=t;

xbasc(); //clear window
t=1:32:32000;
rect=[min(x(t)),min(y(t)),max(x(t)),max(y(t))];
plot2d(x(t)',y(t)',-1,'011',' ',rect,[5,3,5,3])
xrect(min(x(told)),max(y(told)),max(x(told))-min(x(told)),max(y(told))-min(y(told)))
file_ps='b0_3.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)


//========================================




//========================================



maxim=32001;
x=0:maxim-1;


x=x/1000;

y=sin(0.5*x-.9)+sin(1.2*x-.7)+sin(.6*x-.7);
//plot(x,y)



//=============================
//plotting window 1
xbasc(); //clear window
xdel()//delete window
driver('Rec')
xset("font",4,8) // fontid, fontsize
xsetech([-0.0,-0.0,1.,1.]);//Upper-Left Width Height


xbasc(); //clear window
t=1:10:1001;
rect=[min(x(t)),min(y(t)),max(x(t)),max(y(t))];
plot2d(x(t)',y(t)',-1,'011',' ',rect,[5,3,5,3])
file_ps='n0_5.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)

told=t;

xbasc(); //clear window
t=1:60:6001;
rect=[min(x(t)),min(y(t)),max(x(t)),max(y(t))];
plot2d(x(t)',y(t)',-1,'011',' ',rect,[5,3,5,3])
xrect(min(x(told)),max(y(told)),max(x(told))-min(x(told)),max(y(told))-min(y(told)))
file_ps='n0_4.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)


told=t;

xbasc(); //clear window
t=1:320:32001;
rect=[min(x(t)),min(y(t)),max(x(t)),max(y(t))];
plot2d(x(t)',y(t)',-1,'011',' ',rect,[5,3,5,3])
xrect(min(x(told)),max(y(told)),max(x(told))-min(x(told)),max(y(told))-min(y(told)))
file_ps='n0_3.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)


//========================================




//======================
xbasc(); //clear window
xsetech([-0.05,-0.05,1.1,1.1]);
//Upper-Left Width Height

plot2d(x,y,-1,'011',' ',[0.3,-2.3,0.6,-1.4]); //corner_b corner_u

xx=0.3;yy=-.3;ww=0.3;hh=2;
xrect(xx,yy,ww,hh)





// printing
file_ps='0_1.ps';
xbasimp(0,file_ps,0);
file_psl=file_ps+'.0';
unix_w("BEpsf "+file_psl)



