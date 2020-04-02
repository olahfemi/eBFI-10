* By Femi Olah.
* Can be downloaded from GitHub: https://github.com/olahfemi/bfi10-SPSS-Syntax

*** REVERSED ITEMS

RECODE
  eBFI10.7 eBFI10.1 eBFI10.3 eBFI10.4 eBFI10.5
  (1=5)  (2=4)  (3=3)  (4=2)  (5=1)  INTO  eBFI10.1r eBFI10.3r eBFI10.4r eBFI10.5r eBFI10.7r .
EXECUTE .

*** SCALE SCORES

COMPUTE eBFI10.e = mean(eBFI10.1r,eBFI10.5) .
VARIABLE LABELS eBFI10.e "eBFI-10 Extraversion scale score" .
EXECUTE .

COMPUTE eBFI10.a = mean(eBFI10.2,eBFI10.7r) .
VARIABLE LABELS eBFI10.a "eBFI-10 Agreeableness scale score" .
EXECUTE .

COMPUTE eBFI10.c = mean(eBFI10.3r,eBFI10.8) .
VARIABLE LABELS eBFI10.c "eBFI-10 Conscientiousness scale score" .
EXECUTE .

COMPUTE eBFI10.n = mean(eBFI10.4r,eBFI10.9) .
VARIABLE LABELS eBFI10.n "eBFI Neuroticism scale score" .
EXECUTE .

COMPUTE eBFI10.o = mean(eBFI10.5r,eBFI10.10) .
VARIABLE LABELS eBFI-10.o "eBFI Openness scale score" .
EXECUTE .