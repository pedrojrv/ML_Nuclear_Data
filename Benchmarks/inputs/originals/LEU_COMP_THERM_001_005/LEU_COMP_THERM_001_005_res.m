
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
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_005/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0010.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:42:10 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:42:39 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176930789 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.88047E-01  9.89140E-01  1.00872E+00  9.93979E-01  9.85074E-01  1.00442E+00  1.01346E+00  9.99685E-01  1.00974E+00  9.88447E-01  1.01010E+00  9.86914E-01  1.01941E+00  1.01580E+00  1.01032E+00  9.83368E-01  1.00978E+00  9.89940E-01  1.00602E+00  9.87647E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.36939E-02 0.00178  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76306E-01 4.3E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.94349E-01 0.00021  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.94484E-01 0.00021  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07119E+00 0.00060  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.92017E+01 0.00146  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.91965E+01 0.00146  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.34041E+00 0.00108  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03775E+00 0.00128  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000332 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00033E+04 0.00189 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00033E+04 0.00189 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.45917E+00 ;
RUNNING_TIME              (idx, 1)        =  4.82867E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  4.82000E-02  4.82000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.05000E-03  1.05000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.33583E-01  4.33583E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.78833E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.51864 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95447E+01 0.00486 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.62522E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.00001E-04 0.00083  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.13660E-01 0.00280 ];
U235_FISS                 (idx, [1:   4]) = [  3.91771E-01 0.00136  9.64430E-01 0.00030 ];
U238_FISS                 (idx, [1:   4]) = [  1.44304E-02 0.00824  3.55232E-02 0.00811 ];
U235_CAPT                 (idx, [1:   4]) = [  7.31206E-02 0.00384  1.24065E-01 0.00359 ];
U238_CAPT                 (idx, [1:   4]) = [  1.45141E-01 0.00261  2.46272E-01 0.00239 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000332 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.12983E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000332 1.00071E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 589150 5.89354E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 406050 4.06226E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5132 5.13297E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000332 1.00071E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 1.36206E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32002E-11 0.00098 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.99618E-20 0.00098 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97168E-01 0.00098 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.06985E-01 0.00098 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87881E-01 0.00066 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94867E-01 6.9E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.00001E+00 0.00083 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66485E+01 0.00067 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.13308E-03 0.01342 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.92398E+01 0.00117 ];
INI_FMASS                 (idx, 1)        =  6.61274E+02 ;
TOT_FMASS                 (idx, 1)        =  6.61274E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77814E+00 0.00082 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.85803E-01 0.00100 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.75190E-01 0.00039 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09750E+00 0.00047 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96726E-01 5.9E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98135E-01 4.6E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00049E+00 0.00121 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.95353E-01 0.00123 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45013E+00 1.9E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02438E+02 1.9E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.95057E-01 0.00129  9.87913E-01 0.00122  7.44045E-03 0.01912 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.97902E-01 0.00098 ];
COL_KEFF                  (idx, [1:   2]) = [  9.97222E-01 0.00124 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.97902E-01 0.00098 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00305E+00 0.00096 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91479E+01 0.00030 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91514E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.68120E-08 0.00582 ];
IMP_EALF                  (idx, [1:   2]) = [  9.63341E-08 0.00222 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.19759E-01 0.00926 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.18885E-01 0.00307 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.96382E-03 0.01393  2.07962E-04 0.06892  1.14324E-03 0.02792  1.10519E-03 0.03046  3.19478E-03 0.01993  9.99690E-04 0.03125  3.12958E-04 0.06217 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.57658E-01 0.03194  1.11167E-02 0.03533  3.17243E-02 0.00036  1.09861E-01 0.00051  3.19111E-01 0.00034  1.34898E+00 0.00030  8.32205E+00 0.02322 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.65584E-03 0.01765  2.08875E-04 0.10186  1.23557E-03 0.04169  1.18757E-03 0.04411  3.52658E-03 0.02821  1.15660E-03 0.04783  3.40646E-04 0.08129 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.56270E-01 0.04147  1.24907E-02 5.3E-06  3.17202E-02 0.00058  1.09929E-01 0.00076  3.19050E-01 0.00058  1.34833E+00 0.00047  8.75970E+00 0.00317 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.79002E-05 0.00256  5.78956E-05 0.00257  5.88692E-05 0.02796 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.76039E-05 0.00216  5.75996E-05 0.00219  5.85323E-05 0.02758 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.46807E-03 0.01959  2.58372E-04 0.10231  1.22164E-03 0.04153  1.20686E-03 0.04368  3.36884E-03 0.02919  1.08477E-03 0.04615  3.27595E-04 0.08917 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.52052E-01 0.04444  1.24906E-02 3.2E-06  3.17537E-02 0.00047  1.09993E-01 0.00089  3.18901E-01 0.00057  1.34941E+00 0.00043  8.79626E+00 0.00450 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.65900E-05 0.00656  5.65972E-05 0.00657  5.11679E-05 0.06835 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.63080E-05 0.00662  5.63150E-05 0.00663  5.09402E-05 0.06865 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.77934E-03 0.05991  3.50875E-04 0.31708  1.09137E-03 0.16470  1.36499E-03 0.14038  3.51047E-03 0.09557  1.04548E-03 0.15333  4.16162E-04 0.28221 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.58280E-01 0.13994  1.24906E-02 0.0E+00  3.17950E-02 0.00091  1.09709E-01 0.00162  3.19144E-01 0.00186  1.34990E+00 0.00101  8.90256E+00 0.01317 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.95245E-03 0.05883  3.32860E-04 0.30611  1.12808E-03 0.15279  1.41044E-03 0.13581  3.52523E-03 0.09173  1.13102E-03 0.14634  4.24818E-04 0.27539 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.64621E-01 0.12930  1.24906E-02 0.0E+00  3.17950E-02 0.00091  1.09716E-01 0.00163  3.18968E-01 0.00179  1.34981E+00 0.00102  8.90491E+00 0.01316 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.38119E+02 0.06028 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.72385E-05 0.00178 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.69463E-05 0.00124 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.67827E-03 0.01291 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.34256E+02 0.01342 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.76248E-06 0.00097 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.73753E-06 0.00088  1.73695E-06 0.00087  1.82058E-06 0.00918 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.24082E-05 0.00160  9.24919E-05 0.00159  8.03909E-05 0.01776 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.72583E-01 0.00040  8.72510E-01 0.00041  8.97650E-01 0.01836 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07159E+01 0.02427 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.91965E+01 0.00146  5.90835E+01 0.00137 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.85832E+04 0.00775  2.32312E+05 0.00295  4.61580E+05 0.00120  4.79478E+05 0.00059  4.15861E+05 0.00082  3.99224E+05 0.00090  2.72235E+05 0.00069  2.30171E+05 0.00136  1.76157E+05 0.00122  1.43906E+05 0.00224  1.24781E+05 0.00258  1.11686E+05 0.00144  1.04276E+05 0.00118  9.92737E+04 0.00193  9.68756E+04 0.00176  8.39581E+04 0.00178  8.39198E+04 0.00255  8.30467E+04 0.00279  8.25848E+04 0.00259  1.62936E+05 0.00139  1.60986E+05 0.00128  1.18944E+05 0.00086  7.82419E+04 0.00193  9.32983E+04 0.00258  9.10349E+04 0.00056  8.15021E+04 0.00151  1.44578E+05 0.00163  3.21371E+04 0.00080  4.02355E+04 0.00226  3.61660E+04 0.00472  2.13574E+04 0.00221  3.68278E+04 0.00490  2.49601E+04 0.00381  2.14551E+04 0.00505  4.13595E+03 0.00720  4.10753E+03 0.00843  4.25978E+03 0.00624  4.29042E+03 0.01286  4.27910E+03 0.01168  4.22159E+03 0.00735  4.36577E+03 0.00822  4.14805E+03 0.00224  7.67045E+03 0.00661  1.22297E+04 0.00299  1.56220E+04 0.00178  4.08706E+04 0.00229  4.27048E+04 0.00193  4.34610E+04 0.00254  2.63504E+04 0.00327  1.77703E+04 0.00320  1.30056E+04 0.00643  1.43590E+04 0.00296  2.48484E+04 0.00326  3.10243E+04 0.00444  6.49508E+04 0.00227  1.34618E+05 0.00242  3.50043E+05 0.00171  3.69416E+05 0.00193  3.40774E+05 0.00187  3.05813E+05 0.00247  3.21825E+05 0.00238  3.70874E+05 0.00266  3.59085E+05 0.00244  2.71484E+05 0.00326  2.77019E+05 0.00147  2.69812E+05 0.00200  2.53254E+05 0.00184  2.13373E+05 0.00209  1.58115E+05 0.00209  6.12727E+04 0.00349 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00239E+00 0.00142 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.49741E+01 0.00044  2.16764E+01 0.00197 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.41554E-01 0.00026  2.80146E+00 0.00044 ];
INF_CAPT                  (idx, [1:   4]) = [  3.61484E-03 0.00249  2.29580E-02 0.00060 ];
INF_ABS                   (idx, [1:   4]) = [  4.97572E-03 0.00189  4.01672E-02 0.00177 ];
INF_FISS                  (idx, [1:   4]) = [  1.36088E-03 0.00045  1.72092E-02 0.00334 ];
INF_NSF                   (idx, [1:   4]) = [  3.53496E-03 0.00048  4.19336E-02 0.00334 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59756E+00 0.00023  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04277E+02 1.6E-05  2.02270E+02 5.9E-09 ];
INF_INVV                  (idx, [1:   4]) = [  6.35841E-08 0.00044  3.72006E-06 0.00014 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.36554E-01 0.00026  2.76129E+00 0.00047 ];
INF_SCATT1                (idx, [1:   4]) = [  3.95131E-01 0.00042  5.82151E-01 0.00034 ];
INF_SCATT2                (idx, [1:   4]) = [  1.53339E-01 0.00039  1.00659E-01 0.00181 ];
INF_SCATT3                (idx, [1:   4]) = [  8.30346E-03 0.00757  2.75450E-02 0.00372 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.99700E-02 0.00450 -2.23994E-02 0.00522 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.51655E-04 0.07831  1.18506E-02 0.00567 ];
INF_SCATT6                (idx, [1:   4]) = [  7.91947E-03 0.00708 -3.11093E-02 0.00588 ];
INF_SCATT7                (idx, [1:   4]) = [  7.96138E-04 0.08861  8.71240E-03 0.00798 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.36583E-01 0.00026  2.76129E+00 0.00047 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.95132E-01 0.00043  5.82151E-01 0.00034 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.53339E-01 0.00039  1.00659E-01 0.00181 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.30369E-03 0.00755  2.75450E-02 0.00372 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.99702E-02 0.00449 -2.23994E-02 0.00522 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.51346E-04 0.07833  1.18506E-02 0.00567 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.91907E-03 0.00708 -3.11093E-02 0.00588 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.96525E-04 0.08870  8.71240E-03 0.00798 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29792E-01 0.00077  1.87947E+00 0.00054 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45059E+00 0.00077  1.77355E-01 0.00054 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.94717E-03 0.00188  4.01672E-02 0.00177 ];
INF_REMXS                 (idx, [1:   4]) = [  4.00774E-02 0.00041  4.03287E-02 0.00198 ];

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

INF_S0                    (idx, [1:   8]) = [  7.01476E-01 0.00025  3.50775E-02 0.00048  1.59840E-04 0.01705  2.76113E+00 0.00047 ];
INF_S1                    (idx, [1:   8]) = [  3.84463E-01 0.00040  1.06683E-02 0.00157  1.00324E-04 0.02188  5.82050E-01 0.00034 ];
INF_S2                    (idx, [1:   8]) = [  1.56817E-01 0.00037 -3.47813E-03 0.00319  6.43574E-05 0.03608  1.00594E-01 0.00181 ];
INF_S3                    (idx, [1:   8]) = [  1.24350E-02 0.00408 -4.13153E-03 0.00310  3.28819E-05 0.04704  2.75121E-02 0.00376 ];
INF_S4                    (idx, [1:   8]) = [ -1.89324E-02 0.00420 -1.03764E-03 0.01224  1.08781E-05 0.09772 -2.24103E-02 0.00522 ];
INF_S5                    (idx, [1:   8]) = [ -1.22078E-03 0.05863  3.69122E-04 0.02024 -1.62979E-06 0.28653  1.18522E-02 0.00567 ];
INF_S6                    (idx, [1:   8]) = [  8.21307E-03 0.00719 -2.93597E-04 0.02638 -8.32073E-06 0.08493 -3.11010E-02 0.00587 ];
INF_S7                    (idx, [1:   8]) = [  1.35070E-03 0.05033 -5.54566E-04 0.00981 -9.85311E-06 0.09267  8.72225E-03 0.00788 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.01505E-01 0.00025  3.50775E-02 0.00048  1.59840E-04 0.01705  2.76113E+00 0.00047 ];
INF_SP1                   (idx, [1:   8]) = [  3.84464E-01 0.00040  1.06683E-02 0.00157  1.00324E-04 0.02188  5.82050E-01 0.00034 ];
INF_SP2                   (idx, [1:   8]) = [  1.56817E-01 0.00037 -3.47813E-03 0.00319  6.43574E-05 0.03608  1.00594E-01 0.00181 ];
INF_SP3                   (idx, [1:   8]) = [  1.24352E-02 0.00407 -4.13153E-03 0.00310  3.28819E-05 0.04704  2.75121E-02 0.00376 ];
INF_SP4                   (idx, [1:   8]) = [ -1.89326E-02 0.00420 -1.03764E-03 0.01224  1.08781E-05 0.09772 -2.24103E-02 0.00522 ];
INF_SP5                   (idx, [1:   8]) = [ -1.22047E-03 0.05865  3.69122E-04 0.02024 -1.62979E-06 0.28653  1.18522E-02 0.00567 ];
INF_SP6                   (idx, [1:   8]) = [  8.21267E-03 0.00719 -2.93597E-04 0.02638 -8.32073E-06 0.08493 -3.11010E-02 0.00587 ];
INF_SP7                   (idx, [1:   8]) = [  1.35109E-03 0.05039 -5.54566E-04 0.00981 -9.85311E-06 0.09267  8.72225E-03 0.00788 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62919E-01 0.00133  1.74925E+00 0.00678 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.62171E-01 0.00270  1.72255E+00 0.00650 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64865E-01 0.00189  1.81716E+00 0.00605 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.61753E-01 0.00232  1.71200E+00 0.00934 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26783E+00 0.00133  1.90593E-01 0.00678 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27147E+00 0.00270  1.93544E-01 0.00653 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25852E+00 0.00189  1.83463E-01 0.00598 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27349E+00 0.00232  1.94773E-01 0.00936 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.65584E-03 0.01765  2.08875E-04 0.10186  1.23557E-03 0.04169  1.18757E-03 0.04411  3.52658E-03 0.02821  1.15660E-03 0.04783  3.40646E-04 0.08129 ];
LAMBDA                    (idx, [1:  14]) = [  7.56270E-01 0.04147  1.24907E-02 5.3E-06  3.17202E-02 0.00058  1.09929E-01 0.00076  3.19050E-01 0.00058  1.34833E+00 0.00047  8.75970E+00 0.00317 ];

