
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-005' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_005' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_005/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0026.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:34:10 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:34:39 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275250080 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.01256E+00  9.92147E-01  1.00193E+00  1.00076E+00  1.00629E+00  9.94227E-01  1.00918E+00  1.00108E+00  1.00172E+00  1.00694E+00  1.00313E+00  9.92854E-01  1.00525E+00  9.90921E-01  9.90174E-01  9.96666E-01  1.00758E+00  9.87628E-01  1.00013E+00  9.98826E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.36947E-02 0.00164  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76305E-01 4.0E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.91653E-01 0.00017  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.91791E-01 0.00017  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07748E+00 0.00060  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.91060E+01 0.00132  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.91010E+01 0.00132  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.59665E+00 0.00095  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.04154E+00 0.00137  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000112 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00202 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00202 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.51667E+00 ;
RUNNING_TIME              (idx, 1)        =  4.87250E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  4.72167E-02  4.72167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.11667E-03  1.11667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.38883E-01  4.38883E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.82933E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.47905 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95313E+01 0.00637 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.59894E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
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

NORM_COEF                 (idx, [1:   4]) = [  9.99364E-05 0.00087  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.14058E-01 0.00312 ];
U235_FISS                 (idx, [1:   4]) = [  3.92392E-01 0.00148  9.64497E-01 0.00028 ];
U238_FISS                 (idx, [1:   4]) = [  1.44250E-02 0.00782  3.54558E-02 0.00766 ];
U235_CAPT                 (idx, [1:   4]) = [  7.25972E-02 0.00337  1.23405E-01 0.00308 ];
U238_CAPT                 (idx, [1:   4]) = [  1.45368E-01 0.00284  2.47114E-01 0.00264 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000112 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.33336E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000112 1.00073E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 588309 5.88646E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 406813 4.07098E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 4990 4.98866E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000112 1.00073E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -5.82077E-10 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32043E-11 0.00087 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.99680E-20 0.00087 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97482E-01 0.00087 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07111E-01 0.00087 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87903E-01 0.00061 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.95014E-01 7.1E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99364E-01 0.00087 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.67034E+01 0.00069 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  4.98552E-03 0.01418 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.90940E+01 0.00103 ];
INI_FMASS                 (idx, 1)        =  6.61274E+02 ;
TOT_FMASS                 (idx, 1)        =  6.61274E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77984E+00 0.00079 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.86628E-01 0.00096 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.75486E-01 0.00040 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09676E+00 0.00048 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96806E-01 5.4E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98199E-01 4.7E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00253E+00 0.00124 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.97530E-01 0.00124 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45015E+00 1.9E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02438E+02 2.1E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.97101E-01 0.00134  9.90217E-01 0.00123  7.31361E-03 0.01681 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98229E-01 0.00087 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98189E-01 0.00120 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98229E-01 0.00087 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00323E+00 0.00087 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91527E+01 0.00029 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91507E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.63417E-08 0.00563 ];
IMP_EALF                  (idx, [1:   2]) = [  9.64066E-08 0.00227 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.20465E-01 0.00905 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19019E-01 0.00312 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.81931E-03 0.01172  2.13273E-04 0.07144  1.06267E-03 0.02897  1.06430E-03 0.03525  3.13377E-03 0.01649  9.92068E-04 0.03388  3.53228E-04 0.05463 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.21962E-01 0.03039  1.11167E-02 0.03533  3.17100E-02 0.00049  1.09875E-01 0.00049  3.19228E-01 0.00043  1.34882E+00 0.00033  8.61118E+00 0.01470 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.38975E-03 0.01835  2.37005E-04 0.09356  1.17370E-03 0.04111  1.10178E-03 0.05184  3.41337E-03 0.02566  1.07872E-03 0.04714  3.85176E-04 0.08161 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.17180E-01 0.04256  1.24907E-02 5.2E-06  3.17275E-02 0.00067  1.09948E-01 0.00075  3.19004E-01 0.00054  1.34930E+00 0.00045  8.75614E+00 0.00355 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.82407E-05 0.00304  5.82231E-05 0.00303  6.04418E-05 0.02443 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.80591E-05 0.00255  5.80415E-05 0.00255  6.02619E-05 0.02437 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.31192E-03 0.01752  2.30612E-04 0.10859  1.11085E-03 0.04368  1.10677E-03 0.05174  3.47481E-03 0.02699  1.02188E-03 0.05637  3.66995E-04 0.08712 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.01489E-01 0.04661  1.24906E-02 5.3E-06  3.17012E-02 0.00079  1.09861E-01 0.00077  3.19284E-01 0.00069  1.34997E+00 0.00042  8.74423E+00 0.00403 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.73088E-05 0.00630  5.72184E-05 0.00617  6.31336E-05 0.06390 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.71283E-05 0.00603  5.70390E-05 0.00591  6.28646E-05 0.06347 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.60814E-03 0.06653  1.58899E-04 0.40919  1.17794E-03 0.16253  1.26172E-03 0.15704  3.68401E-03 0.08828  8.95935E-04 0.23974  4.29647E-04 0.31857 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.66187E-01 0.17343  1.24906E-02 3.9E-09  3.17068E-02 0.00168  1.09902E-01 0.00214  3.18879E-01 0.00151  1.34902E+00 0.00127  8.77771E+00 0.01106 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.48867E-03 0.06549  1.47017E-04 0.38109  1.13593E-03 0.15934  1.21092E-03 0.14682  3.64157E-03 0.08785  9.16546E-04 0.23512  4.36687E-04 0.31134 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.82408E-01 0.17116  1.24906E-02 6.8E-09  3.17065E-02 0.00167  1.09892E-01 0.00212  3.19020E-01 0.00159  1.34902E+00 0.00127  8.77771E+00 0.01106 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.33793E+02 0.06779 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.75786E-05 0.00163 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.74011E-05 0.00087 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.27644E-03 0.01242 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.26349E+02 0.01208 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.76190E-06 0.00091 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74186E-06 0.00085  1.74144E-06 0.00087  1.80261E-06 0.01022 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.24989E-05 0.00155  9.25798E-05 0.00156  8.08579E-05 0.01580 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.72964E-01 0.00041  8.72908E-01 0.00043  8.92212E-01 0.01543 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.00820E+01 0.02881 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.91010E+01 0.00132  5.92475E+01 0.00161 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.92649E+04 0.00828  2.32325E+05 0.00399  4.63200E+05 0.00302  4.80962E+05 0.00187  4.17422E+05 0.00149  4.00672E+05 0.00110  2.72804E+05 0.00069  2.30535E+05 0.00125  1.76730E+05 0.00116  1.44268E+05 0.00107  1.25079E+05 0.00063  1.11853E+05 0.00147  1.04004E+05 0.00217  9.91154E+04 0.00180  9.67878E+04 0.00218  8.40078E+04 0.00075  8.39414E+04 0.00216  8.31413E+04 0.00204  8.22056E+04 0.00251  1.62945E+05 0.00174  1.60705E+05 0.00070  1.18798E+05 0.00230  7.87201E+04 0.00202  9.34459E+04 0.00083  9.12279E+04 0.00164  8.11753E+04 0.00278  1.44760E+05 0.00142  3.20905E+04 0.00615  4.02420E+04 0.00329  3.64518E+04 0.00373  2.12951E+04 0.00281  3.68031E+04 0.00355  2.52161E+04 0.00162  2.14228E+04 0.00384  4.16771E+03 0.01200  4.15358E+03 0.00538  4.21755E+03 0.00786  4.24373E+03 0.01158  4.32186E+03 0.00764  4.18851E+03 0.00658  4.33110E+03 0.00847  4.15094E+03 0.00743  7.78946E+03 0.00416  1.22384E+04 0.00682  1.57026E+04 0.00561  4.12374E+04 0.00284  4.23914E+04 0.00197  4.35350E+04 0.00435  2.64580E+04 0.00690  1.79041E+04 0.00374  1.29870E+04 0.00529  1.41792E+04 0.00463  2.45229E+04 0.00297  3.12754E+04 0.00391  6.50886E+04 0.00310  1.35070E+05 0.00168  3.51807E+05 0.00147  3.69840E+05 0.00154  3.41026E+05 0.00160  3.06588E+05 0.00175  3.22235E+05 0.00182  3.72465E+05 0.00102  3.59974E+05 0.00185  2.71805E+05 0.00114  2.77329E+05 0.00198  2.70138E+05 0.00156  2.52883E+05 0.00195  2.13360E+05 0.00219  1.58535E+05 0.00163  6.12660E+04 0.00230 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00321E+00 0.00137 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50059E+01 0.00143  2.16994E+01 0.00122 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.40834E-01 0.00032  2.79151E+00 0.00043 ];
INF_CAPT                  (idx, [1:   4]) = [  3.61434E-03 0.00305  2.29301E-02 0.00036 ];
INF_ABS                   (idx, [1:   4]) = [  4.97298E-03 0.00230  4.01272E-02 0.00114 ];
INF_FISS                  (idx, [1:   4]) = [  1.35864E-03 0.00145  1.71972E-02 0.00223 ];
INF_NSF                   (idx, [1:   4]) = [  3.52952E-03 0.00135  4.19043E-02 0.00223 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59784E+00 0.00017  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04280E+02 2.1E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.36059E-08 0.00041  3.71916E-06 0.00024 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.35854E-01 0.00032  2.75140E+00 0.00045 ];
INF_SCATT1                (idx, [1:   4]) = [  3.94617E-01 0.00029  5.81830E-01 0.00033 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52992E-01 0.00028  1.01697E-01 0.00252 ];
INF_SCATT3                (idx, [1:   4]) = [  8.09947E-03 0.00697  2.82334E-02 0.00471 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.01190E-02 0.00133 -2.18929E-02 0.00670 ];
INF_SCATT5                (idx, [1:   4]) = [ -1.00777E-03 0.06280  1.17582E-02 0.00357 ];
INF_SCATT6                (idx, [1:   4]) = [  7.69369E-03 0.00752 -3.07019E-02 0.00207 ];
INF_SCATT7                (idx, [1:   4]) = [  6.97087E-04 0.07186  8.80928E-03 0.00478 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.35883E-01 0.00032  2.75140E+00 0.00045 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.94618E-01 0.00029  5.81830E-01 0.00033 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52992E-01 0.00028  1.01697E-01 0.00252 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.09936E-03 0.00694  2.82334E-02 0.00471 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.01192E-02 0.00133 -2.18929E-02 0.00670 ];
INF_SCATTP5               (idx, [1:   4]) = [ -1.00759E-03 0.06283  1.17582E-02 0.00357 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.69374E-03 0.00752 -3.07019E-02 0.00207 ];
INF_SCATTP7               (idx, [1:   4]) = [  6.96423E-04 0.07168  8.80928E-03 0.00478 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29851E-01 0.00084  1.87247E+00 0.00058 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45022E+00 0.00084  1.78018E-01 0.00058 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.94367E-03 0.00239  4.01272E-02 0.00114 ];
INF_REMXS                 (idx, [1:   4]) = [  4.00046E-02 0.00055  4.02790E-02 0.00138 ];

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

INF_S0                    (idx, [1:   8]) = [  7.00829E-01 0.00031  3.50247E-02 0.00054  1.59607E-04 0.01090  2.75124E+00 0.00044 ];
INF_S1                    (idx, [1:   8]) = [  3.83953E-01 0.00029  1.06643E-02 0.00199  9.85134E-05 0.02232  5.81731E-01 0.00033 ];
INF_S2                    (idx, [1:   8]) = [  1.56463E-01 0.00030 -3.47085E-03 0.00445  6.36324E-05 0.02211  1.01634E-01 0.00252 ];
INF_S3                    (idx, [1:   8]) = [  1.22484E-02 0.00454 -4.14895E-03 0.00292  3.46435E-05 0.02933  2.81987E-02 0.00472 ];
INF_S4                    (idx, [1:   8]) = [ -1.90588E-02 0.00188 -1.06023E-03 0.01308  1.10970E-05 0.10162 -2.19040E-02 0.00671 ];
INF_S5                    (idx, [1:   8]) = [ -1.37700E-03 0.03257  3.69232E-04 0.05360 -1.58008E-06 0.44558  1.17597E-02 0.00359 ];
INF_S6                    (idx, [1:   8]) = [  7.98842E-03 0.00690 -2.94736E-04 0.04117 -8.08352E-06 0.09725 -3.06938E-02 0.00209 ];
INF_S7                    (idx, [1:   8]) = [  1.24705E-03 0.03809 -5.49965E-04 0.01337 -9.82160E-06 0.08087  8.81911E-03 0.00475 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.00859E-01 0.00031  3.50247E-02 0.00054  1.59607E-04 0.01090  2.75124E+00 0.00044 ];
INF_SP1                   (idx, [1:   8]) = [  3.83954E-01 0.00029  1.06643E-02 0.00199  9.85134E-05 0.02232  5.81731E-01 0.00033 ];
INF_SP2                   (idx, [1:   8]) = [  1.56463E-01 0.00030 -3.47085E-03 0.00445  6.36324E-05 0.02211  1.01634E-01 0.00252 ];
INF_SP3                   (idx, [1:   8]) = [  1.22483E-02 0.00452 -4.14895E-03 0.00292  3.46435E-05 0.02933  2.81987E-02 0.00472 ];
INF_SP4                   (idx, [1:   8]) = [ -1.90590E-02 0.00188 -1.06023E-03 0.01308  1.10970E-05 0.10162 -2.19040E-02 0.00671 ];
INF_SP5                   (idx, [1:   8]) = [ -1.37682E-03 0.03255  3.69232E-04 0.05360 -1.58008E-06 0.44558  1.17597E-02 0.00359 ];
INF_SP6                   (idx, [1:   8]) = [  7.98848E-03 0.00690 -2.94736E-04 0.04117 -8.08352E-06 0.09725 -3.06938E-02 0.00209 ];
INF_SP7                   (idx, [1:   8]) = [  1.24639E-03 0.03800 -5.49965E-04 0.01337 -9.82160E-06 0.08087  8.81911E-03 0.00475 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62982E-01 0.00085  1.74861E+00 0.00299 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61256E-01 0.00214  1.72406E+00 0.00459 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64579E-01 0.00076  1.80607E+00 0.00785 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.63136E-01 0.00081  1.71889E+00 0.00451 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26752E+00 0.00085  1.90635E-01 0.00298 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27591E+00 0.00213  1.93358E-01 0.00459 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25987E+00 0.00076  1.84608E-01 0.00781 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26677E+00 0.00081  1.93939E-01 0.00450 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.38975E-03 0.01835  2.37005E-04 0.09356  1.17370E-03 0.04111  1.10178E-03 0.05184  3.41337E-03 0.02566  1.07872E-03 0.04714  3.85176E-04 0.08161 ];
LAMBDA                    (idx, [1:  14]) = [  8.17180E-01 0.04256  1.24907E-02 5.2E-06  3.17275E-02 0.00067  1.09948E-01 0.00075  3.19004E-01 0.00054  1.34930E+00 0.00045  8.75614E+00 0.00355 ];

