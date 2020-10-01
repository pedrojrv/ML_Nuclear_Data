      program omsummary
c
c     Code to provide summary information on optical model potentials in
c     the RIPL optical model potential (omp) library.  The code
c     permits optional sorting on [projectile, Z, A, Emin] .
c
c     Modified and maintained by Roberto Capote (r.capotenoy@iaea.org)
c     IAEA Nuclear Data Section
c
c     P.G.Young, Group T-2, Los Alamos National Laboratory
c     Mail Stop B243, email address pgy@lanl.gov
c     Version date:  01/14/2002 (desc12 format).
c
c     INPUT FILE
c       omparameter.dat = RIPL2 Optical Model Potential (OMP) file
c                       = om-parameter-a.dat or om-parameter-u.dat
c
c     OUTPUT FILES
c       table = table of OMP potentials, with a one-line summary
c               for each potential.
c       references = file of references for the various potentials
c                    that are included in the table file.
c       summary = file containing descriptive information for each
c                 reference in the OMP library.
c
c     SORTING OPTION
c       When queried by the code about sorting, type yes for output
c       files to be sorted on [projectile, Z, A, Emin].  Otherwise,
c       the output files will be ordered on RIPL reference number.
c
      include "om-utility.cmb"
      character*1 ians
      common/clas/nsph,nccvib,nccrot,nccsof,ndisp,nhe
      nsph = 0      
      nccvib = 0
      nccrot = 0
      nccsof = 0
      ndisp = 0
      nhe = 0
c
c     open(unit=1,file='omp-new.dat')
      open(unit=1,file='om-parameter-u.dat')
      open(unit=2,file='omp-index.txt')
      open(unit=3,file='references')
      open(unit=4,file='summary')
c
      ki=1
c
c     Input option for sorting
      write(6,'(" Type yes to sort tables on Z, A, and EMAX.",
     + /" Otherwise, sorting is on RIPL2 reference number.")')
      ians='n'
      read(5,'(a1)')ians
      if(ians.eq.'Y')ians='y'
c
      i1=0
 100  call omin11
      if(ieof.gt.0) go to 200
      i1=i1+1
      if(iref.le.3999) write(*,*) 'neutrons:',i1
      if(iref.ge.4000. and. iref.le.5999) write(*,*) 'protons:',i1
      if(iref.ge.6000. and. iref.le.6999) write(*,*) 'deut:',i1
      if(iref.ge.7000. and. iref.le.7999) write(*,*) 't:',i1
      if(iref.ge.8000. and. iref.le.8999) write(*,*) 'He-3:',i1
      if(iref.ge.9000) write(*,*) 'alpha:',i1
      call catalog1(i1)
      go to 100
 200  n1=i1
      call catalog2(ians,n1,i2)
      n2=i2
      write(*,*)      
      write(*,*)'   SUMMARY:'      
      write(*,*)'Number of library entries = ',n1
      write(*,*)'Number of spherical potentials = ',nsph      
      write(*,*)'Number of coupled channel vibrational potentials = ',
     &  nccvib
      write(*,*)'Number of coupled channel rigid rotor potentials = ',
     &  nccrot      
      write(*,*)'Number of coupled channel soft rotor  potentials = ',                          
     &  nccsof      
      write(*,*)'Number of dispersive potentials = ',ndisp      
      write(*,*)'Number of potentials defined above 100 MeV = ',nhe           
      write(*,*)'Number of references = ',n2
      call reptpr(ians,n1,n2)
      call sumprt2(ians,n1)
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
      write(*,'(I5,6x,5I4)') iref,imodel,izproj,iaproj,irel,idr      
c
      do 100 m=1,6
        read(ki,*) jrange(m)
        if(jrange(m).eq.0) go to 100
        krange=iabs(jrange(m))
        do 98 j=1,krange
          read(ki,*) epot(m,j)
          read(ki,*) (rco(m,j,n),n=1,ndim2)
          read(ki,*) (aco(m,j,n),n=1,ndim2)
          read(ki,*) (pot(m,j,n),n=1,ndim3)
  98    continue
 100  continue
      read(ki,*) jcoul
      if(jcoul.le.0) go to 110
      do 108 j=1,jcoul
 108  read(ki,*) ecoul(j),rcoul0(j),rcoul(j),rcoul1(j),rcoul2(j),
     >           beta(j),acoul(j),rcoul3(j)
 110  if(imodel.ne.1) go to 130
      read(ki,*) nisotop
      do 120 n=1,nisotop
        read(ki,*) iz(n),ia(n),ncoll(n),lmax(n),idef(n),bandk(n),
     +    (def(n,k),k=2,idef(n),2)
        do 124 k=1,ncoll(n)
          read(ki,*) ex(k,n),spin(k,n),ipar(k,n)
 124    continue
 120  continue
      go to 200
 130  if(imodel.ne.2) go to 150
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
      write(6,*)'End of RIPL-3 optical potential library reached.'
      return
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

      subroutine catalog1(i1)
c
c     routine to assemble table information for RIPL report.
c
      parameter (ndim8=2000)
      character*1 authx,referx,summryx
      include "om-utility.cmb"
      real*8 disrt,djsrt
      common/rept/krefx(ndim8),idx(ndim8),izminx(ndim8),izmaxx(ndim8),
     1 iaminx(ndim8),iamaxx(ndim8),eminx(ndim8),emaxx(ndim8),
     2 imodelx(ndim8),irefx(ndim8),nauthx(ndim8),idrx(ndim8),
     3 lrefx(ndim8),irelx(ndim8),disrt(ndim8),djsrt(ndim8)
      common/bcdx/authx(80,ndim8),referx(80,ndim8),summryx(320,ndim8)
      common/clas/nsph,nccvib,nccrot,nccsof,ndisp,nhe
c
c     Store reference information
c
      irefx(i1)=iref
      izminx(i1)=izmin
      izmaxx(i1)=izmax
      iaminx(i1)=iamin
      iamaxx(i1)=iamax
      eminx(i1) =emin
      emaxx(i1) =emax
      imodelx(i1) =imodel
      idrx(i1)=idr
      iemax=int(emax)
      irelx(i1)=irel
      
      if(imodel.eq.0) nsph   = nsph   + 1
      if(imodel.eq.1) nccrot = nccrot + 1            
      if(imodel.eq.2) nccvib = nccvib + 1      
      if(imodel.eq.3) nccsof = nccsof + 1            
      if(idr.ne.0) ndisp = ndisp + 1                        
      if(emin.lt.1 .and. emax.gt.99) nhe = nhe + 1       
c
c     Get standard ID number
      do 100 n=1,6
      if(izproj.eq.0.and.iaproj.eq.1) idx(i1)=1
      if(izproj.eq.1.and.iaproj.eq.1) idx(i1)=2
      if(izproj.eq.1.and.iaproj.eq.2) idx(i1)=3
      if(izproj.eq.1.and.iaproj.eq.3) idx(i1)=4
      if(izproj.eq.2.and.iaproj.eq.3) idx(i1)=5
      if(izproj.eq.2.and.iaproj.eq.4) idx(i1)=6
 100  continue
c
c     Set sorting criteria
      disrt(i1)=100000.d0*idx(i1)+1000*izmin+iamin
      disrt(i1)=10000.d0*disrt(i1)+iemax
c
c     See how many characters are needed for the first author
      do 110 n=3,80
      nauthx(i1)=n-1
      if(author(n).eq.' '.or.author(n).eq.',') go to 112
 110  continue
      nauthx(i1)=nauthx(i1)+1
 112  continue
c
c     Save entire author, reference, and summary arrays
      do 120 n=1,80
      authx(n,i1)=author(n)
      referx(n,i1)=refer(n)
 120  continue
      do 124 n=1,320
 124  summryx(n,i1)=summary(n)
      return
      end

      subroutine catalog2(ians,n1,i2)
c
c     Routine to sort table and collect references
c
      parameter (ndim8=2000,jcount=40)
      character*1 authx,referx,summryx,ians,auz,rez
      include "om-utility.cmb"
      real*8 disrt,djsrt
      common/rept/krefx(ndim8),idx(ndim8),izminx(ndim8),izmaxx(ndim8),
     1 iaminx(ndim8),iamaxx(ndim8),eminx(ndim8),emaxx(ndim8),
     2 imodelx(ndim8),irefx(ndim8),nauthx(ndim8),idrx(ndim8),
     3 lrefx(ndim8),irelx(ndim8),disrt(ndim8),djsrt(ndim8)
      common/bcdx/authx(80,ndim8),referx(80,ndim8),summryx(320,ndim8)
      dimension auz(jcount,ndim8),rez(jcount,ndim8)
c
c     Set up auz and rez arrays for reference counting
      do 100 i1=1,n1
      do 100 n=1,jcount
      auz(n,i1)=authx(n,i1)
 100  rez(n,i1)=referx(n,i1)
c
      if(ians.ne.'y')go to 138
c
c     Sort table on Z, A, and EMAX
      call sort0mk(n1,disrt,djsrt)
c
c     Re-set auz and rez according to jsrt
      do 110 k1=1,n1
      i1=NINT(djsrt(k1))
      do 110 n=1,jcount
      auz(n,k1)=authx(n,i1)
 110  rez(n,k1)=referx(n,i1)
c
c     Collect references
c
 138  i2=0
      do 190 i1=1,n1
c
c     Check to see if this is a repeated reference
      if(i1.eq.1) go to 170
      do 150 i=1,i1-1
      i11=i
      do 140 j=1,jcount
      if(auz(j,i1).ne.auz(j,i)) go to 150
 140  continue
      do 146 j=1,jcount
      if(rez(j,i1).ne.rez(j,i)) go to 150
 146  continue
      go to 160
 150  continue
      go to 170
c
c     Repeated Reference
c
 160  continue
      krefx(i1)=krefx(i11)
      go to 190

c
c     New Reference
c
 170  i2=i2+1
      lrefx(i2)=i1
      krefx(i1)=i2
c
 190  continue
      return
      end
      subroutine reptpr(ians,n1,n2)
c
c     routine to assemble table information for RIPL report.
c
      parameter (ndim8=2000)
      character*1 authx,referx,summryx,da,com,bl,ians
      character*3 proj,dsp,rel
      character*7 mod
      real*8 disrt,djsrt
      common/rept/krefx(ndim8),idx(ndim8),izminx(ndim8),izmaxx(ndim8),
     1 iaminx(ndim8),iamaxx(ndim8),eminx(ndim8),emaxx(ndim8),
     2 imodelx(ndim8),irefx(ndim8),nauthx(ndim8),idrx(ndim8),
     3 lrefx(ndim8),irelx(ndim8),disrt(ndim8),djsrt(ndim8)
      common/bcdx/authx(80,ndim8),referx(80,ndim8),summryx(320,ndim8)
      dimension proj(6),mod(4)
      data nct/100000/
      data (proj(id),id=1,6)/' n ',' p ',' d ',' t ','3He','4He'/
      data com/','/,da/'-'/,bl/' '/
      data (mod(i),i=1,4)/'spher. ','CC rig.','CC vib.','CC soft'/
c
  1   format('Lib.  Inc.  Model   Disp  Rel Z-Range  A-Range    E-Range
     +   Ref.   First ',/
     +       ' No. Part.   Type   Pot   Pot                      (MeV)
     +    No.   Author ',/)
  2   format(i4,2x,a3,3x,a7,2x,a3,2x,a3,i4,a1,i2,i5,a1,i3,f6.1,a1,f5.1,
     + i6,2x,16a1)
  3   format('                       REFERENCES'/)
  4   format(i3,'.  ',66a1,/6x,66a1,/6x,66a1)
  5   format(i4,2x,a3,3x,a7,2x,a3,2x,a3,i4,a1,i3,i4,a1,i3,f6.1,a1,f5.1,
     + i6,2x,16a1)
c
c     Write table on tape2
c
      k1=0
  98  ict=0
      write(2,1)
 100  ict=ict+1
      k1=k1+1
      i1=k1
      if(ians.eq.'y')i1=NINT(djsrt(k1))
      id=idx(i1)
      im=imodelx(i1) + 1
      dsp='no '
      if(idrx(i1).ne.0)dsp='yes'
      rel='no '
      if(irelx(i1).gt.0)rel='yes'
      if(izmaxx(i1).gt.99)go to 110
      write(2,2)irefx(i1),proj(id),mod(im),dsp,rel,izminx(i1),da,
     1 izmaxx(i1),iaminx(i1),da,iamaxx(i1),eminx(i1),da,emaxx(i1),
     2 krefx(k1),(authx(j,i1),j=1,nauthx(i1))
      go to 112
 110  write(2,5)irefx(i1),proj(id),mod(im),dsp,rel,izminx(i1),da,
     1 izmaxx(i1),iaminx(i1),da,iamaxx(i1),eminx(i1),da,emaxx(i1),
     2 krefx(k1),(authx(j,i1),j=1,nauthx(i1))
 112  if(k1.eq.n1) go to 120
      if(ict.lt.nct) go to 100
      go to 98
c
c     Write references on tape3
c
 120  i2=0
 128  ict=0
      write(3,3)
 130  ict=ict+1
      i2=i2+1
      k1=lrefx(i2)
      i1=k1
      if(ians.eq.'y')i1=NINT(djsrt(k1))
      do 140 nn=1,80
      n=80-nn+1
      if(authx(n,i1).ne.' ')go to 142
 140  continue
 142  nauth=n
      do 150 nn=1,80
      n=80-nn+1
      if(referx(n,i1).ne.' ')go to 152
 150  continue
 152  nref=n
      write(3,4)i2,(authx(j,i1),j=1,nauth),com,bl,
     1 (referx(j,i1),j=1,nref)
      if(i2.eq.n2) go to 200
c     if(ict.eq.nct) go to 128
      go to 130

c
 200  return
      end
      subroutine sort0mk(npts,nx,ny)
c     Chadwick, 27/03/96   (Modified by PY, 9/04/96)

      integer npts,i
      logical flag
      real*8 nx,ntemp
      real*8 ny,ltemp1

      parameter (ndim8=2000)
      dimension nx(ndim8),ny(ndim8)

      do 5 mbc=1,npts
 5       ny(mbc)=mbc

   10 flag = .false.

       do 20 i=2,npts

          if(nx(i-1).gt.nx(i)) then

              flag = .true.

              ntemp = nx(i-1)
              ltemp1= ny(i-1)
              nx(i-1) = nx(i)
              ny(i-1) = ny(i)
              nx(i) = ntemp
              ny(i) = ltemp1

c ny corresponds to the index of the original position in the
c     ordering
          end if

   20 continue

      if(flag) goto 10

      return
      end
      subroutine sumprt2(ians,n1)
c
c     Routine to print summary information from RIPL OMP library
c     formatted according to desc11.
c
c     include "om-utility.cmb"
      parameter (ndim8=2000)
      character*1 authx,referx,summryx,ians
	real*8 disrt,djsrt
      common/rept/krefx(ndim8),idx(ndim8),izminx(ndim8),izmaxx(ndim8),
     1 iaminx(ndim8),iamaxx(ndim8),eminx(ndim8),emaxx(ndim8),
     2 imodelx(ndim8),irefx(ndim8),nauthx(ndim8),idrx(ndim8),
     3 lrefx(ndim8),irelx(ndim8),disrt(ndim8),djsrt(ndim8)
      common/bcdx/authx(80,ndim8),referx(80,ndim8),summryx(320,ndim8)
      dimension summ(320),prt(68,10),nprt(10)
      character*1, summ,prt
      character*8 ldum,proj
      character*40 model

      character*27 disp
c     character*15 disp
c     character*20 area
c
  1   format(' IREF=',i5,2x,a8,' incident, ',a40)
  2   format(' Author(s)= ',68a1,/12x,68a1)
  3   format(' Reference= ',68a1,/12x,68a1)
  4   format('   Summary= ',68a1,/12x,68a1,/12x,68a1,/12x,68a1,/12x,
     1 68a1,/12x,68a1,/12x,68a1,/12x,68a1,/12x,68a1,/12x,68a1)
  5   format(' Z-Range=',i3,'-',i2,'  A-Range=',i4,'-',i3,'  E-Range=',
     1 i4,'-',i3,' MeV')
  6   format(10a8)
  7   format(13x,'Potential is non-relativistic and ',a27)
  8   format(13x,'Potential is relativistic and ',a27)
c
      data ldum/'++++++++'/
      data ko/4/
c
      k1=0
  90  k1=k1+1
      if(k1.gt.n1)go to 900
      i1=k1
      if(ians.eq.'y')i1=NINT(djsrt(k1))
c
      if(idx(i1).eq.1) proj=' Neutron'
      if(idx(i1).eq.2) proj='  Proton'
      if(idx(i1).eq.3) proj='Deuteron'
      if(idx(i1).eq.4) proj='  Triton'
      if(idx(i1).eq.5) proj='    He-3'
      if(idx(i1).eq.6) proj='   Alpha'
      if(imodelx(i1).eq.0)model='spherical nucleus model'
      if(imodelx(i1).eq.1)model='CC rigid rotor deformed model'
      if(imodelx(i1).eq.2)model='CC vibrational model'
      if(imodelx(i1).eq.3)model='CC soft rotor model'
      if(idrx(i1).eq.0) disp='non-dispersive'
      if(idrx(i1).lt.0) disp='dispersive   (Num.Integr.) '
      if(idrx(i1).gt.0) disp='dispersive   (Anal.Integr.)'
      if(idrx(i1).eq.-3)disp='dispersive+SO(Num.Integr.) '
      if(idrx(i1).eq. 3)disp='dispersive+SO(Anal.Integr.)'
c
c     iarea=mod(irefx(i1),1000)
c     if(iarea.le.99) area='United States (LANL)'
c     if(iarea.ge.100.and.iarea.le.199)area='United States'
c     if(iarea.ge.200.and.iarea.le.299)area='Japan'
c     if(iarea.ge.300.and.iarea.le.399)area='Russia'
c     if(iarea.ge.400.and.iarea.le.499)area='Europe'
c     if(iarea.ge.500.and.iarea.le.599)area='China'
c     if(iarea.ge.600.and.iarea.le.649)area='FSU'
c     if(iarea.ge.650.and.iarea.le.699)area='India, Pakistan'
c     if(iarea.ge.700.and.iarea.le.799)area='Others'
c     if(iarea.ge.800.and.iarea.le.999)area='Reserved'
c
      write(ko,1) irefx(i1),proj,model
      if(irelx(i1).eq.0)write(ko,7)disp
      if(irelx(i1).gt.0)write(ko,8)disp
      iemin=int(eminx(i1))
      iemax=int(emaxx(i1))
      write(ko,5)izminx(i1),izmaxx(i1),iaminx(i1),iamaxx(i1),iemin,iemax
c
c     AUTHOR PRINT
      do 100 nn=1,80
      n=80-nn+1
      if(authx(n,i1).ne.' ') go to 102
 100  continue
 102  nauth=min0(80,n)
      write(ko,2)(authx(n,i1),n=1,nauth)
c
c     REFERENCE PRINT
      do 110 nn=1,80
      n=80-nn+1
      if(referx(n,i1).ne.' ') go to 112
 110  continue
 112  nrefer=min0(80,n)
      write(ko,3)(referx(n,i1),n=1,nrefer)
c
c     SUMMARY PRINT
c     Find count to last character.
      do 120 nn=1,320
      n=320-nn+1
      if(summryx(n,i1).ne.' ') go to 122
 120  continue
 122  nsum=min0(320,n)
c
c     Remove imbedded blank areas.
      do 130 n=1,nsum
 130  summ(n)=summryx(n,i1)
      m=1
      do 140 n=2,nsum
      if(summ(n).eq.' '.and.summ(n-1).eq.' ')go to 140
      m=m+1
      summryx(m,i1)=summ(n)
 140  continue
      nsum=m
c
c     Prepare print output arrays
      do 200 i=1,10
      nprt(i)=0
      do 200 n=1,68
 200  prt(n,i)=' '
c
      i=0
      n=0
 220  ns1=n+1
      ns2=min0(ns1+67,nsum)
      do 230 nn=ns1,ns2
      n=ns2-nn+ns1
      if(summryx(n,i1).eq.' '.and.summryx(n-1,i1).ne.' ')go to 232
 230  continue
 232  i=i+1
      if(ns2.eq.nsum) n=nsum
      nprt(i)=n
      if(ns2.lt.nsum)go to 220
c
      ni=i
      ns1=1
      do 250 i=1,ni
      j=0
      do240 n=ns1,nprt(i)
      j=j+1
 240  prt(j,i)=summryx(n,i1)
      ns1=nprt(i)+1
 250  continue
c
c     Print summary
      write(ko,4)((prt(n,i),n=1,68),i=1,ni)
c
      write(ko,6)(ldum,i=1,9)
      go to 90
c
 900  return
      end
 
