
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
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_006/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0009.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:42:38 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:43:10 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176958368 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00767E+00  9.99887E-01  1.00706E+00  1.00489E+00  9.90396E-01  9.90862E-01  1.00206E+00  9.90876E-01  1.00625E+00  9.92049E-01  1.01109E+00  9.95221E-01  1.01005E+00  1.00126E+00  9.91689E-01  9.89676E-01  1.00315E+00  1.00009E+00  9.99981E-01  1.00581E+00  ];
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.3E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  2.38462E-02 0.00157  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76154E-01 3.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.93621E-01 0.00018  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.93757E-01 0.00018  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07232E+00 0.00061  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.88949E+01 0.00129  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.88896E+01 0.00129  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.37644E+00 0.00105  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.04498E+00 0.00124  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000016 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00002E+04 0.00196 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00002E+04 0.00196 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.44883E+00 ;
RUNNING_TIME              (idx, 1)        =  5.35350E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  9.96500E-02  9.96500E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.08333E-03  1.08333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.34533E-01  4.34533E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.30100E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 15.78189 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95237E+01 0.00570 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.76377E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.99545E-05 0.00086  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.15576E-01 0.00272 ];
U235_FISS                 (idx, [1:   4]) = [  3.93155E-01 0.00139  9.64279E-01 0.00030 ];
U238_FISS                 (idx, [1:   4]) = [  1.45433E-02 0.00807  3.56694E-02 0.00794 ];
U235_CAPT                 (idx, [1:   4]) = [  7.26462E-02 0.00385  1.23705E-01 0.00364 ];
U238_CAPT                 (idx, [1:   4]) = [  1.46357E-01 0.00241  2.49225E-01 0.00213 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000016 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.25078E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000016 1.00073E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587126 5.87521E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407603 4.07916E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5287 5.28763E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000016 1.00073E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 0.00000E+00 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32146E-11 0.00085 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.76326E-20 0.00085 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.98314E-01 0.00085 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07426E-01 0.00085 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87289E-01 0.00058 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94714E-01 8.9E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99545E-01 0.00086 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66202E+01 0.00063 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.28555E-03 0.01668 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.88981E+01 0.00102 ];
INI_FMASS                 (idx, 1)        =  7.49443E+02 ;
TOT_FMASS                 (idx, 1)        =  7.49443E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.78020E+00 0.00092 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.88095E-01 0.00099 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.73668E-01 0.00036 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09861E+00 0.00049 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96613E-01 6.8E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98093E-01 4.6E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00484E+00 0.00129 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.99524E-01 0.00130 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45030E+00 2.1E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02440E+02 2.1E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.00012E+00 0.00132  9.92127E-01 0.00130  7.39732E-03 0.01844 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.99058E-01 0.00084 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98841E-01 0.00121 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.99058E-01 0.00084 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00437E+00 0.00083 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91361E+01 0.00032 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91351E+01 0.00013 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.79829E-08 0.00620 ];
IMP_EALF                  (idx, [1:   2]) = [  9.79219E-08 0.00254 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.20383E-01 0.00955 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20350E-01 0.00339 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.91728E-03 0.01325  1.93680E-04 0.07678  1.15711E-03 0.02956  1.04982E-03 0.03322  3.17140E-03 0.01845  1.00630E-03 0.03334  3.38967E-04 0.05378 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.01256E-01 0.02949  1.01174E-02 0.04868  3.16895E-02 0.00048  1.09860E-01 0.00058  3.19157E-01 0.00038  1.34859E+00 0.00036  8.69975E+00 0.01062 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.57903E-03 0.01799  2.09393E-04 0.11571  1.30697E-03 0.04310  1.15858E-03 0.04406  3.48484E-03 0.02950  1.06045E-03 0.04451  3.58807E-04 0.08135 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.78510E-01 0.04326  1.24906E-02 1.7E-06  3.16724E-02 0.00077  1.09827E-01 0.00076  3.19245E-01 0.00059  1.34892E+00 0.00047  8.78604E+00 0.00382 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.62897E-05 0.00274  5.62891E-05 0.00275  5.63847E-05 0.02837 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.62885E-05 0.00251  5.62879E-05 0.00253  5.63825E-05 0.02823 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.41212E-03 0.01886  1.81019E-04 0.12654  1.27524E-03 0.04662  1.18094E-03 0.04942  3.36623E-03 0.02747  1.00505E-03 0.04531  4.03642E-04 0.07473 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.35215E-01 0.04147  1.24907E-02 6.7E-06  3.17003E-02 0.00070  1.09808E-01 0.00080  3.19227E-01 0.00065  1.34856E+00 0.00056  8.77649E+00 0.00405 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.50672E-05 0.00560  5.50038E-05 0.00562  6.18614E-05 0.06942 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.50665E-05 0.00552  5.50035E-05 0.00555  6.18314E-05 0.06942 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.72645E-03 0.05859  2.15544E-04 0.39682  1.42502E-03 0.15113  1.33282E-03 0.15163  3.43143E-03 0.08426  8.34920E-04 0.21731  4.86709E-04 0.22961 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.36579E-01 0.14479  1.24906E-02 3.9E-09  3.17329E-02 0.00150  1.09636E-01 0.00140  3.19600E-01 0.00200  1.34886E+00 0.00135  8.74826E+00 0.00884 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.77581E-03 0.05549  2.18926E-04 0.36081  1.46775E-03 0.14068  1.31336E-03 0.15526  3.47646E-03 0.08032  7.99745E-04 0.19790  4.99567E-04 0.23590 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.11810E-01 0.14105  1.24906E-02 6.8E-09  3.17292E-02 0.00150  1.09650E-01 0.00146  3.19540E-01 0.00195  1.34895E+00 0.00132  8.74826E+00 0.00884 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.41304E+02 0.05993 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.56328E-05 0.00204 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.56296E-05 0.00151 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.68315E-03 0.00918 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.38088E+02 0.00885 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75469E-06 0.00083 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74454E-06 0.00082  1.74397E-06 0.00083  1.82768E-06 0.01070 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.21119E-05 0.00150  9.22052E-05 0.00151  7.85832E-05 0.01638 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.70994E-01 0.00037  8.70998E-01 0.00040  8.87020E-01 0.02075 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06717E+01 0.03096 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.88896E+01 0.00129  5.79813E+01 0.00170 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.94591E+04 0.00534  2.33518E+05 0.00118  4.62798E+05 0.00223  4.83011E+05 0.00134  4.16306E+05 0.00118  4.00010E+05 0.00204  2.73106E+05 0.00175  2.31285E+05 0.00169  1.76189E+05 0.00181  1.44808E+05 0.00240  1.25322E+05 0.00172  1.12371E+05 0.00250  1.04760E+05 0.00162  9.90254E+04 0.00297  9.71550E+04 0.00189  8.43798E+04 0.00209  8.41398E+04 0.00122  8.31932E+04 0.00217  8.25980E+04 0.00166  1.63180E+05 0.00076  1.61071E+05 0.00128  1.18922E+05 0.00262  7.83889E+04 0.00184  9.36461E+04 0.00210  9.13039E+04 0.00177  8.15496E+04 0.00122  1.44885E+05 0.00108  3.22186E+04 0.00519  4.02986E+04 0.00332  3.67038E+04 0.00269  2.11089E+04 0.00550  3.67174E+04 0.00329  2.50793E+04 0.00310  2.15839E+04 0.00144  4.21271E+03 0.01249  4.15828E+03 0.00385  4.16994E+03 0.00408  4.29795E+03 0.00736  4.24474E+03 0.00916  4.16007E+03 0.01239  4.35749E+03 0.00795  4.16967E+03 0.00661  7.72609E+03 0.01078  1.23669E+04 0.00611  1.56623E+04 0.00203  4.11234E+04 0.00265  4.25900E+04 0.00273  4.36890E+04 0.00120  2.63997E+04 0.00586  1.77238E+04 0.00529  1.29617E+04 0.00417  1.43363E+04 0.00357  2.47052E+04 0.00509  3.10881E+04 0.00684  6.51929E+04 0.00202  1.34076E+05 0.00086  3.49890E+05 0.00202  3.67835E+05 0.00262  3.39329E+05 0.00151  3.04370E+05 0.00168  3.20607E+05 0.00176  3.70336E+05 0.00216  3.57376E+05 0.00221  2.70093E+05 0.00134  2.75598E+05 0.00195  2.68233E+05 0.00106  2.51491E+05 0.00190  2.11891E+05 0.00152  1.57231E+05 0.00228  6.08865E+04 0.00256 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00414E+00 0.00068 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50423E+01 0.00057  2.15798E+01 0.00120 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.39755E-01 0.00020  2.79789E+00 0.00042 ];
INF_CAPT                  (idx, [1:   4]) = [  3.66421E-03 0.00162  2.29646E-02 0.00035 ];
INF_ABS                   (idx, [1:   4]) = [  5.04268E-03 0.00132  4.02464E-02 0.00102 ];
INF_FISS                  (idx, [1:   4]) = [  1.37847E-03 0.00103  1.72819E-02 0.00195 ];
INF_NSF                   (idx, [1:   4]) = [  3.58011E-03 0.00095  4.21107E-02 0.00195 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59716E+00 0.00023  2.43670E+00 1.0E-08 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04273E+02 1.9E-05  2.02270E+02 8.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  6.35577E-08 0.00014  3.71735E-06 0.00016 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.34710E-01 0.00021  2.75764E+00 0.00045 ];
INF_SCATT1                (idx, [1:   4]) = [  3.93721E-01 0.00034  5.80890E-01 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52676E-01 0.00042  1.00095E-01 0.00193 ];
INF_SCATT3                (idx, [1:   4]) = [  8.16298E-03 0.00719  2.73278E-02 0.00492 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.00422E-02 0.00160 -2.23766E-02 0.00771 ];
INF_SCATT5                (idx, [1:   4]) = [ -9.72778E-04 0.03803  1.18126E-02 0.00831 ];
INF_SCATT6                (idx, [1:   4]) = [  7.76980E-03 0.00486 -3.10652E-02 0.00382 ];
INF_SCATT7                (idx, [1:   4]) = [  7.11339E-04 0.03876  8.71886E-03 0.01243 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.34739E-01 0.00021  2.75764E+00 0.00045 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.93721E-01 0.00034  5.80890E-01 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52677E-01 0.00042  1.00095E-01 0.00193 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.16307E-03 0.00722  2.73278E-02 0.00492 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.00424E-02 0.00161 -2.23766E-02 0.00771 ];
INF_SCATTP5               (idx, [1:   4]) = [ -9.72715E-04 0.03833  1.18126E-02 0.00831 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.77017E-03 0.00486 -3.10652E-02 0.00382 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.10847E-04 0.03866  8.71886E-03 0.01243 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29656E-01 0.00068  1.87686E+00 0.00057 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45145E+00 0.00068  1.77602E-01 0.00057 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.01374E-03 0.00133  4.02464E-02 0.00102 ];
INF_REMXS                 (idx, [1:   4]) = [  3.99451E-02 0.00033  4.04120E-02 0.00156 ];

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

INF_S0                    (idx, [1:   8]) = [  6.99810E-01 0.00021  3.49000E-02 0.00036  1.58556E-04 0.01273  2.75748E+00 0.00045 ];
INF_S1                    (idx, [1:   8]) = [  3.83125E-01 0.00032  1.05958E-02 0.00254  9.70600E-05 0.01497  5.80793E-01 0.00046 ];
INF_S2                    (idx, [1:   8]) = [  1.56144E-01 0.00045 -3.46779E-03 0.00414  6.21286E-05 0.02941  1.00033E-01 0.00194 ];
INF_S3                    (idx, [1:   8]) = [  1.22687E-02 0.00434 -4.10572E-03 0.00373  3.43088E-05 0.03800  2.72935E-02 0.00490 ];
INF_S4                    (idx, [1:   8]) = [ -1.89888E-02 0.00183 -1.05334E-03 0.00699  1.18734E-05 0.09728 -2.23885E-02 0.00767 ];
INF_S5                    (idx, [1:   8]) = [ -1.32058E-03 0.02975  3.47800E-04 0.01683 -7.35004E-07 1.00000  1.18133E-02 0.00827 ];
INF_S6                    (idx, [1:   8]) = [  8.06270E-03 0.00418 -2.92906E-04 0.02638 -5.79230E-06 0.14595 -3.10594E-02 0.00381 ];
INF_S7                    (idx, [1:   8]) = [  1.24936E-03 0.02212 -5.38019E-04 0.00606 -7.96156E-06 0.12462  8.72682E-03 0.01238 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.99839E-01 0.00021  3.49000E-02 0.00036  1.58556E-04 0.01273  2.75748E+00 0.00045 ];
INF_SP1                   (idx, [1:   8]) = [  3.83125E-01 0.00032  1.05958E-02 0.00254  9.70600E-05 0.01497  5.80793E-01 0.00046 ];
INF_SP2                   (idx, [1:   8]) = [  1.56145E-01 0.00045 -3.46779E-03 0.00414  6.21286E-05 0.02941  1.00033E-01 0.00194 ];
INF_SP3                   (idx, [1:   8]) = [  1.22688E-02 0.00435 -4.10572E-03 0.00373  3.43088E-05 0.03800  2.72935E-02 0.00490 ];
INF_SP4                   (idx, [1:   8]) = [ -1.89891E-02 0.00184 -1.05334E-03 0.00699  1.18734E-05 0.09728 -2.23885E-02 0.00767 ];
INF_SP5                   (idx, [1:   8]) = [ -1.32051E-03 0.03000  3.47800E-04 0.01683 -7.35004E-07 1.00000  1.18133E-02 0.00827 ];
INF_SP6                   (idx, [1:   8]) = [  8.06308E-03 0.00418 -2.92906E-04 0.02638 -5.79230E-06 0.14595 -3.10594E-02 0.00381 ];
INF_SP7                   (idx, [1:   8]) = [  1.24887E-03 0.02207 -5.38019E-04 0.00606 -7.96156E-06 0.12462  8.72682E-03 0.01238 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62683E-01 0.00151  1.75087E+00 0.00405 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.60740E-01 0.00292  1.73520E+00 0.00457 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64719E-01 0.00076  1.81495E+00 0.00820 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62624E-01 0.00146  1.70642E+00 0.00436 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26897E+00 0.00151  1.90394E-01 0.00405 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27846E+00 0.00292  1.92117E-01 0.00455 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25920E+00 0.00076  1.83709E-01 0.00819 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26925E+00 0.00145  1.95356E-01 0.00436 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.57903E-03 0.01799  2.09393E-04 0.11571  1.30697E-03 0.04310  1.15858E-03 0.04406  3.48484E-03 0.02950  1.06045E-03 0.04451  3.58807E-04 0.08135 ];
LAMBDA                    (idx, [1:  14]) = [  7.78510E-01 0.04326  1.24906E-02 1.7E-06  3.16724E-02 0.00077  1.09827E-01 0.00076  3.19245E-01 0.00059  1.34892E+00 0.00047  8.78604E+00 0.00382 ];

