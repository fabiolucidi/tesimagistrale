clc, close all, clear all
% libera lo schermo e chiude tutti i processi in corso

filename = 'SB/immobile'; ext='.txt';

% indica location, nome del file ed estensione

ni = 20;
% indica il numero di file (immobili) da prendere 
% (nel nostro caso 20)

dcf = zeros(1,ni);

for i = 1:ni
    [V,cf,cc,ir]=read_estate([filename,num2str(i),ext]);
    vr=0;
    vcf=0;
    dcf(i) = compute_dcf(V,cf,cc,ir,vr,vcf);
end
% inizia un ciclo da 1 a ni (20) per indicare di leggere i
% file che si chiamano immobile1.txt, ..., immobile20.txt
% prende il vacancy rate, calcola il DCF per tutti i file
% da immobile1.txt a immobile20.txt

dcf
% restituisce i 20 risultati