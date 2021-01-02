
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/mnt/c/Users/Pedro/Desktop/ML_Nuclear_Data/serpent/U233_KNN_Val' ;
HOSTNAME                  (idx, [1: 15])  = 'DESKTOP-FURFLQN' ;
CPU_TYPE                  (idx, [1: 46])  = 'AMD Ryzen Threadripper 1920X 12-Core Processor' ;
CPU_MHZ                   (idx, 1)        = 4294967295.0 ;
START_DATE                (idx, [1: 24])  = 'Fri Oct 23 13:11:24 2020' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Fri Oct 23 13:11:32 2020' ;

% Run parameters:

POP                       (idx, 1)        = 5000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1603483884 ;
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.0E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.54526E+00 0.00044  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.15370E+00 0.00102  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.54241E+00 0.00152  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  6.11283E-01 0.00122  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SOURCE_POPULATION         (idx, 1)        = 500344 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00344E+03 0.00270 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00344E+03 0.00270 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.13021E-01 ;
RUNNING_TIME              (idx, 1)        =  1.41800E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.41500E-02  1.41500E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  4.16664E-04  4.16664E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.27217E-01  1.27217E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.41333E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.79704 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.95461E-01 0.01586 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  6.58556E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.99820E-04 0.00076  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  9.97788E-04 0.06508 ];
U233_FISS                 (idx, [1:   4]) = [  3.68985E-01 0.00252  9.91253E-01 0.00021 ];
U235_FISS                 (idx, [1:   4]) = [  6.76643E-05 0.17828  1.82940E-04 0.17877 ];
U238_FISS                 (idx, [1:   4]) = [  3.34928E-04 0.07544  9.00450E-04 0.07535 ];
U233_CAPT                 (idx, [1:   4]) = [  1.60435E-02 0.01075  9.76194E-01 0.00160 ];
U235_CAPT                 (idx, [1:   4]) = [  7.97625E-06 0.49240  5.21274E-04 0.49492 ];
U238_CAPT                 (idx, [1:   4]) = [  8.24963E-05 0.15552  5.17197E-03 0.15808 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 500344 5.00000E+05 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.24830E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 500344 5.00325E+05 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 8220 8.22227E+03 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 186265 1.86271E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 305859 3.05832E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 500344 5.00325E+05 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -6.92671E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.19264E-11 0.00136 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.21283E-19 0.00136 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.00270E+00 0.00132 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.72700E-01 0.00136 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.62273E-02 0.00243 ];
TOT_ABSRATE               (idx, [1:   2]) = [  3.88927E-01 0.00138 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99098E-01 0.00076 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.13979E+00 0.00133 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.11073E-01 0.00088 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.54207E+00 0.00139 ];
INI_FMASS                 (idx, 1)        =  1.65350E+01 ;
TOT_FMASS                 (idx, 1)        =  1.65350E+01 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  3.88336E-01 0.00193 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.69040E+00 0.00014 ];
FISSE                     (idx, [1:   2]) = [  1.99728E+02 8.0E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.00246E+00 0.00195  9.99255E-01 0.00196  3.09598E-03 0.04388 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.00333E+00 0.00132 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00365E+00 0.00142 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.00333E+00 0.00132 ];
ABS_KINF                  (idx, [1:   2]) = [  2.58231E+00 0.00021 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  2.89300E+00 0.00097 ];
IMP_ALF                   (idx, [1:   2]) = [  2.89451E+00 0.00081 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  1.10863E+00 0.00279 ];
IMP_EALF                  (idx, [1:   2]) = [  1.10682E+00 0.00232 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.74693E+00 0.00236 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.74519E+00 0.00167 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.82391E-03 0.02564  2.92841E-04 0.08028  7.51048E-04 0.04905  4.53234E-04 0.06665  1.11470E-03 0.04501  1.94054E-04 0.10115  1.80295E-05 0.35940 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  3.01326E-01 0.08996  9.60913E-03 0.05493  3.12926E-02 0.01768  9.42454E-02 0.03350  2.94351E-01 0.00041  7.46310E-01 0.08206  8.16637E-01 0.34083 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  3.19615E-03 0.03947  3.60125E-04 0.09871  8.33755E-04 0.06440  5.27418E-04 0.09439  1.23336E-03 0.07068  2.14222E-04 0.14637  2.72668E-05 0.44535 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  3.08090E-01 0.12937  1.24794E-02 1.3E-06  3.22556E-02 0.00031  1.04705E-01 0.00038  2.94397E-01 0.00077  1.24408E+00 0.00092  1.01851E+01 0.00375 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.75709E-09 0.00542  2.74715E-09 0.00537  5.91439E-09 0.08736 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.76253E-09 0.00481  2.75256E-09 0.00474  5.92861E-09 0.08762 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  3.05312E-03 0.04581  3.29472E-04 0.13125  8.60433E-04 0.08297  4.94929E-04 0.11092  1.14851E-03 0.06398  1.99915E-04 0.14831  1.98541E-05 0.50193 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  2.87881E-01 0.11867  1.24794E-02 0.0E+00  3.22413E-02 0.00060  1.04662E-01 0.00017  2.94692E-01 0.00177  1.24353E+00 0.00088  1.02232E+01 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.70725E-09 0.01192  2.69341E-09 0.01178  4.29538E-09 0.19508 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.71398E-09 0.01212  2.70005E-09 0.01195  4.30698E-09 0.19606 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.77229E-03 0.12503  4.10464E-04 0.37821  8.13052E-04 0.23726  4.21053E-04 0.33820  9.80642E-04 0.24209  1.47082E-04 0.65310  0.00000E+00 0.0E+00 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  1.91464E-01 0.15163  1.24794E-02 0.0E+00  3.22337E-02 0.00127  1.04645E-01 5.5E-09  2.95784E-01 0.00552  1.24244E+00 9.1E-09  0.00000E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.63555E-03 0.11869  3.85167E-04 0.35018  7.71798E-04 0.22089  4.32479E-04 0.32596  8.99174E-04 0.22929  1.46933E-04 0.62068  0.00000E+00 0.0E+00 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  1.87675E-01 0.14956  1.24794E-02 3.9E-09  3.22337E-02 0.00127  1.04645E-01 0.0E+00  2.95784E-01 0.00552  1.24244E+00 1.3E-08  0.00000E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.05160E+06 0.12759 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.71715E-09 0.00309 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.72276E-09 0.00232 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.98274E-03 0.02500 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.09674E+06 0.02443 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  7.79153E-10 0.00152 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.96667E+01 0.05005 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.54241E+00 0.00152  2.10611E+00 0.00185 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  9.46057E+03 0.00754  4.06051E+04 0.00368  7.26950E+04 0.00286  8.35571E+04 0.00303  7.49218E+04 0.00192  5.50202E+04 0.00545  3.50985E+04 0.00271  2.07219E+04 0.00603  1.13319E+04 0.01038  5.86065E+03 0.01299  2.75497E+03 0.03921  1.33302E+03 0.03743  6.20121E+02 0.05020  2.39753E+02 0.07948  8.74428E+01 0.16282  3.46517E+01 0.07115  1.46258E+01 0.14758  4.48135E+00 0.34783  3.85722E+00 0.39954  2.84561E+00 0.40740  4.73132E-01 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  2.58452E+00 0.00169 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.13995E+00 0.00102  0.00000E+00 0.0E+00 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.72503E-01 0.00033  0.00000E+00 0.0E+00 ];
INF_CAPT                  (idx, [1:   4]) = [  3.91998E-03 0.00165  0.00000E+00 0.0E+00 ];
INF_ABS                   (idx, [1:   4]) = [  9.39492E-02 0.00021  0.00000E+00 0.0E+00 ];
INF_FISS                  (idx, [1:   4]) = [  9.00292E-02 0.00015  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   4]) = [  2.42212E-01 0.00011  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.69037E+00 0.00013  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  1.99728E+02 7.1E-08  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  7.79197E-10 0.00167  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.78628E-01 0.00039  0.00000E+00 0.0E+00 ];
INF_SCATT1                (idx, [1:   4]) = [  1.17007E-01 0.00263  0.00000E+00 0.0E+00 ];
INF_SCATT2                (idx, [1:   4]) = [  7.31728E-02 0.00371  0.00000E+00 0.0E+00 ];
INF_SCATT3                (idx, [1:   4]) = [  5.32916E-02 0.00340  0.00000E+00 0.0E+00 ];
INF_SCATT4                (idx, [1:   4]) = [  3.64904E-02 0.00301  0.00000E+00 0.0E+00 ];
INF_SCATT5                (idx, [1:   4]) = [  1.97320E-02 0.00533  0.00000E+00 0.0E+00 ];
INF_SCATT6                (idx, [1:   4]) = [  9.97699E-03 0.01252  0.00000E+00 0.0E+00 ];
INF_SCATT7                (idx, [1:   4]) = [  4.39351E-03 0.02564  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.78785E-01 0.00041  0.00000E+00 0.0E+00 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.17003E-01 0.00263  0.00000E+00 0.0E+00 ];
INF_SCATTP2               (idx, [1:   4]) = [  7.31681E-02 0.00368  0.00000E+00 0.0E+00 ];
INF_SCATTP3               (idx, [1:   4]) = [  5.32934E-02 0.00340  0.00000E+00 0.0E+00 ];
INF_SCATTP4               (idx, [1:   4]) = [  3.64954E-02 0.00297  0.00000E+00 0.0E+00 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.97316E-02 0.00527  0.00000E+00 0.0E+00 ];
INF_SCATTP6               (idx, [1:   4]) = [  9.97494E-03 0.01244  0.00000E+00 0.0E+00 ];
INF_SCATTP7               (idx, [1:   4]) = [  4.39785E-03 0.02533  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.37692E-01 0.00135  0.00000E+00 0.0E+00 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.40239E+00 0.00135  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  9.37924E-02 0.00026  0.00000E+00 0.0E+00 ];
INF_REMXS                 (idx, [1:   4]) = [  9.38744E-02 0.00160  0.00000E+00 0.0E+00 ];

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

INF_S0                    (idx, [1:   8]) = [  2.78628E-01 0.00039  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S1                    (idx, [1:   8]) = [  1.17007E-01 0.00263  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S2                    (idx, [1:   8]) = [  7.31728E-02 0.00371  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S3                    (idx, [1:   8]) = [  5.32916E-02 0.00340  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S4                    (idx, [1:   8]) = [  3.64904E-02 0.00301  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S5                    (idx, [1:   8]) = [  1.97320E-02 0.00533  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S6                    (idx, [1:   8]) = [  9.97699E-03 0.01252  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S7                    (idx, [1:   8]) = [  4.39351E-03 0.02564  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.78785E-01 0.00041  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP1                   (idx, [1:   8]) = [  1.17003E-01 0.00263  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP2                   (idx, [1:   8]) = [  7.31681E-02 0.00368  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP3                   (idx, [1:   8]) = [  5.32934E-02 0.00340  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP4                   (idx, [1:   8]) = [  3.64954E-02 0.00297  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP5                   (idx, [1:   8]) = [  1.97316E-02 0.00527  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP6                   (idx, [1:   8]) = [  9.97494E-03 0.01244  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP7                   (idx, [1:   8]) = [  4.39785E-03 0.02533  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  1.92743E+00 0.00332  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.92700E+00 0.00312  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.91850E+00 0.00400  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.93724E+00 0.00723  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.72949E-01 0.00330  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.72987E-01 0.00311  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.73758E-01 0.00398  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.72102E-01 0.00724  0.00000E+00 0.0E+00 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  3.19615E-03 0.03947  3.60125E-04 0.09871  8.33755E-04 0.06440  5.27418E-04 0.09439  1.23336E-03 0.07068  2.14222E-04 0.14637  2.72668E-05 0.44535 ];
LAMBDA                    (idx, [1:  14]) = [  3.08090E-01 0.12937  1.24794E-02 1.3E-06  3.22556E-02 0.00031  1.04705E-01 0.00038  2.94397E-01 0.00077  1.24408E+00 0.00092  1.01851E+01 0.00375 ];

