C              SPL-RETRIEVE.FOR (Retrieve single particle levels)
C*********************************************************************
C     v1.2, JUL/09/2002
C
C     AUTHOR: Dr.Roberto Capote Noy
C     e-mail: rcapotenoy@yahoo.com    ; rcapote@us.es
C
C*********************************************************************
C     It allow to extract single particle scheme from RIPL single-
C     particle level database and output it in the format required by
C     the RIPL nuclear level density codes microscopic.for and
C     densities-micro.for for partial and total level density
C     calculations respectively.
C*********************************************************************
C     The subroutine GET_SPL is provided to be used with any code to
C     directly extract SPL from the RIPL databases.
C
C     The implementation should be straightforward. All I/O is done
C     through calling parameters.
C
C     Description of the subroutine is given below.
C*********************************************************************
C     DESCRIPTION OF RET_SPL code:
C
C     INPUT FROM THE CONSOLE: Number of nuclei to retrieve SPL scheme
C                             Z and N for each requested nucleus
C
C     OUTPUT: SINGLE PARTICLE SPECTRA according to the Z,A numbers
C             (The extension of the output files is SPE)
C
C     REMARK:
C     This program assumes that for each element(i.e. for a given Z number)
C     a file zXXX.DAT (for example z062.DAT) exists in the same directory,
C     where you are running this program. !!!!
C
      PROGRAM RETRIEVE
      IMPLICIT NONE
      DOUBLE PRECISION enn(300), enp(300), spinn(300), spinp(300), 
     &                 parn(300), parp(300), gn, gp, defpar(4)
      DOUBLE PRECISION ecutdn_n, ecutup_n, ecutdn_p, ecutup_p
      INTEGER ielem, nmas, izt, int, j, ierr, nlev_n, nlev_p, iaaa, izzz
C
      DIMENSION izt(20), int(20)
      WRITE(6, *)'HOW MANY NUCLEUS TO GET SP DATA? =>'
      READ(5, *)nmas
C
      IF(nmas.LT.1)STOP ' SHOULD BE AT LEAST ONE NUCLEUS'
      IF(nmas.GT.20)STOP ' YOU SHOULD ASK DATA FOR LESS THAN 20 NUCLEI'
C
      WRITE(6, *)'INPUT A,Z =>'
      DO j = 1, nmas
         READ(5, *)iaaa, izzz
         izt(j) = izzz
         int(j) = iaaa - izzz
      ENDDO
C
      WRITE(6, 
     &    '( /''   REQUESTED    Z    N''/13X,2HA=,I4,3H Z=,I3,3H N=,I3)'
     &    )(izt(j) + int(j), izt(j), int(j), j = 1, nmas)
C
      WRITE(6, '( /3X,''Processing ...'')')
C
      DO ielem = 1, nmas
         WRITE(6, 
     &         '(/''=============================================='')')
         WRITE(6, '(3X,''REQUESTED: '',2HZ=I3,1X,2HN=,I3,1X,2HA=,I3)')
     &         izt(ielem), int(ielem), izt(ielem) + int(ielem)
C
         CALL GET_SPL(int(ielem), izt(ielem), enn, parn, spinn, nlev_n, 
     &                gn, ecutdn_n, ecutup_n, enp, parp, spinp, nlev_p, 
     &                gp, ecutdn_p, ecutup_p, defpar, ierr)
C
         IF(ierr.EQ.0)THEN
            WRITE(6, '( 3X,''DEFORMATION PARAM:'',4(F8.5,1X))')defpar
            WRITE(6, '(''   NUMBER OF NEUTRON LEVELS = '',I3)')nlev_n
            WRITE(6, 99001)gn, ecutdn_n, ecutup_n
C
99001       FORMAT(1X, '  Gn = ', F6.3, ' EcutDN = ', F8.4, 
     &             ' EcutUP = ', F8.4)
            WRITE(6, '(''   NUMBER OF PROTON LEVELS  = '',I3)')nlev_p
            WRITE(6, 99002)gp, ecutdn_p, ecutup_p
99002       FORMAT(1X, '  Gp = ', F6.3, ' EcutDN = ', F8.4, 
     &             ' EcutUP = ', F8.4)
C
         ELSEIF(ierr.EQ.1)THEN
            WRITE(6, 
     &     '(''   RIPL DATABASE FILE FOR Z = '',I3,'' DOES NOT EXIST'')'
     &     )izt(ielem)
         ELSEIF(ierr.EQ.2)THEN
            WRITE(6, '(''   NUCLEUS NOT FOUND IN RIPL DATABASE FILE '')'
     &            )
         ENDIF
      ENDDO
      END
C
      SUBROUTINE GET_SPL(In, Iz, Enn, Parn, Spinn, Nlev_n, Gn, Ecutdn_n, 
     &                   Ecutup_n, Enp, Parp, Spinp, Nlev_p, Gp, 
     &                   Ecutdn_p, Ecutup_p, Defpar, Ierr)
C
C     IN (INTEGER): NEUTRON NUMBER
C     IZ (INTEGER): PROTON NUMBER
C
C     Output:
C     EnN,ParN,SpinN (ARRAY OF DOUBLE PRECISION, DIMENSION DEFINED IN THE CALLING PROGRAM):
C                                                            Energy, parity and spin of NEUTRON spl
C     nlev_N (INTEGER) : Number of neutron levels
C     gN, EcutDN_N,EcutUP_N (DOUBLE PRECISION): Pairing strength and lower and upper energy
C                                                   cut-off for NEUTRON pairing calculation
C     EnP,ParP,SpinP (ARRAY OF DOUBLE PRECISION, DIMENSION DEFINED IN THE CALLING PROGRAM):
C                                                            Energy, parity and spin of PROTON spl
C     nlev_P (INTEGER) : Number of proton levels
C     gP, EcutDN_P,EcutUP_P (DOUBLE PRECISION): Pairing strength and lower and upper energy
C                                                   cut-off for PROTON pairing calculation
C     DefPAR  (ARRAY OF DOUBLE PRECISION, DIMENSION = 4): Deformation parameters
C
C     IERR = 0 , NUCLEUS FOUND, SPL PARAMETERS INITIALIZED
C          = 1 , FOR GIVEN IZ(XXX) NUMBER CORRESPONDING DATABASE FILE DOES NOT EXIST (zXXX.DAT)
C            = 2 , REQUIRED NEUTRON NUMBER DO NOT CORRESPOND TO ANY RECORD IN THE EXISTING DATABASE
C
      IMPLICIT NONE
      DOUBLE PRECISION Enn(*), Enp(*), Parn(*), Parp(*), Spinn(*), 
     &                 Spinp(*)
      DOUBLE PRECISION Defpar(4), Ecutdn_n, Ecutup_n, Ecutdn_p, Ecutup_p
      DOUBLE PRECISION Gn, Gp
      INTEGER In, Iz, Ierr, Nlev_n, Nlev_p
C     ------------------------------------------------------------
      INTEGER iii, izr, inr, iar, ij, ninp, nout, num, i
      DOUBLE PRECISION e, s, pi, gg, ecutdn, ecutup
      CHARACTER ctmp3*3, fout*12, finp*9, cmt*80
      DATA ninp/9/, nout/10/
C
      Ierr = 0
C     CONSTRUCTING INPUT AND OUTPUT FILENAMES
      WRITE(ctmp3, '(I3.3)')Iz
      fout = 'z'//ctmp3
C     FINP='z'//'_'//CTMP3//'.spl'
      finp = 'z'//ctmp3//'.dat'
      WRITE(ctmp3, '(I3.3)')In + Iz
      fout = fout(1:4)//'a'//ctmp3//'.spe'
C
      OPEN(ninp, FILE = finp, ERR = 200, STATUS = 'OLD')
C
      DO WHILE (.TRUE.)
C
C        IF YOUR COMPILER DO NOT SUPPORT "DO WHILE - ENDDO" UNCOMMENT THE
C        FOLLOWING LINE AND THE LINE CONTAINING THE GOTO 300 STATEMENT
C
C300     CONTINUE
C
         READ(ninp, '(3I10)', END = 100)izr, inr, iar
C
         IF(izr.EQ.Iz .AND. inr.EQ.In)THEN
C
C           NUCLEUS FOUND, PROCESSING ...
C           OLD FORMAT
C           READ(NINP,'(3F10.4)') DEFPAR(1),DEFPAR(2),DEFPAR(3)
C           READ(NINP,'(3F10.4)') DEFPAR(4),DEFPAR(5),DEFPAR(6)
C           NEW FORMAT
            READ(ninp, '(4F10.4)')Defpar(1), Defpar(2), Defpar(3), 
     &                            Defpar(4)
C
            OPEN(nout, FILE = fout)
            WRITE(nout, '(3(I3,1X),6(E10.4,1X))  ')izr, inr, iar, Defpar
C           III=1 NEUTRON ; III=2 PROTON LEVELS
            DO iii = 1, 2
C
               READ(ninp, '(A80)')cmt
               i = INDEX(cmt, '.')
               BACKSPACE ninp
               IF(i.GT.0)THEN
                  READ(ninp, '(I10,3F10.4)')num, gg, ecutdn, ecutup
                  WRITE(nout, '(I10,3F10.4)')num, gg, ecutdn, ecutup
               ELSE
                  READ(ninp, '(I10)')num
                  gg = 0.D0
                  ecutdn = -50.D0
                  ecutup = 0.D0
                  WRITE(nout, '(I10)')num
               ENDIF
C
               IF(iii.EQ.1)THEN
                  Nlev_n = num
                  Gn = gg
                  Ecutdn_n = ecutdn
                  Ecutup_n = ecutup
               ELSE
                  Nlev_p = num
                  Gp = gg
                  Ecutdn_p = ecutdn
                  Ecutup_p = ecutup
               ENDIF
C
               DO i = 1, num
C
                  READ(ninp, '(F10.4,I10)')e, ij
                  s = ij/2.D0
                  pi = SIGN(1.D0, s)
                  s = ABS(s)
C
                  IF(iii.EQ.1)THEN
                     Enn(i) = e
                     Parn(i) = pi
                     Spinn(i) = s
                  ELSE
                     Enp(i) = e
                     Parp(i) = pi
                     Spinp(i) = s
                  ENDIF
C
                  WRITE(nout, '(E16.6,F10.1,F5.0)')e, s, pi
C
               ENDDO
C
            ENDDO
C
            CLOSE(nout)
            CLOSE(ninp)
C
            RETURN
C
         ELSE
C
C           SKIPPING RECORDS
            READ(ninp, '(A80)')cmt
C           READ(NINP,'(A80)') CMT
C
C           READ(NINP,'(A80)') CMT
            DO iii = 1, 2
               READ(ninp, '(I10)')num
               DO i = 1, num
                  READ(ninp, *)e, ij
               ENDDO
            ENDDO
C
C           IF YOUR COMPILER DO NOT SUPPORT "DO WHILE - ENDDO" UNCOMMENT THE
C           FOLLOWING LINE AND THE LINE CONTAINING "DO WHILE"
C
C           GOTO 300
C
         ENDIF
C
      ENDDO
C
 100  Ierr = 2
      CLOSE(ninp)
      RETURN
C
 200  Ierr = 1
C
      END
