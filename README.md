# Euler-Method
Euler method is one of the numeric integration methods to solve ordinary differential equation (ODE).
# Usage
The first derivative equation is ![f'(t) = 2-exp(-4t)-2y](//i.upmath.me/svg/f'(t)%20%3D%202-exp%5E%7B-4t%7D-2y) with initial condition y(0) = 1 is used to solve the intergration problem in this case. If this equation is integrated by exact, we get the general solution from this equation is f(t) = 1 + 0.5exp(-4t) - 0.5exp(-2t). To get the soultion of thi equation, you can go to the [solving first derivative equation with initial value problem](https://sharing.auliakhalqillah.com/2020/04/04/solving-first-derivative-equation/).

There are three parameters input:
  - Initial Boundary = 0
  - Final Boundary = 5
  - Step of Data = 0.1
 
There are five variables output:
  - t is point data
  - df(t) is first derivative function 
  - fa(t) is excat/analytical integration
  - y(t) is numerical integration by using euler method
  - error is error calculation 
# Contact
The program is written by Aulia Khalqillah,S.Si (2019)<br>
Email: auliakhalqillah.mail@gmail.com
# Material Source
[Paul Dawkins,2018,Differential Equation](http://tutorial.math.lamar.edu/Classes/DE/EulersMethod.aspx)
