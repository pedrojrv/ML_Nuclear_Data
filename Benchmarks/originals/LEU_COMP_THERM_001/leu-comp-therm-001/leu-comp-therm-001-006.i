Leu-Comp-Therm-001.6, rev1, 9/30/1998.
c
c
c  Case 1:  1 20 x 18 cluster plus one rod,        benchmark keff = 0.9998(31)
c  Case 2:  3 20 x 17 clusters,                    benchmark keff = 0.9998(31)
c  Case 3:  3 20 x 16 clusters,                    benchmark keff = 0.9998(30)
c  Case 4:    22 x 16, 20 x 16 & 22 x 16 clusters, benchmark keff = 0.9998(30)
c  Case 5:  3 20 x 15 clusters,                    benchmark keff = 0.9998(30)
c  Case 6:    24 x 15, 20 x 15 & 24 x 15 clusters, benchmark keff = 0.9998(30)
c  Case 7:  3 20 x 14 clusters,                    benchmark keff = 0.9998(30)
c  Case 8:  3 19 x 16 clusters,                    benchmark keff = 0.9998(30)
c
c  This deck is case 6.
c
c  Cell specifications:
c
c - Universe 1 is a single rod in water:
    1    1 6.17048981e-2   -51      -23 +22   u=1   $uo2
    3    2 5.97516029e-2   -53 +51  -24       u=1   $rod clad
    4    4 1.00058674e-1   +53      -23 +22   u=1   $unit cell water
    5    3 6.00071036e-2   -51      -22       u=1   $lower endplug
    6    5 1.00058674e-1   +53     (-22:+23)  u=1   $other water
    7   10 6.00607479e-2  (-51     (-24 +23)):
                          (-53          +24)  u=1   $upper endplug
c
c - Universe 11 is a 2.032cm x 2.032cm unit cell:
   11    0                 -2 +1    -12 +11   u=11
                           fill=1   lat=1           $unit cell
c
c - Three clusters with water between:
   21    0                 -103 +102  -153 +152  -204 +203  
                           fill=11(-77.098 -15.240 +17.84)    $left   cluster
   22    0                 -105 +104  -153 +152  -204 +203
                           fill=11(-20.320 -15.240 +17.84)    $center cluster
   23    0                 -107 +106  -153 +152  -204 +203
                           fill=11(+77.098 -15.240 +17.84)    $right  cluster
   24    5 1.00058674e-1   -204 +203   -153 +152 
                         ((-104 +103):(-106 +105))            $intercluster h2o
c
   31    6 1.06563424e-1   -107 +102  -153 +152   -203 +202   $acrylic plate
c
   41    5 1.00058674e-1  (-108 +101   -154 +151   -205 +201)
                          (-102:+107 : -152:+153 : -202:+204) $other h2o
c
   99    0  -101:108 : -151:154 : -201:205                    $outside world
c ------------------------------------------------------------------------------

c
c Surface specifications:
c
c  local x-y-z planes for unit cells:
c
    1   px    0.000   $local x-origin
    2   px    2.032   $fuel rod unit cell
   11   py    0.000   $local y-origin
   12   py    2.032   $fuel rod unit cell
c  21   pz    0.000   $start fuel rod
   22   pz    1.270   $start uo2
   23   pz   92.710   $  end uo2
   24   pz   93.190   $  end clad
c  25   pz   97.790   $  end fuel rod
c
c  cylinders within the unit cell:
c
   51   c/z  1.016 1.016 0.5588  $fuel OR & clad IR
   53   c/z  1.016 1.016 0.6350  $clad OR
c
c
c - global x coordinates:
c   center of center cluster is x=0.
  101   px -107.098  $left   model boundary (s102 - 30.0)
  102   px  -77.098  $left   cluster, left  boundary (s103 - 24*2.032)
  103   px  -28.330  $left   cluster, right boundary (s104 - 8.01)
  104   px  -20.320  $center cluster, left  boundary (-0.5*20*2.032)
  105   px   20.320  $center cluster, right boundary ( 0.5*20*2.032)
  106   px   28.330  $right  cluster, left  boundary (s105 + 8.01)
  107   px   77.098  $right  cluster, right boundary (s106 + 24*2.032)
  108   px  107.098  $right  model boundary (s107 + 30.0)
c
c - global y coordinates:
c   center of center cluster is y=0.
  151   py  -45.240 $model   boundary (s152 - 30.0)
  152   py  -15.240 $cluster boundary (-0.5*15*2.032)
  153   py   15.240 $cluster boundary ( 0.5*15*2.032)
  154   py   45.240 $model   boundary (s153 + 30.0)
c
c - global z coordinates:
  201   pz    0.00   $model boundary
  202   pz   15.30   $start acrylic plate
  203   pz   17.84   $start fuel rods (s202 + 2.54)
  204   pz  115.63   $  end fuel rods (s203 + 97.79)
  205   pz  125.55   $model boundary (s204 + 9.92)
c ------------------------------------------------------------------------------

c
c Criticality cards:
c
 mode n
 imp:n 1 12r 0
 totnu
 kcode 10000 1.0 25 5025       $10,000 x 5,000 = 50M histories per job
 rand gen=2 hist=1             $use default for other random # generator entries
c
c
c Definitions for the initial source distribution:
c  - d1 is the energy distribution.
c  - d2 is a uniform distribution over the cluster "x" (19 rod length & gaps).
c  - d3 is a uniform distribution over the cluster "y" (16 rod length).
c  - d4 is a uniform distribution over the fuel height.
c
 sdef  erg=d1  x=d2  y=d3  z=d4
 sp1   -3             $Watt spectrum with default (endf/b-v) A,B parameters.
 sp2    0      1      $Uniform probability from si2 x(min) to x(max).
 si2  -77.0   77.0
 sp3    0      1      $Uniform probability from si3 y(min) to y(max).
 si3  -15.2   15.2
 sp4    0      1      $Uniform probability from si4 z(min) to z(max).
 si4   19.2  110.5
c
c
c - Material specifications:   
c
c   - UO2, 2.35w/o 235U (6.17048981e-2)
c     - natO  may be converted to 16,17O (where 16 = 16+18) (4.1202e-2)
 m1   92234.80c 2.8563e-6  92235.80c 4.8785e-4  92236.80c 3.5348e-6  $234,235,236U   
      92238.80c 2.0009e-2                                            $238U
       8016.80c 4.1186e-2   8017.80c 1.5657e-5                       $16,17O
c
c   - 6061 Al for clad (5.97516029e-2 with Zn; 5.97206359e-2 w/o Zn):
c     - natMg may be converted to isoMg (6.6651e-4)
c     - natSi may be converted to isoSi (3.4607e-4)
c     - natTi may be converted to isoTi (2.5375e-5)
c     - natCr may be converted to isoCr (6.2310e-5)
c     - natFe may be converted to isoFe (1.0152e-4)
c     - natCu may be converted to isoCu (6.3731e-5)
c     - natZn may be converted to isoZn (3.0967e-5)
c
 m2   13027.80c 5.8433e-2                                            $Al
      12024.80c 5.2648e-4  12025.80c 6.6651e-5  12026.80c 7.3383e-5  $isoMg
      14028.80c 3.1918e-4  14029.80c 1.6207e-5  14030.80c 1.0684e-5  $isoSi
      22046.80c 2.0934e-6  22047.80c 1.8879e-6  22048.80c 1.8706e-5  $
      22049.80c 1.3728e-6  22050.80c 1.3144e-6                       $isoTi
      24050.80c 2.7074e-6  24052.80c 5.2209e-5  24053.80c 5.9201e-6  $
      24054.80c 1.4736e-6                                            $isoCr
      25055.80c 2.2115e-5                                            $Mn
      26054.80c 5.9338e-6  26056.80c 9.3149e-5  26057.80c 2.1512e-6  $
      26058.80c 2.8629e-7                                            $isoFe
      29063.80c 4.4083e-5  29065.80c 1.9648e-5                       $isoCu
      30064.80c 1.50593e-5 30066.80c 8.63979e-6 30067.80c 1.26965e-6
      30068.80c 5.80631e-6 30070.80c 1.91995e-7                      $isoZn
c
c   - 5052 Al for lower end plug (6.00071037e-2 w/Zn; 5.99947167e-2 w/o Zn):
c     - natMg may be converted to isoMg (1.6663e-3)
c     - natSi may be converted to isoSi (1.2978e-4)
c     - natCr may be converted to isoCr (7.7888e-5)
c     - natFe may be converted to isoFe (6.5265e-5)
c     - natCu may be converted to isoCu (1.2746e-5)
c     - natZn may be converted to isoZn (1.2387e-5)
c
 m3   13027.80c 5.8028e-2                                            $Al
      12024.80c 1.3162e-3  12025.80c 1.6663e-4  12026.80c 1.8346e-4  $isoMg
      14028.80c 1.1970e-4  14029.80c 6.0779e-6  14030.80c 4.0066e-6  $isoSi
      24050.80c 3.3842e-6  24052.80c 6.5262e-5  24053.80c 7.4001e-6  $
      24054.80c 1.8421e-6                                            $isoCr
      25055.80c 1.4743e-5                                            $Mn
      26054.80c 3.8147e-6  26056.80c 5.9883e-5  26057.80c 1.3830e-6  $
      26058.80c 1.8405e-7                                            $isoFe
      29063.80c 8.8164e-6  29065.80c 3.9296e-6                       $isoCu
      30064.80c 6.02380e-6 30066.80c 3.45597e-6 30067.80c 5.07867e-7
      30068.80c 2.32256e-6 30070.80c 7.67994e-8                      $isoZn
c
c   - Unit cell h2o (1.00058674e-1):
c     - natO may be converted to 16,17O (where 16 = 16+18) (3.3353e-2)
c     - lwtr.20t is ENDF71SaB kernel
c     - lwtr.10t is from endf70sab 
c     - hh2o.20t is rem continuous kernel 
 m4    1001.80c 6.6706e-2                       $1H
       8016.80c 3.3340e-2   8017.80c 1.2674e-5  $16,17O
 mt4   lwtr.20t
c
c   - other h2o (1.00058674e-1):
c     - natO may be converted to 16,17O (where 16 = 16+18) (3.3353e-2)
c     - lwtr.20t is ENDF71SaB kernel
c     - lwtr.10t is from endf70sab 
c     - hh2o.20t is rem continuous kernel 
 m5    1001.80c 6.6706e-2                       $1H
       8016.80c 3.3340e-2   8017.80c 1.2674e-5  $16,17O
 mt5   lwtr.20t
c
c   - Acrylic base plate (1.06563424e-1):
c     - natO may be converted to 16,17O (where 16 = 16+18) (1.4273e-2)
c     - poly.20t is ENDF71SaB kernel
c     - poly.10t is from endf70sab 
c     - hch2.20t is continuous energy kernel (by ack)
 m6    1001.80c 5.6642e-2                       $1H
       6000.80c 3.5648e-2                       $C
       8016.80c 1.4268e-2   8017.80c 5.4237e-6  $16,17O
 mt6   poly.20t
c
c   - 1100 Al for upper end plug (6.00607479e-2 w/Zn; 6.00483149e-2 w/o Zn):
c     - natSi may be converted to isoSi (2.3302e-4)
c     - natFe may be converted to isoFe (1.1719e-4)
c     - natCu may be converted to isoCu (3.0705e-5)
c     - natZn may be converted to isoZn (1.2433e-5)
c
 m10  13027.80c 5.9660e-2                                            $Al
      14028.80c 2.1491e-4  14029.80c 1.0913e-5  14030.80c 7.1938e-6  $isoSi
      25055.80c 7.3991e-6                                            $Mn
      26054.80c 6.8498e-6  26056.80c 1.0753e-4  26057.80c 2.4833e-6  $
      26058.80c 3.3048e-7                                            $isoFe
      29063.80c 2.1239e-5  29065.80c 9.4664e-6                       $isoCu
      30064.80c 6.04617e-6 30066.80c 3.46881e-6 30067.80c 5.09753e-7
      30068.80c 2.33119e-6 30070.80c 7.70846e-8                      $isoZn
c
c
print -175

C    k(bmk) = 0.9998 +- 0.0030
