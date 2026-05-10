clc
clear
close
//Continuous time signal generation
// Impulse Signal
t=-5:5
[r,c]=size(t)
delta=[zeros(1,(c-1)/2), ones(1,1), zeros(1,(c-1)/2)]
subplot(421)
plot(t,delta)
xlabel('Time (s)')
ylabel('Amplitude') 
title('Impulse Signal')
// Step Signal with step size A
// For unit step signal, keep A=1
A=2;
t1=0:0.01:10
[r1,c1]=size(t1) u=A*ones(1,c1) subplot(422) plot(t1,u) xlabel('Time (s)') ylabel('Amplitude') title('Step Signal')

// Step Signal with step size A
//For unit Ramp signal keep A=1
A=2; t2=0:0.01:10
r=A*t2 subplot(423) plot(t2,r) xlabel('Time (s)') ylabel('Amplitude') title('Ramp Signal')

//Parabolic Signal
A=3 t3=0:0.01:2
p=(A*t^2)/2 subplot(424) plot(t,p) xlabel('Time (s)') ylabel('Amplitude')
title('Parabolic Signal')
//Sinusoidal Signal
t4=0:0.001:1
f=2; // 2 Hz signal Sin_Sig=A*sin(2*%pi*f*t4) subplot(425) plot(t4,Sin_Sig) xlabel('Time (s)') ylabel('Amplitude') title('Sinusoidal Signal')
// Cosine Signal t5=0:0.01:1 f1=3
Cos_Sig=A*cos(2*%pi*f1*t) subplot(426) plot(t5,Cos_Sig) xlabel('Time (s)') ylabel('Amplitude') title('Cosinudoidal Signal')
// Eponential Signal
t6=0:0.01:1 A2=2
b=2 Exp_Sig=A2*%e^(b*t6) subplot(427) plot(t6,Exp_Sig) xlabel('Time (s)') ylabel('Amplitude') title('Exponential Signal')
//Sinusoidal Signal
t4=0:0.001:1
f=2; // 2 Hz signal Sin_Sig=A*sin(2*%pi*f*t4) subplot(425) plot(t4,Sin_Sig) xlabel('Time (s)') ylabel('Amplitude') title('Sinusoidal Signal')
// Cosine Signal t5=0:0.01:1 f1=3
Cos_Sig=A*cos(2*%pi*f1*t) subplot(426) plot(t5,Cos_Sig) xlabel('Time (s)') ylabel('Amplitude') title('Cosinudoidal Signal')
// Eponential Signal
t6=0:0.01:1 A2=2
b=2 Exp_Sig=A2*%e^(b*t6) subplot(427) plot(t6,Exp_Sig) xlabel('Time (s)') ylabel('Amplitude') title('Exponential Signal')

// Exponential Sequence a=0.6
n3=0:0.5:10
Exp_seq=a^n3 subplot(234) plot2d3(n3,Exp_seq) xlabel('Discrete Time n') ylabel('Amplitude')
title('Exponenetial Sequence')
//Sinusoidal Sequence n4=-1:0.1:1
A6=2 f2=1
Sin_Dis=A*sin(2*%pi*f2*n4) subplot(235) plot2d3(n4,Sin_Dis) xlabel('Discrete Time n') ylabel('Amplitude')
title('Discrete Time Sinusoidal Sequence')
//Cosinusoidal Sequence n4=-1:0.1:1
A6=2 f2=1
Sin_Dis=A*cos(2*%pi*f2*n4) subplot(236) plot2d3(n4,Sin_Dis) xlabel('Discrete Time n') ylabel('Amplitude')
title('Discrete Time Cosinusoidal Sequence')
