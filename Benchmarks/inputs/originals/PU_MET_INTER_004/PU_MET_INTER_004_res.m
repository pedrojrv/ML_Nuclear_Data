
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
TITLE                     (idx, [1: 16])  = 'PU-MET-INTER-004' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 16])  = 'PU_MET_INTER_004' ;
WORKING_DIRECTORY         (idx, [1: 83])  = '/global/home/users/christforsyth/ML_neutronics/PU_MET_INTER_004/graphite_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0011.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:46:51 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:47:17 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622177211370 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.94732E-01  9.91174E-01  1.01838E+00  9.85819E-01  9.90948E-01  1.00440E+00  1.01745E+00  1.00093E+00  1.01618E+00  9.92440E-01  1.00855E+00  9.89029E-01  1.01393E+00  9.85699E-01  1.01402E+00  9.82981E-01  1.00700E+00  9.89189E-01  1.01210E+00  9.85046E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.13861E-02 0.00215  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.78614E-01 4.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.03837E-01 0.00023  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.97783E-01 0.00023  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.91694E+00 0.00100  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  6.37663E+01 0.00093  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  6.33155E+01 0.00094  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.60493E+01 0.00153  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  6.95996E-01 0.00150  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000332 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00033E+04 0.00193 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00033E+04 0.00193 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  6.05433E+00 ;
RUNNING_TIME              (idx, 1)        =  4.43850E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.32083E-01  1.32083E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.05000E-03  1.05000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  3.10583E-01  3.10583E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.42517E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 13.64049 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.94498E+01 0.00302 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  6.65615E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 590.59;
MEMSIZE                   (idx, 1)        = 414.12;
XS_MEMSIZE                (idx, 1)        = 243.72;
MAT_MEMSIZE               (idx, 1)        = 25.42;
RES_MEMSIZE               (idx, 1)        = 10.95;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.01;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 176.47;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 15 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 144068 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 7 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 20 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 20 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 699 ;
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

NORM_COEF                 (idx, [1:   4]) = [  9.98601E-05 0.00062  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.39533E-02 0.01257 ];
PU239_FISS                (idx, [1:   4]) = [  3.54455E-01 0.00163  9.84305E-01 0.00019 ];
PU240_FISS                (idx, [1:   4]) = [  4.06187E-03 0.01588  1.12777E-02 0.01565 ];
PU241_FISS                (idx, [1:   4]) = [  1.46441E-03 0.02985  4.06650E-03 0.02986 ];
PU239_CAPT                (idx, [1:   4]) = [  1.29424E-01 0.00239  6.86057E-01 0.00162 ];
PU240_CAPT                (idx, [1:   4]) = [  6.77366E-03 0.01224  3.59047E-02 0.01202 ];
PU241_CAPT                (idx, [1:   4]) = [  3.02015E-04 0.06292  1.59767E-03 0.06273 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000332 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 8.35347E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000332 1.00084E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 188887 1.88932E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 360551 3.60601E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 450894 4.51302E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000332 1.00084E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 5.93718E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.19860E-11 0.00086 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.12135E-19 0.00086 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.06567E+00 0.00084 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.60289E-01 0.00086 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.89048E-01 0.00105 ];
TOT_ABSRATE               (idx, [1:   2]) = [  5.49337E-01 0.00087 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98601E-01 0.00062 ];
TOT_FLUX                  (idx, [1:   2]) = [  2.57029E+02 0.00082 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  4.50663E-01 0.00107 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.32791E+01 0.00087 ];
INI_FMASS                 (idx, 1)        =  1.06890E+02 ;
TOT_FMASS                 (idx, 1)        =  1.06890E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.16365E+00 0.30183 ];
SIX_FF_F                  (idx, [1:   2]) = [  2.86232E-01 0.21694 ];
SIX_FF_P                  (idx, [1:   2]) = [  1.05453E-04 0.12781 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  3.44016E+03 0.07785 ];
SIX_FF_LF                 (idx, [1:   2]) = [  5.48716E-01 0.00085 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.99967E-01 7.9E-06 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.35421E-01 0.36635 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  7.43062E-02 0.36636 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.95781E+00 4.0E-05 ];
FISSE                     (idx, [1:   2]) = [  2.07642E+02 5.2E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.06741E+00 0.00132  1.06396E+00 0.00132  2.59102E-03 0.02963 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.06659E+00 0.00084 ];
COL_KEFF                  (idx, [1:   2]) = [  1.06721E+00 0.00115 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.06659E+00 0.00084 ];
ABS_KINF                  (idx, [1:   2]) = [  1.94300E+00 0.00024 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  6.55126E+00 0.00090 ];
IMP_ALF                   (idx, [1:   2]) = [  6.54790E+00 0.00064 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.86154E-02 0.00589 ];
IMP_EALF                  (idx, [1:   2]) = [  2.86876E-02 0.00422 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  5.21974E-01 0.00337 ];
IMP_AFGE                  (idx, [1:   2]) = [  5.23012E-01 0.00159 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.11740E-03 0.01900  8.25842E-05 0.08581  5.64110E-04 0.03851  3.66742E-04 0.04563  8.55705E-04 0.03239  2.14475E-04 0.06957  3.37869E-05 0.18429 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  4.43279E-01 0.06427  8.24973E-03 0.07214  2.99565E-02 8.7E-05  1.04183E-01 0.01769  3.17453E-01 0.00016  1.15996E+00 0.03911  2.98511E+00 0.15974 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  2.50000E-03 0.03457  9.42415E-05 0.15215  6.71360E-04 0.06538  4.59050E-04 0.07137  9.87514E-04 0.04985  2.38900E-04 0.10061  4.89323E-05 0.24205 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  4.62613E-01 0.10160  1.25006E-02 0.00097  2.99549E-02 9.9E-05  1.07334E-01 0.00082  3.17446E-01 0.00024  1.33500E+00 0.00505  1.01577E+01 0.03646 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  8.99699E-07 0.00845  8.98543E-07 0.00853  1.37656E-06 0.16749 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  9.60324E-07 0.00855  9.59087E-07 0.00863  1.47002E-06 0.16862 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  2.41428E-03 0.03181  9.50606E-05 0.16052  6.70470E-04 0.06367  4.24660E-04 0.06847  9.57781E-04 0.05107  2.25039E-04 0.10553  4.12649E-05 0.30902 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  4.44734E-01 0.11298  1.24811E-02 0.0E+00  2.99605E-02 0.00022  1.07580E-01 0.00178  3.17536E-01 0.00020  1.34397E+00 0.00626  1.06912E+01 6.7E-09 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  8.92996E-07 0.02031  8.90360E-07 0.02003  8.12372E-07 0.19951 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  9.53512E-07 0.02051  9.50686E-07 0.02023  8.68933E-07 0.19991 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.04051E-03 0.13504  1.04006E-04 0.56961  6.48194E-04 0.22776  3.13142E-04 0.29209  7.42840E-04 0.19214  1.84856E-04 0.40551  4.74718E-05 0.66059 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  3.81012E-01 0.20852  1.24811E-02 0.0E+00  2.99654E-02 0.00063  1.07155E-01 0.0E+00  3.17619E-01 0.0E+00  1.35238E+00 0.0E+00  1.06912E+01 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.03601E-03 0.13980  9.62661E-05 0.57009  6.98194E-04 0.24625  2.98452E-04 0.26696  7.17647E-04 0.18933  1.86631E-04 0.39987  3.88182E-05 0.60965 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  3.71123E-01 0.18687  1.24811E-02 8.3E-09  2.99654E-02 0.00063  1.07155E-01 0.0E+00  3.17619E-01 0.0E+00  1.35238E+00 0.0E+00  1.06912E+01 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -2.35883E+03 0.13078 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  8.99175E-07 0.00432 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  9.59615E-07 0.00411 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.18741E-03 0.01652 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -2.44108E+03 0.01798 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  8.02630E-09 0.00340 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.56138E-04 0.09719  1.56138E-04 0.09719  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  8.20431E-05 0.14168  8.20431E-05 0.14168  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.67251E-05 0.11337  7.68818E-05 0.11335  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.50104E+01 0.04259 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  6.33155E+01 0.00094  4.43511E+01 0.00190 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.01701E+05 0.00688  4.27860E+05 0.00292  1.08633E+06 0.00287  2.34246E+06 0.00152  3.40772E+06 0.00169  5.01001E+06 0.00154  5.50573E+06 0.00150  4.68905E+06 0.00254  4.14200E+06 0.00154  3.41299E+06 0.00143  3.10278E+06 0.00191  2.44258E+06 0.00401  2.57552E+06 0.00225  2.17523E+06 0.00255  1.65759E+06 0.00121  1.63065E+06 0.00259  1.56276E+06 0.00369  1.39106E+06 0.00242  1.08851E+06 0.00428  1.62695E+06 0.00567  9.97872E+05 0.01044  4.88765E+05 0.00957  2.04617E+05 0.01041  1.66625E+05 0.01416  1.04530E+05 0.01381  5.59159E+04 0.01727  5.20991E+04 0.02062  5.97033E+03 0.01602  6.03088E+03 0.02816  4.26964E+03 0.01782  2.08280E+03 0.03854  2.76765E+03 0.07687  1.49078E+03 0.06436  1.15447E+03 0.05202  1.72422E+02 0.14856  1.66300E+02 0.07013  2.00632E+02 0.07076  1.72558E+02 0.17738  1.81284E+02 0.09036  1.59493E+02 0.18013  1.77586E+02 0.14106  1.39196E+02 0.01866  2.68132E+02 0.08875  3.80594E+02 0.11731  4.05139E+02 0.08831  8.23995E+02 0.12972  5.79763E+02 0.12041  4.53924E+02 0.11732  1.88038E+02 0.16279  1.11811E+02 0.24144  1.09819E+02 0.16289  7.20522E+01 0.17541  9.18965E+01 0.24008  8.76178E+01 0.34374  1.19875E+02 0.32541  5.68634E+01 0.45504  1.97734E+01 0.54393  1.14604E+01 0.94245  2.67478E+00 1.00000  5.34133E-01 1.00000  5.31522E-01 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.94593E+00 0.00171 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.57024E+02 0.00077  9.52037E-03 0.06737 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  2.46195E-01 0.00039  2.72962E-01 0.04671 ];
INF_CAPT                  (idx, [1:   4]) = [  7.35345E-04 0.00176  6.24390E-03 0.04742 ];
INF_ABS                   (idx, [1:   4]) = [  2.13714E-03 0.00139  7.52947E-03 0.08212 ];
INF_FISS                  (idx, [1:   4]) = [  1.40180E-03 0.00133  1.28558E-03 0.26096 ];
INF_NSF                   (idx, [1:   4]) = [  4.14624E-03 0.00131  3.68221E-03 0.26129 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.95781E+00 4.5E-05  2.86322E+00 0.00045 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.07642E+02 3.3E-08  2.07625E+02 3.7E-06 ];
INF_INVV                  (idx, [1:   4]) = [  7.98287E-09 0.00493  1.19876E-06 0.02348 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.44061E-01 0.00039  2.66790E-01 0.04648 ];
INF_SCATT1                (idx, [1:   4]) = [  1.60649E-02 0.00079  3.74818E-03 1.00000 ];
INF_SCATT2                (idx, [1:   4]) = [  7.21668E-03 0.00170  9.45635E-04 1.00000 ];
INF_SCATT3                (idx, [1:   4]) = [  2.85659E-03 0.00271  2.58688E-04 1.00000 ];
INF_SCATT4                (idx, [1:   4]) = [  1.60325E-03 0.00411 -7.34920E-04 1.00000 ];
INF_SCATT5                (idx, [1:   4]) = [  2.69627E-04 0.02097 -4.86313E-04 1.00000 ];
INF_SCATT6                (idx, [1:   4]) = [  2.33701E-04 0.02168 -5.33836E-04 1.00000 ];
INF_SCATT7                (idx, [1:   4]) = [  4.82651E-05 0.18003 -5.65110E-04 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.44064E-01 0.00039  2.66790E-01 0.04648 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.60649E-02 0.00079  3.74818E-03 1.00000 ];
INF_SCATTP2               (idx, [1:   4]) = [  7.21673E-03 0.00169  9.45635E-04 1.00000 ];
INF_SCATTP3               (idx, [1:   4]) = [  2.85655E-03 0.00271  2.58688E-04 1.00000 ];
INF_SCATTP4               (idx, [1:   4]) = [  1.60318E-03 0.00410 -7.34920E-04 1.00000 ];
INF_SCATTP5               (idx, [1:   4]) = [  2.69628E-04 0.02095 -4.86313E-04 1.00000 ];
INF_SCATTP6               (idx, [1:   4]) = [  2.33668E-04 0.02164 -5.33836E-04 1.00000 ];
INF_SCATTP7               (idx, [1:   4]) = [  4.82574E-05 0.18001 -5.65110E-04 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.01316E-01 0.00042  2.46579E-01 0.06671 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.65577E+00 0.00042  1.37531E+00 0.06414 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  2.13390E-03 0.00137  7.52947E-03 0.08212 ];
INF_REMXS                 (idx, [1:   4]) = [  2.13424E-03 0.00135  9.12199E-03 0.11508 ];

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

INF_S0                    (idx, [1:   8]) = [  2.44061E-01 0.00039  4.10113E-07 0.13249  2.95000E-03 0.26060  2.63840E-01 0.04643 ];
INF_S1                    (idx, [1:   8]) = [  1.60650E-02 0.00079 -1.33012E-07 0.08337 -7.39612E-04 0.54551  4.48779E-03 0.83107 ];
INF_S2                    (idx, [1:   8]) = [  7.21670E-03 0.00170 -2.12412E-08 0.51049 -1.64874E-05 1.00000  9.62122E-04 1.00000 ];
INF_S3                    (idx, [1:   8]) = [  2.85658E-03 0.00271  4.20728E-09 1.00000  1.40433E-04 1.00000  1.18254E-04 1.00000 ];
INF_S4                    (idx, [1:   8]) = [  1.60323E-03 0.00411  1.92742E-08 0.47764 -3.56848E-04 0.30920 -3.78072E-04 1.00000 ];
INF_S5                    (idx, [1:   8]) = [  2.69638E-04 0.02097 -1.10042E-08 0.33008  3.10006E-05 1.00000 -5.17313E-04 1.00000 ];
INF_S6                    (idx, [1:   8]) = [  2.33715E-04 0.02169 -1.30573E-08 0.54247  8.18147E-06 1.00000 -5.42018E-04 1.00000 ];
INF_S7                    (idx, [1:   8]) = [  4.82511E-05 0.18003  1.40989E-08 0.69060  9.05187E-05 1.00000 -6.55628E-04 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.44064E-01 0.00039  4.10113E-07 0.13249  2.95000E-03 0.26060  2.63840E-01 0.04643 ];
INF_SP1                   (idx, [1:   8]) = [  1.60650E-02 0.00079 -1.33012E-07 0.08337 -7.39612E-04 0.54551  4.48779E-03 0.83107 ];
INF_SP2                   (idx, [1:   8]) = [  7.21675E-03 0.00169 -2.12412E-08 0.51049 -1.64874E-05 1.00000  9.62122E-04 1.00000 ];
INF_SP3                   (idx, [1:   8]) = [  2.85655E-03 0.00271  4.20728E-09 1.00000  1.40433E-04 1.00000  1.18254E-04 1.00000 ];
INF_SP4                   (idx, [1:   8]) = [  1.60316E-03 0.00410  1.92742E-08 0.47764 -3.56848E-04 0.30920 -3.78072E-04 1.00000 ];
INF_SP5                   (idx, [1:   8]) = [  2.69639E-04 0.02096 -1.10042E-08 0.33008  3.10006E-05 1.00000 -5.17313E-04 1.00000 ];
INF_SP6                   (idx, [1:   8]) = [  2.33681E-04 0.02166 -1.30573E-08 0.54247  8.18147E-06 1.00000 -5.42018E-04 1.00000 ];
INF_SP7                   (idx, [1:   8]) = [  4.82433E-05 0.18001  1.40989E-08 0.69060  9.05187E-05 1.00000 -6.55628E-04 1.00000 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  3.76230E-01 0.00114  4.54012E-02 1.00000 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  3.78267E-01 0.00186 -4.02476E-01 1.00000 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  3.78238E-01 0.00201  8.40474E-02 1.00000 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  3.72257E-01 0.00095  3.19049E+00 0.89901 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  8.85987E-01 0.00114  1.32469E+00 0.40014 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  8.81224E-01 0.00185  1.43551E+00 0.70085 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  8.81294E-01 0.00200  1.55069E+00 0.43457 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  8.95442E-01 0.00095  9.87866E-01 0.31947 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  2.50000E-03 0.03457  9.42415E-05 0.15215  6.71360E-04 0.06538  4.59050E-04 0.07137  9.87514E-04 0.04985  2.38900E-04 0.10061  4.89323E-05 0.24205 ];
LAMBDA                    (idx, [1:  14]) = [  4.62613E-01 0.10160  1.25006E-02 0.00097  2.99549E-02 9.9E-05  1.07334E-01 0.00082  3.17446E-01 0.00024  1.33500E+00 0.00505  1.01577E+01 0.03646 ];

