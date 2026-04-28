%Derivative of a functino
%Set up an x-array from 0 to 10 with an increment of 0.01
x=0:0.01:10;
y=5*x.^2.*exp(-0.2*x).*sin(x);

%Find the central difference estimate of the derivative
n=length(x);
der=(y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));

%plot the original function
subplot(2,1,1)
plot(x,y)
grid on
title('Original function')
xlabel('x')
ylabel('y')
subplot(2,1,2)
plot(x(2:n-1),der,'r')
grid on
title('Derivative function')
xlabel('x')
ylabel('y')
