
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
HOSTNAME                  (idx, [1: 12])  = 'n0041.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Feb  8 17:40:41 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Feb  8 17:40:46 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1612834841481 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.01454E+00  1.01328E+00  9.87335E-01  9.96667E-01  9.82429E-01  1.00684E+00  9.95613E-01  1.00594E+00  9.98293E-01  1.01378E+00  9.92787E-01  1.00610E+00  9.85149E-01  1.00049E+00  9.87708E-01  1.01386E+00  9.91868E-01  1.01869E+00  1.00080E+00  9.87815E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  1.17223E-01 0.00112  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  8.82777E-01 0.00015  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.04269E-01 0.00045  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.96965E-01 0.00045  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.92778E+00 0.00061  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  6.80574E+00 0.00136  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  6.16146E+00 0.00150  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  2.67920E+00 0.00223  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.12464E+00 0.00101  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 999940 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  9.99940E+03 0.00232 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  9.99940E+03 0.00232 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  9.07333E-01 ;
RUNNING_TIME              (idx, 1)        =  9.12333E-02 ;
INIT_TIME                 (idx, [1:  2])  = [  3.94167E-02  3.94167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  6.16666E-04  6.16666E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  5.11833E-02  5.11833E-02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  9.05500E-02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 9.94520 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.72246E+01 0.00623 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  4.20899E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 474.29;
MEMSIZE                   (idx, 1)        = 290.07;
XS_MEMSIZE                (idx, 1)        = 134.38;
MAT_MEMSIZE               (idx, 1)        = 16.18;
RES_MEMSIZE               (idx, 1)        = 5.48;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.03;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 184.21;

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

NORM_COEF                 (idx, [1:   4]) = [  9.57124E-05 0.00058  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  9.65547E-03 0.01829 ];
PU239_FISS                (idx, [1:   4]) = [  2.86062E-01 0.00198  9.31110E-01 0.00048 ];
PU240_FISS                (idx, [1:   4]) = [  1.76909E-02 0.00750  5.75854E-02 0.00731 ];
PU241_FISS                (idx, [1:   4]) = [  3.47327E-03 0.01430  1.13047E-02 0.01415 ];
PU239_CAPT                (idx, [1:   4]) = [  1.92260E-02 0.00713  4.92003E-01 0.00521 ];
PU240_CAPT                (idx, [1:   4]) = [  2.95146E-03 0.01790  7.56272E-02 0.01798 ];
PU241_CAPT                (idx, [1:   4]) = [  3.53019E-04 0.05563  9.03674E-03 0.05547 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 999940 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 4.52262E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 999940 1.04523E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 39327 4.08345E+04 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 316370 3.20973E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 644243 6.83419E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 999940 1.04523E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -4.88944E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.02219E-11 0.00108 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.08016E-18 0.00108 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.56140E-01 0.00105 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.07183E-01 0.00108 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  3.87249E-02 0.00202 ];
TOT_ABSRATE               (idx, [1:   2]) = [  3.45908E-01 0.00104 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.57124E-01 0.00058 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.86081E+01 0.00092 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.54092E-01 0.00055 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.23066E+00 0.00143 ];
INI_FMASS                 (idx, 1)        =  9.46336E+00 ;
TOT_FMASS                 (idx, 1)        =  9.46336E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.99481E+00 0.05409 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.78315E-01 0.02934 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.21324E-04 0.05963 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.14386E+03 0.05582 ];
SIX_FF_LF                 (idx, [1:   2]) = [  3.17264E-01 0.00182 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.97845E-01 8.0E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  2.45914E+00 0.05339 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  7.81413E-01 0.05340 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  3.11262E+00 0.00011 ];
FISSE                     (idx, [1:   2]) = [  2.07694E+02 2.5E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.98454E-01 0.00159  9.96827E-01 0.00151  2.18172E-03 0.03913 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.99492E-01 0.00099 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98994E-01 0.00109 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.99492E-01 0.00099 ];
ABS_KINF                  (idx, [1:   2]) = [  3.16068E+00 0.00056 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  3.24338E+00 0.00100 ];
IMP_ALF                   (idx, [1:   2]) = [  3.24012E+00 0.00092 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  7.81045E-01 0.00325 ];
IMP_EALF                  (idx, [1:   2]) = [  7.83523E-01 0.00296 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.62773E+00 0.00175 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.62921E+00 0.00144 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.29274E-03 0.02502  7.01498E-05 0.11351  5.89038E-04 0.04485  4.53267E-04 0.04825  8.95497E-04 0.03811  2.43773E-04 0.06113  4.10107E-05 0.14726 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  4.53439E-01 0.06229  6.66714E-03 0.09469  2.99884E-02 0.00022  1.07883E-01 0.00117  3.16100E-01 0.00055  1.15448E+00 0.03366  3.20002E+00 0.14856 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  2.40372E-03 0.03375  7.34309E-05 0.19353  6.08056E-04 0.06726  5.05695E-04 0.05840  9.19061E-04 0.04971  2.60774E-04 0.08414  3.67040E-05 0.18572 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  4.48732E-01 0.07942  1.25967E-02 0.00391  2.99791E-02 0.00026  1.07811E-01 0.00126  3.16317E-01 0.00064  1.27587E+00 0.01209  9.19117E+00 0.06082 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.90545E-08 0.06421  3.89207E-08 0.06426  1.47687E-07 0.57714 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.90647E-08 0.06450  3.89329E-08 0.06456  1.45917E-07 0.57429 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  2.18225E-03 0.03947  7.48138E-05 0.19876  5.29026E-04 0.08341  3.97551E-04 0.08737  8.99048E-04 0.05484  2.39324E-04 0.11941  4.24855E-05 0.25279 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  4.42633E-01 0.09484  1.26286E-02 0.00543  2.99918E-02 0.00045  1.08148E-01 0.00220  3.15784E-01 0.00121  1.29588E+00 0.01395  9.58402E+00 0.07848 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.64138E-08 0.15960  3.64010E-08 0.15973  1.85191E-08 0.24945 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.63177E-08 0.15815  3.63054E-08 0.15828  1.84544E-08 0.24879 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.10085E-03 0.13007  6.64039E-05 0.54103  5.61527E-04 0.25539  6.38766E-04 0.25397  3.98014E-04 0.29708  3.82442E-04 0.36691  5.37005E-05 0.72121 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  4.88470E-01 0.35572  1.28203E-02 0.01620  2.99467E-02 5.4E-09  1.07851E-01 0.00446  3.15597E-01 0.00441  1.29687E+00 0.03410  1.06912E+01 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.02325E-03 0.12841  7.43427E-05 0.52251  5.12237E-04 0.25477  6.37930E-04 0.25051  3.90943E-04 0.29632  3.66844E-04 0.36982  4.09490E-05 0.70706 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  4.94839E-01 0.34597  1.28203E-02 0.01620  2.99467E-02 6.6E-09  1.07851E-01 0.00446  3.15597E-01 0.00441  1.29875E+00 0.03172  1.06912E+01 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -8.66032E+04 0.13342 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  4.20293E-08 0.04386 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.19308E-08 0.04355 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.06866E-03 0.02096 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -5.57021E+04 0.03826 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.99493E-09 0.01729 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.03081E-05 0.01180  1.03378E-05 0.01212  5.76860E-07 0.37138 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.44004E-05 0.04709  3.43708E-05 0.04587  3.31288E-06 0.68470 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  9.46670E-04 0.02824  9.41880E-04 0.02892  3.13544E-03 0.37128 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.31392E+01 0.04301 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  6.16146E+00 0.00150  3.98985E+00 0.00287 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.31376E+04 0.00128  1.95095E+05 0.00265  3.60640E+05 0.00358  5.42827E+05 0.00334  4.99428E+05 0.00191  4.35041E+05 0.00193  4.23814E+05 0.00296  3.20904E+05 0.00356  2.31717E+05 0.00483  1.72905E+05 0.00390  1.32953E+05 0.00537  1.02700E+05 0.00584  8.13092E+04 0.00351  6.61470E+04 0.00400  5.32780E+04 0.00467  3.79488E+04 0.00587  3.15153E+04 0.00624  2.59831E+04 0.00545  2.13984E+04 0.01033  3.23355E+04 0.01128  2.21458E+04 0.00420  1.19334E+04 0.01008  5.94072E+03 0.01711  6.29389E+03 0.01285  4.92084E+03 0.01482  3.36989E+03 0.01958  4.68135E+03 0.03055  7.53715E+02 0.03008  8.12133E+02 0.04260  7.06766E+02 0.03041  4.26180E+02 0.03933  5.36481E+02 0.07548  3.18779E+02 0.06654  2.62701E+02 0.09406  4.63276E+01 0.06687  3.86541E+01 0.09698  5.33884E+01 0.13652  5.53620E+01 0.08692  5.86817E+01 0.17017  7.00498E+01 0.20115  4.77005E+01 0.19790  5.31473E+01 0.08270  8.45740E+01 0.17392  1.13074E+02 0.08921  1.97980E+02 0.14757  3.83952E+02 0.05511  3.60645E+02 0.08833  2.81318E+02 0.05981  1.90113E+02 0.08822  1.65098E+02 0.11702  8.72207E+01 0.18816  6.15954E+01 0.08629  1.38044E+02 0.10920  1.40630E+02 0.15190  2.10834E+02 0.03442  1.94154E+02 0.14466  2.86117E+02 0.11060  1.78439E+02 0.09841  1.61323E+02 0.14452  1.12325E+02 0.12288  1.12768E+02 0.06911  8.96316E+01 0.18624  7.45633E+01 0.14133  5.62801E+01 0.19254  4.06151E+01 0.17007  5.18990E+01 0.19918  4.01277E+01 0.19479  4.62487E+01 0.27549  1.67826E+01 0.29312  1.09300E+01 0.37555 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  3.15562E+00 0.00113 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.85940E+01 0.00109  1.48725E-02 0.05622 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.34644E-01 0.00071  5.73834E-01 0.01077 ];
INF_CAPT                  (idx, [1:   4]) = [  2.07693E-03 0.00152  7.33431E-03 0.04368 ];
INF_ABS                   (idx, [1:   4]) = [  1.85903E-02 0.00095  1.69406E-02 0.06237 ];
INF_FISS                  (idx, [1:   4]) = [  1.65133E-02 0.00097  9.60630E-03 0.07897 ];
INF_NSF                   (idx, [1:   4]) = [  5.14014E-02 0.00102  2.75452E-02 0.07902 ];
INF_NUBAR                 (idx, [1:   4]) = [  3.11272E+00 0.00014  2.86738E+00 0.00020 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.07694E+02 3.8E-07  2.07652E+02 8.9E-06 ];
INF_INVV                  (idx, [1:   4]) = [  4.31224E-09 0.00592  2.11264E-06 0.01234 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.16034E-01 0.00075  5.56929E-01 0.01222 ];
INF_SCATT1                (idx, [1:   4]) = [  5.49809E-02 0.00065  3.53869E-02 0.03948 ];
INF_SCATT2                (idx, [1:   4]) = [  2.20236E-02 0.00572 -1.37851E-03 1.00000 ];
INF_SCATT3                (idx, [1:   4]) = [  1.19353E-02 0.00685 -1.49448E-03 1.00000 ];
INF_SCATT4                (idx, [1:   4]) = [  6.87331E-03 0.00814 -6.45666E-04 1.00000 ];
INF_SCATT5                (idx, [1:   4]) = [  3.46805E-03 0.01185 -1.30029E-03 1.00000 ];
INF_SCATT6                (idx, [1:   4]) = [  1.78692E-03 0.01118  2.41429E-03 0.26989 ];
INF_SCATT7                (idx, [1:   4]) = [  7.75528E-04 0.05105  9.44487E-04 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.18362E-01 0.00073  5.56929E-01 0.01222 ];
INF_SCATTP1               (idx, [1:   4]) = [  5.55842E-02 0.00070  3.53869E-02 0.03948 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.21416E-02 0.00567 -1.37851E-03 1.00000 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.19517E-02 0.00716 -1.49448E-03 1.00000 ];
INF_SCATTP4               (idx, [1:   4]) = [  6.87485E-03 0.00863 -6.45666E-04 1.00000 ];
INF_SCATTP5               (idx, [1:   4]) = [  3.46355E-03 0.01256 -1.30029E-03 1.00000 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.78767E-03 0.01204  2.41429E-03 0.26989 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.73762E-04 0.05127  9.44487E-04 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22004E-01 0.00142  5.03581E-01 0.02835 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50149E+00 0.00142  6.64132E-01 0.02934 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.62622E-02 0.00114  1.69406E-02 0.06237 ];
INF_REMXS                 (idx, [1:   4]) = [  1.86600E-02 0.00127  1.81527E-02 0.07659 ];

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

INF_S0                    (idx, [1:   8]) = [  3.15984E-01 0.00075  4.95519E-05 0.03245  1.24786E-03 0.24983  5.55681E-01 0.01213 ];
INF_S1                    (idx, [1:   8]) = [  5.49938E-02 0.00066 -1.29381E-05 0.05276  3.62694E-04 0.46452  3.50242E-02 0.04000 ];
INF_S2                    (idx, [1:   8]) = [  2.20246E-02 0.00571 -1.03943E-06 0.62331 -1.28665E-04 0.80564 -1.24984E-03 1.00000 ];
INF_S3                    (idx, [1:   8]) = [  1.19363E-02 0.00686 -9.81127E-07 0.74855 -2.62751E-04 0.44724 -1.23173E-03 1.00000 ];
INF_S4                    (idx, [1:   8]) = [  6.87342E-03 0.00812 -1.12731E-07 1.00000 -8.03933E-05 1.00000 -5.65272E-04 1.00000 ];
INF_S5                    (idx, [1:   8]) = [  3.46809E-03 0.01171 -4.21766E-08 1.00000 -1.35519E-05 1.00000 -1.28673E-03 1.00000 ];
INF_S6                    (idx, [1:   8]) = [  1.78689E-03 0.01116  3.32720E-08 1.00000 -3.82741E-05 1.00000  2.45257E-03 0.27341 ];
INF_S7                    (idx, [1:   8]) = [  7.74703E-04 0.05134  8.24825E-07 0.69785  2.04706E-05 1.00000  9.24016E-04 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.18312E-01 0.00073  4.95519E-05 0.03245  1.24786E-03 0.24983  5.55681E-01 0.01213 ];
INF_SP1                   (idx, [1:   8]) = [  5.55971E-02 0.00071 -1.29381E-05 0.05276  3.62694E-04 0.46452  3.50242E-02 0.04000 ];
INF_SP2                   (idx, [1:   8]) = [  2.21426E-02 0.00566 -1.03943E-06 0.62331 -1.28665E-04 0.80564 -1.24984E-03 1.00000 ];
INF_SP3                   (idx, [1:   8]) = [  1.19527E-02 0.00717 -9.81127E-07 0.74855 -2.62751E-04 0.44724 -1.23173E-03 1.00000 ];
INF_SP4                   (idx, [1:   8]) = [  6.87496E-03 0.00862 -1.12731E-07 1.00000 -8.03933E-05 1.00000 -5.65272E-04 1.00000 ];
INF_SP5                   (idx, [1:   8]) = [  3.46359E-03 0.01242 -4.21766E-08 1.00000 -1.35519E-05 1.00000 -1.28673E-03 1.00000 ];
INF_SP6                   (idx, [1:   8]) = [  1.78763E-03 0.01203  3.32720E-08 1.00000 -3.82741E-05 1.00000  2.45257E-03 0.27341 ];
INF_SP7                   (idx, [1:   8]) = [  7.72937E-04 0.05154  8.24825E-07 0.69785  2.04706E-05 1.00000  9.24016E-04 1.00000 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  1.14567E+00 0.00105  3.56901E+00 0.89886 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.07304E+00 0.00098  3.88557E+00 1.00000 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.18558E+00 0.00053  4.90849E+00 0.31056 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.18603E+00 0.00211  3.13682E-01 1.00000 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  2.90951E-01 0.00106  4.20099E-02 0.58668 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  3.10644E-01 0.00098  4.04502E-03 1.00000 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  2.81156E-01 0.00053  9.35633E-02 0.23177 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  2.81054E-01 0.00212  2.84213E-02 1.00000 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  2.40372E-03 0.03375  7.34309E-05 0.19353  6.08056E-04 0.06726  5.05695E-04 0.05840  9.19061E-04 0.04971  2.60774E-04 0.08414  3.67040E-05 0.18572 ];
LAMBDA                    (idx, [1:  14]) = [  4.48732E-01 0.07942  1.25967E-02 0.00391  2.99791E-02 0.00026  1.07811E-01 0.00126  3.16317E-01 0.00064  1.27587E+00 0.01209  9.19117E+00 0.06082 ];

