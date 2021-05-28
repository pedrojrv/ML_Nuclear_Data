
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-007' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_007' ;
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_007/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0010.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:42:42 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:43:13 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176962334 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99923E-01  1.01582E+00  9.87337E-01  9.88510E-01  1.01063E+00  1.01215E+00  9.84684E-01  1.01188E+00  9.89204E-01  9.97843E-01  9.94750E-01  9.91310E-01  1.00722E+00  1.01259E+00  9.95004E-01  1.00790E+00  9.96270E-01  1.00667E+00  9.95523E-01  9.94790E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.36674E-02 0.00147  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76333E-01 3.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.94458E-01 0.00018  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.94593E-01 0.00018  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07438E+00 0.00060  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.91817E+01 0.00118  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.91766E+01 0.00118  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.32794E+00 0.00106  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03408E+00 0.00121  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000123 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00012E+04 0.00202 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00012E+04 0.00202 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.56967E+00 ;
RUNNING_TIME              (idx, 1)        =  5.21400E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  8.30833E-02  8.30833E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  9.66664E-04  9.66664E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.37250E-01  4.37250E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.16033E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 16.43588 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95840E+01 0.00549 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.08496E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.00050E-04 0.00085  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.11308E-01 0.00308 ];
U235_FISS                 (idx, [1:   4]) = [  3.94146E-01 0.00135  9.64907E-01 0.00027 ];
U238_FISS                 (idx, [1:   4]) = [  1.43159E-02 0.00791  3.50416E-02 0.00761 ];
U235_CAPT                 (idx, [1:   4]) = [  7.30077E-02 0.00355  1.24281E-01 0.00359 ];
U238_CAPT                 (idx, [1:   4]) = [  1.44746E-01 0.00265  2.46375E-01 0.00227 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000123 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 6.79760E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000123 1.00068E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 586924 5.87199E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 408004 4.08289E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5195 5.19193E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000123 1.00068E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.43191E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.31994E-11 0.00100 ];
TOT_POWDENS               (idx, [1:   2]) = [  2.13863E-20 0.00100 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97105E-01 0.00100 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.06960E-01 0.00100 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87847E-01 0.00068 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94806E-01 7.1E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.00050E+00 0.00085 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66747E+01 0.00070 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.19354E-03 0.01363 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.92613E+01 0.00105 ];
INI_FMASS                 (idx, 1)        =  6.17189E+02 ;
TOT_FMASS                 (idx, 1)        =  6.17189E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77972E+00 0.00086 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.87843E-01 0.00104 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.75938E-01 0.00034 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09734E+00 0.00044 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96722E-01 5.7E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98080E-01 4.2E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00558E+00 0.00129 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.00036E+00 0.00129 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45013E+00 1.8E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02437E+02 2.1E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.00026E+00 0.00134  9.93051E-01 0.00130  7.31124E-03 0.01854 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.97854E-01 0.00099 ];
COL_KEFF                  (idx, [1:   2]) = [  9.96689E-01 0.00140 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.97854E-01 0.00099 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00307E+00 0.00098 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91524E+01 0.00027 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91525E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.63482E-08 0.00517 ];
IMP_EALF                  (idx, [1:   2]) = [  9.62291E-08 0.00233 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.18725E-01 0.00846 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.18853E-01 0.00298 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.83352E-03 0.01391  1.89700E-04 0.07068  1.08286E-03 0.03102  1.11796E-03 0.02770  3.09593E-03 0.01990  9.97188E-04 0.03513  3.49888E-04 0.05497 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.11700E-01 0.02744  1.08669E-02 0.03885  3.17127E-02 0.00042  1.09885E-01 0.00044  3.19251E-01 0.00038  1.34916E+00 0.00029  8.37263E+00 0.02328 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.30765E-03 0.01796  1.58108E-04 0.11179  1.17150E-03 0.04295  1.23071E-03 0.03921  3.31542E-03 0.02566  1.01733E-03 0.03979  4.14580E-04 0.07740 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.44662E-01 0.03952  1.24907E-02 7.1E-06  3.17276E-02 0.00049  1.09928E-01 0.00063  3.19299E-01 0.00061  1.34975E+00 0.00043  8.80966E+00 0.00406 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.80099E-05 0.00307  5.80035E-05 0.00308  5.90306E-05 0.02943 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.80114E-05 0.00254  5.80053E-05 0.00257  5.89858E-05 0.02903 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.32377E-03 0.01875  1.72177E-04 0.12066  1.19492E-03 0.04333  1.23270E-03 0.04402  3.25090E-03 0.02960  1.06983E-03 0.04364  4.03261E-04 0.07949 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.39982E-01 0.04341  1.24908E-02 9.8E-06  3.17130E-02 0.00063  1.10093E-01 0.00087  3.19248E-01 0.00064  1.35027E+00 0.00046  8.82150E+00 0.00514 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.71878E-05 0.00598  5.71738E-05 0.00609  5.46555E-05 0.07113 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.71894E-05 0.00573  5.71756E-05 0.00585  5.46715E-05 0.07127 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.97993E-03 0.05278  2.16225E-04 0.36819  1.28982E-03 0.14755  1.51218E-03 0.13903  3.20221E-03 0.08897  1.27416E-03 0.14315  4.85341E-04 0.22982 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.23119E-01 0.13647  1.24906E-02 0.0E+00  3.17439E-02 0.00132  1.10150E-01 0.00237  3.20727E-01 0.00232  1.35280E+00 0.00059  8.83785E+00 0.01107 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.70690E-03 0.05097  2.31796E-04 0.36889  1.21666E-03 0.14186  1.47191E-03 0.13285  3.11668E-03 0.08340  1.20629E-03 0.13593  4.63564E-04 0.22302 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.35684E-01 0.13564  1.24906E-02 5.5E-09  3.17493E-02 0.00128  1.10157E-01 0.00238  3.20670E-01 0.00231  1.35275E+00 0.00060  8.83942E+00 0.01110 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.40294E+02 0.05364 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.75336E-05 0.00181 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.75378E-05 0.00114 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.60878E-03 0.01510 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.32186E+02 0.01467 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.76157E-06 0.00085 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.73678E-06 0.00085  1.73662E-06 0.00085  1.75805E-06 0.00950 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.23032E-05 0.00149  9.23871E-05 0.00149  8.00513E-05 0.01519 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.73345E-01 0.00035  8.73364E-01 0.00036  8.84917E-01 0.01827 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  9.80130E+00 0.02973 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.91766E+01 0.00118  5.91810E+01 0.00171 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.94065E+04 0.01016  2.32409E+05 0.00355  4.62691E+05 0.00148  4.81273E+05 0.00274  4.16024E+05 0.00225  3.99793E+05 0.00130  2.72511E+05 0.00174  2.29523E+05 0.00189  1.75961E+05 0.00097  1.44458E+05 0.00212  1.24635E+05 0.00177  1.10847E+05 0.00168  1.04007E+05 0.00160  9.90673E+04 0.00200  9.68357E+04 0.00088  8.38863E+04 0.00269  8.37567E+04 0.00295  8.30721E+04 0.00142  8.23678E+04 0.00277  1.62710E+05 0.00121  1.60869E+05 0.00163  1.18516E+05 0.00122  7.80041E+04 0.00191  9.32161E+04 0.00183  9.09978E+04 0.00207  8.11529E+04 0.00213  1.44647E+05 0.00283  3.21693E+04 0.00236  4.02377E+04 0.00412  3.64396E+04 0.00093  2.13414E+04 0.00303  3.65673E+04 0.00380  2.50150E+04 0.00316  2.14302E+04 0.00306  4.11615E+03 0.00907  4.06550E+03 0.01135  4.19534E+03 0.00661  4.33868E+03 0.00745  4.34608E+03 0.01012  4.21760E+03 0.00728  4.39532E+03 0.00638  4.11057E+03 0.00514  7.68155E+03 0.00348  1.22179E+04 0.00282  1.56088E+04 0.00353  4.12190E+04 0.00174  4.27686E+04 0.00200  4.35141E+04 0.00260  2.63429E+04 0.00661  1.78518E+04 0.00296  1.30275E+04 0.00887  1.42764E+04 0.00605  2.45679E+04 0.00409  3.11062E+04 0.00452  6.49795E+04 0.00217  1.34578E+05 0.00297  3.51201E+05 0.00103  3.69294E+05 0.00232  3.40706E+05 0.00151  3.05524E+05 0.00206  3.21830E+05 0.00191  3.71059E+05 0.00150  3.58723E+05 0.00173  2.71349E+05 0.00163  2.76536E+05 0.00163  2.69578E+05 0.00209  2.52897E+05 0.00266  2.13205E+05 0.00216  1.57970E+05 0.00255  6.13272E+04 0.00238 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00191E+00 0.00183 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.49942E+01 0.00119  2.16818E+01 0.00106 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.41579E-01 0.00039  2.80095E+00 0.00025 ];
INF_CAPT                  (idx, [1:   4]) = [  3.60994E-03 0.00216  2.29526E-02 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  4.96734E-03 0.00184  4.01590E-02 0.00111 ];
INF_FISS                  (idx, [1:   4]) = [  1.35740E-03 0.00120  1.72065E-02 0.00208 ];
INF_NSF                   (idx, [1:   4]) = [  3.52627E-03 0.00107  4.19270E-02 0.00208 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59782E+00 0.00019  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04279E+02 1.5E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.35899E-08 0.00070  3.71911E-06 0.00020 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.36613E-01 0.00040  2.76074E+00 0.00028 ];
INF_SCATT1                (idx, [1:   4]) = [  3.95461E-01 0.00045  5.82118E-01 0.00036 ];
INF_SCATT2                (idx, [1:   4]) = [  1.53364E-01 0.00037  1.00248E-01 0.00197 ];
INF_SCATT3                (idx, [1:   4]) = [  8.13322E-03 0.00887  2.75282E-02 0.00319 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.01231E-02 0.00623 -2.22771E-02 0.00288 ];
INF_SCATT5                (idx, [1:   4]) = [ -1.00560E-03 0.09450  1.17733E-02 0.00846 ];
INF_SCATT6                (idx, [1:   4]) = [  7.81807E-03 0.00816 -3.12961E-02 0.00188 ];
INF_SCATT7                (idx, [1:   4]) = [  7.11912E-04 0.06326  8.54514E-03 0.00641 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.36640E-01 0.00040  2.76074E+00 0.00028 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.95461E-01 0.00045  5.82118E-01 0.00036 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.53364E-01 0.00037  1.00248E-01 0.00197 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.13366E-03 0.00886  2.75282E-02 0.00319 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.01228E-02 0.00622 -2.22771E-02 0.00288 ];
INF_SCATTP5               (idx, [1:   4]) = [ -1.00594E-03 0.09457  1.17733E-02 0.00846 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.81814E-03 0.00819 -3.12961E-02 0.00188 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.11757E-04 0.06374  8.54514E-03 0.00641 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29621E-01 0.00085  1.87933E+00 0.00037 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45167E+00 0.00085  1.77368E-01 0.00037 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.94013E-03 0.00172  4.01590E-02 0.00111 ];
INF_REMXS                 (idx, [1:   4]) = [  4.00623E-02 0.00035  4.03693E-02 0.00225 ];

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

INF_S0                    (idx, [1:   8]) = [  7.01517E-01 0.00039  3.50954E-02 0.00067  1.58839E-04 0.00901  2.76058E+00 0.00028 ];
INF_S1                    (idx, [1:   8]) = [  3.84753E-01 0.00046  1.07081E-02 0.00160  9.82771E-05 0.01602  5.82020E-01 0.00036 ];
INF_S2                    (idx, [1:   8]) = [  1.56818E-01 0.00036 -3.45436E-03 0.00250  6.15774E-05 0.01434  1.00187E-01 0.00197 ];
INF_S3                    (idx, [1:   8]) = [  1.22778E-02 0.00579 -4.14455E-03 0.00276  3.11501E-05 0.03213  2.74970E-02 0.00320 ];
INF_S4                    (idx, [1:   8]) = [ -1.90738E-02 0.00641 -1.04930E-03 0.00845  1.19946E-05 0.03080 -2.22891E-02 0.00288 ];
INF_S5                    (idx, [1:   8]) = [ -1.36871E-03 0.06572  3.63114E-04 0.02829 -1.41149E-06 0.37384  1.17747E-02 0.00843 ];
INF_S6                    (idx, [1:   8]) = [  8.12327E-03 0.00675 -3.05192E-04 0.04713 -7.03967E-06 0.13375 -3.12890E-02 0.00189 ];
INF_S7                    (idx, [1:   8]) = [  1.26747E-03 0.02943 -5.55561E-04 0.01486 -8.79021E-06 0.06006  8.55393E-03 0.00646 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.01544E-01 0.00039  3.50954E-02 0.00067  1.58839E-04 0.00901  2.76058E+00 0.00028 ];
INF_SP1                   (idx, [1:   8]) = [  3.84753E-01 0.00046  1.07081E-02 0.00160  9.82771E-05 0.01602  5.82020E-01 0.00036 ];
INF_SP2                   (idx, [1:   8]) = [  1.56819E-01 0.00036 -3.45436E-03 0.00250  6.15774E-05 0.01434  1.00187E-01 0.00197 ];
INF_SP3                   (idx, [1:   8]) = [  1.22782E-02 0.00579 -4.14455E-03 0.00276  3.11501E-05 0.03213  2.74970E-02 0.00320 ];
INF_SP4                   (idx, [1:   8]) = [ -1.90735E-02 0.00640 -1.04930E-03 0.00845  1.19946E-05 0.03080 -2.22891E-02 0.00288 ];
INF_SP5                   (idx, [1:   8]) = [ -1.36906E-03 0.06579  3.63114E-04 0.02829 -1.41149E-06 0.37384  1.17747E-02 0.00843 ];
INF_SP6                   (idx, [1:   8]) = [  8.12333E-03 0.00678 -3.05192E-04 0.04713 -7.03967E-06 0.13375 -3.12890E-02 0.00189 ];
INF_SP7                   (idx, [1:   8]) = [  1.26732E-03 0.02969 -5.55561E-04 0.01486 -8.79021E-06 0.06006  8.55393E-03 0.00646 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62312E-01 0.00080  1.74749E+00 0.00358 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.60389E-01 0.00305  1.71178E+00 0.00507 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.65138E-01 0.00210  1.83062E+00 0.00281 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.61471E-01 0.00133  1.70612E+00 0.00887 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.27075E+00 0.00080  1.90760E-01 0.00358 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.28018E+00 0.00305  1.94749E-01 0.00505 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25723E+00 0.00210  1.82093E-01 0.00281 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27485E+00 0.00133  1.95437E-01 0.00887 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.30765E-03 0.01796  1.58108E-04 0.11179  1.17150E-03 0.04295  1.23071E-03 0.03921  3.31542E-03 0.02566  1.01733E-03 0.03979  4.14580E-04 0.07740 ];
LAMBDA                    (idx, [1:  14]) = [  8.44662E-01 0.03952  1.24907E-02 7.1E-06  3.17276E-02 0.00049  1.09928E-01 0.00063  3.19299E-01 0.00061  1.34975E+00 0.00043  8.80966E+00 0.00406 ];

