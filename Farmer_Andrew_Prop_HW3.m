%Andrew Farmer Prop HW 3
clc
clear all 
close all
f = @(m) (275.2598*m*((1 + (2500-220*(1+.2*m))/(42500))*3.37*(1+.2*m^2)^(-1/2)-1))/1000;  %specfic Thrust
x = 1;
y =1;
for m = 1:.5:8
    disp(m)
    tem(x,2) = feval(f,m);
    tem(x,1) = m;
    x = x +1;
    y = y+1;
end
plot(tem(:,1),tem(:,2))

f2 = @(t) 