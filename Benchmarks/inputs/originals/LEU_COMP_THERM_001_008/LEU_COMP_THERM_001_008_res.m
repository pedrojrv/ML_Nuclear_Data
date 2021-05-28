
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-008' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_008' ;
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_008/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0009.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:43:13 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:43:43 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176993066 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99839E-01  9.94693E-01  9.92613E-01  9.95893E-01  1.00720E+00  1.01095E+00  1.00748E+00  1.00321E+00  9.81586E-01  1.00203E+00  1.00191E+00  9.92066E-01  9.95079E-01  1.00187E+00  9.88626E-01  1.00124E+00  1.00389E+00  1.00145E+00  1.00685E+00  1.01153E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.37162E-02 0.00141  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76284E-01 3.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.94212E-01 0.00014  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.94347E-01 0.00014  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07399E+00 0.00059  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.91631E+01 0.00121  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.91582E+01 0.00121  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.35049E+00 0.00102  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03877E+00 0.00139  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 999993 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  9.99993E+03 0.00173 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  9.99993E+03 0.00173 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.54683E+00 ;
RUNNING_TIME              (idx, 1)        =  5.02900E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  6.49667E-02  6.49667E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.18333E-03  1.18333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.36717E-01  4.36717E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.98750E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 16.99510 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95979E+01 0.00500 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.35521E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 592.32;
MEMSIZE                   (idx, 1)        = 429.77;
XS_MEMSIZE                (idx, 1)        = 234.77;
MAT_MEMSIZE               (idx, 1)        = 30.48;
RES_MEMSIZE               (idx, 1)        = 30.42;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.10;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 162.55;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 26 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 172980 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 4 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 16 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 16 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 591 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.00051E-04 0.00092  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.12879E-01 0.00310 ];
U235_FISS                 (idx, [1:   4]) = [  3.93615E-01 0.00145  9.64661E-01 0.00030 ];
U238_FISS                 (idx, [1:   4]) = [  1.44111E-02 0.00879  3.53041E-02 0.00819 ];
U235_CAPT                 (idx, [1:   4]) = [  7.30428E-02 0.00318  1.24163E-01 0.00306 ];
U238_CAPT                 (idx, [1:   4]) = [  1.45371E-01 0.00284  2.47083E-01 0.00220 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 999993 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.56144E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 999993 1.00076E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587587 5.88001E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407484 4.07833E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 4922 4.92286E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 999993 1.00076E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.25846E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.31976E-11 0.00072 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.96952E-20 0.00072 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97014E-01 0.00072 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.06903E-01 0.00073 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.88172E-01 0.00049 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.95075E-01 6.4E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.00051E+00 0.00092 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66991E+01 0.00060 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  4.92523E-03 0.01303 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.92418E+01 0.00080 ];
INI_FMASS                 (idx, 1)        =  6.70091E+02 ;
TOT_FMASS                 (idx, 1)        =  6.70091E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77988E+00 0.00093 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.87399E-01 0.00079 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.75185E-01 0.00043 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09748E+00 0.00056 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96881E-01 5.3E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98191E-01 4.0E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00418E+00 0.00122 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.99235E-01 0.00123 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45025E+00 2.1E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02439E+02 2.2E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99313E-01 0.00123  9.92057E-01 0.00125  7.17778E-03 0.01674 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.97780E-01 0.00072 ];
COL_KEFF                  (idx, [1:   2]) = [  9.96585E-01 0.00114 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.97780E-01 0.00072 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00272E+00 0.00071 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91496E+01 0.00035 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91431E+01 0.00013 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.67026E-08 0.00678 ];
IMP_EALF                  (idx, [1:   2]) = [  9.71443E-08 0.00245 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.18750E-01 0.00987 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19858E-01 0.00347 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.88900E-03 0.01170  2.10999E-04 0.06846  1.12078E-03 0.03491  1.12162E-03 0.02604  3.15523E-03 0.01883  9.43568E-04 0.03511  3.36790E-04 0.05899 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.87894E-01 0.03160  1.06170E-02 0.04222  3.17082E-02 0.00039  1.09805E-01 0.00046  3.19192E-01 0.00038  1.34790E+00 0.00030  8.24923E+00 0.02555 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.39114E-03 0.01705  2.03959E-04 0.10196  1.22220E-03 0.04908  1.14932E-03 0.04121  3.47841E-03 0.02481  9.95865E-04 0.05116  3.41383E-04 0.08736 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.62946E-01 0.04623  1.24906E-02 4.4E-06  3.17200E-02 0.00055  1.09846E-01 0.00069  3.19298E-01 0.00059  1.34740E+00 0.00051  8.73660E+00 0.00279 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.75332E-05 0.00265  5.75349E-05 0.00266  5.71663E-05 0.02805 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.74859E-05 0.00242  5.74877E-05 0.00244  5.71101E-05 0.02792 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.16823E-03 0.01729  2.13151E-04 0.11204  1.21726E-03 0.04623  1.17903E-03 0.04387  3.23698E-03 0.02660  1.00027E-03 0.05630  3.21533E-04 0.08965 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.46869E-01 0.04583  1.24906E-02 0.0E+00  3.17458E-02 0.00049  1.09908E-01 0.00088  3.19433E-01 0.00059  1.34704E+00 0.00058  8.73650E+00 0.00324 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.57698E-05 0.00617  5.57379E-05 0.00623  5.53753E-05 0.07638 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.57212E-05 0.00599  5.56892E-05 0.00604  5.53699E-05 0.07632 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.10524E-03 0.06330  1.90794E-04 0.38459  1.03794E-03 0.17061  1.24613E-03 0.14605  3.21005E-03 0.09400  1.23275E-03 0.15456  1.87571E-04 0.30821 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  6.32154E-01 0.13011  1.24906E-02 5.5E-09  3.17549E-02 0.00129  1.10223E-01 0.00243  3.17589E-01 0.00100  1.34398E+00 0.00162  8.80421E+00 0.01302 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.00851E-03 0.06345  1.71871E-04 0.38238  1.00996E-03 0.16013  1.26818E-03 0.13957  3.13870E-03 0.09359  1.22600E-03 0.15493  1.93804E-04 0.29562 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.53983E-01 0.12835  1.24906E-02 0.0E+00  3.17518E-02 0.00134  1.10232E-01 0.00243  3.17662E-01 0.00102  1.34408E+00 0.00161  8.80421E+00 0.01302 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.28245E+02 0.06392 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.66972E-05 0.00165 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.66500E-05 0.00114 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.17751E-03 0.01098 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.26714E+02 0.01176 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75980E-06 0.00085 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.73756E-06 0.00086  1.73724E-06 0.00087  1.78515E-06 0.00948 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.23411E-05 0.00142  9.24193E-05 0.00143  8.10455E-05 0.01576 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.72731E-01 0.00044  8.72733E-01 0.00043  8.86647E-01 0.01860 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06078E+01 0.02775 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.91582E+01 0.00121  5.90125E+01 0.00145 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.94548E+04 0.00576  2.32345E+05 0.00306  4.64190E+05 0.00144  4.80778E+05 0.00188  4.16885E+05 0.00144  4.00094E+05 0.00112  2.73024E+05 0.00170  2.30543E+05 0.00115  1.76501E+05 0.00083  1.44170E+05 0.00106  1.24924E+05 0.00327  1.11504E+05 0.00144  1.04019E+05 0.00239  9.95324E+04 0.00187  9.69140E+04 0.00241  8.46546E+04 0.00125  8.37724E+04 0.00413  8.29023E+04 0.00320  8.23946E+04 0.00173  1.63086E+05 0.00158  1.61033E+05 0.00107  1.18707E+05 0.00175  7.80460E+04 0.00113  9.32640E+04 0.00138  9.14500E+04 0.00211  8.13495E+04 0.00243  1.44114E+05 0.00214  3.19454E+04 0.00489  4.00239E+04 0.00342  3.64958E+04 0.00602  2.12694E+04 0.00368  3.67128E+04 0.00286  2.50628E+04 0.00282  2.17425E+04 0.00395  4.14328E+03 0.01071  4.19672E+03 0.00690  4.14285E+03 0.00774  4.33914E+03 0.00530  4.34094E+03 0.00697  4.18783E+03 0.00403  4.35414E+03 0.00168  4.09048E+03 0.00639  7.62034E+03 0.00349  1.22645E+04 0.00645  1.56344E+04 0.00727  4.10150E+04 0.00114  4.29625E+04 0.00202  4.35820E+04 0.00223  2.63326E+04 0.00263  1.78379E+04 0.00659  1.29698E+04 0.00525  1.42935E+04 0.00295  2.43730E+04 0.00362  3.11570E+04 0.00262  6.51003E+04 0.00241  1.34677E+05 0.00248  3.51136E+05 0.00169  3.68374E+05 0.00174  3.40654E+05 0.00190  3.05523E+05 0.00141  3.22156E+05 0.00217  3.70771E+05 0.00132  3.58673E+05 0.00198  2.70774E+05 0.00139  2.76339E+05 0.00202  2.69741E+05 0.00095  2.52549E+05 0.00150  2.12825E+05 0.00136  1.58227E+05 0.00129  6.12553E+04 0.00217 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00151E+00 0.00057 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50289E+01 0.00076  2.16724E+01 0.00112 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.40683E-01 0.00035  2.80124E+00 0.00021 ];
INF_CAPT                  (idx, [1:   4]) = [  3.62768E-03 0.00271  2.29520E-02 0.00034 ];
INF_ABS                   (idx, [1:   4]) = [  4.99195E-03 0.00220  4.01532E-02 0.00086 ];
INF_FISS                  (idx, [1:   4]) = [  1.36428E-03 0.00141  1.72012E-02 0.00158 ];
INF_NSF                   (idx, [1:   4]) = [  3.54461E-03 0.00148  4.19141E-02 0.00158 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59816E+00 0.00010  2.43670E+00 8.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04279E+02 7.6E-06  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.34969E-08 0.00065  3.71899E-06 0.00015 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.35687E-01 0.00036  2.76104E+00 0.00023 ];
INF_SCATT1                (idx, [1:   4]) = [  3.94730E-01 0.00041  5.81738E-01 0.00051 ];
INF_SCATT2                (idx, [1:   4]) = [  1.53106E-01 0.00070  1.00671E-01 0.00166 ];
INF_SCATT3                (idx, [1:   4]) = [  8.26516E-03 0.00827  2.75796E-02 0.00390 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.99151E-02 0.00362 -2.24906E-02 0.00459 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.01055E-04 0.06327  1.15265E-02 0.00911 ];
INF_SCATT6                (idx, [1:   4]) = [  7.90599E-03 0.00444 -3.11524E-02 0.00314 ];
INF_SCATT7                (idx, [1:   4]) = [  7.94462E-04 0.04837  8.72971E-03 0.00457 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.35717E-01 0.00036  2.76104E+00 0.00023 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.94730E-01 0.00041  5.81738E-01 0.00051 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.53106E-01 0.00070  1.00671E-01 0.00166 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.26530E-03 0.00828  2.75796E-02 0.00390 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.99150E-02 0.00363 -2.24906E-02 0.00459 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.01498E-04 0.06321  1.15265E-02 0.00911 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.90603E-03 0.00446 -3.11524E-02 0.00314 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.94240E-04 0.04842  8.72971E-03 0.00457 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29535E-01 0.00080  1.87937E+00 0.00040 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45222E+00 0.00080  1.77365E-01 0.00040 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.96173E-03 0.00214  4.01532E-02 0.00086 ];
INF_REMXS                 (idx, [1:   4]) = [  4.00192E-02 0.00038  4.03650E-02 0.00128 ];

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

INF_S0                    (idx, [1:   8]) = [  7.00663E-01 0.00035  3.50238E-02 0.00060  1.60691E-04 0.01108  2.76088E+00 0.00023 ];
INF_S1                    (idx, [1:   8]) = [  3.84075E-01 0.00039  1.06544E-02 0.00136  1.00030E-04 0.02079  5.81638E-01 0.00052 ];
INF_S2                    (idx, [1:   8]) = [  1.56569E-01 0.00058 -3.46275E-03 0.00626  6.30467E-05 0.03008  1.00608E-01 0.00167 ];
INF_S3                    (idx, [1:   8]) = [  1.23913E-02 0.00598 -4.12615E-03 0.00454  3.19515E-05 0.06144  2.75476E-02 0.00393 ];
INF_S4                    (idx, [1:   8]) = [ -1.88681E-02 0.00384 -1.04699E-03 0.01016  9.23409E-06 0.16421 -2.24999E-02 0.00457 ];
INF_S5                    (idx, [1:   8]) = [ -1.16399E-03 0.03841  3.62940E-04 0.03171 -2.91062E-06 0.49434  1.15294E-02 0.00901 ];
INF_S6                    (idx, [1:   8]) = [  8.19291E-03 0.00309 -2.86919E-04 0.04764 -7.76702E-06 0.09778 -3.11446E-02 0.00312 ];
INF_S7                    (idx, [1:   8]) = [  1.33583E-03 0.02635 -5.41372E-04 0.01735 -8.73453E-06 0.07766  8.73844E-03 0.00462 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.00694E-01 0.00036  3.50238E-02 0.00060  1.60691E-04 0.01108  2.76088E+00 0.00023 ];
INF_SP1                   (idx, [1:   8]) = [  3.84075E-01 0.00039  1.06544E-02 0.00136  1.00030E-04 0.02079  5.81638E-01 0.00052 ];
INF_SP2                   (idx, [1:   8]) = [  1.56569E-01 0.00058 -3.46275E-03 0.00626  6.30467E-05 0.03008  1.00608E-01 0.00167 ];
INF_SP3                   (idx, [1:   8]) = [  1.23915E-02 0.00597 -4.12615E-03 0.00454  3.19515E-05 0.06144  2.75476E-02 0.00393 ];
INF_SP4                   (idx, [1:   8]) = [ -1.88680E-02 0.00384 -1.04699E-03 0.01016  9.23409E-06 0.16421 -2.24999E-02 0.00457 ];
INF_SP5                   (idx, [1:   8]) = [ -1.16444E-03 0.03836  3.62940E-04 0.03171 -2.91062E-06 0.49434  1.15294E-02 0.00901 ];
INF_SP6                   (idx, [1:   8]) = [  8.19294E-03 0.00311 -2.86919E-04 0.04764 -7.76702E-06 0.09778 -3.11446E-02 0.00312 ];
INF_SP7                   (idx, [1:   8]) = [  1.33561E-03 0.02638 -5.41372E-04 0.01735 -8.73453E-06 0.07766  8.73844E-03 0.00462 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62649E-01 0.00107  1.74754E+00 0.00647 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.60716E-01 0.00158  1.71983E+00 0.00723 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.65088E-01 0.00113  1.80795E+00 0.00963 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62182E-01 0.00169  1.71810E+00 0.00510 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26913E+00 0.00107  1.90777E-01 0.00647 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27854E+00 0.00158  1.93858E-01 0.00717 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25745E+00 0.00113  1.84439E-01 0.00955 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27139E+00 0.00169  1.94033E-01 0.00513 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.39114E-03 0.01705  2.03959E-04 0.10196  1.22220E-03 0.04908  1.14932E-03 0.04121  3.47841E-03 0.02481  9.95865E-04 0.05116  3.41383E-04 0.08736 ];
LAMBDA                    (idx, [1:  14]) = [  7.62946E-01 0.04623  1.24906E-02 4.4E-06  3.17200E-02 0.00055  1.09846E-01 0.00069  3.19298E-01 0.00059  1.34740E+00 0.00051  8.73660E+00 0.00279 ];

