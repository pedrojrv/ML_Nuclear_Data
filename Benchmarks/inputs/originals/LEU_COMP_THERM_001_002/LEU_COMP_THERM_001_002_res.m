
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-002' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_002' ;
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_002/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0009.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:41:29 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:42:03 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176889610 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00982E+00  1.00010E+00  9.91653E-01  1.01011E+00  9.87335E-01  1.01054E+00  9.90134E-01  1.01816E+00  9.81883E-01  1.01103E+00  1.00564E+00  1.00622E+00  1.00460E+00  9.92040E-01  9.91560E-01  9.89508E-01  9.90334E-01  1.01074E+00  1.00958E+00  9.89001E-01  ];
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 2.3E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  2.40430E-02 0.00177  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75957E-01 4.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.93115E-01 0.00019  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.93252E-01 0.00019  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07721E+00 0.00067  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.88952E+01 0.00129  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.88901E+01 0.00129  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.42641E+00 0.00106  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.06453E+00 0.00145  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000397 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00040E+04 0.00195 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00040E+04 0.00195 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.58450E+00 ;
RUNNING_TIME              (idx, 1)        =  5.58233E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.18267E-01  1.18267E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.48333E-03  1.48333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.38433E-01  4.38433E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.53950E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 15.37798 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95991E+01 0.00500 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.56762E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.99061E-05 0.00085  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.17599E-01 0.00309 ];
U235_FISS                 (idx, [1:   4]) = [  3.92877E-01 0.00140  9.63870E-01 0.00027 ];
U238_FISS                 (idx, [1:   4]) = [  1.47106E-02 0.00735  3.60861E-02 0.00705 ];
U235_CAPT                 (idx, [1:   4]) = [  7.28783E-02 0.00368  1.24140E-01 0.00369 ];
U238_CAPT                 (idx, [1:   4]) = [  1.47269E-01 0.00268  2.50830E-01 0.00228 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000397 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.51865E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000397 1.00075E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587497 5.87669E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407814 4.07999E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5086 5.08416E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000397 1.00075E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.65310E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32076E-11 0.00096 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.76233E-20 0.00096 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97799E-01 0.00096 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07209E-01 0.00096 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87713E-01 0.00067 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94922E-01 7.1E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99061E-01 0.00085 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66419E+01 0.00072 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.07802E-03 0.01383 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.88619E+01 0.00113 ];
INI_FMASS                 (idx, 1)        =  7.49443E+02 ;
TOT_FMASS                 (idx, 1)        =  7.49443E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77935E+00 0.00087 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.88722E-01 0.00104 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.72560E-01 0.00039 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09938E+00 0.00049 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96813E-01 5.9E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98096E-01 4.3E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00486E+00 0.00134 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.99748E-01 0.00134 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45033E+00 1.9E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02441E+02 2.2E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99935E-01 0.00136  9.92458E-01 0.00134  7.29023E-03 0.01469 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98525E-01 0.00096 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98822E-01 0.00139 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98525E-01 0.00096 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00363E+00 0.00096 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91271E+01 0.00030 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91286E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.88440E-08 0.00573 ];
IMP_EALF                  (idx, [1:   2]) = [  9.85582E-08 0.00236 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.21236E-01 0.00803 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20781E-01 0.00313 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.80284E-03 0.01146  2.05429E-04 0.06358  1.08061E-03 0.02956  1.09976E-03 0.02947  3.12456E-03 0.01848  9.32346E-04 0.03106  3.60134E-04 0.04866 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.23964E-01 0.02719  1.13665E-02 0.03161  3.17308E-02 0.00035  1.09953E-01 0.00058  3.19073E-01 0.00039  1.34806E+00 0.00033  8.52935E+00 0.01790 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.44960E-03 0.01529  2.33577E-04 0.09817  1.13810E-03 0.04742  1.24614E-03 0.04276  3.47424E-03 0.02634  9.84055E-04 0.04364  3.73480E-04 0.07375 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.91481E-01 0.03807  1.24907E-02 4.2E-06  3.17354E-02 0.00054  1.09955E-01 0.00081  3.19045E-01 0.00059  1.34803E+00 0.00046  8.81041E+00 0.00388 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.56232E-05 0.00310  5.55989E-05 0.00310  5.85053E-05 0.03495 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.56086E-05 0.00273  5.55840E-05 0.00271  5.85481E-05 0.03547 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.29218E-03 0.01539  2.02766E-04 0.11375  1.07835E-03 0.05226  1.17613E-03 0.04273  3.43641E-03 0.02456  1.00427E-03 0.04217  3.94239E-04 0.08539 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.32616E-01 0.04722  1.24907E-02 6.9E-06  3.17697E-02 0.00039  1.09925E-01 0.00082  3.19068E-01 0.00057  1.34752E+00 0.00060  8.85406E+00 0.00504 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.37735E-05 0.00657  5.37398E-05 0.00657  5.98016E-05 0.07495 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.37603E-05 0.00643  5.37269E-05 0.00644  5.97210E-05 0.07474 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.47997E-03 0.05252  1.46181E-04 0.42075  1.19191E-03 0.13387  9.98506E-04 0.15515  3.62887E-03 0.09169  1.17121E-03 0.12963  3.43290E-04 0.27089 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.62552E-01 0.13716  1.24906E-02 5.6E-09  3.17761E-02 0.00107  1.09623E-01 0.00158  3.19849E-01 0.00236  1.34921E+00 0.00111  8.63638E+00 5.4E-09 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.25324E-03 0.04949  1.13445E-04 0.40493  1.15518E-03 0.12725  1.01337E-03 0.15212  3.47939E-03 0.08615  1.17451E-03 0.12545  3.17350E-04 0.27891 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.61428E-01 0.13758  1.24906E-02 5.6E-09  3.17780E-02 0.00104  1.09618E-01 0.00155  3.19814E-01 0.00233  1.34914E+00 0.00112  8.63638E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.39408E+02 0.05270 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.48051E-05 0.00207 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.47897E-05 0.00133 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.26538E-03 0.01197 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.32616E+02 0.01213 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75307E-06 0.00089 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74868E-06 0.00078  1.74839E-06 0.00077  1.79166E-06 0.00958 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.22343E-05 0.00145  9.23133E-05 0.00145  8.07852E-05 0.01532 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.70060E-01 0.00038  8.70043E-01 0.00038  8.80866E-01 0.01398 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.05942E+01 0.02618 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.88901E+01 0.00129  5.74370E+01 0.00157 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.87626E+04 0.00522  2.33984E+05 0.00378  4.65359E+05 0.00270  4.83109E+05 0.00098  4.17342E+05 0.00192  4.00877E+05 0.00177  2.73180E+05 0.00119  2.31695E+05 0.00058  1.76766E+05 0.00091  1.45196E+05 0.00212  1.25191E+05 0.00110  1.12377E+05 0.00211  1.05261E+05 0.00196  1.00162E+05 0.00182  9.74404E+04 0.00301  8.43657E+04 0.00167  8.40540E+04 0.00218  8.39356E+04 0.00275  8.26169E+04 0.00172  1.63477E+05 0.00157  1.61385E+05 0.00146  1.18862E+05 0.00159  7.82688E+04 0.00072  9.32943E+04 0.00375  9.18171E+04 0.00210  8.17072E+04 0.00171  1.45047E+05 0.00164  3.21150E+04 0.00340  4.03381E+04 0.00414  3.65923E+04 0.00321  2.12690E+04 0.00305  3.69301E+04 0.00332  2.48710E+04 0.00297  2.16064E+04 0.00415  4.17655E+03 0.00715  4.10915E+03 0.00631  4.27733E+03 0.00471  4.26894E+03 0.01102  4.29562E+03 0.01019  4.21626E+03 0.00382  4.31192E+03 0.00683  4.12641E+03 0.01335  7.75373E+03 0.00813  1.22786E+04 0.00333  1.55548E+04 0.00308  4.11653E+04 0.00306  4.28637E+04 0.00274  4.37732E+04 0.00472  2.65620E+04 0.00436  1.78788E+04 0.00295  1.31204E+04 0.00559  1.43060E+04 0.00472  2.45261E+04 0.00345  3.10854E+04 0.00411  6.47706E+04 0.00293  1.34551E+05 0.00213  3.49893E+05 0.00133  3.67658E+05 0.00121  3.38948E+05 0.00153  3.04641E+05 0.00154  3.20206E+05 0.00126  3.69710E+05 0.00152  3.57465E+05 0.00096  2.70084E+05 0.00159  2.75251E+05 0.00089  2.68682E+05 0.00136  2.51456E+05 0.00135  2.11967E+05 0.00095  1.57319E+05 0.00111  6.09819E+04 0.00085 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00391E+00 0.00172 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50754E+01 0.00068  2.15683E+01 0.00153 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.38682E-01 0.00044  2.79779E+00 0.00034 ];
INF_CAPT                  (idx, [1:   4]) = [  3.68821E-03 0.00160  2.29628E-02 0.00058 ];
INF_ABS                   (idx, [1:   4]) = [  5.07295E-03 0.00115  4.02347E-02 0.00150 ];
INF_FISS                  (idx, [1:   4]) = [  1.38474E-03 0.00085  1.72720E-02 0.00272 ];
INF_NSF                   (idx, [1:   4]) = [  3.59560E-03 0.00101  4.20866E-02 0.00272 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59659E+00 0.00020  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04270E+02 2.8E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.34590E-08 0.00115  3.71762E-06 0.00010 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.33600E-01 0.00044  2.75758E+00 0.00036 ];
INF_SCATT1                (idx, [1:   4]) = [  3.93011E-01 0.00054  5.81206E-01 0.00054 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52382E-01 0.00065  1.00452E-01 0.00251 ];
INF_SCATT3                (idx, [1:   4]) = [  8.26821E-03 0.01229  2.76029E-02 0.00443 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.99219E-02 0.00236 -2.22780E-02 0.00290 ];
INF_SCATT5                (idx, [1:   4]) = [ -9.13531E-04 0.05059  1.15270E-02 0.00419 ];
INF_SCATT6                (idx, [1:   4]) = [  7.77507E-03 0.00883 -3.10685E-02 0.00344 ];
INF_SCATT7                (idx, [1:   4]) = [  6.74026E-04 0.08005  8.82317E-03 0.01103 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.33630E-01 0.00044  2.75758E+00 0.00036 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.93012E-01 0.00054  5.81206E-01 0.00054 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52382E-01 0.00065  1.00452E-01 0.00251 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.26722E-03 0.01224  2.76029E-02 0.00443 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.99222E-02 0.00237 -2.22780E-02 0.00290 ];
INF_SCATTP5               (idx, [1:   4]) = [ -9.13856E-04 0.05071  1.15270E-02 0.00419 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.77485E-03 0.00884 -3.10685E-02 0.00344 ];
INF_SCATTP7               (idx, [1:   4]) = [  6.74329E-04 0.07982  8.82317E-03 0.01103 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29590E-01 0.00081  1.87561E+00 0.00034 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45187E+00 0.00082  1.77720E-01 0.00034 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.04299E-03 0.00124  4.02347E-02 0.00150 ];
INF_REMXS                 (idx, [1:   4]) = [  3.98811E-02 0.00061  4.03697E-02 0.00114 ];

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

INF_S0                    (idx, [1:   8]) = [  6.98801E-01 0.00044  3.47990E-02 0.00079  1.57257E-04 0.01787  2.75742E+00 0.00036 ];
INF_S1                    (idx, [1:   8]) = [  3.82391E-01 0.00050  1.06209E-02 0.00265  9.52786E-05 0.02875  5.81111E-01 0.00054 ];
INF_S2                    (idx, [1:   8]) = [  1.55831E-01 0.00061 -3.44887E-03 0.00479  6.04520E-05 0.01923  1.00392E-01 0.00251 ];
INF_S3                    (idx, [1:   8]) = [  1.23852E-02 0.00749 -4.11696E-03 0.00409  3.23258E-05 0.03036  2.75706E-02 0.00445 ];
INF_S4                    (idx, [1:   8]) = [ -1.88667E-02 0.00239 -1.05519E-03 0.01044  1.01201E-05 0.16330 -2.22881E-02 0.00285 ];
INF_S5                    (idx, [1:   8]) = [ -1.27342E-03 0.03938  3.59893E-04 0.02274 -2.60087E-06 0.33557  1.15296E-02 0.00420 ];
INF_S6                    (idx, [1:   8]) = [  8.05712E-03 0.00774 -2.82051E-04 0.04180 -7.98347E-06 0.05184 -3.10605E-02 0.00345 ];
INF_S7                    (idx, [1:   8]) = [  1.21013E-03 0.03782 -5.36106E-04 0.01675 -9.94129E-06 0.06823  8.83311E-03 0.01108 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.98831E-01 0.00044  3.47990E-02 0.00079  1.57257E-04 0.01787  2.75742E+00 0.00036 ];
INF_SP1                   (idx, [1:   8]) = [  3.82391E-01 0.00050  1.06209E-02 0.00265  9.52786E-05 0.02875  5.81111E-01 0.00054 ];
INF_SP2                   (idx, [1:   8]) = [  1.55831E-01 0.00061 -3.44887E-03 0.00479  6.04520E-05 0.01923  1.00392E-01 0.00251 ];
INF_SP3                   (idx, [1:   8]) = [  1.23842E-02 0.00746 -4.11696E-03 0.00409  3.23258E-05 0.03036  2.75706E-02 0.00445 ];
INF_SP4                   (idx, [1:   8]) = [ -1.88670E-02 0.00239 -1.05519E-03 0.01044  1.01201E-05 0.16330 -2.22881E-02 0.00285 ];
INF_SP5                   (idx, [1:   8]) = [ -1.27375E-03 0.03947  3.59893E-04 0.02274 -2.60087E-06 0.33557  1.15296E-02 0.00420 ];
INF_SP6                   (idx, [1:   8]) = [  8.05691E-03 0.00774 -2.82051E-04 0.04180 -7.98347E-06 0.05184 -3.10605E-02 0.00345 ];
INF_SP7                   (idx, [1:   8]) = [  1.21043E-03 0.03769 -5.36106E-04 0.01675 -9.94129E-06 0.06823  8.83311E-03 0.01108 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62511E-01 0.00101  1.74438E+00 0.00222 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61443E-01 0.00249  1.75254E+00 0.00389 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64002E-01 0.00139  1.79392E+00 0.00369 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62107E-01 0.00111  1.69005E+00 0.00442 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26980E+00 0.00102  1.91094E-01 0.00222 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27501E+00 0.00248  1.90211E-01 0.00386 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26263E+00 0.00139  1.85822E-01 0.00368 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27175E+00 0.00111  1.97249E-01 0.00440 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.44960E-03 0.01529  2.33577E-04 0.09817  1.13810E-03 0.04742  1.24614E-03 0.04276  3.47424E-03 0.02634  9.84055E-04 0.04364  3.73480E-04 0.07375 ];
LAMBDA                    (idx, [1:  14]) = [  7.91481E-01 0.03807  1.24907E-02 4.2E-06  3.17354E-02 0.00054  1.09955E-01 0.00081  3.19045E-01 0.00059  1.34803E+00 0.00046  8.81041E+00 0.00388 ];

