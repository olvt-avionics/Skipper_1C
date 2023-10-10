%% OLVT_G12_Fiberglass_Mass_Calculation
% Spencer Macturk

%% Houskeeping
clear; clc; close all; format compact, format short

%% Inputs

ID_measured = 3.01;                                 % in
thickness = 0.062;                                  % in
OD_calculated = ID_measured + thickness*2;          % in
OD_measured = 3.124;                                % in
weight_per_foot = 7.580;                            % oz
height_measured = 16 + 5/16;                        % in
weight_measured = 0.698;                            % included paint and stickets, lb

%% Calculations

tube_volume_calculated = pi()*(OD_measured/2)^2*height_measured - pi()*(ID_measured/2)^2*height_measured;   % in^3
weight_calculated = weight_per_foot / 16 * height_measured / 12    % lb
weight_difference = weight_measured - weight_calculated            % lb
format long
mass_density_theoretical = weight_calculated / tube_volume_calculated       % lb/in^3
format short

ID_CAD = 3.01;                 % in
OD_CAD = 3.120;                 % in
height_CAD = 16.3125;              % in
tube_volume_CAD = pi()*(OD_CAD/2)^2*height_CAD - pi()*(ID_CAD/2)^2*height_CAD   % in^3
