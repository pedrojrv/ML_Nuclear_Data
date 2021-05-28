
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-001' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_001' ;
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_001/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0009.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:39:33 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:40:04 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176773988 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.86026E-01  1.01464E+00  1.00893E+00  1.00949E+00  9.93866E-01  9.92066E-01  9.99759E-01  9.90866E-01  9.97132E-01  1.00524E+00  9.88426E-01  1.00780E+00  1.00081E+00  1.00396E+00  9.95079E-01  1.00391E+00  9.90466E-01  1.00938E+00  9.96706E-01  1.00545E+00  ];
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 2.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  2.42012E-02 0.00151  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75799E-01 3.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.92209E-01 0.00016  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.92348E-01 0.00016  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07899E+00 0.00059  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.85124E+01 0.00125  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.85070E+01 0.00125  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.46980E+00 0.00087  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.07119E+00 0.00127  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000004 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00000E+04 0.00168 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00000E+04 0.00168 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.40633E+00 ;
RUNNING_TIME              (idx, 1)        =  5.16283E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  8.88333E-02  8.88333E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  8.66667E-04  8.66667E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.26550E-01  4.26550E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.13683E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 16.28240 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.96092E+01 0.00401 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.00852E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 578.91;
MEMSIZE                   (idx, 1)        = 416.36;
XS_MEMSIZE                (idx, 1)        = 234.77;
MAT_MEMSIZE               (idx, 1)        = 30.48;
RES_MEMSIZE               (idx, 1)        = 17.01;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.10;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 162.55;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 32 ;
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

NORM_COEF                 (idx, [1:   4]) = [  9.99380E-05 0.00075  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.16097E-01 0.00274 ];
U235_FISS                 (idx, [1:   4]) = [  3.93732E-01 0.00129  9.64238E-01 0.00030 ];
U238_FISS                 (idx, [1:   4]) = [  1.45788E-02 0.00826  3.56989E-02 0.00803 ];
U235_CAPT                 (idx, [1:   4]) = [  7.34636E-02 0.00384  1.25282E-01 0.00355 ];
U238_CAPT                 (idx, [1:   4]) = [  1.47026E-01 0.00246  2.50749E-01 0.00231 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000004 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.65750E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000004 1.00077E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 586309 5.86723E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 408244 4.08592E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5451 5.45127E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000004 1.00077E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 2.18861E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32355E-11 0.00078 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.98992E-20 0.00078 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.99906E-01 0.00078 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.08067E-01 0.00078 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.86485E-01 0.00057 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94553E-01 7.0E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99380E-01 0.00075 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.65506E+01 0.00059 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.44720E-03 0.01278 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.85040E+01 0.00099 ];
INI_FMASS                 (idx, 1)        =  2.65244E+02 ;
TOT_FMASS                 (idx, 1)        =  2.65244E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77890E+00 0.00086 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.90108E-01 0.00086 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.72291E-01 0.00037 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09932E+00 0.00047 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96501E-01 5.9E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98041E-01 4.5E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00660E+00 0.00111 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.00111E+00 0.00110 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45035E+00 1.7E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02441E+02 1.7E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.00165E+00 0.00117  9.93610E-01 0.00113  7.49747E-03 0.01721 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.00066E+00 0.00078 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00058E+00 0.00102 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.00066E+00 0.00078 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00615E+00 0.00079 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91310E+01 0.00032 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91268E+01 0.00011 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.84808E-08 0.00622 ];
IMP_EALF                  (idx, [1:   2]) = [  9.87352E-08 0.00216 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.19234E-01 0.00902 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20820E-01 0.00269 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.88321E-03 0.01181  1.72057E-04 0.07390  1.09402E-03 0.02877  1.07995E-03 0.03274  3.19822E-03 0.01829  1.04008E-03 0.03012  2.98891E-04 0.05632 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.57673E-01 0.02898  1.03672E-02 0.04548  3.17339E-02 0.00036  1.09834E-01 0.00049  3.19389E-01 0.00041  1.34889E+00 0.00031  8.17001E+00 0.02777 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.41580E-03 0.01777  1.97451E-04 0.11681  1.20205E-03 0.04541  1.15673E-03 0.04390  3.42353E-03 0.02492  1.08964E-03 0.04417  3.46396E-04 0.08322 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.72880E-01 0.03957  1.24906E-02 4.0E-06  3.17351E-02 0.00044  1.09827E-01 0.00072  3.19491E-01 0.00067  1.34920E+00 0.00043  8.76101E+00 0.00331 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.43334E-05 0.00268  5.43222E-05 0.00272  5.60098E-05 0.02859 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.44147E-05 0.00236  5.44035E-05 0.00240  5.60850E-05 0.02837 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.57408E-03 0.01772  2.18774E-04 0.11785  1.20619E-03 0.04467  1.19754E-03 0.04596  3.50339E-03 0.02522  1.12032E-03 0.04440  3.27861E-04 0.09195 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.45633E-01 0.04684  1.24906E-02 2.5E-06  3.17259E-02 0.00059  1.09790E-01 0.00077  3.19236E-01 0.00061  1.34984E+00 0.00040  8.74715E+00 0.00323 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.24796E-05 0.00618  5.24620E-05 0.00624  5.55727E-05 0.05506 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.25587E-05 0.00608  5.25411E-05 0.00613  5.56951E-05 0.05522 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  8.39485E-03 0.06099  1.92865E-04 0.36939  1.39762E-03 0.13370  1.16392E-03 0.17718  3.75736E-03 0.09965  1.57940E-03 0.14939  3.03691E-04 0.24191 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.30609E-01 0.10872  1.24906E-02 3.9E-09  3.17457E-02 0.00134  1.09889E-01 0.00204  3.18527E-01 0.00136  1.34745E+00 0.00132  8.77064E+00 0.01054 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  8.43071E-03 0.05948  1.75714E-04 0.34709  1.38712E-03 0.12961  1.20217E-03 0.16439  3.87242E-03 0.09741  1.46647E-03 0.14339  3.26811E-04 0.24612 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.31222E-01 0.11366  1.24906E-02 5.5E-09  3.17456E-02 0.00134  1.09877E-01 0.00201  3.18495E-01 0.00123  1.34750E+00 0.00132  8.77064E+00 0.01054 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.60185E+02 0.06130 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.32933E-05 0.00156 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.33741E-05 0.00108 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.74439E-03 0.01127 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.45333E+02 0.01124 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.74705E-06 0.00088 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.75242E-06 0.00089  1.75210E-06 0.00088  1.79808E-06 0.00985 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.17611E-05 0.00148  9.18416E-05 0.00151  7.99745E-05 0.01698 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.69534E-01 0.00037  8.69514E-01 0.00040  8.84136E-01 0.01664 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.01198E+01 0.02844 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.85070E+01 0.00125  5.63337E+01 0.00154 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.94555E+04 0.00636  2.32692E+05 0.00541  4.62370E+05 0.00146  4.82701E+05 0.00131  4.17996E+05 0.00261  4.01438E+05 0.00221  2.73482E+05 0.00181  2.31608E+05 0.00068  1.77313E+05 0.00075  1.45466E+05 0.00220  1.25921E+05 0.00073  1.12767E+05 0.00127  1.05056E+05 0.00270  9.99319E+04 0.00261  9.71537E+04 0.00244  8.51131E+04 0.00266  8.42542E+04 0.00270  8.34180E+04 0.00246  8.28189E+04 0.00154  1.63828E+05 0.00135  1.62078E+05 0.00097  1.19529E+05 0.00267  7.87350E+04 0.00153  9.37538E+04 0.00320  9.15434E+04 0.00140  8.19790E+04 0.00343  1.45277E+05 0.00149  3.24445E+04 0.00253  4.04856E+04 0.00108  3.65427E+04 0.00403  2.12485E+04 0.00295  3.69074E+04 0.00275  2.50567E+04 0.00530  2.16958E+04 0.00315  4.09780E+03 0.01027  4.15871E+03 0.01440  4.29326E+03 0.00872  4.33167E+03 0.00237  4.26231E+03 0.01001  4.17637E+03 0.00818  4.39215E+03 0.00933  4.09639E+03 0.01026  7.69582E+03 0.00500  1.23088E+04 0.00427  1.57939E+04 0.00713  4.11778E+04 0.00425  4.27554E+04 0.00245  4.35399E+04 0.00145  2.65526E+04 0.00174  1.80014E+04 0.00394  1.30430E+04 0.00805  1.43705E+04 0.00528  2.45599E+04 0.00463  3.13052E+04 0.00213  6.46677E+04 0.00178  1.34075E+05 0.00172  3.47670E+05 0.00140  3.65467E+05 0.00090  3.36693E+05 0.00111  3.02334E+05 0.00127  3.18758E+05 0.00099  3.67650E+05 0.00156  3.55030E+05 0.00091  2.68105E+05 0.00149  2.73933E+05 0.00121  2.66986E+05 0.00152  2.49948E+05 0.00165  2.10929E+05 0.00116  1.56421E+05 0.00137  6.05704E+04 0.00109 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00607E+00 0.00093 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50987E+01 0.00097  2.14535E+01 0.00045 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.38367E-01 0.00017  2.79565E+00 9.9E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  3.71389E-03 0.00129  2.29942E-02 0.00012 ];
INF_ABS                   (idx, [1:   4]) = [  5.10397E-03 0.00124  4.03899E-02 0.00026 ];
INF_FISS                  (idx, [1:   4]) = [  1.39007E-03 0.00207  1.73957E-02 0.00046 ];
INF_NSF                   (idx, [1:   4]) = [  3.60907E-03 0.00225  4.23881E-02 0.00046 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59631E+00 0.00019  2.43670E+00 5.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04265E+02 2.0E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.35779E-08 0.00037  3.71675E-06 0.00011 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.33280E-01 0.00016  2.75524E+00 9.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  3.92298E-01 0.00022  5.80603E-01 0.00034 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52058E-01 0.00027  1.00396E-01 0.00168 ];
INF_SCATT3                (idx, [1:   4]) = [  8.14099E-03 0.00464  2.73470E-02 0.00226 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.98861E-02 0.00211 -2.26621E-02 0.00266 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.46597E-04 0.05507  1.16909E-02 0.00813 ];
INF_SCATT6                (idx, [1:   4]) = [  7.80436E-03 0.00432 -3.11156E-02 0.00217 ];
INF_SCATT7                (idx, [1:   4]) = [  7.36583E-04 0.07695  8.74653E-03 0.01502 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.33311E-01 0.00016  2.75524E+00 9.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.92298E-01 0.00022  5.80603E-01 0.00034 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52057E-01 0.00027  1.00396E-01 0.00168 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.14035E-03 0.00464  2.73470E-02 0.00226 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.98860E-02 0.00210 -2.26621E-02 0.00266 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.46500E-04 0.05490  1.16909E-02 0.00813 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.80470E-03 0.00429 -3.11156E-02 0.00217 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.36372E-04 0.07661  8.74653E-03 0.01502 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.30273E-01 0.00040  1.87431E+00 0.00024 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.44756E+00 0.00040  1.77843E-01 0.00024 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.07348E-03 0.00123  4.03899E-02 0.00026 ];
INF_REMXS                 (idx, [1:   4]) = [  3.98427E-02 0.00048  4.05697E-02 0.00110 ];

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

INF_S0                    (idx, [1:   8]) = [  6.98525E-01 0.00015  3.47552E-02 0.00050  1.56658E-04 0.01356  2.75508E+00 9.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  3.81727E-01 0.00027  1.05715E-02 0.00158  9.55088E-05 0.01460  5.80508E-01 0.00034 ];
INF_S2                    (idx, [1:   8]) = [  1.55522E-01 0.00032 -3.46356E-03 0.00253  5.89587E-05 0.01241  1.00337E-01 0.00168 ];
INF_S3                    (idx, [1:   8]) = [  1.22498E-02 0.00272 -4.10884E-03 0.00221  2.94755E-05 0.01268  2.73175E-02 0.00227 ];
INF_S4                    (idx, [1:   8]) = [ -1.88587E-02 0.00196 -1.02747E-03 0.00702  9.04033E-06 0.11205 -2.26711E-02 0.00262 ];
INF_S5                    (idx, [1:   8]) = [ -1.22080E-03 0.04123  3.74199E-04 0.01482 -1.73313E-06 0.74522  1.16927E-02 0.00812 ];
INF_S6                    (idx, [1:   8]) = [  8.09515E-03 0.00361 -2.90799E-04 0.02109 -6.95281E-06 0.06386 -3.11086E-02 0.00217 ];
INF_S7                    (idx, [1:   8]) = [  1.28584E-03 0.04353 -5.49258E-04 0.01291 -9.12790E-06 0.09246  8.75566E-03 0.01509 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.98555E-01 0.00015  3.47552E-02 0.00050  1.56658E-04 0.01356  2.75508E+00 9.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  3.81727E-01 0.00027  1.05715E-02 0.00158  9.55088E-05 0.01460  5.80508E-01 0.00034 ];
INF_SP2                   (idx, [1:   8]) = [  1.55521E-01 0.00031 -3.46356E-03 0.00253  5.89587E-05 0.01241  1.00337E-01 0.00168 ];
INF_SP3                   (idx, [1:   8]) = [  1.22492E-02 0.00272 -4.10884E-03 0.00221  2.94755E-05 0.01268  2.73175E-02 0.00227 ];
INF_SP4                   (idx, [1:   8]) = [ -1.88585E-02 0.00195 -1.02747E-03 0.00702  9.04033E-06 0.11205 -2.26711E-02 0.00262 ];
INF_SP5                   (idx, [1:   8]) = [ -1.22070E-03 0.04112  3.74199E-04 0.01482 -1.73313E-06 0.74522  1.16927E-02 0.00812 ];
INF_SP6                   (idx, [1:   8]) = [  8.09550E-03 0.00358 -2.90799E-04 0.02109 -6.95281E-06 0.06386 -3.11086E-02 0.00217 ];
INF_SP7                   (idx, [1:   8]) = [  1.28563E-03 0.04333 -5.49258E-04 0.01291 -9.12790E-06 0.09246  8.75566E-03 0.01509 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.63402E-01 0.00106  1.74189E+00 0.00394 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.63985E-01 0.00073  1.77687E+00 0.01246 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.63637E-01 0.00149  1.78177E+00 0.00662 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62593E-01 0.00257  1.67261E+00 0.00375 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26550E+00 0.00106  1.91374E-01 0.00395 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.26270E+00 0.00073  1.87710E-01 0.01226 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26437E+00 0.00150  1.87113E-01 0.00662 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26943E+00 0.00257  1.99300E-01 0.00378 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.41580E-03 0.01777  1.97451E-04 0.11681  1.20205E-03 0.04541  1.15673E-03 0.04390  3.42353E-03 0.02492  1.08964E-03 0.04417  3.46396E-04 0.08322 ];
LAMBDA                    (idx, [1:  14]) = [  7.72880E-01 0.03957  1.24906E-02 4.0E-06  3.17351E-02 0.00044  1.09827E-01 0.00072  3.19491E-01 0.00067  1.34920E+00 0.00043  8.76101E+00 0.00331 ];

