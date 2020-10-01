      subroutine fisrot(A,Z,il,bfis,segs,elmax)
c
c    This subroutine returns the barrier height bfis, the ground-state
c    energy segs, in MeV, and the angular momentum at which the fission
c    barrier disappears,  Lmax,  in units of h-bar,
c    when called with integer arguments iz, the atomic number,
c    ia, the atomic mass number, and il, the angular momentum in units
c    of h-bar, (Planck's constant divided by 2*pi).
c
c         The fission barrier for  il = 0  is calculated from a 7th order
c    fit in two variables to 638 calculated fission barriers for z values
c    from 20 to 110.  These  638 barriers are fit with an rms deviation of
c    0.10 MeV by this 49-parameter function.
c    If  barfit  is called with (iz,ia) values outside the range of the fit
c    the barrier height is set to 0.0, and a message is
c    printed on the default output file.
c
c         For il values not equal to zero, the values of
c    L at which the barrier is  80%  and  20%  of the L=0 value are
c    respectively fit to 20-parameter functions of  Z  and  A, over a more
c    restricted range of  A  values, than is the case for  L = 0.
c    The value of L where the barrier disappears, Lmax, for 61 nuclei,
c    is fit to a 35-parameter function of Z and A,  with the same range of
c    Z  and  A  values as  l-80  and  l-20.
c         Once again, if an  (iz,ia) pair is outside of the range of
c    validity of the fit, the barrier value is set to  0.0  and a message
c    is printed.  These three values  (Bfis(L=0),L-80, and L-20) and the
c    constraints  of  Bfis = 0 and  d(Bfis)/dL = 0 at L = Lmax and L = 0
c    lead to a fifth-order fit to Bfis(L) for L> L-20.  The first three
c    constraints lead to a third-order fit for the region L < L-20.
c
c         The ground-state energies are calculated from a 175-parameter
c    fit in Z, A, and L to 329 ground-state energies for 36 different
c    Z  and  A  values.
c    (The range of Z and A is the same as for L-80, L-20, and L-max)
c
c         The calculated barriers from which the fits were
c    made were calculated in 1983-1985 by A. J. Sierk of Los Alamos
c    National Laboratory   Group T-9, using  Yukawa-plus-exponential double
c    folded nuclear energy, exact Couloub diffuseness corrections,
c    and diffuse-matter moments of inertia. The parameters of the model
c    are those derived by Moller and Nix in 1979:
c    r-0 = 1.16 fm, as = 21.13 MeV, kappa-s = 2.3  a = 0.68 fm.
c    The diffuseness of the matter and charge distributions used
c    corresponds to a surface diffuseness parameter (defined by Myers)
c    of 0.99 fm.  The calculated barriers for L = 0 are
c    accurate to a little less than 0.1 MeV;  the output from this
c    subroutine is a little less accurate.  Worst errors may be as large
c    as 0.5 MeV; characteristic uncertainty is in the range of 0.1-0.2
c    MeV.   The values of egs are generally approximated to within
c    about 0.1-0.2 MeV;  the largest deviation is about 0.5 MeV,
c    near L-I for light nuclei.
c         The rms deviation of Lmax from the 61 input values is 0.31
c    h-bar.  The approximate value is nearly always within
c    0.5 h-bar of the calculated one.
c
c    Below is a table of test values to check implementation
c    of the program.
c    Z, A,  L    Egnd st  Fiss Bar      Moments of inertia     Lmax
c
c   28, 58, 0    0.00     33.14        0.816 3.603 3.608      46.1
c         ,25   21.36     19.50        0.778 3.662 3.662      46.1
c         ,40   49.66      2.97        0.724 3.648 3.650      46.1
c         ,46.1 59.14      0.00        0.746 3.160 3.160      46.1
c   65,153, 0    0.00     28.88        0.621 3.698 3.698      82.3
c         ,50   19.00     16.16        0.615 3.639 3.639      82.3
c         ,80   45.24      0.26        0.616 2.765 2.788      82.3
c         ,82.3 47.04      0.00        0.682 2.231 2.276      82.3
c   93,229, 0    0.00      3.76        0.715 1.747 1.747      68.1
c         ,45    8.21      1.26        0.765 1.578 1.578      68.1
c         ,68.1 17.96      0.00        1.053 1.053 1.236      68.1
c
c    written by A. J. Sierk,  LANL  T-9
c    Version 1.0   February, 1984
c    Version 1.1   January, 1985  Improved coefficients in egs and Lmax
c    Version 1.2   September, 1985  Improved Lmax, egs coefficients
c    Version 1.21   June, 1986   minor changes made
c
c        Copyright, 1986,  The Regents of the University of California.
c        This software was produced under a U. S. Government contract
c        (W-7405-ENG-36) by the Los Alamos National Laboratory, which is
c        operated by the University of California for the U. S. Department
c        of Energy.  The U. S. Government is licensed to use, reproduce,
c        and distribute this software.  Permission is granted to the public
c        to copy and use this software without charge, provided that this
c        notice and any statement of authorship are reproduced on all
c        copies.  Neither the Government nor the University makes any
c        warranty, expressed or implied, or assumes any liability
c        or responsibility for the use of this software.
c
c
      implicit integer (i-n)
c    the following is NECESSARY for 32-bit machines like DEC VAX, IBM,etc
      implicit double precision (a-h,o-z)
c
      dimension elzcof(7,7),elmcof(5,4),emncof(5,4),pa(7),pz(7),pl(10)
      dimension emxcof(7,5),egs4(5,7),egs1(5,7),egs2(5,7),egs5(5,7),
     1 egs3(5,7),egscof(5,7,5)
c
      equivalence (egs1,egscof),(egs2,egscof(1,1,2)),(egs3,egscof(1,1,3)
     1 ),(egs4,egscof(1,1,4)),(egs5,egscof(1,1,5))
c
      data emncof
     1/-9.01100d+2,-1.40818d+3, 2.77000d+3,-7.06695d+2, 8.89867d+2,
     2  1.35355d+4,-2.03847d+4, 1.09384d+4,-4.86297d+3,-6.18603d+2,
     3 -3.26367d+3, 1.62447d+3, 1.36856d+3, 1.31731d+3, 1.53372d+2,
     4  7.48863d+3,-1.21581d+4, 5.50281d+3,-1.33630d+3, 5.05367d-2/
      data elmcof
     1 /1.84542d+3,-5.64002d+3, 5.66730d+3,-3.15150d+3, 9.54160d+2,
     2 -2.24577d+3, 8.56133d+3,-9.67348d+3, 5.81744d+3,-1.86997d+3,
     3  2.79772d+3,-8.73073d+3, 9.19706d+3,-4.91900d+3, 1.37283d+3,
     4 -3.01866d+1, 1.41161d+3,-2.85919d+3, 2.13016d+3,-6.49072d+2/
      data emxcof /
     1 -4.10652732d6, 1.00064947d7,-1.09533751d7, 7.84797252d6,
     1 -3.78574926d6, 1.12237945d6,-1.77561170d5,
     1  1.08763330d7,-2.63758245d7, 2.85472400d7,-2.01107467d7,
     1  9.48373641d6,-2.73438528d6, 4.13247256d5,
     1 -8.76530903d6, 2.14250513d7,-2.35799595d7, 1.70161347d7,
     1 -8.23738190d6, 2.42447957d6,-3.65427239d5,
     1  6.30258954d6,-1.52999004d7, 1.65640200d7,-1.16695776d7,
     1  5.47369153d6,-1.54986342d6, 2.15409246d5,
     1 -1.45539891d6, 3.64961835d6,-4.21267423d6, 3.24312555d6,
     1 -1.67927904d6, 5.23795062d5,-7.66576599d4/
      data elzcof
     1 /5.11819909d+5,-1.30303186d+6, 1.90119870d+6,-1.20628242d+6,
     2  5.68208488d+5, 5.48346483d+4,-2.45883052d+4,
     3 -1.13269453d+6, 2.97764590d+6,-4.54326326d+6, 3.00464870d+6,
     4 -1.44989274d+6,-1.02026610d+5, 6.27959815d+4,
     5  1.37543304d+6,-3.65808988d+6, 5.47798999d+6,-3.78109283d+6,
     6  1.84131765d+6, 1.53669695d+4,-6.96817834d+4,
     7 -8.56559835d+5, 2.48872266d+6,-4.07349128d+6, 3.12835899d+6,
     8 -1.62394090d+6, 1.19797378d+5, 4.25737058d+4,
     9  3.28723311d+5,-1.09892175d+6, 2.03997269d+6,-1.77185718d+6,
     a  9.96051545d+5,-1.53305699d+5,-1.12982954d+4,
     b  4.15850238d+4, 7.29653408d+4,-4.93776346d+5, 6.01254680d+5,
     c -4.01308292d+5, 9.65968391d+4,-3.49596027d+3,
     d -1.82751044d+5, 3.91386300d+5,-3.03639248d+5, 1.15782417d+5,
     d -4.24399280d+3,-6.11477247d+3, 3.66982647d+2/
      data egs1 /
     1 -1.781665232d6,-2.849020290d6, 9.546305856d5, 2.453904278d5,
     1  3.656148926d5,
     1  4.358113622d6, 6.960182192d6,-2.381941132d6,-6.262569370d5,
     1 -9.026606463d5,
     1 -4.804291019d6,-7.666333374d6, 2.699742775d6, 7.415602390d5,
     1  1.006008724d6,
     1  3.505397297d6, 5.586825123d6,-2.024820713d6,-5.818008462d5,
     1 -7.353683218d5,
     1 -1.740990985d6,-2.759325148d6, 1.036253535d6, 3.035749715d5,
     1  3.606919356d5,
     1  5.492532874d5, 8.598827288d5,-3.399809581d5,-9.852362945d4,
     1 -1.108872347d5,
     1 -9.229576432d4,-1.431344258d5, 5.896521547d4, 1.772385043d4,
     1  1.845424227d4/
      data egs2 /
     1  4.679351387d6, 7.707630513d6,-2.718115276d6,-9.845252314d5,
     1 -1.107173456d6,
     1 -1.137635233d7,-1.870617878d7, 6.669154225d6, 2.413451470d6,
     1  2.691480439d6,
     1  1.237627138d7, 2.030222826d7,-7.334289876d6,-2.656357635d6,
     1 -2.912593917d6,
     1 -8.854155353d6,-1.446966194d7, 5.295832834d6, 1.909275233d6,
     1  2.048899787d6,
     1  4.290642787d6, 6.951223648d6,-2.601557110d6,-9.129731614d5,
     1 -9.627344865d5,
     1 -1.314924218d6,-2.095971932d6, 8.193066795d5, 2.716279969d5,
     1  2.823297853d5,
     1  2.131536582d5, 3.342907992d5,-1.365390745d5,-4.417841315d4,
     1 -4.427025540d4/
      data egs3 /
     1 -3.600471364d6,-5.805932202d6, 1.773029253d6, 4.064280430d5,
     1  7.419581557d5,
     1  8.829126250d6, 1.422377198d7,-4.473342834d6,-1.073350611d6,
     1 -1.845960521d6,
     1 -9.781712604d6,-1.575666314d7, 5.161226883d6, 1.341287330d6,
     1  2.083994843d6,
     1  7.182555931d6, 1.156915972d7,-3.941330542d6,-1.108259560d6,
     1 -1.543982755d6,
     1 -3.579820035d6,-5.740079339d6, 2.041827680d6, 5.981648181d5,
     1  7.629263278d5,
     1  1.122573403d6, 1.777161418d6,-6.714631146d5,-1.952833263d5,
     1 -2.328129775d5,
     1 -1.839672155d5,-2.871137706d5, 1.153532734d5, 3.423868607d4,
     1  3.738902942d4/
      data egs4 /
     1  2.421750735d6, 4.107929841d6,-1.302310290d6,-5.267906237d5,
     1 -6.197966854d5,
     1 -5.883394376d6,-9.964568970d6, 3.198405768d6, 1.293156541d6,
     1  1.506909314d6,
     1  6.387411818d6, 1.079547152d7,-3.517981421d6,-1.424705631d6,
     1 -1.629099740d6,
     1 -4.550695232d6,-7.665548805d6, 2.530844204d6, 1.021187317d6,
     1  1.141553709d6,
     1  2.182540324d6, 3.646532772d6,-1.228378318d6,-4.813626449d5,
     1 -5.299974544d5,
     1 -6.518758807d5,-1.070414288d6, 3.772592079d5, 1.372024952d5,
     1  1.505359294d5,
     1  9.952777968d4, 1.594230613d5,-6.029082719d4,-2.023689807d4,
     1 -2.176008230d4/
      data egs5 /
     1 -4.902668827d5,-8.089034293d5, 1.282510910d5,-1.704435174d4,
     1  8.876109934d4,
     1  1.231673941d6, 2.035989814d6,-3.727491110d5, 4.071377327d3,
     1 -2.375344759d5,
     1 -1.429330809d6,-2.376692769d6, 5.216954243d5, 7.268703575d4,
     1  3.008350125d5,
     1  1.114306796d6, 1.868800148d6,-4.718718351d5,-1.215904582d5,
     1 -2.510379590d5,
     1 -5.873353309d5,-9.903614817d5, 2.742543392d5, 9.055579135d4,
     1  1.364869036d5,
     1  1.895325584d5, 3.184776808d5,-9.500485442d4,-3.406036086d4,
     1 -4.380685984d4,
     1 -2.969272274d4,-4.916872669d4, 1.596305804d4, 5.741228836d3,
     1  6.669912421d3/
c
c    The program starts here
c
      IZ = IDINT(Z)
      IA = IDINT(A)
      if (iz.lt.19 .or. iz.gt.111) go to 900
      if (iz.gt.102 .and. il.gt.0) go to 910
C      z = dble(iz)
C      a = dble(ia)
      el = dble(il)
      amin = 1.2*z + 0.01*z*z
      amax = 5.8*z - 0.024*z*z
      if (a.lt.amin .or. a.gt.amax) go to 920
      aa = dble(2.5d-3*a)
      zz = dble(1.d-2*z)
      bfis0 = 0.d0
      call lpoly(zz,7,pz)
      call lpoly(aa,7,pa)
        do 10 i = 1,7
        do 10 j = 1,7
        bfis0 = bfis0 + elzcof(j,i)*pz(j)*pa(i)
 10     continue
      egs = 0.d0
      segs = egs
      bfis = bfis0
      amin2 = 1.4d0*z + 0.009d0*z*z
      amax2 = 20.d0 + 3.0d0*z
      if ((a.lt.amin2-5.d0 .or. a.gt.amax2+10.d0) .and. il.gt.0)
     1  go to 930
      el80 = 0.d0
      el20 = 0.d0
      elmax = 0.d0
        do 20 i = 1,4
        do 20 j = 1,5
        el80 = el80 + elmcof(j,i)*pz(j)*pa(i)
        el20 = el20 + emncof(j,i)*pz(j)*pa(i)
 20     continue
      sel80 = sngl(el80)
      sel20 = sngl(el20)
        do 30 i = 1,5
        do 30 j = 1,7
        elmax = elmax + emxcof(j,i)*pz(j)*pa(i)
 30     continue
      selmax = elmax
      if (il.lt.1) return
      x = sel20/selmax
      y = sel80/selmax
      if (el.gt.sel20) go to 40
      q = 0.2d0/(sel20**2*sel80**2*(sel20-sel80))
      qa =  q*(4.d0*sel80**3 - sel20**3)
      qb = -q*(4.d0*sel80**2 - sel20**2)
      bfis = bfis*(1.d0 + qa*el**2 + qb*el**3)
      go to 50
   40 aj = (-20.d0*x**5 + 25.d0*x**4 - 4.d0)*(y-1.d0)**2*y*y
      ak = (-20.d0*y**5 + 25.d0*y**4 - 1.d0)*(x-1.d0)**2*x*x
      q = 0.2d0/((y-x)*((1.d0-x)*(1.d0-y)*x*y)**2)
      qa =  q*(aj*y - ak*x)
      qb = -q*(aj*(2.d0*y+1.d0) - ak*(2.d0*x+1.d0))
      z = el/selmax
      a1 = 4.d0*z**5 - 5.d0*z**4 + 1.d0
      a2 = qa*(2.d0*z+1.d0)
      bfis = bfis*(a1 + (z-1.d0)*(a2 + qb*z)*z*z*(z-1.d0))
   50 if (bfis.le.0.0d0) bfis = 0.0d0
      if (el.gt.selmax) bfis = 0.0d0
c
c    Now calculate rotating ground-state energy
c
      if (el.gt.selmax .and. il.ne.1000) return
      ell = el/elmax
      if (il.eq.1000) ell = 1.d0
      call lpoly(ell,9,pl)
        do 60 k = 1,5
          do 60 l = 1,7
            do 60 m = 1,5
            egs = egs + egscof(m,l,k)*pz(l)*pa(k)*pl(2*m-1)
   60       continue
      segs = egs
      if (segs.lt.0.0d0) segs = 0.0d0
      return
 899  bfis = 0.0d0
      segs = 0.0d0
      selmax = 0.0d0
      return
 900  WRITE(16,1000)
      go to 899
 910  WRITE(16,1010)
      go to 899
 920  WRITE(16,1020) ia
      go to 899
 930  WRITE(16,1030) ia,il
      go to 899
c
 1000 format(/10x,'*  *  *  *  barfit called with  z  less than 19 or ',
     1 ' greater than 111.  bfis is set to 0.0.  *  *  *  *')
 1010 format(/10x,'*  *  *  *  barfit called with  z  greater than 102',
     1 ' and  L  not equal to zero.  bfis is set to 0.0.  *  *  *  *')
 1020 format(/10x,'*  *  *  *  barfit called with  a =',i3,', outside ',
     1 'the allowed values for z = ',i3,' *  *  *  *')
 1030 format(/10x,'*  *  *  *  barfit called with  a  =',i3,', outside',
     1 ' the allowed values for z = ',i3/26x,'for nonzero  L =',i3,
     2 '  *  *  *  *')
      end
      subroutine lpoly(x,n,pl)
c
c    This subroutine calculates the ordinary Legendre Polynomials of
c    order 0 to n-1 of argument  x  and stores them in the vector
c    pl.  They are calculated by recursion relation from the first two
c    polynomials.
c
c    written by A. J. Sierk   LANL  T-9  February,1984
c
c    NOTE:  pl and x must be double precision on 32-bit computers!
c
      implicit integer (i-n)
      double precision pl,x
c
      dimension pl(20)
      pl(1) = 1.d0
      pl(2) = x
      do 10 i = 3,n
        pl(i) = ((2.*i-3.)*x*pl(i-1)-(i-2.)*pl(i-2))/(i-1.)
 10     continue
      return
      end
