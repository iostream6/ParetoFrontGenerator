% This MATLAB script file generates pareto fronts for scalable test instances from PlatEMO 
% Ilamah, Osho. August 2018.
% 
%-----------------------------------------------------------------------------------------
% Usage instructions:
% Run this file from the PlatEMO root folder.
%

clear;
clc;

K = 5;
dimensions = [2; 3; 5; 10];
paretoPoints = [100; 500; 1500; 5000];


%%{
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------
%    Generate DTLZ Pareto fronts
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------

%% DTLZ1 pareto fronts
filenames = {"DTLZ1.2D.pf"; "DTLZ1.3D.pf"; "DTLZ1.5D.pf"; "DTLZ1.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = DTLZ1('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% DTLZ2 pareto fronts
filenames = {"DTLZ2.2D.pf"; "DTLZ2.3D.pf"; "DTLZ2.5D.pf"; "DTLZ2.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = DTLZ2('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% DTLZ3 pareto fronts
filenames = {"DTLZ3.2D.pf"; "DTLZ3.3D.pf"; "DTLZ3.5D.pf"; "DTLZ3.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = DTLZ3('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% DTLZ4 pareto fronts
filenames = {"DTLZ4.2D.pf"; "DTLZ4.3D.pf"; "DTLZ4.5D.pf"; "DTLZ4.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = DTLZ4('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% DTLZ7 pareto fronts
filenames = {"DTLZ7.2D.pf"; "DTLZ7.3D.pf"; "DTLZ7.5D.pf"; "DTLZ7.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = DTLZ7('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%}


%{
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------
%    Generate WFG Pareto fronts
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------

}%

