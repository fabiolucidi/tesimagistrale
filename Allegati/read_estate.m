function [V,cf,cc,ir,vr]=read_estate(filename)
%
%   [n,V,cf,cc,ir,vr]=read_estate(filename)
%   con n=numero periodi, V=scalare contenente il valore di cessione, cf=vettore flussi di cassa,
%   cc=vettore degli OCC, ir=vettore degli interlease rates, vr=scalare dei
%   vacancy rates
%  

V = textread(filename,'',1); % assegna a V il primo valore di 'filename'

cf = textread(filename,'',1,'headerlines',1); 
cc = textread(filename,'',1,'headerlines',2); 
ir = textread(filename,'',1,'headerlines',3); 
% assegna a cf, cc, ir i valori della prima, seconda, terza linea di
% 'filename' separati da spazi.