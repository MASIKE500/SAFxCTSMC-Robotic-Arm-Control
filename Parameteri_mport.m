clear; clc;


try
    robot = importrobot('fr3.urdf', 'DataFormat', 'column');
catch
    error('未找到 fr3.urdf 文件，请检查路径。');
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

lambda1 = [60; 60; 60; 50; 50; 50];
lambda2 = [6;   6;  6;  5;  5;  5];
gamma1 = [20; 20; 20; 20; 20; 20]; 
gamma2 = [0.2;   0.2;  0.2; 0.2;   0.2;  0.2]; 
omega_init = 1.0* ones(6,1);
delta = 0.05;


gamma1_val = 1.2; 
gamma2_val = 0.8; 
alpha1_val = [10; 10; 10; 5; 5; 5]; 
alpha2_val = [5;   5;  5; 2; 2; 2]; 

k10 =[10; 10; 10;  5;  5;  5]; 
k20 =[5;  5;  5;  2; 2; 2];

eta1 = [20; 20; 20; 10; 10; 10]; 
eta2 = [10; 10; 10;  5;  5;  5]; 

k3 = [10; 10; 10;  5;  5;  5]; 
k4 = [5;  5;  5;  2; 2; 2];

eta1_val = [100; 100; 100; 50; 50; 50];
eta2_val = [0.5; 0.5; 0.5; 0.1; 0.1; 0.1]; 
K_adapt_init = [20; 20; 20; 10; 10; 10]; 

lambda_int = [10; 10; 10; 5; 5; 5]; 

gamma3_val = 1.2 * ones(6,1);

K0  = [20;  20;  20;  10; 10; 10];
K_sw =  [2; 2; 2; 1; 1; 1];

tau_rise = 0.005 * ones(6,1); 

tau_fall = 0.2 * ones(6,1);   

% Dynamic Boundary Layer
phi_base = 0.02;
phi_gain = 0.1; 


