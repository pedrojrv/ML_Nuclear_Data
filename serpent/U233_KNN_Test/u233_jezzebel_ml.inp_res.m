
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.30' ;
COMPILE_DATE              (idx, [1: 20])  = 'Sep 16 2019 19:20:11' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 20])  = 'u233_jezzebel_ml.inp' ;
WORKING_DIRECTORY         (idx, [1: 64])  = '/mnt/c/Users/Pedro/Desktop/ML_Nuclear_Data/serpent/U233_KNN_Test' ;
HOSTNAME                  (idx, [1: 15])  = 'DESKTOP-FURFLQN' ;
CPU_TYPE                  (idx, [1: 46])  = 'AMD Ryzen Threadripper 1920X 12-Core Processor' ;
CPU_MHZ                   (idx, 1)        = 4294967295.0 ;
START_DATE                (idx, [1: 24])  = 'Fri Oct 23 13:13:08 2020' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Fri Oct 23 13:13:14 2020' ;

% Run parameters:

POP                       (idx, 1)        = 5000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1603483988 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 1 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
SHARE_BUF_ARRAY           (idx, 1)        = 1 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 69])  = '/mnt/c/Users/Pedro/Documents/Serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.54539E+00 0.00048  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.14961E+00 0.00100  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.53737E+00 0.00144  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  6.12243E-01 0.00104  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SOURCE_POPULATION         (idx, 1)        = 500292 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00292E+03 0.00245 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00292E+03 0.00245 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  9.19271E-02 ;
RUNNING_TIME              (idx, 1)        =  9.61167E-02 ;
INIT_TIME                 (idx, [1:  2])  = [  1.34333E-02  1.34333E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.16667E-04  2.16667E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  8.24500E-02  8.24500E-02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  9.57667E-02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.95641 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.94045E-01 0.02049 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.91573E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 65414.45 ;
ALLOC_MEMSIZE             (idx, 1)        = 118.17;
MEMSIZE                   (idx, 1)        = 72.76;
XS_MEMSIZE                (idx, 1)        = 31.74;
MAT_MEMSIZE               (idx, 1)        = 6.95;
RES_MEMSIZE               (idx, 1)        = 1.35;
MISC_MEMSIZE              (idx, 1)        = 32.71;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 45.41;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 2 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 113709 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 4 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 189 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.99873E-04 0.00071  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  8.12186E-04 0.07106 ];
U233_FISS                 (idx, [1:   4]) = [  3.68346E-01 0.00223  9.91786E-01 0.00021 ];
U235_FISS                 (idx, [1:   4]) = [  8.24401E-05 0.15939  2.22184E-04 0.15934 ];
U238_FISS                 (idx, [1:   4]) = [  2.81390E-04 0.07851  7.58240E-04 0.07833 ];
U233_CAPT                 (idx, [1:   4]) = [  1.60768E-02 0.01113  9.80409E-01 0.00145 ];
U235_CAPT                 (idx, [1:   4]) = [  8.00578E-06 0.49245  4.82309E-04 0.49557 ];
U238_CAPT                 (idx, [1:   4]) = [  9.38605E-05 0.14032  5.68814E-03 0.14031 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 500292 5.00000E+05 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.17372E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 500292 5.00317E+05 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 8199 8.20270E+03 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 185801 1.85802E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 306292 3.06313E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 500292 5.00317E+05 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -4.13274E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.18930E-11 0.00118 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.19265E-19 0.00118 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.00011E+00 0.00117 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.71657E-01 0.00118 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.61371E-02 0.00202 ];
TOT_ABSRATE               (idx, [1:   2]) = [  3.87794E-01 0.00119 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99363E-01 0.00071 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.12811E+00 0.00117 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.12206E-01 0.00075 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.53732E+00 0.00123 ];
INI_FMASS                 (idx, 1)        =  1.65350E+01 ;
TOT_FMASS                 (idx, 1)        =  1.65350E+01 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  3.87374E-01 0.00164 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.69096E+00 0.00013 ];
FISSE                     (idx, [1:   2]) = [  1.99728E+02 7.6E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99538E-01 0.00177  9.96815E-01 0.00167  2.88699E-03 0.03581 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.00074E+00 0.00117 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00080E+00 0.00135 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.00074E+00 0.00117 ];
ABS_KINF                  (idx, [1:   2]) = [  2.58319E+00 0.00019 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  2.89203E+00 0.00082 ];
IMP_ALF                   (idx, [1:   2]) = [  2.89113E+00 0.00070 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  1.10958E+00 0.00236 ];
IMP_EALF                  (idx, [1:   2]) = [  1.11050E+00 0.00203 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.74473E+00 0.00191 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.74998E+00 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.81049E-03 0.02822  2.29714E-04 0.07527  7.84882E-04 0.05054  5.27085E-04 0.06288  1.05279E-03 0.04671  1.88220E-04 0.09697  2.78031E-05 0.26819 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  3.23904E-01 0.08744  9.60916E-03 0.05493  3.16094E-02 0.01436  9.52796E-02 0.03161  2.91489E-01 0.01011  7.82971E-01 0.07702  1.32902E+00 0.26000 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  3.12671E-03 0.03929  2.43587E-04 0.12465  9.37615E-04 0.07072  5.47293E-04 0.08568  1.19178E-03 0.05980  1.87356E-04 0.19002  1.90768E-05 0.35562 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  2.75515E-01 0.09287  1.24794E-02 3.5E-06  3.22643E-02 0.00032  1.04717E-01 0.00036  2.94537E-01 0.00058  1.24311E+00 0.00054  1.02232E+01 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.75314E-09 0.00550  2.74449E-09 0.00562  6.36845E-09 0.09503 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.75081E-09 0.00505  2.74216E-09 0.00517  6.36130E-09 0.09470 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  2.92589E-03 0.03729  2.01449E-04 0.14896  8.59898E-04 0.07773  5.43903E-04 0.09616  1.13650E-03 0.06744  1.64019E-04 0.16126  2.01228E-05 0.50382 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  2.97274E-01 0.14352  1.24794E-02 2.7E-09  3.22625E-02 0.00037  1.04684E-01 0.00027  2.94498E-01 0.00049  1.24244E+00 0.0E+00  1.02232E+01 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.70632E-09 0.01332  2.70327E-09 0.01340  2.11850E-09 0.17882 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.70444E-09 0.01332  2.70136E-09 0.01339  2.12458E-09 0.17888 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.16309E-03 0.16640  3.61731E-04 0.52223  5.51037E-04 0.31522  3.01352E-04 0.34590  8.12973E-04 0.27083  1.35992E-04 0.90149  0.00000E+00 0.0E+00 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  1.92780E-01 0.14193  1.24794E-02 0.0E+00  3.22745E-02 0.0E+00  1.04645E-01 3.9E-09  2.94501E-01 0.00118  1.24244E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.14056E-03 0.16071  3.64624E-04 0.55658  5.00001E-04 0.29861  3.09747E-04 0.35071  8.43472E-04 0.25345  1.22716E-04 0.81261  0.00000E+00 0.0E+00 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  1.99356E-01 0.14069  1.24794E-02 0.0E+00  3.22745E-02 0.0E+00  1.04645E-01 5.5E-09  2.94501E-01 0.00118  1.24244E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -7.73410E+05 0.16084 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.74365E-09 0.00287 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.74149E-09 0.00217 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.65606E-03 0.02055 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -9.69036E+05 0.02087 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  7.77960E-10 0.00136 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.96328E+01 0.04823 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.53737E+00 0.00144  2.09694E+00 0.00171 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  9.40785E+03 0.01295  4.05657E+04 0.00743  7.31443E+04 0.00263  8.35310E+04 0.00333  7.41546E+04 0.00335  5.47444E+04 0.00688  3.51831E+04 0.00556  2.05127E+04 0.01183  1.10806E+04 0.01303  5.62991E+03 0.01276  2.78019E+03 0.03052  1.28473E+03 0.03175  6.30442E+02 0.06898  2.63414E+02 0.09767  1.12058E+02 0.15644  4.39658E+01 0.10939  1.19672E+01 0.53399  6.62804E+00 0.29269  2.66664E+00 0.56714  1.08148E+00 0.43615  2.79655E-01 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  2.58355E+00 0.00114 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.12828E+00 0.00067  0.00000E+00 0.0E+00 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.72405E-01 0.00042  0.00000E+00 0.0E+00 ];
INF_CAPT                  (idx, [1:   4]) = [  3.90921E-03 0.00234  0.00000E+00 0.0E+00 ];
INF_ABS                   (idx, [1:   4]) = [  9.39404E-02 0.00039  0.00000E+00 0.0E+00 ];
INF_FISS                  (idx, [1:   4]) = [  9.00312E-02 0.00030  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   4]) = [  2.42270E-01 0.00019  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.69095E+00 0.00013  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  1.99728E+02 7.0E-08  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  7.77979E-10 0.00194  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.78477E-01 0.00068  0.00000E+00 0.0E+00 ];
INF_SCATT1                (idx, [1:   4]) = [  1.17064E-01 0.00154  0.00000E+00 0.0E+00 ];
INF_SCATT2                (idx, [1:   4]) = [  7.31572E-02 0.00166  0.00000E+00 0.0E+00 ];
INF_SCATT3                (idx, [1:   4]) = [  5.32435E-02 0.00209  0.00000E+00 0.0E+00 ];
INF_SCATT4                (idx, [1:   4]) = [  3.69093E-02 0.00082  0.00000E+00 0.0E+00 ];
INF_SCATT5                (idx, [1:   4]) = [  2.00522E-02 0.00415  0.00000E+00 0.0E+00 ];
INF_SCATT6                (idx, [1:   4]) = [  1.02898E-02 0.01249  0.00000E+00 0.0E+00 ];
INF_SCATT7                (idx, [1:   4]) = [  4.57364E-03 0.01546  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.78630E-01 0.00071  0.00000E+00 0.0E+00 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.17064E-01 0.00155  0.00000E+00 0.0E+00 ];
INF_SCATTP2               (idx, [1:   4]) = [  7.31533E-02 0.00164  0.00000E+00 0.0E+00 ];
INF_SCATTP3               (idx, [1:   4]) = [  5.32457E-02 0.00215  0.00000E+00 0.0E+00 ];
INF_SCATTP4               (idx, [1:   4]) = [  3.69132E-02 0.00080  0.00000E+00 0.0E+00 ];
INF_SCATTP5               (idx, [1:   4]) = [  2.00510E-02 0.00408  0.00000E+00 0.0E+00 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.02893E-02 0.01252  0.00000E+00 0.0E+00 ];
INF_SCATTP7               (idx, [1:   4]) = [  4.57290E-03 0.01516  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.37809E-01 0.00079  0.00000E+00 0.0E+00 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.40169E+00 0.00079  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  9.37867E-02 0.00030  0.00000E+00 0.0E+00 ];
INF_REMXS                 (idx, [1:   4]) = [  9.39281E-02 0.00096  0.00000E+00 0.0E+00 ];

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

INF_S0                    (idx, [1:   8]) = [  2.78477E-01 0.00068  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S1                    (idx, [1:   8]) = [  1.17064E-01 0.00154  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S2                    (idx, [1:   8]) = [  7.31572E-02 0.00166  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S3                    (idx, [1:   8]) = [  5.32435E-02 0.00209  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S4                    (idx, [1:   8]) = [  3.69093E-02 0.00082  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S5                    (idx, [1:   8]) = [  2.00522E-02 0.00415  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S6                    (idx, [1:   8]) = [  1.02898E-02 0.01249  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S7                    (idx, [1:   8]) = [  4.57364E-03 0.01546  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.78630E-01 0.00071  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP1                   (idx, [1:   8]) = [  1.17064E-01 0.00155  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP2                   (idx, [1:   8]) = [  7.31533E-02 0.00164  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP3                   (idx, [1:   8]) = [  5.32457E-02 0.00215  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP4                   (idx, [1:   8]) = [  3.69132E-02 0.00080  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP5                   (idx, [1:   8]) = [  2.00510E-02 0.00408  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP6                   (idx, [1:   8]) = [  1.02893E-02 0.01252  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP7                   (idx, [1:   8]) = [  4.57290E-03 0.01516  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  1.93304E+00 0.00184  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.93505E+00 0.00699  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.93880E+00 0.00391  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.92584E+00 0.00351  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.72442E-01 0.00183  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.72295E-01 0.00701  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.71938E-01 0.00392  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.73093E-01 0.00350  0.00000E+00 0.0E+00 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  3.12671E-03 0.03929  2.43587E-04 0.12465  9.37615E-04 0.07072  5.47293E-04 0.08568  1.19178E-03 0.05980  1.87356E-04 0.19002  1.90768E-05 0.35562 ];
LAMBDA                    (idx, [1:  14]) = [  2.75515E-01 0.09287  1.24794E-02 3.5E-06  3.22643E-02 0.00032  1.04717E-01 0.00036  2.94537E-01 0.00058  1.24311E+00 0.00054  1.02232E+01 0.0E+00 ];

