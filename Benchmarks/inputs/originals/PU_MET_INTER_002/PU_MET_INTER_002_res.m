
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
TITLE                     (idx, [1: 16])  = 'PU-MET-INTER-002' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 16])  = 'PU_MET_INTER_002' ;
WORKING_DIRECTORY         (idx, [1: 83])  = '/global/home/users/christforsyth/ML_neutronics/PU_MET_INTER_002/graphite_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0009.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:46:13 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:46:50 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622177173328 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99011E-01  1.00152E+00  9.94160E-01  1.00154E+00  1.00313E+00  9.98185E-01  1.00174E+00  9.98158E-01  1.00681E+00  1.00158E+00  9.96519E-01  9.97438E-01  9.98651E-01  9.94386E-01  1.00169E+00  1.00161E+00  1.00090E+00  9.99824E-01  1.00284E+00  1.00030E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  1.59366E-03 0.00613  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.98406E-01 9.8E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.75611E-01 7.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.75390E-01 7.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.28986E+00 0.00043  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.18283E+02 0.00084  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.18221E+02 0.00084  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.68283E+01 0.00085  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  8.26697E-02 0.00430  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000333 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00033E+04 0.00210 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00033E+04 0.00210 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.06938E+01 ;
RUNNING_TIME              (idx, 1)        =  6.21550E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  7.82667E-02  7.82667E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  8.00002E-04  8.00002E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  5.42450E-01  5.42450E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  6.20117E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.20511 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.97010E+01 0.00254 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.49301E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 555.68;
MEMSIZE                   (idx, 1)        = 376.75;
XS_MEMSIZE                (idx, 1)        = 208.63;
MAT_MEMSIZE               (idx, 1)        = 24.62;
RES_MEMSIZE               (idx, 1)        = 9.52;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 133.98;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 178.93;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 139364 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 7 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 17 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 17 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 612 ;
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

NORM_COEF                 (idx, [1:   4]) = [  9.99778E-05 0.00094  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.79840E-02 0.01032 ];
PU239_FISS                (idx, [1:   4]) = [  3.44364E-01 0.00167  9.89864E-01 0.00019 ];
PU240_FISS                (idx, [1:   4]) = [  2.54586E-03 0.02024  7.31658E-03 0.02007 ];
PU241_FISS                (idx, [1:   4]) = [  8.69281E-04 0.03820  2.50178E-03 0.03851 ];
PU239_CAPT                (idx, [1:   4]) = [  1.52706E-01 0.00265  2.58993E-01 0.00251 ];
PU240_CAPT                (idx, [1:   4]) = [  8.95058E-03 0.00979  1.51831E-02 0.00992 ];
PU241_CAPT                (idx, [1:   4]) = [  1.82582E-04 0.06464  3.09467E-04 0.06458 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000333 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 1.51816E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000333 1.00015E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 589870 5.89767E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 348024 3.47966E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 62439 6.24193E+04 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000333 1.00015E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 6.86850E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.15710E-11 0.00101 ];
TOT_POWDENS               (idx, [1:   2]) = [  6.17917E-20 0.00101 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.01722E+00 0.00100 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.47827E-01 0.00101 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.89772E-01 0.00061 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.37599E-01 0.00027 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99778E-01 0.00094 ];
TOT_FLUX                  (idx, [1:   2]) = [  2.68781E+02 0.00079 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.24009E-02 0.00401 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.18206E+02 0.00079 ];
INI_FMASS                 (idx, 1)        =  1.87259E+02 ;
TOT_FMASS                 (idx, 1)        =  1.87259E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.67345E+00 0.07442 ];
SIX_FF_F                  (idx, [1:   2]) = [  2.63835E-02 0.07627 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.43972E-03 0.01322 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.68175E+03 0.04644 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.37637E-01 0.00027 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.99940E-01 7.9E-06 ];
SIX_FF_KINF               (idx, [1:   2]) = [  7.05749E-01 0.07377 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  6.61763E-01 0.07377 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.92451E+00 2.4E-05 ];
FISSE                     (idx, [1:   2]) = [  2.07634E+02 3.6E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.01733E+00 0.00142  1.01530E+00 0.00133  2.31487E-03 0.03689 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.01737E+00 0.00100 ];
COL_KEFF                  (idx, [1:   2]) = [  1.01754E+00 0.00136 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.01737E+00 0.00100 ];
ABS_KINF                  (idx, [1:   2]) = [  1.08508E+00 0.00094 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  7.64057E+00 0.00076 ];
IMP_ALF                   (idx, [1:   2]) = [  7.63306E+00 0.00060 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.62718E-03 0.00577 ];
IMP_EALF                  (idx, [1:   2]) = [  9.69359E-03 0.00457 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.01241E-01 0.00430 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.01350E-01 0.00154 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.19600E-03 0.02088  7.09528E-05 0.10654  6.13043E-04 0.04259  4.29364E-04 0.04835  7.80987E-04 0.03232  2.67336E-04 0.05695  3.43125E-05 0.16442 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  4.73095E-01 0.06502  6.73979E-03 0.09276  2.99526E-02 9.4E-05  1.07307E-01 0.00082  3.17365E-01 0.00024  1.28182E+00 0.02085  2.97423E+00 0.15947 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  2.26244E-03 0.03399  1.01228E-04 0.15777  6.04928E-04 0.05863  4.18880E-04 0.07870  8.22827E-04 0.05347  2.75330E-04 0.08336  3.92470E-05 0.24770 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  5.30484E-01 0.11591  1.24811E-02 0.0E+00  2.99506E-02 6.3E-05  1.07316E-01 0.00088  3.17385E-01 0.00035  1.34084E+00 0.00324  9.93918E+00 0.04220 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.30047E-06 0.00404  1.29993E-06 0.00407  1.51729E-06 0.09090 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  1.32280E-06 0.00391  1.32225E-06 0.00393  1.54215E-06 0.08988 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  2.26397E-03 0.03582  9.64466E-05 0.16222  6.28007E-04 0.06812  4.16359E-04 0.08298  7.92789E-04 0.06097  2.98483E-04 0.08911  3.18876E-05 0.27725 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  4.82926E-01 0.10073  1.24811E-02 0.0E+00  2.99532E-02 0.00013  1.07255E-01 0.00093  3.17445E-01 0.00032  1.32753E+00 0.00850  1.00402E+01 0.06484 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.26228E-06 0.01119  1.26312E-06 0.01121  6.50946E-07 0.14055 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  1.28360E-06 0.01085  1.28446E-06 0.01088  6.63832E-07 0.14080 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.46339E-03 0.11315  5.64917E-05 0.62553  6.32618E-04 0.22906  4.88742E-04 0.25751  9.67850E-04 0.17044  2.25946E-04 0.38708  9.17468E-05 0.64746 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  6.06986E-01 0.33803  1.24811E-02 8.6E-09  2.99760E-02 0.00098  1.07155E-01 0.0E+00  3.17580E-01 0.00012  1.35238E+00 0.0E+00  8.08731E+00 0.32197 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.48106E-03 0.11050  5.95926E-05 0.63913  6.88863E-04 0.22491  4.92725E-04 0.25897  9.66056E-04 0.17133  1.88528E-04 0.39602  8.52920E-05 0.65324 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.03101E-01 0.34014  1.24811E-02 0.0E+00  2.99760E-02 0.00098  1.07155E-01 0.0E+00  3.17583E-01 0.00011  1.35238E+00 0.0E+00  8.08731E+00 0.32197 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.97700E+03 0.11784 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.28517E-06 0.00300 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  1.30714E-06 0.00252 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.25790E-03 0.02004 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.76086E+03 0.02104 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.81311E-08 0.00200 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  5.99142E-05 0.00194  5.99154E-05 0.00195  6.55540E-06 0.29345 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.94629E-05 0.01202  1.94708E-05 0.01203  1.54164E-06 0.45245 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.21895E-03 0.01308  7.22395E-03 0.01319  4.79765E-03 0.28957 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.51250E+01 0.04548 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.18221E+02 0.00084  7.15197E+01 0.00150 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  6.47970E+04 0.00928  2.81372E+05 0.00308  7.22441E+05 0.00132  1.49691E+06 0.00056  2.44029E+06 0.00120  3.77043E+06 0.00097  4.55508E+06 0.00101  4.48591E+06 0.00030  4.72995E+06 0.00110  4.29917E+06 0.00120  3.73408E+06 0.00062  2.54106E+06 0.00021  3.41132E+06 0.00048  2.26234E+06 0.00073  1.37745E+06 0.00065  1.53537E+06 0.00057  1.54321E+06 0.00090  1.67440E+06 0.00041  1.48400E+06 0.00037  2.34278E+06 0.00083  1.46243E+06 0.00147  9.78269E+05 0.00123  5.17526E+05 0.00167  5.27710E+05 0.00217  4.44626E+05 0.00324  3.12681E+05 0.00391  4.21228E+05 0.00548  6.42446E+04 0.00566  6.85589E+04 0.00499  5.11034E+04 0.00573  2.56095E+04 0.00586  3.72549E+04 0.01248  2.08088E+04 0.00940  1.51245E+04 0.01016  2.68776E+03 0.01476  2.56587E+03 0.02460  2.52180E+03 0.01531  2.47971E+03 0.02178  2.38680E+03 0.02423  2.23277E+03 0.02503  2.23915E+03 0.02839  2.02065E+03 0.01930  3.67194E+03 0.01026  5.37488E+03 0.01175  6.12890E+03 0.01505  1.25292E+04 0.02461  8.70742E+03 0.03058  6.00905E+03 0.03155  2.58132E+03 0.04097  1.32746E+03 0.05232  8.34298E+02 0.06188  7.31726E+02 0.06834  9.52876E+02 0.06754  7.76892E+02 0.07263  7.90451E+02 0.07074  5.11751E+02 0.06521  3.12804E+02 0.10286  6.73909E+01 0.10483  2.80529E+01 0.20550  1.55145E+01 0.21623  9.01677E+00 0.16126  7.08795E+00 0.15410  3.62148E+00 0.28674  1.95967E+00 0.42316  1.11700E+00 0.40929  3.45033E-01 1.00000  5.34917E-01 0.67907  3.22278E-01 1.00000  1.54618E-01 1.00000  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.08525E+00 0.00062 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.68672E+02 0.00071  1.18319E-01 0.03769 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  4.39604E-01 0.00020  8.61108E-01 0.00593 ];
INF_CAPT                  (idx, [1:   4]) = [  2.16988E-03 0.00088  5.78189E-02 0.00638 ];
INF_ABS                   (idx, [1:   4]) = [  3.46415E-03 0.00050  5.88577E-02 0.00708 ];
INF_FISS                  (idx, [1:   4]) = [  1.29428E-03 0.00076  1.03878E-03 0.10830 ];
INF_NSF                   (idx, [1:   4]) = [  3.78515E-03 0.00075  2.97456E-03 0.10822 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.92453E+00 1.1E-05  2.86366E+00 0.00013 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.07634E+02 2.5E-08  2.07622E+02 4.1E-07 ];
INF_INVV                  (idx, [1:   4]) = [  1.76312E-08 0.00268  1.15500E-06 0.00284 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  4.36141E-01 0.00021  8.02041E-01 0.00555 ];
INF_SCATT1                (idx, [1:   4]) = [  1.83982E-02 0.00173  9.88629E-03 0.05240 ];
INF_SCATT2                (idx, [1:   4]) = [  7.62046E-03 0.00178 -2.77427E-03 0.40686 ];
INF_SCATT3                (idx, [1:   4]) = [  1.73956E-03 0.00743  1.68518E-03 0.53497 ];
INF_SCATT4                (idx, [1:   4]) = [  9.19073E-04 0.02188  5.00476E-04 1.00000 ];
INF_SCATT5                (idx, [1:   4]) = [  1.50239E-04 0.07477 -1.92574E-03 0.24026 ];
INF_SCATT6                (idx, [1:   4]) = [  4.60954E-05 0.19533 -9.89861E-04 0.58336 ];
INF_SCATT7                (idx, [1:   4]) = [  1.49685E-05 0.68004  2.05749E-04 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  4.36141E-01 0.00021  8.02041E-01 0.00555 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.83982E-02 0.00173  9.88629E-03 0.05240 ];
INF_SCATTP2               (idx, [1:   4]) = [  7.62043E-03 0.00178 -2.77427E-03 0.40686 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.73954E-03 0.00743  1.68518E-03 0.53497 ];
INF_SCATTP4               (idx, [1:   4]) = [  9.19084E-04 0.02188  5.00476E-04 1.00000 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.50237E-04 0.07477 -1.92574E-03 0.24026 ];
INF_SCATTP6               (idx, [1:   4]) = [  4.60893E-05 0.19551 -9.89861E-04 0.58336 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.49437E-05 0.68066  2.05749E-04 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.15506E-01 0.00018  8.50382E-01 0.00624 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.05651E+00 0.00018  3.92042E-01 0.00625 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  3.46359E-03 0.00048  5.88577E-02 0.00708 ];
INF_REMXS                 (idx, [1:   4]) = [  3.49540E-03 0.00034  7.18636E-02 0.01446 ];

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

INF_S0                    (idx, [1:   8]) = [  4.36109E-01 0.00021  3.17963E-05 0.02722  1.27964E-02 0.01377  7.89245E-01 0.00549 ];
INF_S1                    (idx, [1:   8]) = [  1.84070E-02 0.00173 -8.78095E-06 0.02924 -7.27588E-04 0.15068  1.06139E-02 0.05218 ];
INF_S2                    (idx, [1:   8]) = [  7.62087E-03 0.00178 -4.05162E-07 0.24980 -5.92854E-04 0.32884 -2.18142E-03 0.45046 ];
INF_S3                    (idx, [1:   8]) = [  1.73965E-03 0.00737 -8.58581E-08 1.00000 -4.97858E-05 1.00000  1.73496E-03 0.58870 ];
INF_S4                    (idx, [1:   8]) = [  9.19131E-04 0.02195 -5.82802E-08 1.00000 -1.63723E-04 0.69652  6.64199E-04 1.00000 ];
INF_S5                    (idx, [1:   8]) = [  1.50290E-04 0.07508 -5.12066E-08 1.00000 -3.67181E-05 1.00000 -1.88902E-03 0.24860 ];
INF_S6                    (idx, [1:   8]) = [  4.61344E-05 0.19614 -3.90237E-08 1.00000 -5.68589E-05 1.00000 -9.33002E-04 0.60832 ];
INF_S7                    (idx, [1:   8]) = [  1.48958E-05 0.67773  7.27446E-08 1.00000 -9.15971E-05 0.92985  2.97346E-04 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  4.36110E-01 0.00021  3.17963E-05 0.02722  1.27964E-02 0.01377  7.89245E-01 0.00549 ];
INF_SP1                   (idx, [1:   8]) = [  1.84070E-02 0.00173 -8.78095E-06 0.02924 -7.27588E-04 0.15068  1.06139E-02 0.05218 ];
INF_SP2                   (idx, [1:   8]) = [  7.62083E-03 0.00178 -4.05162E-07 0.24980 -5.92854E-04 0.32884 -2.18142E-03 0.45046 ];
INF_SP3                   (idx, [1:   8]) = [  1.73963E-03 0.00737 -8.58581E-08 1.00000 -4.97858E-05 1.00000  1.73496E-03 0.58870 ];
INF_SP4                   (idx, [1:   8]) = [  9.19142E-04 0.02195 -5.82802E-08 1.00000 -1.63723E-04 0.69652  6.64199E-04 1.00000 ];
INF_SP5                   (idx, [1:   8]) = [  1.50288E-04 0.07508 -5.12066E-08 1.00000 -3.67181E-05 1.00000 -1.88902E-03 0.24860 ];
INF_SP6                   (idx, [1:   8]) = [  4.61284E-05 0.19632 -3.90237E-08 1.00000 -5.68589E-05 1.00000 -9.33002E-04 0.60832 ];
INF_SP7                   (idx, [1:   8]) = [  1.48710E-05 0.67834  7.27446E-08 1.00000 -9.15971E-05 0.92985  2.97346E-04 1.00000 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.97295E-01 0.00086  1.04178E+00 0.30889 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.98255E-01 0.00093  1.12927E+00 0.39291 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.97875E-01 0.00195 -1.92613E-01 1.00000 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.95777E-01 0.00241  1.21418E+00 0.46279 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.12122E+00 0.00086  4.04349E-01 0.17528 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11762E+00 0.00093  4.27094E-01 0.21643 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11905E+00 0.00194  3.48262E-01 0.34774 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.12700E+00 0.00241  4.37692E-01 0.21111 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  2.26244E-03 0.03399  1.01228E-04 0.15777  6.04928E-04 0.05863  4.18880E-04 0.07870  8.22827E-04 0.05347  2.75330E-04 0.08336  3.92470E-05 0.24770 ];
LAMBDA                    (idx, [1:  14]) = [  5.30484E-01 0.11591  1.24811E-02 0.0E+00  2.99506E-02 6.3E-05  1.07316E-01 0.00088  3.17385E-01 0.00035  1.34084E+00 0.00324  9.93918E+00 0.04220 ];

