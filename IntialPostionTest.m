clc; close all; clear all; %Inital set up

load BirdBot_Data.mat
Theta6=q1_0;
Theta5=q1_0-delta;
Theta4=q2_0 + q1_0 - delta;
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

x3=xD+a3*sin(Theta3);
y3=yD+a3*cos(Theta3);
x4=xB+a4*sin(Theta4);
y4=yB+a4*cos(Theta4);

xA=xB - l3*sin(Theta3);
yA=yB + l3*cos(Theta3);
xC=xD - l3*sin(Theta3);
yC=yD + l3*cos(Theta3);
x2=xA-a2*sin(Theta2);
y2=yA+a2*cos(Theta2);
xH=xA-l2*sin(Theta2);
yH=yA+l2*cos(Theta2);

% figure(1)
% plot([xf,x6,xE,x5,xB,xD,x3,xA,x2,xH],[yf,y6,yE,y5,yB,yD,y3,yA,y2,yH])
% figure(2)
% scatter([xf,x6,xE,x5,xB,xD,x3,x4,xA,x2,xH],[yf,y6,yE,y5,yB,yD,y3,y4,yA,y2,yH])
X = [xA, xB, xC, xD, xE, xf, xH]; % Replace with actual x values
Y = [yA, yB, yC, yD, yE, yf, yH]; % Replace with actual y values
intpost=figure(1)
axis equal
title("BirdBot Initial postions")
hold on;
plot([X(1) X(2)], [Y(1) Y(2)], 'b-o'); % A to B
plot([X(2) X(4)], [Y(2) Y(4)], 'b-o'); % B to D
plot([X(4) X(3)], [Y(4) Y(3)], 'b-o'); % D to C
plot([X(3) X(1)], [Y(3) Y(1)], 'b-o'); % C to A
plot([X(4) X(5)], [Y(4) Y(5)], 'b-o'); % D to E
plot([X(5) X(6)], [Y(5) Y(6)], 'b-o'); % E to F
plot([X(3) X(7)], [Y(3) Y(7)], 'b-o'); % C to H
grid on
xlabel("X postion")
ylabel("Y postion")
axis equal
exportgraphics(intpost,"BirdBot Intial Postions.png")



