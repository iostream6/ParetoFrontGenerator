% This MATLAB script file generates pareto fronts for scalable test instances from PlatEMO 
% Ilamah, Osho. August 2018.
% 
%-----------------------------------------------------------------------------------------
% Usage instructions:
% Run this file from the PlatEMO root folder.
%
%
% 2018.08.11 - Created. 2D, 3D, 5D, and 10D PF support included. 


clear;
clc;


dimensions = [2; 3; 5; 10];
paretoPoints = [100; 500; 1500; 5000];
addpath("Public");

%{
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------
%    Generate DTLZ Pareto fronts
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------

addpath("Problems/DTLZ");
K = 5;

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

%%{
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------
%    Generate CEC18 Pareto fronts
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------

addpath("Problems/MaF");
K = 10;

%% MaF1 pareto fronts
filenames = {"MaF1.2D.pf"; "MaF1.3D.pf"; "MaF1.5D.pf"; "MaF1.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF1('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% MaF2 pareto fronts
filenames = {"MaF2.2D.pf"; "MaF2.3D.pf"; "MaF2.5D.pf"; "MaF2.XD.pf"};
% Add extra points due to peculiarities of MaF2
paretoPoints = [300; 2200; 50000; 5000];
for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF2('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end
paretoPoints = [100; 500; 1500; 5000];


%% MaF3 pareto fronts
filenames = {"MaF3.2D.pf"; "MaF3.3D.pf"; "MaF3.5D.pf"; "MaF3.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF3('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% MaF4 pareto fronts
filenames = {"MaF4.2D.pf"; "MaF4.3D.pf"; "MaF4.5D.pf"; "MaF4.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF4('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% MaF5 pareto fronts
filenames = {"MaF5.2D.pf"; "MaF5.3D.pf"; "MaF5.5D.pf"; "MaF5.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF5('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% MaF6 pareto fronts
filenames = {"MaF6.2D.pf"; "MaF6.3D.pf"; "MaF6.5D.pf"; "MaF6.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF6('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% MaF7 pareto fronts
filenames = {"MaF7.2D.pf"; "MaF7.3D.pf"; "MaF7.5D.pf"; "MaF7.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF7('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end


%% MaF8 pareto fronts
filenames = {"MaF8.2D.pf"; "MaF8.3D.pf"; "MaF8.5D.pf"; "MaF8.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = Global.M + K - 1; 
  PF = MaF8('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%}

%{
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------
%    Generate WFG Pareto fronts
% ------------------------------------------------------------------------------------
% ------------------------------------------------------------------------------------

addpath("Problems/WFG");

%% WFG1 pareto fronts
filenames = {"WFG1.2D.pf"; "WFG1.3D.pf"; "WFG1.5D.pf"; "WFG1.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG1('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG2 pareto fronts
filenames = {"WFG2.2D.pf"; "WFG2.3D.pf"; "WFG2.5D.pf"; "WFG2.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG2('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG3 pareto fronts
filenames = {"WFG3.2D.pf"; "WFG3.3D.pf"; "WFG3.5D.pf"; "WFG3.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG3('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG4 pareto fronts
filenames = {"WFG4.2D.pf"; "WFG4.3D.pf"; "WFG4.5D.pf"; "WFG4.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG4('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG5 pareto fronts
filenames = {"WFG5.2D.pf"; "WFG5.3D.pf"; "WFG5.5D.pf"; "WFG5.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG5('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG6 pareto fronts
filenames = {"WFG6.2D.pf"; "WFG6.3D.pf"; "WFG6.5D.pf"; "WFG6.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG6('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG7 pareto fronts
filenames = {"WFG7.2D.pf"; "WFG7.3D.pf"; "WFG7.5D.pf"; "WFG7.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG7('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG8 pareto fronts
filenames = {"WFG8.2D.pf"; "WFG8.3D.pf"; "WFG8.5D.pf"; "WFG8.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG8('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

%% WFG9 pareto fronts
filenames = {"WFG9.2D.pf"; "WFG9.3D.pf"; "WFG9.5D.pf"; "WFG9.XD.pf"};

for i=1:size(dimensions)
  Global.M          = dimensions(i);
  Global.D          = 0; 
  PF = WFG9('PF', Global, paretoPoints(i));
  dlmwrite(filenames{i},PF,'precision', '%.4f', 'delimiter',  ' ');
end

}%

