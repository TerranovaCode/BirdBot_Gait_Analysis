clc; close all; clear all; %Inital set up
BirdBot_Data %Runs .m file to produce fresh .mat file
load("BirdBot_Data.mat") % Loading a file which has known values 
syms l2 l3 l4 l5 l6 %length of links
l3=l4;
syms a2 a3 a4 a5 a6  %COM of each link 
syms q1(t) q2(t)  %angle of motor by time.
%% Angles
Theta6=q1;
Theta5=q1-delta;
Theta4=q2-q1+delta;
Theta3=Theta4;
Theta2=q1-delta;

%% Planar postions X and Y
xf=0; yf=0;
x6=-a6*sin(q1);
y6=a6*cos(q1);
xE=-l6*sin(q1);
yE=l6*cos(q1);
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
xC=yD+l3*cos(Theta3);
x2=xA-a2*sin(Theta2);
y2=yA+a2*cos(Theta2);
xH=xA-l2*sin(Theta2);
yH=yA+l2*cos(Theta2);

 %% Differaentiating
 %No longer required velocity function works. 

% xDot6=diff(x6,t);
% yDot6=diff(y6,t);
% xDotE=diff(xE,t);
% yDotE=diff(yE,t);
% xDot5=diff(x5,t);
% yDot5=diff(x5,t);

% xDotB=diff(xB,t);
% yDotB=diff(yB,t);
% % xDotD=diff(xD,t);
% % yDotD=diff(yD,t);

% % xDot3=diff(x3,t);
% % yDot3=diff(y3,t);
% xDot4=diff(x4,t);
% yDot4=diff(y4,t);

% xDotA=diff(xA,t);
% yDotA=diff(yA,t);
% xDot2=diff(x2,t);
% yDot2=diff(y2,t);
% xDotH=diff(xH,t);
% yDotH=diff(yH,t);
%% Velocity
vSq6=FindVelocity(x6,y6,t);
vSqE=FindVelocity(xE,yE,t);
vSq5=FindVelocity(x5,y5,t);
vSqB=FindVelocity(xB,yB,t);

vSq4=FindVelocity(x4,y4,t);
vSqA=FindVelocity(xA,yA,t);
vSq2=FindVelocity(x2,y2,t);
vSqH=FindVelocity(xH,yH,t);

%angular velocity at joints
omega6=diff(Theta6,t);
omega5=diff(Theta5,t);
omega4=diff(Theta4,t);
omega3=diff(Theta3,t);
omega2=diff(Theta2,t);


