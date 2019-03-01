%%LOG_FUN
x=0:0.08:15;
y1=log(x);
y2=log2(x);
y3=log10(x);
subplot(5,5,[1 2 3 6 7 8])
plot(x,y1,'m')
hold on;
plot(x,y2,'b');
plot(x,y3,'r');
set(gca,'color',[0 1 1]);
legend('log(x)','log2(x)','log10(x)');


%%rectpuls
x2=(-0.5):0.01:0.5;
z2=rectpuls(x2,0.2);
subplot(5,5,11);
plot(x2,z2,'k','LineWidth',3);

%%diric wave
x3=0:2*pi/100:15;
z3=diric(x3,8);
subplot(5,5,12);
plot(x3,z3,'b','LineWidth',2);
axis([0 15 -1 1])


%%circle
%zero origin and radius=2 
x4=-2:0.1:2;
z41=sqrt(4-power(x4,2));
z42=-sqrt(4-power(x4,2));
subplot(5,5,13);
%(+)
plot(x4,z41,'m','LineWidth',2);
hold on;
%(-)
plot(x4,z42,'m','LineWidth',2);
axis([-2 2 -2 2])


%%triangular number
x5=1:1:10;
%matrix multiplication rules will case error
z5=(x5.^2+x5)/2;
subplot(5,5,[4 5 9 10 14 15]);
stem(x5,z5,'m');
axis([1 10 0 60])




%%x power n
x6=0:0.01:1;
z61=x6;
z62=power(x6,2);
z63=power(x6,4);
z64=power(x6,8);
z65=power(x6,0.5);
z66=power(x6,0.25);
z67=power(x6,0.125);
subplot(5,5,[16 17 18 21 22]);
plot(x6,z61,'g','LineWidth',2);
hold on;
plot(x6,z62,'c','LineWidth',2);
plot(x6,z63,'k','LineWidth',2);
plot(x6,z64,'r','LineWidth',2);
plot(x6,z65,'b','LineWidth',2);
plot(x6,z66,'m','LineWidth',2);
plot(x6,z67,'y','LineWidth',2);
legend('x','x^2','x^4','x^8','x^(0.5)','x^(0.25)','x^(0.125)');



%%sin_wave
x7=0:pi/100:15;
z7=sin(x7);
subplot(5,5,19);
plot(x7,z7,'r','LineWidth',2);
axis([0 15 -1 1])



%%square_wave
x8=0:0.1:15;
z8=square(x8);
subplot(5,5,20);
plot(x8,z8,'g','LineWidth',3);
axis([0 15 -1 1])



%%tripulse
x9=-0.5:0.01:0.5;
z9=triangularPulse(2*x9);
subplot(5,5,24);
plot(x9,z9,'m','LineWidth',2);
axis([-0.5 0.5 0 1])



%%sawtooth
x10=0:0.1:15;
z10=sawtooth(x10);
subplot(5,5,25);
plot(x10,z10,'y','LineWidth',2);
axis([0 15 -1 1])


%%position & size
set(gcf, 'Position',  [100, 50, 1100, 600])
