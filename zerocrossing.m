clc
clear all
close all

fc=500e3;
fm=10e3;
fs=6e8;
kf=300e3;
t=0:1/fs:1e-3;
m=cos(2*pi*fm*t);
% l=cumsum(m)
% plot(t,l)
s_fm=cos(2*pi*fc*t+2*pi*kf*cumsum(m)*1/fs);
y=sign(s_fm);
plot(t,m)
hold on
 plot(t,s_fm)
 hold on
 plot(t,y)
d=diff(y);
plot(d)
%  int(d,t)
