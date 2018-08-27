clc
clear all
close all

addpath('methods/');

f1  = @(x) x.^2; 
f2  = @(x) x.^2; 
df2 = @(x) 2*x;

xmin = forward_backward(f1,f2,1000,2,100,1e-6);