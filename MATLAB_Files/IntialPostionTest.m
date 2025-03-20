clc; close all; clear all; %Inital set up

load BirdBot_Data.mat
Theta6=q1_0;
Theta5=q1_0-delta;
Theta4=q2_0-q1_0+delta;
Theta3=Theta4;
Theta2=q1_0-delta;

%% Planar postions X and Y
xf=0; yf=0;
x6=-a6*sin(q1_0);
y6=a6*cos(q1_0);
xE=-l6*sin(q1_0);
yE=l6*cos(q1_0);
x5=xE-a5*sin(q1_0-delta);
y5=yE+a5*cos(q1_0-delta);

xB=xE-(l5-BtoD)*sin(q1_0-delta);
yB=yE+(l5-BtoD)*cos(q1_0-delta);
xD=xE-(l5)*sin(q1_0-delta);
yD=yE+(l5)*cos(q1_0-delta);

x3=xB+a3*sin(Theta3);
y3=yB+a3*cos(Theta3);
x4=xD+a4*sin(Theta4);
y4=yD+a4*cos(Theta4);

xA=xB+l3*sin(Theta3);
yA=yB+l3*cos(Theta3);
xC=xD+l3*sin(Theta3);
xC=yD+l3*cos(Theta3);
x2=xA-a2*sin(Theta2);
y2=yA+a2*cos(Theta2);
xH=xA-l2*sin(Theta2);
yH=yA+l2*cos(Theta2);

figure(1)
plot([xf,x6,xE,x5,xB,xD,x3,x4,xA,x2,xH],[yf,y6,yE,y5,yB,yD,y3,y4,yA,y2,yH])
figure(2)
scatter([xf,x6,xE,x5,xB,xD,x3,x4,xA,x2,xH],[yf,y6,yE,y5,yB,yD,y3,y4,yA,y2,yH])