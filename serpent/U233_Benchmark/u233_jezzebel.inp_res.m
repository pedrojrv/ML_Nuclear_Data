
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
INPUT_FILE_NAME           (idx, [1: 17])  = 'u233_jezzebel.inp' ;
WORKING_DIRECTORY         (idx, [1: 49])  = '/mnt/c/Users/Pedro/Desktop/SERPENT/U233_Benchmark' ;
HOSTNAME                  (idx, [1: 15])  = 'DESKTOP-FURFLQN' ;
CPU_TYPE                  (idx, [1: 46])  = 'AMD Ryzen Threadripper 1920X 12-Core Processor' ;
CPU_MHZ                   (idx, 1)        = 4294967295.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar 30 00:20:03 2020' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar 30 00:20:08 2020' ;

% Run parameters:

POP                       (idx, 1)        = 5000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1585552803 ;
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 2.3E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  1.54304E+00 0.00047  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  2.14579E+00 0.00116  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.53292E+00 0.00171  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  6.12872E-01 0.00115  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SOURCE_POPULATION         (idx, 1)        = 500135 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  5.00135E+03 0.00278 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  5.00135E+03 0.00278 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.69792E-02 ;
RUNNING_TIME              (idx, 1)        =  9.00000E-02 ;
INIT_TIME                 (idx, [1:  2])  = [  1.27500E-02  1.27500E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  2.33336E-04  2.33336E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  7.70167E-02  7.70167E-02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  8.97667E-02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.96644 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.81100E-01 0.01949 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.92778E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 65414.54 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.99964E-04 0.00078  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  8.20375E-04 0.07652 ];
U233_FISS                 (idx, [1:   4]) = [  3.68098E-01 0.00246  9.91722E-01 0.00021 ];
U235_FISS                 (idx, [1:   4]) = [  8.19931E-05 0.15236  2.19839E-04 0.15251 ];
U238_FISS                 (idx, [1:   4]) = [  3.09685E-04 0.07887  8.36473E-04 0.07905 ];
U233_CAPT                 (idx, [1:   4]) = [  1.59083E-02 0.01113  9.80302E-01 0.00156 ];
U235_CAPT                 (idx, [1:   4]) = [  5.96105E-06 0.57162  4.02825E-04 0.58450 ];
U238_CAPT                 (idx, [1:   4]) = [  7.39008E-05 0.17415  4.57248E-03 0.17809 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 500135 5.00000E+05 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 3.44233E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 500135 5.00344E+05 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 8110 8.11491E+03 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 185508 1.85603E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 306517 3.06626E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 500135 5.00344E+05 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -7.97445E-09 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.18653E-11 0.00139 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.17589E-19 0.00139 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97733E-01 0.00139 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.70791E-01 0.00139 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  1.61017E-02 0.00233 ];
TOT_ABSRATE               (idx, [1:   2]) = [  3.86893E-01 0.00141 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99818E-01 0.00078 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.11915E+00 0.00139 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.13107E-01 0.00089 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.53357E+00 0.00144 ];
INI_FMASS                 (idx, 1)        =  1.65350E+01 ;
TOT_FMASS                 (idx, 1)        =  1.65350E+01 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_F                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_P                  (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_LF                 (idx, [1:   2]) = [  3.86748E-01 0.00181 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.69082E+00 0.00014 ];
FISSE                     (idx, [1:   2]) = [  1.99728E+02 8.7E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.98666E-01 0.00198  9.96323E-01 0.00192  2.86936E-03 0.03884 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98360E-01 0.00139 ];
COL_KEFF                  (idx, [1:   2]) = [  9.97980E-01 0.00163 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98360E-01 0.00139 ];
ABS_KINF                  (idx, [1:   2]) = [  2.58304E+00 0.00021 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  2.88742E+00 0.00086 ];
IMP_ALF                   (idx, [1:   2]) = [  2.89135E+00 0.00079 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  1.11473E+00 0.00247 ];
IMP_EALF                  (idx, [1:   2]) = [  1.11031E+00 0.00227 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.75570E+00 0.00208 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.74871E+00 0.00164 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.86148E-03 0.02580  2.51403E-04 0.09692  7.40924E-04 0.05257  5.18106E-04 0.06577  1.14490E-03 0.04463  1.90360E-04 0.10932  1.57848E-05 0.34096 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  2.86085E-01 0.07066  8.23639E-03 0.07214  3.16010E-02 0.01436  9.31653E-02 0.03533  2.94587E-01 0.00065  7.46845E-01 0.08207  8.20048E-01 0.34083 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  3.01418E-03 0.03518  3.02286E-04 0.13132  7.46021E-04 0.07602  6.20773E-04 0.08874  1.14071E-03 0.05747  1.89275E-04 0.17770  1.51103E-05 0.40197 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  2.81584E-01 0.09603  1.24794E-02 0.0E+00  3.22334E-02 0.00071  1.04686E-01 0.00023  2.94432E-01 0.00062  1.24527E+00 0.00142  1.02545E+01 0.00305 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  2.75818E-09 0.00511  2.74875E-09 0.00510  6.11592E-09 0.07067 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.75341E-09 0.00470  2.74397E-09 0.00468  6.11774E-09 0.07091 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  2.89128E-03 0.03855  2.43603E-04 0.16240  7.84107E-04 0.08138  5.68659E-04 0.11054  1.10723E-03 0.06179  1.69577E-04 0.17327  1.81056E-05 0.50191 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  2.77135E-01 0.10879  1.24794E-02 2.7E-09  3.22546E-02 0.00042  1.04656E-01 0.00011  2.94399E-01 0.00070  1.24553E+00 0.00172  1.02232E+01 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  2.74223E-09 0.01458  2.73055E-09 0.01450  2.66856E-09 0.17586 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.73786E-09 0.01461  2.72620E-09 0.01453  2.66233E-09 0.17603 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.81782E-03 0.15033  1.68483E-04 0.53730  1.01126E-03 0.21705  2.14008E-04 0.55804  8.81182E-04 0.22759  5.21167E-04 0.43630  2.17163E-05 1.00000 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  4.56487E-01 0.41704  1.24794E-02 0.0E+00  3.22745E-02 0.0E+00  1.04645E-01 0.0E+00  2.94152E-01 6.6E-09  1.24906E+00 0.00529  1.02232E+01 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.92038E-03 0.14432  1.71662E-04 0.52548  1.07319E-03 0.21223  2.27571E-04 0.54735  9.09129E-04 0.22292  5.21491E-04 0.43297  1.73377E-05 1.00000 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  4.56976E-01 0.41664  1.24794E-02 0.0E+00  3.22745E-02 0.0E+00  1.04645E-01 5.8E-09  2.94152E-01 5.4E-09  1.24906E+00 0.00529  1.02232E+01 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.06033E+06 0.15171 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  2.75129E-09 0.00253 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.74678E-09 0.00202 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.81737E-03 0.02780 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.02431E+06 0.02774 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  7.77791E-10 0.00140 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.83965E+01 0.05669 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.53292E+00 0.00171  2.09794E+00 0.00180 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  9.44591E+03 0.00493  4.03880E+04 0.00343  7.27444E+04 0.00199  8.28215E+04 0.00551  7.51392E+04 0.00329  5.42023E+04 0.00525  3.50136E+04 0.00707  2.05596E+04 0.00969  1.09421E+04 0.00915  5.68818E+03 0.02072  2.75037E+03 0.02016  1.31429E+03 0.00833  5.88146E+02 0.01819  2.39352E+02 0.08194  1.11453E+02 0.10712  3.77971E+01 0.10911  1.52023E+01 0.30125  8.88910E+00 0.15163  3.29624E+00 0.35479  2.93326E+00 0.41231  1.71972E-01 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  3.20055E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  5.19151E-02 1.00000  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  2.58047E+00 0.00139 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  4.11942E+00 0.00129  0.00000E+00 0.0E+00 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.72306E-01 0.00028  0.00000E+00 0.0E+00 ];
INF_CAPT                  (idx, [1:   4]) = [  3.90908E-03 0.00150  0.00000E+00 0.0E+00 ];
INF_ABS                   (idx, [1:   4]) = [  9.39257E-02 0.00014  0.00000E+00 0.0E+00 ];
INF_FISS                  (idx, [1:   4]) = [  9.00166E-02 8.5E-05  0.00000E+00 0.0E+00 ];
INF_NSF                   (idx, [1:   4]) = [  2.42218E-01 7.8E-05  0.00000E+00 0.0E+00 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.69082E+00 5.2E-05  0.00000E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  1.99728E+02 7.0E-08  0.00000E+00 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  7.77809E-10 0.00115  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.78272E-01 0.00031  0.00000E+00 0.0E+00 ];
INF_SCATT1                (idx, [1:   4]) = [  1.16562E-01 0.00142  0.00000E+00 0.0E+00 ];
INF_SCATT2                (idx, [1:   4]) = [  7.26613E-02 0.00213  0.00000E+00 0.0E+00 ];
INF_SCATT3                (idx, [1:   4]) = [  5.30121E-02 0.00492  0.00000E+00 0.0E+00 ];
INF_SCATT4                (idx, [1:   4]) = [  3.66000E-02 0.00779  0.00000E+00 0.0E+00 ];
INF_SCATT5                (idx, [1:   4]) = [  1.96932E-02 0.00894  0.00000E+00 0.0E+00 ];
INF_SCATT6                (idx, [1:   4]) = [  1.00394E-02 0.01508  0.00000E+00 0.0E+00 ];
INF_SCATT7                (idx, [1:   4]) = [  4.29983E-03 0.00797  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.78439E-01 0.00027  0.00000E+00 0.0E+00 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.16575E-01 0.00141  0.00000E+00 0.0E+00 ];
INF_SCATTP2               (idx, [1:   4]) = [  7.26565E-02 0.00217  0.00000E+00 0.0E+00 ];
INF_SCATTP3               (idx, [1:   4]) = [  5.30111E-02 0.00489  0.00000E+00 0.0E+00 ];
INF_SCATTP4               (idx, [1:   4]) = [  3.66027E-02 0.00774  0.00000E+00 0.0E+00 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.96933E-02 0.00904  0.00000E+00 0.0E+00 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.00390E-02 0.01510  0.00000E+00 0.0E+00 ];
INF_SCATTP7               (idx, [1:   4]) = [  4.29941E-03 0.00809  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.38064E-01 0.00056  0.00000E+00 0.0E+00 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.40018E+00 0.00056  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  9.37586E-02 0.00014  0.00000E+00 0.0E+00 ];
INF_REMXS                 (idx, [1:   4]) = [  9.40339E-02 0.00151  0.00000E+00 0.0E+00 ];

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

INF_S0                    (idx, [1:   8]) = [  2.78272E-01 0.00031  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S1                    (idx, [1:   8]) = [  1.16562E-01 0.00142  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S2                    (idx, [1:   8]) = [  7.26613E-02 0.00213  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S3                    (idx, [1:   8]) = [  5.30121E-02 0.00492  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S4                    (idx, [1:   8]) = [  3.66000E-02 0.00779  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S5                    (idx, [1:   8]) = [  1.96932E-02 0.00894  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S6                    (idx, [1:   8]) = [  1.00394E-02 0.01508  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_S7                    (idx, [1:   8]) = [  4.29983E-03 0.00797  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.78439E-01 0.00027  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP1                   (idx, [1:   8]) = [  1.16575E-01 0.00141  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP2                   (idx, [1:   8]) = [  7.26565E-02 0.00217  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP3                   (idx, [1:   8]) = [  5.30111E-02 0.00489  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP4                   (idx, [1:   8]) = [  3.66027E-02 0.00774  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP5                   (idx, [1:   8]) = [  1.96933E-02 0.00904  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP6                   (idx, [1:   8]) = [  1.00390E-02 0.01510  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SP7                   (idx, [1:   8]) = [  4.29941E-03 0.00809  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  1.92267E+00 0.00503  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.91383E+00 0.00649  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.94165E+00 0.00693  0.00000E+00 0.0E+00 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.91299E+00 0.00339  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.73388E-01 0.00505  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.74200E-01 0.00651  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.71708E-01 0.00696  0.00000E+00 0.0E+00 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.74255E-01 0.00340  0.00000E+00 0.0E+00 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  3.01418E-03 0.03518  3.02286E-04 0.13132  7.46021E-04 0.07602  6.20773E-04 0.08874  1.14071E-03 0.05747  1.89275E-04 0.17770  1.51103E-05 0.40197 ];
LAMBDA                    (idx, [1:  14]) = [  2.81584E-01 0.09603  1.24794E-02 0.0E+00  3.22334E-02 0.00071  1.04686E-01 0.00023  2.94432E-01 0.00062  1.24527E+00 0.00142  1.02545E+01 0.00305 ];

