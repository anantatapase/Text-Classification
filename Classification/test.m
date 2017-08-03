clc;
clear;
close all;
tic;
%% Loading data 
load('aco.mat');
load('acoga.mat');
load('ga.mat');

Data=LoadData();

x=Data.x; %Features Set
y=Data.t; %Class Information

%% Testing ACO
x1=x(:,[aco_ant]);
[aco_tp,aco_fp,aco_fn]=classifier(x1,y);

aco_pre=precision(aco_tp,aco_fp);
aco_rec=recall(aco_tp,aco_fn);
%% Testing GA
x1=x(:,[ga_chromosome]);
[ga_tp,ga_fp,ga_fn]=classifier(x1,y);

ga_pre=precision(ga_tp,ga_fp);
ga_rec=recall(ga_tp,ga_fn);
%% Testing ACOGA
x1=x(:,[acoga_ant]);
[acoga_tp,acoga_fp,acoga_fn]=classifier(x1,y);

acoga_pre=precision(acoga_tp,acoga_fp);
acoga_rec=recall(acoga_tp,acoga_fn);
%%
toc
