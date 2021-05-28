
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-004' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_004' ;
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_004/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0009.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:42:05 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:42:35 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176925727 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00321E+00  1.00204E+00  9.99437E-01  1.00401E+00  9.82479E-01  1.00901E+00  9.90065E-01  1.00588E+00  9.89452E-01  1.00380E+00  9.90425E-01  1.01337E+00  9.88265E-01  1.00796E+00  9.91825E-01  1.00462E+00  9.94465E-01  1.00580E+00  1.00166E+00  1.01224E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.39914E-02 0.00163  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76009E-01 4.0E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.93180E-01 0.00018  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.93317E-01 0.00018  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07306E+00 0.00054  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.87670E+01 0.00134  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.87618E+01 0.00134  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.40453E+00 0.00089  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.05606E+00 0.00118  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000092 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00165 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00165 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.51083E+00 ;
RUNNING_TIME              (idx, 1)        =  5.00567E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  6.47667E-02  6.47667E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  9.49999E-04  9.49999E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.34800E-01  4.34800E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.96433E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.00240 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95933E+01 0.00509 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.36419E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.00099E-04 0.00088  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.17215E-01 0.00272 ];
U235_FISS                 (idx, [1:   4]) = [  3.92530E-01 0.00135  9.64085E-01 0.00030 ];
U238_FISS                 (idx, [1:   4]) = [  1.46144E-02 0.00845  3.58901E-02 0.00819 ];
U235_CAPT                 (idx, [1:   4]) = [  7.33176E-02 0.00327  1.24396E-01 0.00332 ];
U238_CAPT                 (idx, [1:   4]) = [  1.47146E-01 0.00261  2.49646E-01 0.00245 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000092 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.51587E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000092 1.00075E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 588505 5.88849E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 406439 4.06755E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5148 5.14812E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000092 1.00075E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 1.39698E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32112E-11 0.00085 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.75591E-20 0.00085 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.98064E-01 0.00085 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07318E-01 0.00085 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87529E-01 0.00059 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94847E-01 6.5E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.00099E+00 0.00088 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66774E+01 0.00069 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.15280E-03 0.01257 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.88836E+01 0.00099 ];
INI_FMASS                 (idx, 1)        =  7.52382E+02 ;
TOT_FMASS                 (idx, 1)        =  7.52382E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77795E+00 0.00076 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.87504E-01 0.00097 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.72933E-01 0.00040 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09876E+00 0.00055 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96698E-01 5.3E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98148E-01 3.8E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00184E+00 0.00114 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.96678E-01 0.00114 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45033E+00 1.8E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02440E+02 1.9E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.96710E-01 0.00122  9.89246E-01 0.00115  7.43229E-03 0.02089 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98816E-01 0.00085 ];
COL_KEFF                  (idx, [1:   2]) = [  9.97142E-01 0.00117 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98816E-01 0.00085 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00399E+00 0.00084 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91327E+01 0.00034 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91308E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.83257E-08 0.00638 ];
IMP_EALF                  (idx, [1:   2]) = [  9.83444E-08 0.00222 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.20689E-01 0.00915 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20691E-01 0.00288 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.99656E-03 0.01394  2.05818E-04 0.06698  1.16595E-03 0.03065  1.12630E-03 0.02967  3.15207E-03 0.01852  9.80634E-04 0.03591  3.65789E-04 0.05054 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.17714E-01 0.02948  1.21160E-02 0.01767  3.17066E-02 0.00035  1.09958E-01 0.00053  3.19443E-01 0.00039  1.34867E+00 0.00032  8.46323E+00 0.02074 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.49673E-03 0.02053  2.11833E-04 0.09871  1.21087E-03 0.04645  1.21042E-03 0.04167  3.39105E-03 0.02789  1.06615E-03 0.05975  4.06409E-04 0.08018 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.29256E-01 0.04465  1.24908E-02 6.4E-06  3.16943E-02 0.00053  1.10084E-01 0.00082  3.19406E-01 0.00061  1.34767E+00 0.00059  8.86982E+00 0.00459 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.59923E-05 0.00251  5.59938E-05 0.00252  5.50441E-05 0.02759 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.58022E-05 0.00239  5.58039E-05 0.00241  5.48447E-05 0.02739 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.44918E-03 0.02132  2.09038E-04 0.10946  1.27451E-03 0.04261  1.15619E-03 0.04194  3.45981E-03 0.02934  9.54459E-04 0.06059  3.95180E-04 0.07719 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.11381E-01 0.04546  1.24907E-02 7.4E-06  3.16752E-02 0.00089  1.10045E-01 0.00104  3.19672E-01 0.00059  1.34883E+00 0.00059  8.83138E+00 0.00449 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.46038E-05 0.00645  5.46074E-05 0.00650  4.71582E-05 0.06241 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.44212E-05 0.00647  5.44253E-05 0.00653  4.69594E-05 0.06228 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.85527E-03 0.06028  3.84781E-04 0.26279  1.43912E-03 0.14686  1.25252E-03 0.15459  3.54586E-03 0.09426  9.98145E-04 0.15489  2.34858E-04 0.25840 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  6.53780E-01 0.11467  1.24906E-02 0.0E+00  3.17332E-02 0.00141  1.09949E-01 0.00196  3.19857E-01 0.00207  1.34794E+00 0.00132  8.79703E+00 0.01070 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.82306E-03 0.05774  3.89912E-04 0.24809  1.38160E-03 0.13599  1.22928E-03 0.14867  3.56122E-03 0.09273  1.01942E-03 0.14931  2.41623E-04 0.26263 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.45800E-01 0.11235  1.24906E-02 0.0E+00  3.17416E-02 0.00131  1.09940E-01 0.00198  3.19756E-01 0.00199  1.34785E+00 0.00132  8.79675E+00 0.01070 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.44302E+02 0.06119 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.51625E-05 0.00182 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.49707E-05 0.00103 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.37642E-03 0.01066 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.33706E+02 0.01043 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75109E-06 0.00092 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74597E-06 0.00086  1.74548E-06 0.00086  1.81922E-06 0.00958 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.19737E-05 0.00158  9.20683E-05 0.00159  7.86620E-05 0.01781 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.70334E-01 0.00041  8.70388E-01 0.00041  8.81491E-01 0.02124 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02756E+01 0.02808 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.87618E+01 0.00134  5.76791E+01 0.00146 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.93485E+04 0.00670  2.33067E+05 0.00337  4.64706E+05 0.00156  4.82973E+05 0.00093  4.16738E+05 0.00067  4.01645E+05 0.00095  2.74107E+05 0.00100  2.31543E+05 0.00236  1.77090E+05 0.00098  1.44750E+05 0.00075  1.25280E+05 0.00182  1.11779E+05 0.00158  1.04530E+05 0.00121  9.90624E+04 0.00247  9.74993E+04 0.00419  8.44644E+04 0.00197  8.41234E+04 0.00209  8.35938E+04 0.00275  8.30120E+04 0.00255  1.63859E+05 0.00208  1.62138E+05 0.00158  1.18879E+05 0.00267  7.84372E+04 0.00217  9.36462E+04 0.00115  9.14624E+04 0.00248  8.16206E+04 0.00232  1.44816E+05 0.00130  3.20867E+04 0.00244  4.04950E+04 0.00302  3.65125E+04 0.00510  2.13240E+04 0.00564  3.68500E+04 0.00322  2.49901E+04 0.00218  2.16256E+04 0.00273  4.14031E+03 0.00867  4.14210E+03 0.00467  4.19929E+03 0.01361  4.34549E+03 0.01221  4.20671E+03 0.01191  4.13321E+03 0.00968  4.33983E+03 0.00245  4.13412E+03 0.00534  7.69996E+03 0.00415  1.22610E+04 0.01004  1.57722E+04 0.00742  4.11106E+04 0.00322  4.28834E+04 0.00310  4.38870E+04 0.00357  2.62333E+04 0.00393  1.79458E+04 0.00792  1.30324E+04 0.00307  1.43721E+04 0.00454  2.46566E+04 0.00352  3.11471E+04 0.00392  6.50025E+04 0.00261  1.33859E+05 0.00220  3.48760E+05 0.00124  3.66603E+05 0.00172  3.38535E+05 0.00192  3.03665E+05 0.00139  3.19620E+05 0.00167  3.68859E+05 0.00236  3.56727E+05 0.00259  2.69528E+05 0.00200  2.74801E+05 0.00208  2.67694E+05 0.00254  2.50882E+05 0.00212  2.11594E+05 0.00221  1.56990E+05 0.00234  6.08002E+04 0.00228 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00230E+00 0.00170 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.51176E+01 0.00111  2.15617E+01 0.00121 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.39154E-01 0.00013  2.79772E+00 0.00040 ];
INF_CAPT                  (idx, [1:   4]) = [  3.67830E-03 0.00233  2.29659E-02 0.00029 ];
INF_ABS                   (idx, [1:   4]) = [  5.05770E-03 0.00191  4.02512E-02 0.00111 ];
INF_FISS                  (idx, [1:   4]) = [  1.37940E-03 0.00164  1.72853E-02 0.00220 ];
INF_NSF                   (idx, [1:   4]) = [  3.58221E-03 0.00161  4.21191E-02 0.00220 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59693E+00 0.00012  2.43670E+00 5.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04272E+02 1.1E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.34789E-08 0.00107  3.71723E-06 0.00027 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.34086E-01 0.00014  2.75740E+00 0.00042 ];
INF_SCATT1                (idx, [1:   4]) = [  3.93231E-01 0.00019  5.81530E-01 0.00049 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52473E-01 0.00033  1.00684E-01 0.00188 ];
INF_SCATT3                (idx, [1:   4]) = [  8.08461E-03 0.00959  2.77521E-02 0.00336 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.00146E-02 0.00302 -2.22739E-02 0.00702 ];
INF_SCATT5                (idx, [1:   4]) = [ -9.21919E-04 0.07877  1.17533E-02 0.00847 ];
INF_SCATT6                (idx, [1:   4]) = [  7.81015E-03 0.00284 -3.11371E-02 0.00299 ];
INF_SCATT7                (idx, [1:   4]) = [  7.71457E-04 0.03079  8.57117E-03 0.00901 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.34116E-01 0.00014  2.75740E+00 0.00042 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.93231E-01 0.00019  5.81530E-01 0.00049 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52474E-01 0.00032  1.00684E-01 0.00188 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.08474E-03 0.00961  2.77521E-02 0.00336 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.00147E-02 0.00302 -2.22739E-02 0.00702 ];
INF_SCATTP5               (idx, [1:   4]) = [ -9.22026E-04 0.07902  1.17533E-02 0.00847 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.80976E-03 0.00282 -3.11371E-02 0.00299 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.71365E-04 0.03086  8.57117E-03 0.00901 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29798E-01 0.00090  1.87519E+00 0.00054 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45055E+00 0.00090  1.77760E-01 0.00053 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.02775E-03 0.00186  4.02512E-02 0.00111 ];
INF_REMXS                 (idx, [1:   4]) = [  3.98904E-02 0.00021  4.04801E-02 0.00147 ];

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

INF_S0                    (idx, [1:   8]) = [  6.99263E-01 0.00013  3.48227E-02 0.00042  1.62929E-04 0.01775  2.75724E+00 0.00042 ];
INF_S1                    (idx, [1:   8]) = [  3.82613E-01 0.00020  1.06184E-02 0.00082  9.89637E-05 0.01544  5.81431E-01 0.00049 ];
INF_S2                    (idx, [1:   8]) = [  1.55928E-01 0.00039 -3.45469E-03 0.00381  6.33787E-05 0.02739  1.00620E-01 0.00188 ];
INF_S3                    (idx, [1:   8]) = [  1.22146E-02 0.00678 -4.13003E-03 0.00200  3.19976E-05 0.02976  2.77201E-02 0.00337 ];
INF_S4                    (idx, [1:   8]) = [ -1.89790E-02 0.00278 -1.03567E-03 0.01043  1.03876E-05 0.11503 -2.22843E-02 0.00702 ];
INF_S5                    (idx, [1:   8]) = [ -1.29780E-03 0.05630  3.75879E-04 0.01608 -3.39929E-06 0.36622  1.17567E-02 0.00840 ];
INF_S6                    (idx, [1:   8]) = [  8.09028E-03 0.00316 -2.80138E-04 0.03873 -8.60499E-06 0.11581 -3.11285E-02 0.00301 ];
INF_S7                    (idx, [1:   8]) = [  1.31046E-03 0.01865 -5.39007E-04 0.02441 -9.68045E-06 0.09801  8.58085E-03 0.00894 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.99293E-01 0.00013  3.48227E-02 0.00042  1.62929E-04 0.01775  2.75724E+00 0.00042 ];
INF_SP1                   (idx, [1:   8]) = [  3.82612E-01 0.00020  1.06184E-02 0.00082  9.89637E-05 0.01544  5.81431E-01 0.00049 ];
INF_SP2                   (idx, [1:   8]) = [  1.55928E-01 0.00039 -3.45469E-03 0.00381  6.33787E-05 0.02739  1.00620E-01 0.00188 ];
INF_SP3                   (idx, [1:   8]) = [  1.22148E-02 0.00679 -4.13003E-03 0.00200  3.19976E-05 0.02976  2.77201E-02 0.00337 ];
INF_SP4                   (idx, [1:   8]) = [ -1.89790E-02 0.00278 -1.03567E-03 0.01043  1.03876E-05 0.11503 -2.22843E-02 0.00702 ];
INF_SP5                   (idx, [1:   8]) = [ -1.29791E-03 0.05648  3.75879E-04 0.01608 -3.39929E-06 0.36622  1.17567E-02 0.00840 ];
INF_SP6                   (idx, [1:   8]) = [  8.08989E-03 0.00314 -2.80138E-04 0.03873 -8.60499E-06 0.11581 -3.11285E-02 0.00301 ];
INF_SP7                   (idx, [1:   8]) = [  1.31037E-03 0.01861 -5.39007E-04 0.02441 -9.68045E-06 0.09801  8.58085E-03 0.00894 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62595E-01 0.00174  1.73792E+00 0.00226 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61151E-01 0.00296  1.71465E+00 0.00404 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64035E-01 0.00238  1.79453E+00 0.00503 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62623E-01 0.00145  1.70795E+00 0.00893 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26940E+00 0.00175  1.91804E-01 0.00225 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27645E+00 0.00296  1.94416E-01 0.00400 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26249E+00 0.00239  1.85769E-01 0.00507 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26926E+00 0.00145  1.95228E-01 0.00886 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.49673E-03 0.02053  2.11833E-04 0.09871  1.21087E-03 0.04645  1.21042E-03 0.04167  3.39105E-03 0.02789  1.06615E-03 0.05975  4.06409E-04 0.08018 ];
LAMBDA                    (idx, [1:  14]) = [  8.29256E-01 0.04465  1.24908E-02 6.4E-06  3.16943E-02 0.00053  1.10084E-01 0.00082  3.19406E-01 0.00061  1.34767E+00 0.00059  8.86982E+00 0.00459 ];

