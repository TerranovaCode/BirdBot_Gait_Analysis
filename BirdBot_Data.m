%BirdBot Data
clc; close all; clear all; %Inital set up

%% Data Found
g=9.81; %gravity 
K_spring=3.12;%Spring Stiffness
E_T=110; %Young Modulus in GPa
D_T=1; %Diameter of tendon in mm
A_t=pi*(D_T*0.5)^2; 
delta=18.59*(pi/180);%fixed angle of the foot
BtoD=30; %distance between bars 
q1_0=(30.04)*(pi/180);%Intial angle
q2_0=-42.35*(pi/180);
rB=24; rA=8.5;rK=14;
Lgpt0=321.08;%Intital Length of tendon
K_Tendon=E_T*(A_t/Lgpt0);
%% Link Data
l2= 80; %Overall length pivot to pivot
m2=24.86 ; %Mass 
I2=23216.99 ; %Moment of Inertia
a2=49.54 ; %Distance of COM to first pivot 


m3=17.45 ; %Mass 
I3=14850.68 ; %Moment of Inertia
a3=59.62 ; %Distance of COM to first pivot 

l4=110; %Overall length pivot to pivot
m4=24.57 ; %Mass 
I4=31301.87; %Moment of Inertia
a4=59.46 ; %Distance of COM to first pivot
l3=l4;
l5=110 ; %Overall length pivot to pivot
m5=38.77 ; %Mass 
I5=41552.76 ; %Moment of Inertia
a5=57 ; %Distance of COM to first pivot

l6=40.25 ; %Overall length pivot to pivot
m6=15.27 ; %Mass 
I6= 3796.93; %Moment of Inertia
a6= 23.23; %Distance of COM to first pivot
%% Data to collect 


save("Birdbot_Data.mat");
fprintf("Data Saved")