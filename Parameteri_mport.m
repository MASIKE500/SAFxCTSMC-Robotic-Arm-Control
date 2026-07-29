clear; clc;
try
    robot = loadrobot('universalUR5', 'DataFormat', 'column');
catch
    error('需要 Robotics System Toolbox');
end

robot.Gravity = [0 0 -9.81];

Ts =0.001; 
T_sim = 5;
q0 = zeros(6,1);
dq0 = zeros(6,1);

A = 0.5; w = 1.0;

Kp = diag([1000; 1000; 1000; 500;500; 500]);
Kd = diag([ 60; 60;  60;  40;  40;40]);


epsilon = 0.01*ones(6,1); 

lambda1 = [40; 40; 40; 15; 15; 15]; 
lambda2 = [15; 15; 15; 5; 5; 5];
gamma1  = [20; 20; 20; 10; 10; 10]; 
gamma2  = [2; 2; 2; 1; 1; 1]; 

omega_init = 1.0 * ones(6,1);
omega_min  = 0.5 * ones(6,1);
epsilon    = 0.05 * ones(6,1);  
delta      = 0.05; 

wo = 50; 
beta1 = 3 * wo * ones(6,1);
beta2 = 3 * wo^2 * ones(6,1);
beta3 = wo^3 * ones(6,1);


gamma1_val = 1.2; 
gamma2_val = 0.8; 
p = 1.5;          
q = 2.0;          

alpha1_val = [10; 10; 10; 5; 5; 5]; 
alpha2_val = [5; 5; 5; 2; 2; 2]; 

k10 = [2; 2; 2; 1; 1; 1]; 
k20 = [1; 1; 1; 0.5; 0.5; 0.5];
k3  = [5; 5; 5; 2; 2; 2]; 
k4  = [2; 2; 2; 1; 1; 1];

mu           = 100;
epsilon_link = 0.01;

tau_rise = 0.005 * ones(6,1); 
tau_fall = 0.2 * ones(6,1);   

phi_base = 0.02;
phi_gain = 0.1; 

eta1 = [50; 50; 50; 20; 20; 20]; 
eta2 = [20; 20; 20; 10; 10; 10]; 


