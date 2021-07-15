%Artificial Gorilla Troops Optimizer

% Read the following publication first and cite if you use it

% @article{abdollahzadeh2021african,
%   title={Artificial Gorilla Troops Optimizer: A New Nature-Inspired Metaheuristic Algorithm for Global Optimization Problems},
%   author={Abdollahzadeh, Benyamin and Gharehchopogh, Farhad Soleimanian and Mirjalili, Seyedali},
%   journal={International Journal of Intelligent Systems},
%   pages={},
%   year={2021},
%   publisher={Willy},
%   url = {https://doi.org/10.1002/int.22535}
% }


clear all 
close all
clc

% Population size and stoppoing condition 
pop_size=30;  
max_iter=100;  

% Define your objective function's details here
fobj = @ObjectiveFunction;
variables_no=10;
lower_bound=-100; % can be a vector too
upper_bound=100; % can be a vector too
      
[Silverback_Score,Silverback,convergence_curve]=GTO(pop_size,max_iter,lower_bound,upper_bound,variables_no,fobj);


figure 

% Best optimal values for the decision variables 
subplot(1,2,1)
parallelcoords(Silverback)
xlabel('Decision variables')
ylabel('Best estimated values ')
box on

% Best convergence curve
subplot(1,2,2)
plot(convergence_curve);
title('Convergence curve of GTO')
xlabel('Current_iteration');
ylabel('Objective value');
box on

