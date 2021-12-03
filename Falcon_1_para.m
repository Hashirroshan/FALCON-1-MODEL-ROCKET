clc;
clear all;

%% Rocket Paramaters


% Falcon-1 Vehicle Model

% all masses are in kg
m_pay = 5000; %  science(payload) mass
m_dry = 1360.7; % dry mass, since propellant and gasses are excluded.
m_zfw = m_pay + m_dry; % Similar to on-orbit dry mass.

% Falcon-1 Engine Model (Merlin 1-Ci Engine)

m_dot = 132.46; % kg/s, in MSL, mass flow rate
burn_time = 162.24; % seconds, in MSL

% Initial Simulation Conditions

v_0 = 0.01; % intial velocity, 0.01, is to avoid division by zero.
x_0 = 0;
h_0 = 0; % initial height
fpa_0 = pi/2; %initial flight path angle, gamma
g = 9.81; %m/s
R_E = 6731e03; % radius of the Earth

% Gravity Turn initiation

% Pulse flight path angle input after some t seconds

t_turn = 30.0; %s
fpa_in = 0.10; % input flight path angle

