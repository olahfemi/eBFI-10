* By Femi Olah.
* Can be downloaded from GitHub: https://github.com/olahfemi/bfi10-SPSS-Syntax
 
*** REVERSED ITEMS

RECODE
  bfi10.7 bfi10.1 bfi10.3 bfi10.4 bfi10.5
  (1=5)  (2=4)  (3=3)  (4=2)  (5=1)  INTO  bfi10.1r bfi10.3r bfi10.4r bfi10.5r bfi10.7r.
EXECUTE .

*** SCALE SCORES

COMPUTE bfi10.e = mean(bfi10.1r,bfi10.5) .
VARIABLE LABELS bfi10.e 'BFI-10 Extraversion scale score' .
EXECUTE .

COMPUTE bfi10.a = mean(bfi10.2,bfi10.7r) .
VARIABLE LABELS bfi10.a 'BFI-10 Agreeableness scale score' .
EXECUTE .

COMPUTE bfi10.c = mean(bfi10.3r,bfi10.8) .
VARIABLE LABELS bfi10.c 'BFI-10 Conscientiousness scale score' .
EXECUTE .

COMPUTE bfi10.n = mean(bfi10.4r,bfi10.9) .
VARIABLE LABELS bfi10.n 'BFI Neuroticism scale score' .
EXECUTE .

COMPUTE bfi10.o = mean(bfi10.5r,bfi10.10) .
VARIABLE LABELS bfi10.o 'BFI Openness scale score' .
EXECUTE .
