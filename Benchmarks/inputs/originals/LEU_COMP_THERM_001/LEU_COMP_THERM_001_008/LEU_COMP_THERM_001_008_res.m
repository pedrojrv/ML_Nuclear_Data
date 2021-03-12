
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
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_008/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0026.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:34:53 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:35:22 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275293936 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.96622E-01  1.01414E+00  9.95743E-01  1.00403E+00  9.92597E-01  9.93410E-01  1.01375E+00  1.01474E+00  9.96702E-01  1.00481E+00  9.99315E-01  9.96129E-01  9.95356E-01  9.96302E-01  9.95303E-01  1.00234E+00  9.94809E-01  9.89131E-01  1.00123E+00  1.00354E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.37572E-02 0.00156  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76243E-01 3.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.91033E-01 0.00017  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.91171E-01 0.00017  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07734E+00 0.00050  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.89203E+01 0.00121  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.89153E+01 0.00121  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.63580E+00 0.00094  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.04401E+00 0.00125  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000368 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00037E+04 0.00179 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00037E+04 0.00179 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.41717E+00 ;
RUNNING_TIME              (idx, 1)        =  4.72900E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  3.75833E-02  3.75833E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  8.49998E-04  8.49998E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.34433E-01  4.34433E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.68650E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.79904 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95151E+01 0.00567 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.76436E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.99192E-05 0.00079  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.14178E-01 0.00299 ];
U235_FISS                 (idx, [1:   4]) = [  3.92442E-01 0.00138  9.64510E-01 0.00029 ];
U238_FISS                 (idx, [1:   4]) = [  1.44343E-02 0.00826  3.54682E-02 0.00790 ];
U235_CAPT                 (idx, [1:   4]) = [  7.31304E-02 0.00366  1.24355E-01 0.00357 ];
U238_CAPT                 (idx, [1:   4]) = [  1.45593E-01 0.00258  2.47575E-01 0.00244 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000368 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.79530E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000368 1.00078E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 588351 5.88571E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407026 4.07219E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 4991 4.98988E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000368 1.00078E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 5.12227E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32125E-11 0.00081 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.97175E-20 0.00081 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.98122E-01 0.00081 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07364E-01 0.00081 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87651E-01 0.00055 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.95014E-01 6.4E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99192E-01 0.00079 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66465E+01 0.00061 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  4.98561E-03 0.01272 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.88989E+01 0.00093 ];
INI_FMASS                 (idx, 1)        =  6.70091E+02 ;
TOT_FMASS                 (idx, 1)        =  6.70091E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77867E+00 0.00090 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.87124E-01 0.00097 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.74801E-01 0.00040 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09769E+00 0.00055 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96788E-01 5.7E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98217E-01 4.1E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00277E+00 0.00126 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.97770E-01 0.00126 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45020E+00 2.0E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02438E+02 2.0E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.97579E-01 0.00129  9.90661E-01 0.00126  7.10890E-03 0.01811 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98875E-01 0.00081 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98986E-01 0.00108 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98875E-01 0.00081 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00388E+00 0.00080 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91434E+01 0.00033 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91464E+01 0.00010 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.72818E-08 0.00635 ];
IMP_EALF                  (idx, [1:   2]) = [  9.68136E-08 0.00201 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.19430E-01 0.00913 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19450E-01 0.00315 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.77051E-03 0.01151  2.27154E-04 0.06819  1.10477E-03 0.03141  1.04989E-03 0.02738  3.12175E-03 0.01838  9.17558E-04 0.03701  3.49380E-04 0.04975 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.02290E-01 0.02708  1.08669E-02 0.03885  3.17038E-02 0.00045  1.09768E-01 0.00040  3.19083E-01 0.00041  1.34863E+00 0.00037  8.52793E+00 0.01792 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.14649E-03 0.01852  2.65087E-04 0.09954  1.18957E-03 0.04401  1.09724E-03 0.04707  3.25550E-03 0.02763  9.83933E-04 0.05519  3.55171E-04 0.07726 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.89965E-01 0.04276  1.24907E-02 4.3E-06  3.17003E-02 0.00056  1.09850E-01 0.00073  3.18820E-01 0.00049  1.34844E+00 0.00051  8.81461E+00 0.00409 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.77978E-05 0.00289  5.78001E-05 0.00292  5.76136E-05 0.02461 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.76453E-05 0.00236  5.76475E-05 0.00238  5.74717E-05 0.02462 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.10841E-03 0.01832  2.50845E-04 0.10843  1.09918E-03 0.04226  1.15575E-03 0.04157  3.29473E-03 0.02792  9.81723E-04 0.05170  3.26180E-04 0.08436 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54284E-01 0.04307  1.24907E-02 5.2E-06  3.17024E-02 0.00078  1.09768E-01 0.00062  3.18987E-01 0.00063  1.34877E+00 0.00053  8.77671E+00 0.00435 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.58373E-05 0.00689  5.58315E-05 0.00691  5.54584E-05 0.06417 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.56928E-05 0.00676  5.56870E-05 0.00678  5.52715E-05 0.06397 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.63901E-03 0.05502  2.68550E-04 0.30508  1.27568E-03 0.12996  1.49472E-03 0.13226  3.35132E-03 0.08143  1.06912E-03 0.18681  1.79627E-04 0.40535 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  5.15923E-01 0.12414  1.24906E-02 0.0E+00  3.16929E-02 0.00179  1.09993E-01 0.00220  3.18547E-01 0.00145  1.34679E+00 0.00147  8.63638E+00 6.8E-09 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.70476E-03 0.05345  2.78181E-04 0.28920  1.26679E-03 0.13360  1.48761E-03 0.13261  3.42855E-03 0.07987  1.07145E-03 0.18231  1.72182E-04 0.37320 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  5.19304E-01 0.11450  1.24906E-02 0.0E+00  3.16931E-02 0.00179  1.09959E-01 0.00212  3.18752E-01 0.00158  1.34700E+00 0.00146  8.77064E+00 0.01531 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.37876E+02 0.05664 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.69259E-05 0.00198 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.67774E-05 0.00134 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.21292E-03 0.01048 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.26682E+02 0.01004 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75949E-06 0.00085 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74434E-06 0.00096  1.74402E-06 0.00095  1.79245E-06 0.01025 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.23615E-05 0.00148  9.24382E-05 0.00149  8.11801E-05 0.01836 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.72249E-01 0.00040  8.72281E-01 0.00042  8.79157E-01 0.01709 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07612E+01 0.02958 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.89153E+01 0.00121  5.89979E+01 0.00143 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.86241E+04 0.00591  2.33569E+05 0.00212  4.61775E+05 0.00147  4.81071E+05 0.00094  4.16603E+05 0.00101  4.00614E+05 0.00179  2.73012E+05 0.00131  2.30688E+05 0.00161  1.76421E+05 0.00216  1.44723E+05 0.00174  1.25170E+05 0.00094  1.11938E+05 0.00212  1.04119E+05 0.00209  9.98135E+04 0.00249  9.71088E+04 0.00129  8.44368E+04 0.00154  8.38726E+04 0.00131  8.32173E+04 0.00226  8.23956E+04 0.00189  1.62930E+05 0.00131  1.60994E+05 0.00052  1.18830E+05 0.00171  7.81032E+04 0.00189  9.32286E+04 0.00388  9.14089E+04 0.00207  8.14265E+04 0.00091  1.44437E+05 0.00299  3.20312E+04 0.00260  4.03934E+04 0.00311  3.66820E+04 0.00256  2.12866E+04 0.00580  3.68759E+04 0.00493  2.51649E+04 0.00317  2.14841E+04 0.00506  4.13595E+03 0.00957  4.07466E+03 0.00406  4.28235E+03 0.00938  4.31178E+03 0.01528  4.33605E+03 0.00586  4.15310E+03 0.01128  4.44359E+03 0.00827  4.09451E+03 0.00827  7.67127E+03 0.00997  1.21810E+04 0.00623  1.56720E+04 0.00407  4.12946E+04 0.00361  4.26848E+04 0.00307  4.37413E+04 0.00419  2.63067E+04 0.00391  1.80364E+04 0.00528  1.29244E+04 0.00406  1.43248E+04 0.00322  2.45267E+04 0.00331  3.13152E+04 0.00285  6.49929E+04 0.00277  1.34697E+05 0.00188  3.50811E+05 0.00076  3.69225E+05 0.00080  3.40158E+05 0.00131  3.05570E+05 0.00083  3.21237E+05 0.00095  3.70886E+05 0.00056  3.58594E+05 0.00069  2.70917E+05 0.00049  2.76521E+05 0.00034  2.69730E+05 0.00072  2.52548E+05 0.00104  2.13014E+05 0.00130  1.58100E+05 0.00083  6.12220E+04 0.00051 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00399E+00 0.00126 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50053E+01 0.00085  2.16429E+01 0.00098 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.40766E-01 0.00029  2.78985E+00 0.00033 ];
INF_CAPT                  (idx, [1:   4]) = [  3.64540E-03 0.00188  2.29422E-02 0.00030 ];
INF_ABS                   (idx, [1:   4]) = [  5.00983E-03 0.00139  4.01889E-02 0.00092 ];
INF_FISS                  (idx, [1:   4]) = [  1.36443E-03 0.00056  1.72468E-02 0.00175 ];
INF_NSF                   (idx, [1:   4]) = [  3.54462E-03 0.00048  4.20252E-02 0.00175 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59788E+00 0.00020  2.43670E+00 5.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04278E+02 2.4E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.36104E-08 0.00066  3.71900E-06 9.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.35757E-01 0.00029  2.74967E+00 0.00034 ];
INF_SCATT1                (idx, [1:   4]) = [  3.94417E-01 0.00049  5.81214E-01 0.00055 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52873E-01 0.00064  1.01604E-01 0.00215 ];
INF_SCATT3                (idx, [1:   4]) = [  8.22444E-03 0.00596  2.81054E-02 0.00333 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.00475E-02 0.00255 -2.18414E-02 0.00308 ];
INF_SCATT5                (idx, [1:   4]) = [ -9.47121E-04 0.03993  1.17765E-02 0.01283 ];
INF_SCATT6                (idx, [1:   4]) = [  7.76926E-03 0.00213 -3.08092E-02 0.00227 ];
INF_SCATT7                (idx, [1:   4]) = [  6.38265E-04 0.03971  8.66466E-03 0.01504 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.35788E-01 0.00029  2.74967E+00 0.00034 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.94418E-01 0.00049  5.81214E-01 0.00055 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52873E-01 0.00064  1.01604E-01 0.00215 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.22408E-03 0.00596  2.81054E-02 0.00333 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.00475E-02 0.00253 -2.18414E-02 0.00308 ];
INF_SCATTP5               (idx, [1:   4]) = [ -9.47669E-04 0.03983  1.17765E-02 0.01283 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.76986E-03 0.00212 -3.08092E-02 0.00227 ];
INF_SCATTP7               (idx, [1:   4]) = [  6.38501E-04 0.03996  8.66466E-03 0.01504 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29967E-01 0.00067  1.87081E+00 0.00043 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.44948E+00 0.00067  1.78177E-01 0.00043 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.97868E-03 0.00150  4.01889E-02 0.00092 ];
INF_REMXS                 (idx, [1:   4]) = [  3.99991E-02 0.00026  4.03436E-02 0.00033 ];

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

INF_S0                    (idx, [1:   8]) = [  7.00767E-01 0.00030  3.49898E-02 0.00030  1.58086E-04 0.01767  2.74951E+00 0.00034 ];
INF_S1                    (idx, [1:   8]) = [  3.83742E-01 0.00047  1.06743E-02 0.00132  9.93674E-05 0.00842  5.81115E-01 0.00055 ];
INF_S2                    (idx, [1:   8]) = [  1.56327E-01 0.00066 -3.45395E-03 0.00604  6.27151E-05 0.00941  1.01541E-01 0.00215 ];
INF_S3                    (idx, [1:   8]) = [  1.23588E-02 0.00462 -4.13432E-03 0.00250  3.35374E-05 0.02110  2.80719E-02 0.00333 ];
INF_S4                    (idx, [1:   8]) = [ -1.90011E-02 0.00279 -1.04641E-03 0.00631  1.11641E-05 0.06255 -2.18526E-02 0.00307 ];
INF_S5                    (idx, [1:   8]) = [ -1.30927E-03 0.02584  3.62154E-04 0.02810 -1.58423E-06 0.65155  1.17780E-02 0.01284 ];
INF_S6                    (idx, [1:   8]) = [  8.06743E-03 0.00208 -2.98170E-04 0.01398 -6.93562E-06 0.17706 -3.08023E-02 0.00228 ];
INF_S7                    (idx, [1:   8]) = [  1.19071E-03 0.02415 -5.52448E-04 0.02169 -8.81753E-06 0.11741  8.67347E-03 0.01501 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.00798E-01 0.00030  3.49898E-02 0.00030  1.58086E-04 0.01767  2.74951E+00 0.00034 ];
INF_SP1                   (idx, [1:   8]) = [  3.83743E-01 0.00047  1.06743E-02 0.00132  9.93674E-05 0.00842  5.81115E-01 0.00055 ];
INF_SP2                   (idx, [1:   8]) = [  1.56327E-01 0.00066 -3.45395E-03 0.00604  6.27151E-05 0.00941  1.01541E-01 0.00215 ];
INF_SP3                   (idx, [1:   8]) = [  1.23584E-02 0.00462 -4.13432E-03 0.00250  3.35374E-05 0.02110  2.80719E-02 0.00333 ];
INF_SP4                   (idx, [1:   8]) = [ -1.90011E-02 0.00278 -1.04641E-03 0.00631  1.11641E-05 0.06255 -2.18526E-02 0.00307 ];
INF_SP5                   (idx, [1:   8]) = [ -1.30982E-03 0.02582  3.62154E-04 0.02810 -1.58423E-06 0.65155  1.17780E-02 0.01284 ];
INF_SP6                   (idx, [1:   8]) = [  8.06802E-03 0.00207 -2.98170E-04 0.01398 -6.93562E-06 0.17706 -3.08023E-02 0.00228 ];
INF_SP7                   (idx, [1:   8]) = [  1.19095E-03 0.02434 -5.52448E-04 0.02169 -8.81753E-06 0.11741  8.67347E-03 0.01501 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62634E-01 0.00036  1.73575E+00 0.00271 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61694E-01 0.00048  1.69507E+00 0.00504 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64096E-01 0.00065  1.79734E+00 0.00816 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62125E-01 0.00081  1.71881E+00 0.00587 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26920E+00 0.00036  1.92045E-01 0.00270 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27376E+00 0.00048  1.96668E-01 0.00502 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26217E+00 0.00065  1.85509E-01 0.00820 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27166E+00 0.00081  1.93959E-01 0.00586 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.14649E-03 0.01852  2.65087E-04 0.09954  1.18957E-03 0.04401  1.09724E-03 0.04707  3.25550E-03 0.02763  9.83933E-04 0.05519  3.55171E-04 0.07726 ];
LAMBDA                    (idx, [1:  14]) = [  7.89965E-01 0.04276  1.24907E-02 4.3E-06  3.17003E-02 0.00056  1.09850E-01 0.00073  3.18820E-01 0.00049  1.34844E+00 0.00051  8.81461E+00 0.00409 ];

