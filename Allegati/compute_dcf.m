function dcf = compute_dcf(V,cf,cc,ir,vr,vcf)
%
%   dcf = compute_dcf(V,cf,cc,ir,vr,vcf)
%   Calcola il valore del DCF
%

ii=0; dcf=[cf(1)*(1-vr)*(1+vcf)] / (1+cc(1))^(1-ii) / (1+ir(1))^ii;

% calcola il DCF per il primo periodo, scindendo le lunghezze della durata
% dell'operazione da quella in cui entra in gioco l'interlease


for i=2:length(cf)
    if ir(i-1) ~= ir(i)
        ii=i-1;
    end
    dcf=dcf + (cf(i)*(1-vr)*(1+vcf)) / (1+cc(i))^(i-ii) / (1+ir(i))^ii;
end

% questo ciclo for calcola il DCF con l'ir, il sottociclo if verifica
% l'innesco del tasso IR.


dcf=dcf + V / (1+ir(10))^length(cf);

% viene calcolato il dcf complessivo inserendo il valore di cessione

