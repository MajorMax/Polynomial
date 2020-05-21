% Investigation of high-order polynomial properties

%Graph of the polynomial on the interval with all roots
load('m.txt')
M = poly(m)
t = -10:0.01:15.2
y = polyval(M,t)
plot(t,y)
grid on
rM = roots(M)
hold on
ind = imag(rM) == 0
r0 = rM(ind)
y0 = polyval(M, r0)
plot(r0,y0, 'm o')
text(r0,y0,'root')
title('All roots of the polynomial');

%Graph on two specific (smaller) intervals
 figure;
 t2=3:0.05:14.56
 y2=polyval(M,t2)
 plot(t2,y2)
 grid on
 title('Roots on the interval 3:14.56');
 figure;
 t3=14.4:0.01:15.2
 y3=polyval(M,t3)
 plot(t3,y3)
 grid on
 title('Roots on the interval 14.4:15.2');
 
 %Derivatives and their real roots
 p1=polyder(M)
 yp1=polyval(p1,t)
 p2=polyder(p1)
 yp2=polyval(p2,t)
 p3=polyder(p2)
 yp3=polyval(p3,t)
 
 rp1=roots(p1);
 ind = imag(rp1) == 0;
 r1=rp1(ind)
 yr1=polyval(p1,r1)
 
 rp2=roots(p2);
 ind = imag(rp2) == 0;
 r2=rp1(ind)
 yr2=polyval(p2,r2)
 
 rp3=roots(p3);
 ind = imag(rp3) == 0;
 r3=rp1(ind)
 yr3=polyval(p3,r3)
 
 %Graphs of the polynomial and its derivatives
 figure;
 
 subplot(4, 1, 1)
 t = -10:0.5:15.2
 y = polyval(M,t)
 plot(t,y)
 hold on
 grid on
 plot(r0, y0, 'm o')
 title('Polynomial')
 
 subplot(4, 1, 2)
 t = -10:0.5:15.2
 yp1 = polyval(p1,t)
 plot(t,yp1)
 hold on
 grid on
 plot(r1, yr1, 'm o')
 title('First Derivative')
 
 subplot(4, 1, 3)
 t = -10:0.5:15.2
 yp2 = polyval(p2,t)
 plot(t,yp2)
 hold on
 grid on
 plot(r2, yr2, 'm o')
 title('Second Derivative')
 
 subplot(4, 1, 4)
 t = -10:0.5:15.2
 yp3 = polyval(p3,t)
 plot(t,yp3)
 hold on
 grid on
 plot(r3, yr3, 'm o')
 title('Third Derivative')
 
 %Maxima and Minima
 x1 = fminbnd(@POLYNOM, -10, -2)
 x2 = fminbnd(@UNPOLYNOM, -10, -2)
 x3 = fminbnd(@POLYNOM, -2, 6)
 x4 = fminbnd(@UNPOLYNOM, -2, 6)
 x5 = fminbnd(@POLYNOM, 6, 15.2)
 x6 = fminbnd(@UNPOLYNOM, 6, 15.2)



 
 