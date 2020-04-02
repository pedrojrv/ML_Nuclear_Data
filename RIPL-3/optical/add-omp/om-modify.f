$DEBUG
      program ommodify
c
c
c
c
c     Code to add or delete potentials from the RIPL-2 optical
c     model potential (omp) library. (31 July 2001)
c
c     P.G.Young, Group T-2, Los Alamos National Laboratory
c     Mail Stop B243, email address pgy@lanl.gov
c
c     Code compiled with:
c         f77 om-modify.f -dbl -C -g  -o ommodify
c
c         INPUT FILES
c     ripmod.inp  = input instructions (see below)
c     omp-old.dat = initial version of the OMP parameter library
c     omp-mod.dat = new potentials to be added to omp-old.dat library
c                   in same format as omp library.
c
c         OUTPUT FILE
c     omp-new.dat = updated or new version of the OMP parameter library
c
c         INPUT PARAMETERS (ripmod.inp file)
c     idel= -1 to omit all single-energy potentials
c         =  0 to omit making any deletions from ripmod.inp
c         >  0 to delete inputted list of potentials (below)
c     iadd=  0 to omit adding any new potentials to omp-old.dat library
c         >  0 to add  new potentials to omp-old.dat library
c     ndel = number of potentials to delete (only read if idel>0)
c     ldel(i),i=1,ndel = reference numbers of potentials to delete
c                        (only read if idel>0)
c
      include "om-utility.cmb"
      dimension ldel(500)
c
      open(unit=1,file='omp-old.dat')
      open(unit=2,file='omp-mod.dat')
      open(unit=3,file='omp-new.dat')
      open(unit=4,status='scratch')
      open(unit=5,file='ripmod.inp')
c
c     Read input
c
      read(5,*) idel,iadd
      ki=1
      ko=1
      if(idel.lt.1)go to 60
      read(5,*)ndel,(ldel(i),i=1,ndel)
c
c     Delete selected files
      ko=4
      if(iadd.eq.0)ko=3
  20  call omin11
      if(ieof.eq.1)go to 50
      do 30 i=1,ndel
        if(ldel(i).eq.iref)go to 20
  30  continue
      call omout11
      go to 20
  50  rewind ko
      go to 100
c
  60  if(idel.eq.0)go to 100
c
c     Delete all single-energy potentials
      ko=4
      if(iadd.eq.0)ko=3
  70  call omin11
      if(ieof.eq.1)go to 50
      iemin=emin*10000.
      iemax=emax*10000.
      if(iemin.eq.iemax)go to 70
      call omout11
      go to 70
c
 100  if(iadd.lt.1)go to 990
      ks=ko
      ko=3
c
c     Add and merge new files
c
 102  read(ks,*,end=104)iref1
      backspace ks
      go to 106
 104  iref1=0
 106  read(2,*,end=108)iref2
      backspace 2
      go to 110
 108  iref2=0
c
c     Check for end-of-file on input libraries
 110  if(iref1.eq.0.and.iref2.eq.0)go to 990
      if(iref1.eq.0)go to 220
      if(iref2.eq.0)go to 240
c
c     Add new potential to library
      if(iref1-iref2)130,120,140
c
 120  write(6,'("New and Old Reference Numbers are the same. IREF=",i6)
     +  ')iref1
      write(6,'("Old potential replaced by new one.")')
      ki=ks
      call omin11
      ki=2
      call omin11
      call omout11
      go to 102
c
 130  ki=ks
      call omin11
      call omout11
      go to 102
c
 140  ki=2
      call omin11
      call omout11
      go to 102
c
c     Termination Section
 220  ki=2
 230  call omin11
      if(ieof.eq.1)go to 990
      call omout11
      go to 230
c
 240  ki=ks
 250  call omin11
      if(ieof.eq.1)go to 990
      call omout11
      go to 250
c
 990  close (4, status='delete')
      stop
      end
      subroutine omin11
c
c     routine to retrieve optical model parameters from RIPL-2 library
      include "om-utility.cmb"
c
  1   format(80a1)
c
c     Zero arrays
      call setr(0.,epot,5*ndim1)
      call setr(0.,rco,5*ndim1*ndim2)
      call setr(0.,aco,5*ndim1*ndim2)
      call setr(0.,pot,5*ndim1*ndim3)
c
      ieof=0
      read(ki,*,end=999) iref
      read(ki,1) (author(m),m=1,80)
      read(ki,1) (refer(m),m=1,80)
      read(ki,1) (summary(m),m=1,320)
      read(ki,*) emin,emax
      read(ki,*) izmin,izmax
      read(ki,*) iamin,iamax
      read(ki,*) imodel,izproj,iaproj,irel,idr
c
      do 100 m=1,6
        read(ki,*) jrange(m)
        if(jrange(m).eq.0) go to 100
        krange=iabs(jrange(m))
        do 98 j=1,krange
          read(ki,*) epot(m,j)
          read(ki,*) (rco(m,j,n),n=1,ndim2)
          read(ki,*) (aco(m,j,n),n=1,ndim2)
c         if(ki.eq.2) then
c           read(ki,*) (rco(m,j,n),n=1,ndim2)
c           read(ki,*) (aco(m,j,n),n=1,ndim2)
c         else
c           read(ki,*) (rco(m,j,n),n=1,ndim2-2)
c           rco(m,j,ndim2-1)=0.0
c           rco(m,j,ndim2)=0.0
c           read(ki,*) (aco(m,j,n),n=1,ndim2-2)
c           aco(m,j,ndim2-1)=0.0
c           aco(m,j,ndim2)=0.0
c         endif
          read(ki,*) (pot(m,j,n),n=1,ndim3)
  98    continue
 100  continue
      read(ki,*) jcoul
      if(jcoul.le.0) go to 110
      do 108 j=1,jcoul
C	rcoul3(j)=0.d0
 108  read(ki,*) ecoul(j),rcoul0(j),rcoul(j),rcoul1(j),rcoul2(j),
     +           beta(j),acoul(j),rcoul3(j)
C108  read(ki,*) ecoul(j),rcoul0(j),rcoul(j),rcoul1(j),rcoul2(j),
C    +           beta(j),acoul(j)
 110  if(imodel.ne.1) go to 130
C     Reading rigid rotor parameters    
      read(ki,*) nisotop

      do 120 n=1,nisotop
        read(ki,*) iz(n),ia(n),ncoll(n),lmax(n),idef(n),bandk(n),
     +    (def(n,k),k=2,idef(n),2)

        nlvmax = 0
        do 124 k=1,ncoll(n)
          read(ki,*) ex(k,n),spin(k,n),ipar(k,n)
          if(ex(k,n).gt.100.d0 .and. nlvmax.eq.0) nlvmax = k-1
 124    continue
        if(imodel.ne.4 .and. nlvmax.gt.0) ncoll(n) = nlvmax
 120  continue
      go to 200
 130  if(imodel.ne.2) go to 150
C     Reading vibrational rotor parameters    
      read(ki,*) nisotop
      do 140 n=1,nisotop
        read(ki,*) iz(n),ia(n),nvib(n)
        do 138 k=1,nvib(n)
          read(ki,*) exv(k,n),spinv(k,n),iparv(k,n),nph(k,n),defv(k,n),
     +    thetm(k,n)
 138    continue
 140  continue
      go to 200
 150  if(imodel.ne.3)go to 200
C     Reading soft rotor parameters    
      read(ki,*) nisotop
      do 165 n=1,nisotop
        read(ki,*) iz(n),ia(n),ncoll(n) !  Isotope atomic and mass number read
        read(ki,*)  ! Record 3 from OPTMAN (Hamiltonian parameters)
     +  SR_hw(n),SR_amb0(n),SR_amg0(n),SR_gam0(n),SR_bet0(n),SR_bet4(n)
        read(ki,*)  ! Record 3 from OPTMAN (Hamiltonian parameters)
     +  SR_bb42(n),SR_gamg(n),SR_delg(n),SR_bet3(n),SR_et0(n),SR_amu0(n)
        read(ki,*)  ! Record 3 from OPTMAN (Hamiltonian parameters)
     +  SR_hw0(n),SR_bb32(n),SR_gamde(n),SR_dpar(n),SR_gshape(n)
        do 152 k=1,ncoll(n)
          read(ki,*) exv(k,n),spinv(k,n),iparv(k,n),
     +               SR_ntu(k,n),SR_nnb(k,n),SR_nng(k,n),SR_nno(k,n)
 152    continue
 165  continue
 200  continue
      read(ki,1,end=999)idum
      return
 999  ieof=1
      write(6,*)'End of RIPL-2 optical potential library reached.'
      return
  4   format(f10.3,6f10.4)            
      end
      subroutine setr (a,b,n)
c     ******************************************************************
c     set all elements of array b(n) to real number a.
c     ******************************************************************
      dimension b(n)
      do 100 k=1,n
  100 b(k)=a
      return
      end
      subroutine omout11
c
c     routine to write optical model parameters into RIPL-2 library
c
      include "om-utility.cmb"
      character*8 ldum
      dimension rdum(ndim2),adum(ndim2),pdum(ndim3)
c
  1   format(10i5)
  2   format(10a8)
  4   format(f10.3,7f10.4)
  5   format(f12.5,(5(1x,1pe11.4)),/12x,(5(1x,1pe11.4)))
  6   format(5i5,f5.1,(4(1x,1pe10.3)),/30x,(4(1x,1pe10.3)))
  7   format(f12.8,f7.1,2i4,1p,2(1x,e11.4))
  8   format(f12.8,f7.1,i4,4i2)
  85  format(1x,6(e12.5,1x))  
  9   format(80a1)
c
      data ldum/'++++++++'/
c
      write(ko,1) iref
      write(ko,9) author
      write(ko,9) refer
      write(ko,9) summary
      write(ko,4) emin,emax
      write(ko,1) izmin,izmax
      write(ko,1) iamin,iamax
      write(ko,1) imodel,izproj,iaproj,irel,idr
      do 100 i=1,6
        write(ko,1) jrange(i)
        if(jrange(i).eq.0) go to 100
        krange=iabs(jrange(i))
        do 98 j=1,krange
          write(ko,4) epot(i,j)
c         write(ko,5) (rco(i,j,n),n=1,ndim2)
c         write(ko,5) (aco(i,j,n),n=1,ndim2)
c         write(ko,5) (pot(i,j,n),n=1,ndim3)
          do 82 n=1,ndim2
          rdum(n)=rco(i,j,n)
  82      adum(n)=aco(i,j,n)
          do 84 n=1,ndim3
  84      pdum(n)=pot(i,j,n)
          call linew3(rdum,ndim2,ko)
          call linew3(adum,ndim2,ko)
          call linew3(pdum,ndim3,ko)
  98    continue
 100  continue
      write(ko,1)jcoul
      if(jcoul.le.0) go to 110
      do 108 j=1,jcoul
 108  write(ko,4)ecoul(j),rcoul0(j),rcoul(j),rcoul1(j),rcoul2(j),
     >           beta(j),acoul(j),rcoul3(j)

 110  if(imodel.ne.1) go to 130
      write(ko,1) nisotop
      do 120 n=1,nisotop
        write(ko,6) iz(n),ia(n),ncoll(n),lmax(n),idef(n),bandk(n),
     1   (def(n,k),k=2,idef(n),2)
        do 124 k=1,ncoll(n)
          write(ko,7) ex(k,n),spin(k,n),ipar(k,n)
 124    continue
 120  continue
      go to 200
 130  if(imodel.ne.2) go to 150
      write(ko,1) nisotop
      do 140 n=1,nisotop
        write(ko,1) iz(n),ia(n),nvib(n)
        do 138 k=1,nvib(n)
          write(ko,7) exv(k,n),spinv(k,n),iparv(k,n),nph(k,n),defv(k,n),
     1      thetm(k,n)
 138    continue
 140  continue
      go to 200
 150  if(imodel.ne.3)go to 200
      write(ko,1) nisotop
      do 160 n=1,nisotop
        write(ko,6) iz(n),ia(n),ncoll(n)
        write(ko,85) ! Record 3 from OPTMAN (Hamiltonian parameters)
     +  SR_hw(n),SR_amb0(n),SR_amg0(n),SR_gam0(n),SR_bet0(n),SR_bet4(n)
        write(ko,85) ! Record 3 from OPTMAN (Hamiltonian parameters)
     +  SR_bb42(n),SR_gamg(n),SR_delg(n),SR_bet3(n),SR_et0(n),SR_amu0(n)
        write(ko,85) ! Record 3 from OPTMAN (Hamiltonian parameters)
     +  SR_hw0(n),SR_bb32(n),SR_gamde(n),SR_dpar(n),SR_gshape(n)
        do 152 k=1,ncoll(n)
          write(ko,8) exv(k,n),spinv(k,n),iparv(k,n),
     1      SR_ntu(k,n),SR_nnb(k,n),SR_nng(k,n),SR_nno(k,n)
 152    continue
 160  continue
 200  continue
      write(ko,2)(ldum,l=1,10)
      return
      end
      subroutine linew3(ah,nah,ko)
c
c     utility for omout RIPL single line writes
c     requires subroutine cxfp
c
c      dimension ah(25),f(25),is(25),j(25)
      dimension ah(nah), f(nah), is(nah), j(nah)
      character*8 start1(2),start2(2),fmt(15),f8(2),f7(2),finish
      character*1 is
      data start1/'(f12.5, ','1x      '/
      data start2/'(13x,   ','        '/
      data f8/',f8.5,  ','a1,i1,1x'/
      data f7/',f7.4,  ','a1,i2,1x'/
      data finish/')'/
c
c     Write first line
c
      l=0
      do 110 k=1,2
        l=l+1
        fmt(l)=start1(k)
 110  continue
      do 120 k=2,7
        call cxfp(ah(k),f(k),is(k),j(k))
        l=l+1
        if(iabs(j(k)).ge.10)go to 115
        fmt(l)=f8(1)
        l=l+1
        fmt(l)=f8(2)
        go to 120
 115    fmt(l)=f7(1)
        l=l+1
        fmt(l)=f7(2)
 120  continue
      l=l+1
      fmt(l)=finish
C     write(ko,fmt)ah(1),(f(k),is(k),j(k),k=2,7)
      write(ko,'(f12.5,1x,6(f8.5,a1,i1,1x))')
     >  ah(1),(f(k),is(k),j(k),k=2,7)
c
c     Write remaining full lines
c
      nleft=nah-7
      nloop=nleft/6
      nremain=nleft-nloop*6
      nold=1
      if(nloop.le.0)go to 165
      do 160 nlp=1,nloop
        nold=nold+6
        l=0
        do 140 k=1,2
          l=l+1
          fmt(l)=start2(k)
 140    continue
        do 150 k=1,6
          call cxfp(ah(k+nold),f(k),is(k),j(k))
          l=l+1
          if(iabs(j(k)).ge.10)go to 145
          fmt(l)=f8(1)
          l=l+1
          fmt(l)=f8(2)
          go to 150
 145      fmt(l)=f7(1)
          l=l+1
          fmt(l)=f7(2)
 150    continue
        l=l+1
        fmt(l)=finish
C       write(ko,fmt)(f(k),is(k),j(k),k=1,6)
        write(ko,'(13x,6(f8.5,a1,i1,1x))')
     >  (f(k),is(k),j(k),k=1,6)
 160  continue
 165  if(nremain.le.0) go to 200
c
c     Write remaining partial line
c
      nold=nold+6
      l=0
      do 170 k=1,2
        l=l+1
        fmt(l)=start2(k)
 170  continue
      do 180 k=1,nremain
        call cxfp(ah(k+nold),f(k),is(k),j(k))
        l=l+1
        if(iabs(j(k)).ge.10)go to 175
        fmt(l)=f8(1)
        l=l+1
        fmt(l)=f8(2)
        go to 180
 175    fmt(l)=f7(1)
        l=l+1
        fmt(l)=f7(2)
 180  continue
      l=l+1
      fmt(l)=finish
C     write(ko,fmt)(f(k),is(k),j(k),k=1,nremain)
C     formato fijo en vez de variable,
        write(ko,'(13x,5(f8.5,a1,i1,1x))')
     >  (f(k),is(k),j(k),k=1,nremain)
 200  return
      end
      subroutine cxfp (x,f,s,n)
c     ******************************************************************
c     convert x for punching.
c        x - floating point number = f*10.0**n
c        f - 0.99995 le f lt 9.999995
c        s  sign (hollerith + or -) of exponent
c        n - exponent
c     ******************************************************************
cibm
c     real*8 xx,ff
cibm
      character*1 s,sp,sm
      data sp/'+'/,sm/'-'/
      if (x.ne.0.0) go to 100
      f=0.0
      s=sp
      n=0
      return
ccdc
  100 n=alog10(abs(x))
      if (abs(x).lt.1.0) go to 140
      f=x/10.0**n
      s=sp
      if (iabs(n).lt.10.and.abs(f).lt.9.9999995) go to 170
      if (iabs(n).ge.10.and.abs(f).lt.9.999995) go to 170
      f=f/10.0
      n=n+1
      go to 170
  140 n=1-n
      f=x*10.0**n
      s=sm
      if (iabs(n).lt.10.and.abs(f).lt.9.9999995) go to 170
      if (iabs(n).ge.10.and.abs(f).lt.9.999995) go to 170
      f=f/10.0
      n=n-1
      if (n.gt.0) go to 170
      s=sp
  170 continue
ccdc
cibm
c 100 xx=x
c     n=dlog10(dabs(xx))
c     if (dabs(xx).lt.1.0d0) go to 140
c     ff=xx/10.d0**n
c     s=sp
c     if (iabs(n).lt.10.and.dabs(ff).lt.9.9999995d0) go to 170
c     if (iabs(n).ge.10.and.dabs(ff).lt.9.999995d0) go to 170
c     ff=ff/10.0d0
c     n=n+1
c     go to 170
c 140 n=1-n
c     ff=xx*10.0d0**n
c     s=sm
c     if (iabs(n).lt.10.and.dabs(ff).lt.9.9999995d0) go to 170
c     if (iabs(n).ge.10.and.dabs(ff).lt.9.999995d0) go to 170
c     ff=ff/10.0d0
c     n=n-1
c     if (n.gt.0) go to 170
c     s=sp
c 170 f=ff
cibm
      return
      end

