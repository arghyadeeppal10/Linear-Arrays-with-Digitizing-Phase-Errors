clc
clear all;
close all;

d = 0.54;
N = 32;

%% Raised cosine current
raised_cos = -10;
x = sqrt(10^(raised_cos/10)); 
h = x/(1-x);
for i=1:N
    I(i) = h+cos(-pi/2 + pi*(i-1)/(N-1));
end

syms theta 
sum = 0;
angle = 60;
alpha = -cos(angle*pi/180);
psi = 1.08*pi.*(cos(theta)+ alpha);

n = length(I);

for j = 1:n
     AF(j) = I(j).*exp(1i*j*psi);
     sum = sum + AF(j);
end

af = matlabFunction(sum);
theta = 0:pi/10000:1*pi;
E = (af(theta));
U_dB = 10*log10(abs(E).^2);
U_dB = max(U_dB,-0);
%Ax.RLim(1) = 0.5;
figure(1)
polarplot(theta,U_dB)
title("Plot of Radiation Pattern")
%rlim([0 30])
figure(2)
polarplot(theta,abs(E))
title("Plot of Absolute Value of Electric Field")

psi1 = 1.08*pi.*( alpha);

for j = 1:n
     ALF(j) = j.*psi1;
     %sum1 = sum + AF(j);
end
figure(3)
x= linspace(1,N,32);
plot(x,-ALF)
title("Linear Phase Front")

 angles= vpa((mod(vpa(-ALF*180/pi,3),360)), 3);
% xlswrite("data.xlsx",angles)
figure(4)
x= linspace(1,N,32);
plot(x,angles)
grid on
title("4 bit Angle Phase Plot")

sum =0;

bits=4;
A = dec2bin(0:2^bits-1)-'0';
ANG = [22.5,45,90,180]';
states = A*ANG;

error=zeros(length(angles),length(states));
for i=1:length(angles)
    for j=1:length(states)
        error(i,j) = abs(angles(i)-states(j));
    end
end

[val,loc] = min(error');
for i=1:length(angles)
    new_angle(i) = states(loc(i));
end

sum_error = 0;
for i=1:length(angles)
    error = angles(i)-new_angle(i);
    sum_error = sum_error + error;
end


figure(5)
plot(x,angles)
grid on
hold on
plot(x,new_angle)
title("Comparison of Angle Phase Plot and Golden Plot")
legend("4 bit Angle Phase", "Golden Phase")
hold off


sum2bit=0;
syms theta
%-----
for j = 1:n
     AF2bit(j) = I(j).*exp((1i*(j*1.08*pi.*(cos(theta)))+ 1i*((-new_angle(j).*(pi/180)))));
     sum2bit = sum2bit + AF2bit(j);
end



af2bit = matlabFunction(sum2bit);
theta = 0:pi/10000:1*pi;
E2bit = (af2bit(theta));
E2bit = E2bit ./ max(E2bit);
U_dB2bit = 10*log10(abs(E2bit).^2);
U_dB2bit= max(U_dB2bit,-30);
% U_dB2bit = U_dB2bit./max(U_dB2bit);
%Ax.RLim(1) = 0.5;
figure(6)
polarplot(theta,U_dB2bit)
title("Plot of Radiation Pattern for 4 bit Phase Shifter")
rlim([-30 0])
figure(7)
polarplot(theta,abs(E2bit))
title("Plot of Absolute Value of Electric Field for 4 bit Phase Shifter")

%-----directivity
Usin= @(theta) (abs((af2bit(theta).^2).* sin(theta)));
prad= integral(Usin,0,pi).*2*pi;
directivity= 4*pi*(max(abs(af2bit(theta).^2)))./prad

