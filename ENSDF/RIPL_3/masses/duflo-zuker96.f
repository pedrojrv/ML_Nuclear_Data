      program dz10                                                              
c--------------------------------------------------------------------c          
c       File "du_zu_10.feb96"                                        c          
c                                                                    c          
c       J. Duflo and A.P. Zuker  Feb 23, 1996  10 parameters formula c          
c       Reference:                                                   c          
c             Phys. Rev. C52, 1995  (for the 28 param. formula)      c          
c             and Private Communication to AMDC, February 1996.      c          
c                                                                    c          
c       Microscopic   calculation   of   nuclear  masses   with   10 c          
c       parameters.  Fit  to the 1810 measured  masses from Helium-4 c          
c       and up with a root-mean-square deviation (rms) of 506 keV.   c          
c--------------------------------------------------------------------c          
      nn=53                       ! choosing an (N,Z) nuclide   N               
      nz=37                       !                             Z               
      call mass10(nn,nz,e)                                                      
      exc=nz*7.28903+nn*8.07138-e                                               
      print *, ' N=',nn,' Z=',nz,' B.E.=',e,' MassExcess=', exc                 
      stop                                                                      
      end                                                                       
                                                                                
      subroutine mass10(nx,nz,E)     ! Duflo-Zuker fevrier 1996                 
c Calculation of binding energy E (nx neutrons,nz protons)                      
      dimension b(10),dyda(10),op(2),n2(2),dx(2),qx(2),os(2),                   
     &          onp(0:8,2,2),oei(2),dei(2),nn(2),noc(18,2),pp(2),y(2)           
      data b/0.7043,17.7418,16.2562,37.5562,53.9017,0.4711,2.1307,              
     &       0.0210,40.5356,6.0632/                                             
c*********                                                                      
      nn(1)=nx                                                                  
      nn(2)=nz                                                                  
      a=nx+nz                                                                   
      t=abs(nx-nz)                                                              
      r=a**(1./3.)                                                              
      s=r*r                                                                     
      rc=r*(1.-.25*(t/a)**2)       !      Charge radius                         
      ra=(rc*rc)/r                                                              
c--------                                                                       
      z2=nz*(nz-1)                                                              
      dyda(1)=(-z2+.76*z2**(2./3.))/rc  ! Coulomb energy                        
c********                          ! beginning of main loop                     
      do ndef=1,2                  !      ndef=1  spherical                     
      ju=0                         !      ndef=2  deformed                      
      y(ndef)=0.                                                                
      if(ndef.eq.2) ju=4           !      nucleons associated to deform.        
      do kk=2,10                                                                
        dyda(kk)=0.                                                             
      enddo                                                                     
c--------                          ! beginning of loop over N and Z             
      do j=1,2                                                                  
        do l=1,18                                                               
          noc(l,j)=0                                                            
        enddo                                                                   
        do l=1,2                                                                
          do k=0,8                                                              
            onp(k,l,j)=0.                                                       
          enddo                                                                 
        enddo                                                                   
        n2(j)=2*(nn(j)/2)          !      (for pairing calculation)             
        ncum=0                                                                  
        i=0                                                                     
c--------                                                                       
  20    i=i+1                      !     sub-shells (ssh) j and r filling       
        i2=(i/2)*2                                                              
        if(i2.ne.i)then                                                         
          id=i+1                   !             for ssh j                      
        else                                                                    
          id=i*(i-2)/4             !             for ssc r                      
        endif                                                                   
        ncum=ncum+id                                                            
        if(ncum.lt.nn(j))then                                                   
          noc(i,j)=id              !     nb of nucleons in each ssh             
          go to 20                                                              
        endif                                                                   
c--------                                                                       
        imax=i+1                   !     imax = last subshell nb                
        ip=(i-1)/2                 !     HO number (p)                          
        ipm=i/2                                                                 
        pp(j)=ip                                                                
        moc=nn(j)-ncum+id                                                       
        noc(i,j)=moc-ju            !     nb of nucleons in last ssh             
        noc(i+1,j)=ju                                                           
        if(i2.ne.i)then            !     ssh j                                  
          oei(j)=moc+ip*(ip-1)     !       nb of nucleons in last EI shell      
          dei(j)=ip*(ip+1)+2       !       size of the EI shell                 
        else                       !     ssh r                                  
          oei(j)=moc-ju            !       nb of nucleons in last EI shell      
          dei(j)=(ip+1)*(ip+2)+2   !       size of the EI shell                 
        endif                                                                   
        qx(j)=oei(j)*(dei(j)-oei(j)-ju)/dei(j)  ! n*(D-n)/D        S3(j)        
        dx(j)=qx(j)*(2*oei(j)-dei(j))           ! n*(D-n)*(2n-D)/D  Q           
        if(ndef.eq.2)qx(j)=qx(j)/sqrt(dei(j))   ! scaling for deformed          
c--------                                                                       
        do i=1,imax                             ! Amplitudes                    
          ip=(i-1)/2                                                            
          fact=sqrt((ip+1.)*(ip+2.))                                            
          onp(ip,1,j)=onp(ip,1,j)+noc(i,j)/fact !    for FM term                
          vm=-1.                                                                
          if((2*(i/2)).ne.i)vm=.5*ip            !    for spin-orbit term        
          onp(ip,2,j)=onp(ip,2,j)+noc(i,j)*vm                                   
        enddo                                                                   
c--------                                                                       
        op(j)=0.                                                                
        os(j)=0.                                                                
        do ip=0,ipm                !       FM and SO terms                      
          pi=ip                                                                 
          den=((pi+1)*(pi+2))**(3./2.)                                          
          op(j)=op(j)+onp(ip,1,j)                                ! FM           
          os(j)=os(j)+onp(ip,2,j)*(1.+onp(ip,1,j))*(pi*pi/den)   ! SO           
     &               +onp(ip,2,j)*(1.-onp(ip,1,j))*((4*pi-5)/den)               
        enddo                                                                   
        op(j)=op(j)*op(j)                                                       
      enddo                                                                     
c--------                          ! end of loop over  N and Z                  
      dyda(2)=op(1)+op(2)                 !   Master term (FM): volume          
      dyda(3)=-dyda(2)/ra                 !                     surface         
      dyda(2)=dyda(2)+os(1)+os(2)         !   FM + SO                           
      dyda(4)=-t*(t+2)/(r*r)              !   isospin term : volume             
      dyda(5)=-dyda(4)/ra                 !                : surface            
      if(ndef.eq.1)then                   ! sph.                                
        dyda(6)=dx(1)+dx(2)               !   S3  volume                        
        dyda(7)=-dyda(6)/ra               !       surface                       
        px=sqrt(pp(1))+sqrt(pp(2))                                              
        dyda(8)=qx(1)*qx(2)*(2**px)       !   QQ sph.                           
      else                                ! def.                                
        dyda(9)=qx(1)*qx(2)               !   QQ deform.                        
      endif                                                                     
      dyda(5)=t*(1-t)/(a*ra**3)+dyda(5)   !   "Wigner term"                     
c--------                                 !   PAIRING                           
      if(n2(1).ne.nn(1).and.n2(2).ne.nn(2))dyda(10)= t/a                        
      if(nx.gt.nz)then                                                          
        if(n2(1).eq.nn(1).and.n2(2).ne.nn(2))dyda(10)= 1-t/a                    
        if(n2(1).ne.nn(1).and.n2(2).eq.nn(2))dyda(10)= 1                        
      else                                                                      
        if(n2(1).eq.nn(1).and.n2(2).ne.nn(2))dyda(10)= 1                        
        if(n2(1).ne.nn(1).and.n2(2).eq.nn(2))dyda(10)= 1-t/a                    
      endif                                                                     
      if(n2(2).eq.nn(2).and.n2(1).eq.nn(1))dyda(10)= 2-t/a                      
c--------                                                                       
      do mss=2,10                                                               
        dyda(mss)=dyda(mss)/ra                                                  
      enddo                                                                     
      do mss=1,10                                                               
        y(ndef)=y(ndef)+dyda(mss)*b(mss)                                        
      enddo                                                                     
c--------                            ! end of main loop                         
      enddo                                                                     
      de=y(2)-y(1)                                                              
      E=y(2)                         ! Binding Energy for def. nuclides         
      if(de.le.0..or.nz.le.50)E=y(1) !                spherical nuclides        
      return                                                                    
      end                                                                       
