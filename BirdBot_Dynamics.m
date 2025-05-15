clc; close all; clear all; %Inital set upr
BirdBot_Kinematics %Calling Kinematics 
syms deltaGS Lgpt F_T
%% Three Unkowns
eq1 = F_T==K_Tendon*deltaGS;
eq2 = (F_T/A_t)==E_T*((Lgpt-Lgpt0)/Lgpt0);
eq3 = Lgpt==Lgpt0-deltaGS-rA*(q2-q2_0)-rB*(q2-q2_0);
sol= solve([eq1, eq2, eq3], [Lgpt, F_T, deltaGS]);

Lgpt_sol = sol.Lgpt
F_T_sol = sol.F_T
deltaGS_sol = sol.deltaGS
%% Kinetic 
T6=0.5*(m6*vSq6+I6*omega6);
T5=0.5*(m5*vSq5+I5*omega5);
T4=0.5*(m4*vSq4+I4*omega4);
T2=0.5*(m2*vSq2+I2*omega2);
T=T6+T5+T4+T2;

%% Potential Energy 
V6 = m6 * g * y6;
V5 = m5 * g * y5;
V4 = m4 * g * y4;
V2 = m2 * g * y2;
V_gravity = V6 + V5 + V4 + V2;
V_Tendon=0.5*K_spring*deltaGS_sol^2;
V_Spring=0.5*K_Tendon*(Lgpt_sol-Lgpt0)^2
V=V_gravity+V_Tendon

L=T-V

% qq = [q1(t), q2(t)];
% qdot = [diff(q1(t),t) , diff(q2(t),t)];
% dLdqdot = jacobian(L,qdot);
% ddt_dLdqdot = diff(dLdqdot,t);
% dLdq = jacobian(L,qq);
% eq = ddt_dLdqdot - dLdq;

dLdqdot1 = diff(L,diff(q1(t),t));
ddt_dLdqdot1 = diff(dLdqdot1,t);
dLdq1 = diff(L,q1(t));
eq1 = ddt_dLdqdot1 - dLdq1;

dLdqdot2 = diff(L,diff(q2(t),t));
ddt_dLdqdot2 = diff(dLdqdot2,t);
dLdq2 = diff(L,q2(t));
eq2 = ddt_dLdqdot2 - dLdq2;

eq1 = formula(eq1);
eq2 = formula(eq2);
eq = [eq1; eq2]


qdoubledot = [diff(q1(t),t,t); diff(q2(t),t,t)];
D = jacobian(eq, qdoubledot) 
C = subs(eq , {diff(q1(t),t,t), diff(q2(t),t,t)} , {0,0})

