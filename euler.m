% This matlab program is used to plot results from:
% 
% euler.f95
% 
% By: Aulia Khalqillah,S.Si (2019)

clear;clc;

% load data and separate variable component
data = load('euler.txt');
index = data(:,1);
original_f = data(:,2);
analytic_f = data(:,3);
euler_f = data(:,4);

% plot
plot(index,original_f,'b','linewidth',1.)
hold on
plot(index,analytic_f,'r','linewidth',1.)
hold on
plot(index,euler_f,'g','linewidth',1.)
title('Numeric Integration Using Euler Method')
xlabel('Data point/Index')
ylabel('Function')
legend('Original Function','Analytic Integration','Numeric Integration (Euler)','Location','SouthEast')
saveas(gcf,'euler_plot.png')
