clc
clear all
pwd_1= pwd;
addpath(genpath(sprintf('%s%s',pwd_1,'\VariablePrecisionIntegers')))
addpath(genpath(sprintf('%s%s',pwd_1,'\RSA')))
%% Example alphabet
%Encrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghjklmnopqrstuvwxyz123456789²&é"(§è!çà)-',17,256027)
%global c
%Decrypt(c,15001,256027)

%% Simple text
%Encrypt('How are you doing?',97,20633)
%global c
%Decrypt(c,10801,20633)

%% Your own example by choice
% % choose p and q
% x= primes(10^4); %the matlabfunction is limited to an n_max=10^10
%                  %this can be extended by using vpi() command 
%                  %but it wasn't used here because it would be to easy then
% % choose a number between 1 and 1229 and put it in the brackets
% p=x(127) % example x(127)
% q=x(1000) % example x(1000)
% n= p*q
% % choose e, e must be smaller than n
% e=x(200) %example x(200)
% 
% Hack_d(p,q,e)
% % write a text you would like to be encrypted
% Encrypt('text here',e,n)
% global c
% global d
% Decrypt(c,d,n)

%% Example hacking p and q with big primes

%Hack_pq('1256608701050293') % +/- 2.5sec
%Hack_pq('12566091866873251910220187') % +/- 3.3 sec
%Hack_pq('2440960444115448486984008365346150773') % +/- 100 sec
%Hack_pq('4687930763606858682523942681519014762600086989') % 4-6 minuten
%Hack_pq('6196867187755090427372877267607345671367639312991') % 10-60 minuten
%% Example finding d

%Hack_d(503,509,17) % used in "Example alphabet"
%Hack_d(439,47,97) % used in "Simple text"
%Hack_d('68468465468468465468449','68468465468468465468461','17') %example with big numbers

%% Plot
% % this is an example how fast my computer hacks the public key n into pq
%Hacking_plot