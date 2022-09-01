set table "Tesi.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set samples 25; set dummy x,y; set logscale x 2.71828182845905; plot [x=0.001:0.1] 1-exp(-x*200);
