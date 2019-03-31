%(a)
rng(2);
d=2;
N=2^10;
u=rand(N,d);
u=u*0.5;
c = Clayton_c(u,1/2);
MC_estimate=mean(c*(1/2)*(1/2),1)
%(b)
rng(2);
d=2;
N=2^10;
Y = sobolset(d);
Y = scramble(Y,'MatousekAffineOwen');
Y = net(Y,N);
Y=Y*0.5;
c = Clayton_c(Y,1/2);
QMC_estimate=mean(c*(1/2)*(1/2),1)