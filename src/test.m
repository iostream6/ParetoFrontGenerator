% This MATLAB script file generates results from scalable test instances, given a matrix of decision vectors.
% It is being used to compare the results my test instances implementation to those in PlatEMO 
% Ilamah, Osho. August 2018.
% 
%-----------------------------------------------------------------------------------------
% Usage instructions:
% Run this file from the PlatEMO root folder.

% 2018.08.12 - Created. 


clear;
clc;

%%{

% Test  CEC18 problems
addpath("Problems/MaF");

%################################################################################
%MaF1 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF1('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF1 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF1('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF1 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF1('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF1 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF1('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%################################################################################

%MaF2 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF2('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF2 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF2('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF2 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF2('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF2 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF2('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%################################################################################

%MaF3 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF3('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF3 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF3('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF3 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF3('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF3 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF3('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%################################################################################

%MaF4 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF4('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF4 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF4('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF4 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF4('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF4 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF4('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%################################################################################

%MaF5 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF5('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF5 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF5('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF5 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF5('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF5 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF5('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%################################################################################

%MaF6 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF6('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF6 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF6('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF6 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF6('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF6 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF6('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%################################################################################

%MaF7 2D Test
X = importdata('sol.txt');
Global.M          = 2;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF7('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF7 3D Test
X = importdata('sol.txt');
Global.M          = 3;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF7('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF7 5D Test
X = importdata('sol.txt');
Global.M          = 5;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF7('value', Global,X(i, :));
   F_x(i, :) = obj;
end

%MaF7 XD Test
X = importdata('sol.txt');
Global.M          = 10;
Global.D          = Global.M + 9;

F_x = zeros(size(X), Global.M);

for i=1:size(X)
   [x, obj] =  MaF7('value', Global,X(i, :));
   F_x(i, :) = obj;
end
%}
