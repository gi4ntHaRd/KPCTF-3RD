from Crypto.Util.number import *
from flag import flag

flag = list(bytes(flag,utf-8))
p = getPrime(16)
R.<y> = PolynomialRing(GF(p))
while True:
    P1 = R.random_element(degree=(ZZ.random_element(len(flag), 2*len(flag))))
    Q1 = R.random_element(degree=(ZZ.random_element(len(flag), 2*len(flag))))
    if P1.is_irreducible() and Q1.is_irreducible():
        P = P1
        Q = Q1
        break
e = 65537
N = P*Q
S.<x> = R.quotient(N)
c = S(flag) ^ e
print("P:" + str(p) + "\n")
print("N:" + str(N) + "\n")
print("C:" + str(c))

#P:51853
#N:7975*y^136 + 5600*y^135 + 45293*y^134 + 11975*y^133 + 28163*y^132 + 40413*y^131 + 47522*y^130 + 39679*y^129 + 22188*y^128 + 35353*y^127 + 4891*y^126 + 13068*y^125 + 39549*y^124 + 2057*y^123 + 45468*y^122 + 12791*y^121 + 44496*y^120 + 13822*y^119 + 36684*y^118 + 43735*y^117 + 5765*y^116 + 35338*y^115 + 46526*y^114 + 47004*y^113 + 1419*y^112 + 30375*y^111 + 42701*y^110 + 36105*y^109 + 49347*y^108 + 27617*y^107 + 28082*y^106 + 21653*y^105 + 20195*y^104 + 45505*y^103 + 236*y^102 + 40369*y^101 + 22842*y^100 + 38828*y^99 + 39089*y^98 + 49847*y^97 + 16254*y^96 + 7483*y^95 + 4991*y^94 + 32794*y^93 + 39197*y^92 + 21259*y^91 + 26493*y^90 + 8240*y^89 + 14955*y^88 + 36594*y^87 + 38121*y^86 + 41423*y^85 + 15966*y^84 + 34860*y^83 + 37776*y^82 + 914*y^81 + 18824*y^80 + 30828*y^79 + 51358*y^78 + 29940*y^77 + 14757*y^76 + 28923*y^75 + 22016*y^74 + 7177*y^73 + 43764*y^72 + 30434*y^71 + 48453*y^70 + 41371*y^69 + 11524*y^68 + 47833*y^67 + 28470*y^66 + 4576*y^65 + 47840*y^64 + 47063*y^63 + 46034*y^62 + 28265*y^61 + 23921*y^60 + 43514*y^59 + 26964*y^58 + 20698*y^57 + 49300*y^56 + 51208*y^55 + 3689*y^54 + 47998*y^53 + 48505*y^52 + 31797*y^51 + 40473*y^50 + 28799*y^49 + 13380*y^48 + 44022*y^47 + 3081*y^46 + 33307*y^45 + 37131*y^44 + 21344*y^43 + 20171*y^42 + 31352*y^41 + 16119*y^40 + 24713*y^39 + 24829*y^38 + 8712*y^37 + 491*y^36 + 33937*y^35 + 1986*y^34 + 29102*y^33 + 18321*y^32 + 31940*y^31 + 30788*y^30 + 33685*y^29 + 19231*y^28 + 406*y^27 + 27714*y^26 + 18885*y^25 + 2097*y^24 + 49743*y^23 + 45361*y^22 + 49745*y^21 + 37161*y^20 + 49426*y^19 + 767*y^18 + 19492*y^17 + 19299*y^16 + 34066*y^15 + 5432*y^14 + 41061*y^13 + 38309*y^12 + 4688*y^11 + 11426*y^10 + 24925*y^9 + 16777*y^8 + 10289*y^7 + 6512*y^6 + 17273*y^5 + 24525*y^4 + 41553*y^3 + 51215*y^2 + 35314*y + 48866
#C:34859*x^135 + 7081*x^134 + 10265*x^133 + 48498*x^132 + 9106*x^131 + 20771*x^130 + 48185*x^129 + 16346*x^128 + 19840*x^127 + 12359*x^126 + 35363*x^125 + 23688*x^124 + 12097*x^123 + 19747*x^122 + 30067*x^121 + 27325*x^120 + 29095*x^119 + 46784*x^118 + 29598*x^117 + 48472*x^116 + 30269*x^115 + 7319*x^114 + 28127*x^113 + 15146*x^112 + 16209*x^111 + 7163*x^110 + 39833*x^109 + 46991*x^108 + 7154*x^107 + 44621*x^106 + 33343*x^105 + 34268*x^104 + 43384*x^103 + 106*x^102 + 35010*x^101 + 48944*x^100 + 41347*x^99 + 18416*x^98 + 919*x^97 + 16380*x^96 + 22673*x^95 + 9932*x^94 + 41638*x^93 + 33263*x^92 + 40109*x^91 + 37595*x^90 + 38300*x^89 + 36345*x^88 + 15398*x^87 + 10642*x^86 + 9260*x^85 + 16472*x^84 + 38085*x^83 + 49750*x^82 + 30736*x^81 + 22876*x^80 + 40921*x^79 + 27739*x^78 + 887*x^77 + 38011*x^76 + 22999*x^75 + 33307*x^74 + 32196*x^73 + 29885*x^72 + 5147*x^71 + 32536*x^70 + 21961*x^69 + 1003*x^68 + 51478*x^67 + 18820*x^66 + 33773*x^65 + 41411*x^64 + 24346*x^63 + 9331*x^62 + 12822*x^61 + 1459*x^60 + 10090*x^59 + 27810*x^58 + 5549*x^57 + 28953*x^56 + 7684*x^55 + 38958*x^54 + 50652*x^53 + 7132*x^52 + 45326*x^51 + 24855*x^50 + 26176*x^49 + 5667*x^48 + 25639*x^47 + 8223*x^46 + 38186*x^45 + 44258*x^44 + 45432*x^43 + 5151*x^42 + 28833*x^41 + 36066*x^40 + 51604*x^39 + 31786*x^38 + 21802*x^37 + 47547*x^36 + 20669*x^35 + 48848*x^34 + 22691*x^33 + 24957*x^32 + 843*x^31 + 4555*x^30 + 46351*x^29 + 48377*x^28 + 12788*x^27 + 13269*x^26 + 11140*x^25 + 9391*x^24 + 3930*x^23 + 49498*x^22 + 42943*x^21 + 1474*x^20 + 38224*x^19 + 23275*x^18 + 3928*x^17 + 48135*x^16 + 15094*x^15 + 40956*x^14 + 25692*x^13 + 45668*x^12 + 4188*x^11 + 24023*x^10 + 18265*x^9 + 5025*x^8 + 10279*x^7 + 12001*x^6 + 43049*x^5 + 30507*x^4 + 26840*x^3 + 10417*x^2 + 1073*x + 48316