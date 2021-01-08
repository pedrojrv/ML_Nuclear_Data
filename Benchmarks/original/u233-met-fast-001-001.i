UMF001, 9/30/1999, revision 3.
c
c ICSBEP UMF001 Simple Benchmark model eigenvalue is 1.000(1).
c
c   Cell cards
 1    1  4.7602151e-2  -1  $233U core
 2    0                 1  $

c   Surface cards
c
 1    so 5.9838

 mode n
 imp:n 1 0
 totnu
 kcode 10000 1.0 25 5025       $10,000 x 5,000 = 50M histories per job
 rand gen=2 hist=1             $use defaults for other random # generator entries
c
c
c Definitions for the initial source distribution:
c  - d1 is the energy distribution.
c  - d2 is the spatial distribution within the sphere.
c
c - Starting (initial cycle only) source is
c   - an endf/b-v Watt spectrum
c   - distributed uniformly over the heu volume.
c
 sdef erg=d1  rad=d2  cel=1  pos=0.0 0.0 0.0
 sp1    -3   0.977  2.546  $Watt spectrum with 233U A,B parameters.
 sp2   -21   2             $Uniform probability in volume from si2 r(min) to r(max).
 si2    0.0  5.9
c
c
c    Material cards
c       m  = 233U
c
 m1   92233.80c 4.6712e-2  
      92234.80c 5.9026e-4  92235.80c 1.4281e-5  92238.80c 2.8561e-4  $U
c
print -175

C    k(bmk) = 1.0000 +- 0.0010
