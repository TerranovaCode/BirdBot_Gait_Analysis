clc; close all; clear all; %Inital set up

load BirdBot_Data.mat

q1=(0:0.1:20)'*pi/180 
q2=(0:0.3:60)'*pi/180 
t=(0:0.0025:0.5)';

n=length(q1);
n=length(q1);

q1dot=diff(q1)./diff(t);
q1dot=[q1dot;q1dot(n-1)]; %adding elmement so size is same 
q2dot=diff(q2)./diff(t);
q2dot=[q2dot;q2dot(n-1)];
Us=[];
q1doubledot=diff(q1dot)./diff(t);
q1doubledot=[q1doubledot(1);q1doubledot];

q2doubledot=diff(q2dot)./diff(t);
q2doubledot=[q2doubledot(1);q2doubledot];
for i=1:n
x(1)=q1(i);
x(2)=q2(i);
x(3)=q1dot(i);
x(4)=q2dot(i);
D=...
[(3877*(l6*cos(x(1)) + a5*cos((1859*pi)/18000 - x(1)))^2)/100 + (3877*(l6*sin(x(1)) - a5*sin((1859*pi)/18000 - x(1)))^2)/100 + (1243*(l6*cos(x(1)) + l4*cos((1859*pi)/18000 - x(1) + x(2)) + a2*cos((1859*pi)/18000 - x(1)) + cos((1859*pi)/18000 - x(1))*(l5 - 30))^2)/50 + (2457*(l6*cos(x(1)) + a4*cos((1859*pi)/18000 - x(1) + x(2)) + l5*cos((1859*pi)/18000 - x(1)))^2)/100 + (1527*a6^2*cos(x(1))^2)/100 + (1243*(l4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + a2*sin((1859*pi)/18000 - x(1)) + sin((1859*pi)/18000 - x(1))*(l5 - 30))^2)/50 + (1527*a6^2*sin(x(1))^2)/100 + (2457*(a4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + l5*sin((1859*pi)/18000 - x(1)))^2)/100, - (1243*l4*cos((1859*pi)/18000 - x(1) + x(2))*(l6*cos(x(1)) + l4*cos((1859*pi)/18000 - x(1) + x(2)) + a2*cos((1859*pi)/18000 - x(1)) + cos((1859*pi)/18000 - x(1))*(l5 - 30)))/50 - (2457*a4*cos((1859*pi)/18000 - x(1) + x(2))*(l6*cos(x(1)) + a4*cos((1859*pi)/18000 - x(1) + x(2)) + l5*cos((1859*pi)/18000 - x(1))))/100 - (1243*l4*sin((1859*pi)/18000 - x(1) + x(2))*(l4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + a2*sin((1859*pi)/18000 - x(1)) + sin((1859*pi)/18000 - x(1))*(l5 - 30)))/50 - (2457*a4*sin((1859*pi)/18000 - x(1) + x(2))*(a4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + l5*sin((1859*pi)/18000 - x(1))))/100
                                     - (1243*l4*cos((1859*pi)/18000 - x(1) + x(2))*(l6*cos(x(1)) + l4*cos((1859*pi)/18000 - x(1) + x(2)) + a2*cos((1859*pi)/18000 - x(1)) + cos((1859*pi)/18000 - x(1))*(l5 - 30)))/50 - (2457*a4*cos((1859*pi)/18000 - x(1) + x(2))*(l6*cos(x(1)) + a4*cos((1859*pi)/18000 - x(1) + x(2)) + l5*cos((1859*pi)/18000 - x(1))))/100 - (1243*l4*sin((1859*pi)/18000 - x(1) + x(2))*(l4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + a2*sin((1859*pi)/18000 - x(1)) + sin((1859*pi)/18000 - x(1))*(l5 - 30)))/50 - (2457*a4*sin((1859*pi)/18000 - x(1) + x(2))*(a4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + l5*sin((1859*pi)/18000 - x(1))))/100,                                                                                                                                                                                                                                                                                                                                                                                                                                                     (2457*a4^2*cos((1859*pi)/18000 - x(1) + x(2))^2)/100 + (1243*l4^2*cos((1859*pi)/18000 - x(1) + x(2))^2)/50 + (2457*a4^2*sin((1859*pi)/18000 - x(1) + x(2))^2)/100 + (1243*l4^2*sin((1859*pi)/18000 - x(1) + x(2))^2)/50]
 
 
C=...
[
(2457*(l6*cos(x(1)) + a4*cos((1859*pi)/18000 - x(1) + x(2)) + l5*cos((1859*pi)/18000 - x(1)))*(a4*sin((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2 - l6*sin(x(1))*x(3)^2 + l5*sin((1859*pi)/18000 - x(1))*x(3)^2))/100 - (2457*(l6*cos(x(1))*x(3)^2 + l5*cos((1859*pi)/18000 - x(1))*x(3)^2 + a4*cos((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2)*(a4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + l5*sin((1859*pi)/18000 - x(1))))/100 - (2635286599611659*a6*sin(x(1)))/17592186044416 - (30442996474885179*l6*sin(x(1)))/35184372088832 + (8480549018003729*a4*sin((1859*pi)/18000 - x(1) + x(2)))/35184372088832 + (4290322519079623*l4*sin((1859*pi)/18000 - x(1) + x(2)))/17592186044416 + (4290322519079623*a2*sin((1859*pi)/18000 - x(1)))/17592186044416 + (3345450604680551*a5*sin((1859*pi)/18000 - x(1)))/8796093022208 + (3877*(l6*sin(x(1)) - a5*sin((1859*pi)/18000 - x(1)))*(l6*cos(x(1))*x(3)^2 + a5*cos((1859*pi)/18000 - x(1))*x(3)^2))/100 - (3877*(l6*sin(x(1))*x(3)^2 - a5*sin((1859*pi)/18000 - x(1))*x(3)^2)*(l6*cos(x(1)) + a5*cos((1859*pi)/18000 - x(1))))/100 + (8480549018003729*l5*sin((1859*pi)/18000 - x(1)))/35184372088832 + (4290322519079623*sin((1859*pi)/18000 - x(1))*(l5 - 30))/17592186044416 - (1243*(l4*cos((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2 + l6*cos(x(1))*x(3)^2 + a2*cos((1859*pi)/18000 - x(1))*x(3)^2 + cos((1859*pi)/18000 - x(1))*x(3)^2*(l5 - 30))*(l4*sin((1859*pi)/18000 - x(1) + x(2)) - l6*sin(x(1)) + a2*sin((1859*pi)/18000 - x(1)) + sin((1859*pi)/18000 - x(1))*(l5 - 30)))/50 + (1243*(l6*cos(x(1)) + l4*cos((1859*pi)/18000 - x(1) + x(2)) + a2*cos((1859*pi)/18000 - x(1)) + cos((1859*pi)/18000 - x(1))*(l5 - 30))*(sin((1859*pi)/18000 - x(1))*x(3)^2*(l5 - 30) + l4*sin((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2 - l6*sin(x(1))*x(3)^2 + a2*sin((1859*pi)/18000 - x(1))*x(3)^2))/50
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (2457*a4*sin((1859*pi)/18000 - x(1) + x(2))*(l6*cos(x(1))*x(3)^2 + l5*cos((1859*pi)/18000 - x(1))*x(3)^2 + a4*cos((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2))/100 - (4290322519079623*l4*sin((1859*pi)/18000 - x(1) + x(2)))/17592186044416 - (8480549018003729*a4*sin((1859*pi)/18000 - x(1) + x(2)))/35184372088832 + (1243*l4*sin((1859*pi)/18000 - x(1) + x(2))*(l4*cos((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2 + l6*cos(x(1))*x(3)^2 + a2*cos((1859*pi)/18000 - x(1))*x(3)^2 + cos((1859*pi)/18000 - x(1))*x(3)^2*(l5 - 30)))/50 - (2457*a4*cos((1859*pi)/18000 - x(1) + x(2))*(a4*sin((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2 - l6*sin(x(1))*x(3)^2 + l5*sin((1859*pi)/18000 - x(1))*x(3)^2))/100 - (1243*l4*cos((1859*pi)/18000 - x(1) + x(2))*(sin((1859*pi)/18000 - x(1))*x(3)^2*(l5 - 30) + l4*sin((1859*pi)/18000 - x(1) + x(2))*(x(3) - x(4))^2 - l6*sin(x(1))*x(3)^2 + a2*sin((1859*pi)/18000 - x(1))*x(3)^2))/50 - (2949375*pi^2*(6098400*pi - 25920000*x(2)))/(16*(34375*pi + 1252212)^2)]
B=[1 0;0 1];
qdoubledot=[q1doubledot(i);q2doubledot(i)];
u=inv(B)*(D*qdoubledot+C);
Us=[Us,u]; %storing the calculation 
end
U1=Us(1,:);
U2=Us(2,:);
%% figure 1
figure(1)
plot(t,U1, t,U2)
title('Motor torque by time')
xlabel("Time(s)")
ylabel('$\mathrm{Torque}\ \tau\ \left(\mathrm{N} \cdot \mathrm{m}\right)$', 'Interpreter', 'latex')
legend('u1','u2')
%U is the tourqe 
%% Angles
Theta6=q1;
Theta5=q1-delta;
Theta4=q2-q1+delta;
Theta3=Theta4;
Theta2=q1-delta;
%% Planar postions X and Y
xf=0; yf=0;
x6=xf-a6*sin(q1);
y6=xf+a6*cos(q1);
xE=xf-l6*sin(q1);
yE=xf+l6*cos(q1);
x5=xE-a5*sin(q1-delta);
y5=yE+a5*cos(q1-delta);

xB=xE-(l5-BtoD)*sin(q1-delta);
yB=yE+(l5-BtoD)*cos(q1-delta);
xD=xE-(l5)*sin(q1-delta);
yD=yE+(l5)*cos(q1-delta);

x3=xB+a3*sin(Theta3);
y3=yB+a3*cos(Theta3);
x4=xD+a4*sin(Theta4);
y4=yD+a4*cos(Theta4);

xA=xB+l3*sin(Theta3);
yA=yB+l3*cos(Theta3);
xC=xD+l3*sin(Theta3);
yC=yD+l3*cos(Theta3);
x2=xA-a2*sin(Theta2);
y2=yA+a2*cos(Theta2);
xH=xA-l2*sin(Theta2);
yH=yA+l2*cos(Theta2);
%% Figure 2 and 3
figure(2)
title("intial postions")
figure(3)
title("Motion Animation")
xlabel("Z axis displacement")
ylabel("Y axis displacement")
for i=1:n
plot([xf,xE(i),xB(i),xA(i),xH(i)],[xf,yE(i),yB(i),yA(i),yH(i)])
xlim([-100 100]); ylim([-200 300]);
grid on
pause(0.01)

end
%% Figure 3
figure(4)
plot(xA, yA,xB,yB,xC,yC,xD,yD,xE,yE,xH,yH)
title("Trunk postions")
xlabel("Z axis displacement")
ylabel("Y axis displacement")
legend('A','B','C','D','E','H')