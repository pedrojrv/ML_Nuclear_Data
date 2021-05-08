
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.31' ;
COMPILE_DATE              (idx, [1: 20])  = 'Oct 16 2020 01:08:59' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-006' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_006' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_006/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0032.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:34:27 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:34:57 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275267963 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 20 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00243E+00  1.00480E+00  9.97761E-01  9.88629E-01  1.00137E+00  1.00869E+00  1.01008E+00  1.00140E+00  9.97068E-01  9.97961E-01  9.86430E-01  9.99827E-01  1.00239E+00  9.96895E-01  1.00351E+00  1.00815E+00  1.00497E+00  9.93135E-01  1.00019E+00  9.94322E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/co_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  2.38730E-02 0.00139  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76127E-01 3.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.90730E-01 0.00017  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.90869E-01 0.00017  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07547E+00 0.00058  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.88524E+01 0.00132  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.88472E+01 0.00132  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.65760E+00 0.00116  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.05368E+00 0.00120  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000224 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00022E+04 0.00195 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00022E+04 0.00195 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.43867E+00 ;
RUNNING_TIME              (idx, 1)        =  4.89433E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  5.33667E-02  5.33667E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.36667E-03  1.36667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.34667E-01  4.34667E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.85100E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.24171 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95010E+01 0.00694 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.48839E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.67 ;
ALLOC_MEMSIZE             (idx, 1)        = 604.71;
MEMSIZE                   (idx, 1)        = 442.34;
XS_MEMSIZE                (idx, 1)        = 241.98;
MAT_MEMSIZE               (idx, 1)        = 35.83;
RES_MEMSIZE               (idx, 1)        = 30.42;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.10;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 162.37;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 26 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 173270 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 4 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 17 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 17 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 611 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  9.98247E-05 0.00097  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.15362E-01 0.00301 ];
U235_FISS                 (idx, [1:   4]) = [  3.92898E-01 0.00143  9.64824E-01 0.00029 ];
U238_FISS                 (idx, [1:   4]) = [  1.43110E-02 0.00846  3.51345E-02 0.00802 ];
U235_CAPT                 (idx, [1:   4]) = [  7.26646E-02 0.00362  1.23885E-01 0.00355 ];
U238_CAPT                 (idx, [1:   4]) = [  1.46163E-01 0.00266  2.49168E-01 0.00220 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000224 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.51242E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000224 1.00075E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587323 5.87618E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407718 4.07951E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5183 5.18143E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000224 1.00075E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 5.47152E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32157E-11 0.00085 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.76341E-20 0.00085 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.98388E-01 0.00084 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07461E-01 0.00085 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87366E-01 0.00058 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94827E-01 7.4E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98247E-01 0.00097 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66238E+01 0.00068 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.17254E-03 0.01423 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.87525E+01 0.00095 ];
INI_FMASS                 (idx, 1)        =  7.49443E+02 ;
TOT_FMASS                 (idx, 1)        =  7.49443E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.78062E+00 0.00076 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.88482E-01 0.00101 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.74116E-01 0.00042 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09691E+00 0.00053 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96698E-01 5.9E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98114E-01 4.6E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00470E+00 0.00131 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.99493E-01 0.00131 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45027E+00 2.0E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02439E+02 2.1E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99777E-01 0.00133  9.92044E-01 0.00131  7.44910E-03 0.01600 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.99137E-01 0.00084 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00023E+00 0.00128 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.99137E-01 0.00084 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00434E+00 0.00083 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91547E+01 0.00030 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91396E+01 0.00013 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.61476E-08 0.00565 ];
IMP_EALF                  (idx, [1:   2]) = [  9.74881E-08 0.00239 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.17930E-01 0.00923 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20036E-01 0.00320 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.94127E-03 0.01215  1.95242E-04 0.06037  1.13064E-03 0.02932  1.12092E-03 0.02987  3.13336E-03 0.01645  1.01368E-03 0.03096  3.47429E-04 0.05245 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.03779E-01 0.02761  1.14914E-02 0.02964  3.17087E-02 0.00039  1.09835E-01 0.00052  3.19130E-01 0.00038  1.34778E+00 0.00040  8.55828E+00 0.01802 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.50737E-03 0.01753  1.86269E-04 0.10168  1.20947E-03 0.04200  1.18184E-03 0.04173  3.42631E-03 0.02555  1.10831E-03 0.04783  3.95177E-04 0.07135 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.33361E-01 0.03841  1.24906E-02 1.3E-06  3.16847E-02 0.00067  1.09822E-01 0.00068  3.19102E-01 0.00057  1.34816E+00 0.00047  8.80763E+00 0.00404 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.65973E-05 0.00270  5.65945E-05 0.00270  5.77477E-05 0.02993 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.65763E-05 0.00246  5.65734E-05 0.00246  5.77314E-05 0.02989 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.48445E-03 0.01669  1.99341E-04 0.10837  1.23986E-03 0.04393  1.18753E-03 0.04045  3.35935E-03 0.02663  1.09425E-03 0.04959  4.04130E-04 0.07226 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.39033E-01 0.03909  1.24907E-02 6.3E-06  3.16958E-02 0.00069  1.09820E-01 0.00074  3.19168E-01 0.00059  1.34748E+00 0.00061  8.81910E+00 0.00498 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.48245E-05 0.00560  5.48338E-05 0.00560  5.63489E-05 0.08786 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.48087E-05 0.00565  5.48179E-05 0.00565  5.62288E-05 0.08641 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.63888E-03 0.05702  2.01685E-04 0.31372  1.31464E-03 0.12301  1.30593E-03 0.15072  3.50243E-03 0.07872  1.05493E-03 0.13163  2.59263E-04 0.30722 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  6.52734E-01 0.11605  1.24906E-02 0.0E+00  3.17112E-02 0.00153  1.09592E-01 0.00140  3.19396E-01 0.00200  1.34910E+00 0.00120  8.88812E+00 0.01522 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.54964E-03 0.05585  1.86084E-04 0.30405  1.32309E-03 0.12857  1.29684E-03 0.14264  3.46909E-03 0.07403  9.94293E-04 0.13046  2.80250E-04 0.30580 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.73694E-01 0.12205  1.24906E-02 0.0E+00  3.17060E-02 0.00155  1.09582E-01 0.00135  3.19461E-01 0.00199  1.34916E+00 0.00118  8.88812E+00 0.01522 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.39767E+02 0.05734 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.56101E-05 0.00160 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.55886E-05 0.00101 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.44634E-03 0.01119 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.33944E+02 0.01135 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75712E-06 0.00091 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74569E-06 0.00081  1.74532E-06 0.00081  1.80037E-06 0.01071 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.23283E-05 0.00161  9.24357E-05 0.00160  7.69868E-05 0.01808 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.71511E-01 0.00043  8.71458E-01 0.00046  8.91304E-01 0.01666 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.03375E+01 0.02474 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.88472E+01 0.00132  5.81478E+01 0.00160 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.89102E+04 0.00902  2.34102E+05 0.00295  4.62925E+05 0.00256  4.83081E+05 0.00125  4.16609E+05 0.00207  3.98538E+05 0.00179  2.73672E+05 0.00121  2.30861E+05 0.00207  1.77231E+05 0.00085  1.45011E+05 0.00188  1.25129E+05 0.00153  1.12222E+05 0.00164  1.04737E+05 0.00215  9.93900E+04 0.00313  9.73461E+04 0.00216  8.44613E+04 0.00367  8.41700E+04 0.00251  8.31676E+04 0.00174  8.24279E+04 0.00294  1.63855E+05 0.00172  1.61500E+05 0.00154  1.19246E+05 0.00297  7.82366E+04 0.00306  9.34208E+04 0.00186  9.13705E+04 0.00132  8.16572E+04 0.00152  1.44889E+05 0.00166  3.19589E+04 0.00307  4.03007E+04 0.00375  3.66619E+04 0.00296  2.12091E+04 0.00452  3.69863E+04 0.00453  2.51798E+04 0.00586  2.14651E+04 0.00252  4.20407E+03 0.01500  4.17858E+03 0.00742  4.22424E+03 0.01063  4.36049E+03 0.00909  4.32949E+03 0.00698  4.22359E+03 0.01003  4.43002E+03 0.00749  4.08373E+03 0.00672  7.74324E+03 0.00223  1.22140E+04 0.00661  1.56334E+04 0.00791  4.12090E+04 0.00207  4.26439E+04 0.00363  4.37809E+04 0.00380  2.64667E+04 0.00528  1.80606E+04 0.00468  1.30255E+04 0.00148  1.44059E+04 0.00397  2.47166E+04 0.00591  3.13431E+04 0.00300  6.52261E+04 0.00268  1.34930E+05 0.00215  3.50782E+05 0.00423  3.68832E+05 0.00341  3.39743E+05 0.00306  3.05207E+05 0.00277  3.21054E+05 0.00282  3.70856E+05 0.00284  3.57982E+05 0.00296  2.70682E+05 0.00335  2.75815E+05 0.00361  2.69072E+05 0.00361  2.52298E+05 0.00422  2.12514E+05 0.00394  1.58091E+05 0.00406  6.13309E+04 0.00416 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00546E+00 0.00117 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50199E+01 0.00170  2.16060E+01 0.00191 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.39816E-01 0.00033  2.78849E+00 0.00038 ];
INF_CAPT                  (idx, [1:   4]) = [  3.66305E-03 0.00337  2.29458E-02 0.00041 ];
INF_ABS                   (idx, [1:   4]) = [  5.03476E-03 0.00276  4.02180E-02 0.00140 ];
INF_FISS                  (idx, [1:   4]) = [  1.37171E-03 0.00114  1.72723E-02 0.00271 ];
INF_NSF                   (idx, [1:   4]) = [  3.56333E-03 0.00126  4.20873E-02 0.00271 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59773E+00 0.00022  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04280E+02 2.9E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.35851E-08 0.00103  3.71842E-06 0.00028 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.34790E-01 0.00034  2.74831E+00 0.00042 ];
INF_SCATT1                (idx, [1:   4]) = [  3.93665E-01 0.00053  5.81263E-01 0.00062 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52667E-01 0.00094  1.01455E-01 0.00161 ];
INF_SCATT3                (idx, [1:   4]) = [  8.30252E-03 0.00789  2.81254E-02 0.00650 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.98591E-02 0.00322 -2.20297E-02 0.00617 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.92544E-04 0.05971  1.17004E-02 0.00762 ];
INF_SCATT6                (idx, [1:   4]) = [  7.84861E-03 0.00682 -3.07995E-02 0.00224 ];
INF_SCATT7                (idx, [1:   4]) = [  7.10206E-04 0.05814  8.59861E-03 0.00635 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.34820E-01 0.00034  2.74831E+00 0.00042 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.93666E-01 0.00054  5.81263E-01 0.00062 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52666E-01 0.00094  1.01455E-01 0.00161 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.30244E-03 0.00789  2.81254E-02 0.00650 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.98581E-02 0.00322 -2.20297E-02 0.00617 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.92355E-04 0.05983  1.17004E-02 0.00762 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.84883E-03 0.00680 -3.07995E-02 0.00224 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.10043E-04 0.05827  8.59861E-03 0.00635 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29821E-01 0.00095  1.86915E+00 0.00045 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45041E+00 0.00095  1.78334E-01 0.00045 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.00478E-03 0.00292  4.02180E-02 0.00140 ];
INF_REMXS                 (idx, [1:   4]) = [  3.99341E-02 0.00034  4.03378E-02 0.00274 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  6.99882E-01 0.00033  3.49082E-02 0.00059  1.60195E-04 0.02257  2.74815E+00 0.00042 ];
INF_S1                    (idx, [1:   8]) = [  3.82993E-01 0.00050  1.06718E-02 0.00197  9.80779E-05 0.02572  5.81165E-01 0.00063 ];
INF_S2                    (idx, [1:   8]) = [  1.56076E-01 0.00090 -3.40911E-03 0.00194  6.23280E-05 0.02914  1.01393E-01 0.00163 ];
INF_S3                    (idx, [1:   8]) = [  1.24264E-02 0.00512 -4.12393E-03 0.00280  3.08223E-05 0.03850  2.80946E-02 0.00651 ];
INF_S4                    (idx, [1:   8]) = [ -1.87844E-02 0.00264 -1.07473E-03 0.01546  9.36843E-06 0.13350 -2.20390E-02 0.00612 ];
INF_S5                    (idx, [1:   8]) = [ -1.23607E-03 0.03672  3.43530E-04 0.04460 -2.49526E-06 0.24276  1.17029E-02 0.00757 ];
INF_S6                    (idx, [1:   8]) = [  8.13428E-03 0.00703 -2.85673E-04 0.03422 -7.32130E-06 0.10287 -3.07922E-02 0.00225 ];
INF_S7                    (idx, [1:   8]) = [  1.24324E-03 0.03807 -5.33034E-04 0.02328 -8.02091E-06 0.09029  8.60663E-03 0.00627 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.99912E-01 0.00033  3.49082E-02 0.00059  1.60195E-04 0.02257  2.74815E+00 0.00042 ];
INF_SP1                   (idx, [1:   8]) = [  3.82995E-01 0.00050  1.06718E-02 0.00197  9.80779E-05 0.02572  5.81165E-01 0.00063 ];
INF_SP2                   (idx, [1:   8]) = [  1.56075E-01 0.00090 -3.40911E-03 0.00194  6.23280E-05 0.02914  1.01393E-01 0.00163 ];
INF_SP3                   (idx, [1:   8]) = [  1.24264E-02 0.00513 -4.12393E-03 0.00280  3.08223E-05 0.03850  2.80946E-02 0.00651 ];
INF_SP4                   (idx, [1:   8]) = [ -1.87834E-02 0.00263 -1.07473E-03 0.01546  9.36843E-06 0.13350 -2.20390E-02 0.00612 ];
INF_SP5                   (idx, [1:   8]) = [ -1.23589E-03 0.03673  3.43530E-04 0.04460 -2.49526E-06 0.24276  1.17029E-02 0.00757 ];
INF_SP6                   (idx, [1:   8]) = [  8.13450E-03 0.00701 -2.85673E-04 0.03422 -7.32130E-06 0.10287 -3.07922E-02 0.00225 ];
INF_SP7                   (idx, [1:   8]) = [  1.24308E-03 0.03806 -5.33034E-04 0.02328 -8.02091E-06 0.09029  8.60663E-03 0.00627 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62850E-01 0.00169  1.73440E+00 0.00415 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61377E-01 0.00305  1.70242E+00 0.00664 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64515E-01 0.00209  1.80200E+00 0.00881 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62688E-01 0.00236  1.70305E+00 0.00357 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26816E+00 0.00169  1.92202E-01 0.00413 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27535E+00 0.00304  1.95834E-01 0.00664 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26019E+00 0.00209  1.85036E-01 0.00864 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26896E+00 0.00236  1.95737E-01 0.00356 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.50737E-03 0.01753  1.86269E-04 0.10168  1.20947E-03 0.04200  1.18184E-03 0.04173  3.42631E-03 0.02555  1.10831E-03 0.04783  3.95177E-04 0.07135 ];
LAMBDA                    (idx, [1:  14]) = [  8.33361E-01 0.03841  1.24906E-02 1.3E-06  3.16847E-02 0.00067  1.09822E-01 0.00068  3.19102E-01 0.00057  1.34816E+00 0.00047  8.80763E+00 0.00404 ];

