function vSq=FindVelocity(x_pos,y_pos,t) %creating a function to find velocity
x_posdot=diff(x_pos,t);
y_posdot=diff(y_pos,t);
vSq=x_posdot^2 + y_posdot^2; %returns velocity squared
end
