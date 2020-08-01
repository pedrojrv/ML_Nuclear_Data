      PROGRAM omget
!
! example of a driver code to call module om_retrieve
!      
! Linux compilation: 
! gfortran -o omget -std=legacy om_retrieve.f omget.f 
!
! GOAL: Code to retrieve optical model potentials from the RIPL optical
!       model potential (omp) library and to format them for input into
!       the SCAT2000, ECIS06 and OPTMAN computer codes.   
   
      USE om_retrieve 
     
      integer n
      
      OPEN(unit=5,file='ominput.inp')

      READ(5,*) Number_Energies
      
      IF (Number_Energies.gt.0) 
     >     READ(5,*) (Energies(n),n=1,Number_Energies)
      Def_Index = 1      
      READ(5,*) Ztarget,Atarget,RIPL_Index,Calc_Type
      IF (iabs(Calc_Type).eq.3) READ(5,*) Def_Index

      CALL retrieve
       
      CLOSE(5)
                   
      END PROGRAM omget
