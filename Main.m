clear
clc

target = 'kecerdasan buatan';
besar_populasi = 10;
laju_mutasi = 0.1;

[solusi,generasi] = SimpleGA(target,besar_populasi,laju_mutasi)