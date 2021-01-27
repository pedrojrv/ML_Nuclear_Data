
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
TITLE                     (idx, [1: 15])  = 'PU-MET-FAST-019' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 15])  = 'PU_MET_FAST_019' ;
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/christforsyth/ML_neutronics/PU_MET_FAST_019' ;
HOSTNAME                  (idx, [1: 12])  = 'n0163.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Tue Dec 22 02:11:43 2020' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Tue Dec 22 02:11:47 2020' ;

% Run parameters:

POP                       (idx, 1)        = 5000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1608631903369 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.74282E-01  9.93909E-01  1.02123E+00  9.82013E-01  1.00657E+00  9.89443E-01  1.00471E+00  9.89743E-01  1.01850E+00  9.83579E-01  1.01307E+00  9.84345E-01  1.02856E+00  9.91076E-01  1.01157E+00  1.01284E+00  1.00281E+00  9.86578E-01  1.02340E+00  9.81779E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 73])  = '/global/home/groups/co_nuclear/serpent/xsdata_2/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.5E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.17197E-01 0.00172  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  8.82803E-01 0.00023  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.03912E-01 0.00066  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.96731E-01 0.00064  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.92520E+00 0.00085  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  6.79785E+00 0.00172  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  6.15332E+00 0.00190  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  2.67895E+00 0.00311  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.12335E+00 0.00148  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 500174 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00174E+03 0.00308 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00174E+03 0.00308 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  4.81333E-01 ;
RUNNING_TIME              (idx, 1)        =  6.45333E-02 ;
INIT_TIME                 (idx, [1:  2])  = [  3.98667E-02  3.98667E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.10000E-03  1.10000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.35167E-02  2.35167E-02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  6.37833E-02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 7.45868 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.91740E+01 0.00900 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  2.85898E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64366.59 ;
ALLOC_MEMSIZE             (idx, 1)        = 474.28;
MEMSIZE                   (idx, 1)        = 290.06;
XS_MEMSIZE                (idx, 1)        = 134.38;
MAT_MEMSIZE               (idx, 1)        = 16.18;
RES_MEMSIZE               (idx, 1)        = 5.48;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.03;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 184.22;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 17 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 111104 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 4 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 11 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 11 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 389 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.91529E-04 0.00080  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  9.13724E-03 0.02767 ];
PU239_FISS                (idx, [1:   4]) = [  2.86569E-01 0.00273  9.30517E-01 0.00075 ];
PU240_FISS                (idx, [1:   4]) = [  1.79886E-02 0.01130  5.84077E-02 0.01094 ];
PU241_FISS                (idx, [1:   4]) = [  3.41049E-03 0.02605  1.10753E-02 0.02605 ];
PU239_CAPT                (idx, [1:   4]) = [  1.90524E-02 0.01126  4.95655E-01 0.00715 ];
PU240_CAPT                (idx, [1:   4]) = [  2.80106E-03 0.02798  7.28691E-02 0.02700 ];
PU241_CAPT                (idx, [1:   4]) = [  3.17246E-04 0.07215  8.33345E-03 0.07611 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 500174 5.00000E+05 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 2.24306E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 500174 5.22431E+05 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 19255 2.00540E+04 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 158552 1.60779E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 322367 3.41597E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 500174 5.22431E+05 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -7.33417E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.02265E-11 0.00145 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.08064E-18 0.00145 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.56583E-01 0.00142 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.07320E-01 0.00145 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  3.84656E-02 0.00303 ];
TOT_ABSRATE               (idx, [1:   2]) = [  3.45785E-01 0.00146 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.57646E-01 0.00080 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.85762E+01 0.00117 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.54215E-01 0.00077 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.22649E+00 0.00197 ];
INI_FMASS                 (idx, 1)        =  9.46336E+00 ;
TOT_FMASS                 (idx, 1)        =  9.46336E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.93036E+00 0.07096 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.65931E-01 0.01561 ];
SIX_FF_P                  (idx, [1:   2]) = [  9.69914E-04 0.09990 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.20997E+03 0.05380 ];
SIX_FF_LF                 (idx, [1:   2]) = [  3.17507E-01 0.00247 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.97788E-01 0.00014 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.73672E+00 0.09093 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  5.51880E-01 0.09095 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  3.11268E+00 0.00015 ];
FISSE                     (idx, [1:   2]) = [  2.07694E+02 5.6E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.00091E+00 0.00210  9.99228E-01 0.00207  1.89833E-03 0.05332 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.99657E-01 0.00142 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98942E-01 0.00157 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.99657E-01 0.00142 ];
ABS_KINF                  (idx, [1:   2]) = [  3.16047E+00 0.00074 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  3.24080E+00 0.00150 ];
IMP_ALF                   (idx, [1:   2]) = [  3.24227E+00 0.00128 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  7.83577E-01 0.00491 ];
IMP_EALF                  (idx, [1:   2]) = [  7.82154E-01 0.00407 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.63446E+00 0.00283 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.62962E+00 0.00190 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.13374E-03 0.03266  6.33345E-05 0.18223  4.96544E-04 0.07141  4.07996E-04 0.06868  8.81565E-04 0.04960  2.24390E-04 0.09681  5.99161E-05 0.17403 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  5.65203E-01 0.10741  3.26050E-03 0.16959  2.63812E-02 0.03711  9.96357E-02 0.02973  3.06700E-01 0.01769  8.59305E-01 0.07081  2.18850E+00 0.18688 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  2.09331E-03 0.04776  5.62926E-05 0.27599  4.94000E-04 0.10076  3.87242E-04 0.09455  8.92737E-04 0.07322  2.05384E-04 0.11891  5.76529E-05 0.23774 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  6.23595E-01 0.15950  1.25636E-02 0.00511  2.99792E-02 0.00036  1.08229E-01 0.00258  3.16210E-01 0.00101  1.28227E+00 0.01613  7.65589E+00 0.10543 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  4.40786E-08 0.11427  4.40274E-08 0.11467  5.84122E-08 0.36849 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.39845E-08 0.11380  4.39332E-08 0.11420  5.84837E-08 0.36562 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  1.89499E-03 0.05229  4.57833E-05 0.34461  4.23835E-04 0.11245  2.84766E-04 0.13273  9.03323E-04 0.07067  1.82971E-04 0.19927  5.43152E-05 0.32521 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  4.75955E-01 0.14454  1.26208E-02 0.01107  2.99963E-02 0.00062  1.07975E-01 0.00343  3.16542E-01 0.00105  1.29023E+00 0.02658  5.52452E+00 0.23383 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  4.14505E-08 0.31875  4.14375E-08 0.31898  1.73878E-08 0.52497 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.11307E-08 0.31410  4.11179E-08 0.31432  1.73323E-08 0.52015 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.18122E-03 0.20661  1.82158E-04 0.60992  4.59230E-04 0.47570  4.07155E-04 0.39570  6.19878E-04 0.28301  4.69387E-04 0.52297  4.34120E-05 0.74379 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.23419E-01 0.39567  1.27637E-02 0.02214  3.00719E-02 0.00275  1.08523E-01 0.01260  3.15373E-01 0.00489  1.28929E+00 0.04893  6.84698E+00 0.56144 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.25309E-03 0.20306  1.85557E-04 0.58859  4.57730E-04 0.45683  4.01871E-04 0.40367  6.43324E-04 0.26260  5.07628E-04 0.53372  5.69804E-05 0.75815 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.23414E-01 0.39566  1.27637E-02 0.02214  3.00719E-02 0.00275  1.08523E-01 0.01260  3.15373E-01 0.00489  1.28929E+00 0.04893  6.84698E+00 0.56144 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.34713E+05 0.22309 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  4.20672E-08 0.04530 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.20963E-08 0.04519 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  1.89219E-03 0.04650 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -5.22144E+04 0.07202 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  6.35143E-09 0.03000 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  9.97833E-06 0.02099  9.98403E-06 0.02091  3.68089E-07 0.52447 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.65878E-05 0.06127  3.66248E-05 0.06141  1.58499E-06 0.61468 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  1.01184E-03 0.05332  1.00583E-03 0.05371  3.51409E-03 0.50725 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.35676E+01 0.07995 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  6.15332E+00 0.00190  3.98381E+00 0.00420 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  2.67723E+04 0.01424  9.68428E+04 0.00685  1.79404E+05 0.00145  2.70191E+05 0.00392  2.48666E+05 0.00250  2.17287E+05 0.00201  2.12888E+05 0.00388  1.59748E+05 0.00400  1.15659E+05 0.00520  8.60816E+04 0.00362  6.63742E+04 0.00380  5.15084E+04 0.00636  4.03516E+04 0.00511  3.26653E+04 0.00501  2.63536E+04 0.00578  1.89228E+04 0.01385  1.56162E+04 0.01737  1.30028E+04 0.01747  1.07970E+04 0.01287  1.64770E+04 0.00992  1.10610E+04 0.02403  5.76591E+03 0.01976  3.14771E+03 0.03156  3.28606E+03 0.02965  2.49300E+03 0.02775  1.77742E+03 0.03575  2.36964E+03 0.05024  3.80930E+02 0.04952  4.37463E+02 0.04562  3.67424E+02 0.05759  1.85068E+02 0.08420  2.96323E+02 0.07524  2.07894E+02 0.09452  1.40244E+02 0.13773  1.62012E+01 0.10761  2.59356E+01 0.11832  2.88142E+01 0.16289  2.24057E+01 0.20786  3.34041E+01 0.11149  2.89543E+01 0.27744  2.34439E+01 0.18735  2.60934E+01 0.26929  4.18590E+01 0.10070  7.04318E+01 0.15162  7.89348E+01 0.08930  2.01456E+02 0.15389  2.00965E+02 0.11246  1.79337E+02 0.18557  7.91894E+01 0.08424  7.63221E+01 0.16025  3.44773E+01 0.14745  3.76379E+01 0.11875  6.65431E+01 0.15298  7.14820E+01 0.13061  1.23161E+02 0.17833  1.17740E+02 0.10582  1.89536E+02 0.14616  1.01634E+02 0.11542  8.48194E+01 0.19556  5.66369E+01 0.16075  6.50668E+01 0.27162  5.30564E+01 0.14751  4.25414E+01 0.15546  2.75684E+01 0.15312  3.00336E+01 0.09240  5.22658E+01 0.34911  2.67684E+01 0.22074  1.79278E+01 0.22659  1.87894E+01 0.46403  5.29335E+00 0.21366 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  3.15317E+00 0.00295 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.85603E+01 0.00113  1.68426E-02 0.03820 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.34973E-01 0.00159  5.69977E-01 0.02803 ];
INF_CAPT                  (idx, [1:   4]) = [  2.06581E-03 0.00466  7.43589E-03 0.13486 ];
INF_ABS                   (idx, [1:   4]) = [  1.86148E-02 0.00145  1.81317E-02 0.15823 ];
INF_FISS                  (idx, [1:   4]) = [  1.65490E-02 0.00124  1.06958E-02 0.17824 ];
INF_NSF                   (idx, [1:   4]) = [  5.15138E-02 0.00116  3.07018E-02 0.17835 ];
INF_NUBAR                 (idx, [1:   4]) = [  3.11281E+00 0.00015  2.87009E+00 0.00054 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.07694E+02 5.7E-07  2.07656E+02 1.4E-05 ];
INF_INVV                  (idx, [1:   4]) = [  4.37894E-09 0.01160  2.19251E-06 0.03988 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.16328E-01 0.00173  5.52501E-01 0.02632 ];
INF_SCATT1                (idx, [1:   4]) = [  5.50920E-02 0.00252  3.54701E-02 0.20437 ];
INF_SCATT2                (idx, [1:   4]) = [  2.19891E-02 0.00416  1.69328E-03 1.00000 ];
INF_SCATT3                (idx, [1:   4]) = [  1.19818E-02 0.00434  1.49588E-03 1.00000 ];
INF_SCATT4                (idx, [1:   4]) = [  7.01937E-03 0.00512  1.44839E-03 0.59868 ];
INF_SCATT5                (idx, [1:   4]) = [  3.47418E-03 0.01995  4.37521E-03 0.56800 ];
INF_SCATT6                (idx, [1:   4]) = [  1.75912E-03 0.04391  5.26662E-03 0.43958 ];
INF_SCATT7                (idx, [1:   4]) = [  8.09901E-04 0.02933  2.08614E-04 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.18643E-01 0.00172  5.52501E-01 0.02632 ];
INF_SCATTP1               (idx, [1:   4]) = [  5.57048E-02 0.00234  3.54701E-02 0.20437 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.21052E-02 0.00408  1.69328E-03 1.00000 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.20036E-02 0.00449  1.49588E-03 1.00000 ];
INF_SCATTP4               (idx, [1:   4]) = [  7.02569E-03 0.00457  1.44839E-03 0.59868 ];
INF_SCATTP5               (idx, [1:   4]) = [  3.47158E-03 0.02005  4.37521E-03 0.56800 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.75180E-03 0.04429  5.26662E-03 0.43958 ];
INF_SCATTP7               (idx, [1:   4]) = [  8.02391E-04 0.03268  2.08614E-04 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22036E-01 0.00190  4.70622E-01 0.04607 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50128E+00 0.00189  7.14157E-01 0.04468 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.63001E-02 0.00135  1.81317E-02 0.15823 ];
INF_REMXS                 (idx, [1:   4]) = [  1.86988E-02 0.00160  1.90372E-02 0.14759 ];

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

INF_S0                    (idx, [1:   8]) = [  3.16275E-01 0.00173  5.35385E-05 0.04620  1.56114E-03 0.10074  5.50939E-01 0.02653 ];
INF_S1                    (idx, [1:   8]) = [  5.51070E-02 0.00251 -1.49469E-05 0.07804  8.21847E-04 0.20136  3.46482E-02 0.20961 ];
INF_S2                    (idx, [1:   8]) = [  2.19888E-02 0.00414  3.06317E-07 1.00000  3.09252E-05 1.00000  1.66236E-03 1.00000 ];
INF_S3                    (idx, [1:   8]) = [  1.19823E-02 0.00428 -4.75216E-07 1.00000 -2.67219E-04 0.55182  1.76310E-03 1.00000 ];
INF_S4                    (idx, [1:   8]) = [  7.01965E-03 0.00516 -2.76583E-07 1.00000 -1.58150E-04 0.93007  1.60654E-03 0.50608 ];
INF_S5                    (idx, [1:   8]) = [  3.47492E-03 0.01976 -7.43045E-07 1.00000 -5.87010E-07 1.00000  4.37580E-03 0.55777 ];
INF_S6                    (idx, [1:   8]) = [  1.75782E-03 0.04395  1.29976E-06 0.69429  4.05368E-05 1.00000  5.22608E-03 0.44737 ];
INF_S7                    (idx, [1:   8]) = [  8.10654E-04 0.02837 -7.53461E-07 1.00000 -4.10188E-06 1.00000  2.12716E-04 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.18589E-01 0.00173  5.35385E-05 0.04620  1.56114E-03 0.10074  5.50939E-01 0.02653 ];
INF_SP1                   (idx, [1:   8]) = [  5.57197E-02 0.00233 -1.49469E-05 0.07804  8.21847E-04 0.20136  3.46482E-02 0.20961 ];
INF_SP2                   (idx, [1:   8]) = [  2.21049E-02 0.00406  3.06317E-07 1.00000  3.09252E-05 1.00000  1.66236E-03 1.00000 ];
INF_SP3                   (idx, [1:   8]) = [  1.20041E-02 0.00443 -4.75216E-07 1.00000 -2.67219E-04 0.55182  1.76310E-03 1.00000 ];
INF_SP4                   (idx, [1:   8]) = [  7.02597E-03 0.00461 -2.76583E-07 1.00000 -1.58150E-04 0.93007  1.60654E-03 0.50608 ];
INF_SP5                   (idx, [1:   8]) = [  3.47232E-03 0.01986 -7.43045E-07 1.00000 -5.87010E-07 1.00000  4.37580E-03 0.55777 ];
INF_SP6                   (idx, [1:   8]) = [  1.75050E-03 0.04432  1.29976E-06 0.69429  4.05368E-05 1.00000  5.22608E-03 0.44737 ];
INF_SP7                   (idx, [1:   8]) = [  8.03144E-04 0.03170 -7.53461E-07 1.00000 -4.10188E-06 1.00000  2.12716E-04 1.00000 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  1.14455E+00 0.00275  2.23984E+00 1.00000 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.07923E+00 0.00504  1.93970E+00 1.00000 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.17813E+00 0.00375  3.87767E+00 1.00000 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.18257E+00 0.00382 -1.84195E+01 0.86981 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  2.91244E-01 0.00274  2.03542E-02 1.00000 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  3.08895E-01 0.00504  1.54152E-02 1.00000 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  2.82949E-01 0.00373  5.53414E-02 0.51752 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  2.81889E-01 0.00381 -9.69401E-03 1.00000 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  2.09331E-03 0.04776  5.62926E-05 0.27599  4.94000E-04 0.10076  3.87242E-04 0.09455  8.92737E-04 0.07322  2.05384E-04 0.11891  5.76529E-05 0.23774 ];
LAMBDA                    (idx, [1:  14]) = [  6.23595E-01 0.15950  1.25636E-02 0.00511  2.99792E-02 0.00036  1.08229E-01 0.00258  3.16210E-01 0.00101  1.28227E+00 0.01613  7.65589E+00 0.10543 ];

