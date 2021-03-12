
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-003' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_003' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_003/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0107.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:33:09 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:33:38 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275189090 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.92569E-01  9.90476E-01  9.94369E-01  1.00642E+00  9.98675E-01  9.92783E-01  1.00941E+00  1.01082E+00  9.96489E-01  1.00597E+00  9.93542E-01  1.00081E+00  9.93262E-01  1.00973E+00  9.90863E-01  1.00575E+00  9.91129E-01  1.00477E+00  1.01621E+00  9.95969E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.37383E-02 0.00153  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76262E-01 3.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.90852E-01 0.00017  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.90992E-01 0.00017  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07614E+00 0.00051  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.89761E+01 0.00121  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.89712E+01 0.00121  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.66074E+00 0.00111  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.04359E+00 0.00135  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000354 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00035E+04 0.00192 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00035E+04 0.00192 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.48917E+00 ;
RUNNING_TIME              (idx, 1)        =  4.84283E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  4.93000E-02  4.93000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  8.50002E-04  8.50002E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.34083E-01  4.34083E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.80333E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.52934 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95767E+01 0.00541 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.63510E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.99485E-05 0.00082  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.15912E-01 0.00268 ];
U235_FISS                 (idx, [1:   4]) = [  3.92346E-01 0.00135  9.64614E-01 0.00033 ];
U238_FISS                 (idx, [1:   4]) = [  1.43753E-02 0.00914  3.53446E-02 0.00910 ];
U235_CAPT                 (idx, [1:   4]) = [  7.27722E-02 0.00397  1.23646E-01 0.00377 ];
U238_CAPT                 (idx, [1:   4]) = [  1.46300E-01 0.00253  2.48572E-01 0.00215 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000354 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.07777E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000354 1.00071E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 588668 5.88852E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 406788 4.06956E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 4898 4.89965E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000354 1.00071E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -3.05008E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32011E-11 0.00084 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.87155E-20 0.00084 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.97282E-01 0.00084 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07011E-01 0.00084 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.88090E-01 0.00058 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.95102E-01 6.5E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99485E-01 0.00082 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.67028E+01 0.00064 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  4.89810E-03 0.01324 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.89777E+01 0.00094 ];
INI_FMASS                 (idx, 1)        =  7.05358E+02 ;
TOT_FMASS                 (idx, 1)        =  7.05358E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77754E+00 0.00094 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.87261E-01 0.00096 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.74442E-01 0.00039 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09775E+00 0.00053 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96877E-01 5.1E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98218E-01 4.4E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00199E+00 0.00118 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.97083E-01 0.00118 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45026E+00 1.7E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02439E+02 2.0E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.96855E-01 0.00122  9.89813E-01 0.00119  7.27042E-03 0.01790 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98031E-01 0.00084 ];
COL_KEFF                  (idx, [1:   2]) = [  9.97866E-01 0.00120 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98031E-01 0.00084 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00295E+00 0.00083 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91445E+01 0.00033 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91410E+01 0.00011 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.71674E-08 0.00629 ];
IMP_EALF                  (idx, [1:   2]) = [  9.73381E-08 0.00212 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.18743E-01 0.00897 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19985E-01 0.00285 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.84647E-03 0.01305  2.19614E-04 0.06253  1.12305E-03 0.03086  1.09701E-03 0.03216  3.13035E-03 0.01928  9.48496E-04 0.03065  3.27960E-04 0.05901 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.76882E-01 0.03148  1.11168E-02 0.03533  3.17003E-02 0.00038  1.09827E-01 0.00048  3.18984E-01 0.00037  1.34820E+00 0.00036  8.44379E+00 0.02081 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.41411E-03 0.01933  2.07811E-04 0.10085  1.28887E-03 0.04027  1.16824E-03 0.05158  3.43337E-03 0.02617  9.68827E-04 0.04903  3.46989E-04 0.08044 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.58821E-01 0.04180  1.24907E-02 5.6E-06  3.16924E-02 0.00054  1.09806E-01 0.00063  3.18923E-01 0.00053  1.34739E+00 0.00054  8.81348E+00 0.00422 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.71045E-05 0.00268  5.71071E-05 0.00270  5.71995E-05 0.02676 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.69173E-05 0.00244  5.69199E-05 0.00245  5.70226E-05 0.02678 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.33718E-03 0.01869  2.16848E-04 0.09554  1.32564E-03 0.04215  1.10579E-03 0.04959  3.34893E-03 0.02917  9.80369E-04 0.04877  3.59599E-04 0.08336 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.79198E-01 0.04520  1.24907E-02 5.9E-06  3.16993E-02 0.00062  1.09818E-01 0.00075  3.18834E-01 0.00061  1.34845E+00 0.00056  8.79456E+00 0.00456 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.59754E-05 0.00683  5.60058E-05 0.00684  5.41829E-05 0.07600 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.57928E-05 0.00678  5.58231E-05 0.00679  5.39892E-05 0.07586 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.45507E-03 0.06257  2.22540E-04 0.33399  1.20372E-03 0.14537  9.96943E-04 0.17171  3.80383E-03 0.08729  9.65519E-04 0.15699  2.62513E-04 0.29873 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.21437E-01 0.18152  1.24906E-02 0.0E+00  3.17072E-02 0.00167  1.10098E-01 0.00253  3.19406E-01 0.00208  1.34669E+00 0.00151  8.86015E+00 0.01370 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.42872E-03 0.06267  2.28092E-04 0.31258  1.26586E-03 0.14485  9.85516E-04 0.16818  3.74275E-03 0.08626  9.30731E-04 0.15651  2.75769E-04 0.28948 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.29870E-01 0.17955  1.24906E-02 0.0E+00  3.17090E-02 0.00167  1.10107E-01 0.00254  3.19487E-01 0.00205  1.34672E+00 0.00151  8.86015E+00 0.01370 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.33922E+02 0.06349 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.66312E-05 0.00193 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.64447E-05 0.00149 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.38316E-03 0.01534 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.30491E+02 0.01576 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75912E-06 0.00086 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74407E-06 0.00085  1.74402E-06 0.00085  1.75525E-06 0.00981 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.24802E-05 0.00142  9.25668E-05 0.00142  8.00422E-05 0.01597 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.71977E-01 0.00039  8.71925E-01 0.00042  8.95323E-01 0.01927 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04571E+01 0.03072 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.89712E+01 0.00121  5.84817E+01 0.00151 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.92691E+04 0.00652  2.33095E+05 0.00537  4.63114E+05 0.00159  4.82196E+05 0.00237  4.16596E+05 0.00119  4.00575E+05 0.00102  2.73483E+05 0.00159  2.31392E+05 0.00101  1.76504E+05 0.00169  1.44483E+05 0.00225  1.25033E+05 0.00261  1.12003E+05 0.00215  1.04778E+05 0.00352  9.93102E+04 0.00252  9.72902E+04 0.00189  8.42885E+04 0.00152  8.40790E+04 0.00231  8.31153E+04 0.00270  8.25321E+04 0.00386  1.63453E+05 0.00087  1.60997E+05 0.00125  1.18962E+05 0.00164  7.86910E+04 0.00238  9.35369E+04 0.00243  9.10523E+04 0.00053  8.13979E+04 0.00146  1.45263E+05 0.00261  3.20084E+04 0.00474  4.03642E+04 0.00355  3.63592E+04 0.00598  2.13524E+04 0.00451  3.70844E+04 0.00199  2.50185E+04 0.00456  2.16387E+04 0.00312  4.13873E+03 0.00582  4.16451E+03 0.00442  4.22743E+03 0.01243  4.34178E+03 0.00721  4.31027E+03 0.00289  4.21607E+03 0.00517  4.41487E+03 0.00689  4.08369E+03 0.00781  7.68794E+03 0.00304  1.24031E+04 0.00391  1.56038E+04 0.00894  4.10376E+04 0.00368  4.25389E+04 0.00280  4.37901E+04 0.00429  2.63976E+04 0.00423  1.78749E+04 0.00857  1.30929E+04 0.00652  1.43676E+04 0.00586  2.45408E+04 0.00409  3.11796E+04 0.00565  6.50760E+04 0.00294  1.34755E+05 0.00151  3.50788E+05 0.00139  3.69399E+05 0.00205  3.40507E+05 0.00135  3.05887E+05 0.00192  3.21954E+05 0.00167  3.71278E+05 0.00159  3.58875E+05 0.00223  2.70958E+05 0.00143  2.76482E+05 0.00152  2.69687E+05 0.00177  2.52650E+05 0.00131  2.13061E+05 0.00137  1.58317E+05 0.00165  6.13127E+04 0.00236 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00279E+00 0.00180 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50418E+01 0.00027  2.16627E+01 0.00156 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.40057E-01 0.00044  2.79052E+00 0.00040 ];
INF_CAPT                  (idx, [1:   4]) = [  3.64837E-03 0.00278  2.29321E-02 0.00059 ];
INF_ABS                   (idx, [1:   4]) = [  5.01895E-03 0.00222  4.01379E-02 0.00162 ];
INF_FISS                  (idx, [1:   4]) = [  1.37059E-03 0.00146  1.72058E-02 0.00301 ];
INF_NSF                   (idx, [1:   4]) = [  3.56001E-03 0.00149  4.19254E-02 0.00301 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59744E+00 8.9E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04276E+02 1.1E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.35804E-08 0.00064  3.71931E-06 0.00016 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.35042E-01 0.00043  2.75037E+00 0.00042 ];
INF_SCATT1                (idx, [1:   4]) = [  3.93928E-01 0.00068  5.81773E-01 0.00063 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52660E-01 0.00074  1.02046E-01 0.00154 ];
INF_SCATT3                (idx, [1:   4]) = [  8.20085E-03 0.00537  2.82836E-02 0.00189 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.00296E-02 0.00293 -2.16618E-02 0.00720 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.95772E-04 0.05518  1.19573E-02 0.00832 ];
INF_SCATT6                (idx, [1:   4]) = [  7.86852E-03 0.00927 -3.07342E-02 0.00318 ];
INF_SCATT7                (idx, [1:   4]) = [  7.61484E-04 0.04724  8.82072E-03 0.01698 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.35070E-01 0.00043  2.75037E+00 0.00042 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.93928E-01 0.00068  5.81773E-01 0.00063 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52661E-01 0.00073  1.02046E-01 0.00154 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.20124E-03 0.00538  2.82836E-02 0.00189 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.00297E-02 0.00292 -2.16618E-02 0.00720 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.95723E-04 0.05523  1.19573E-02 0.00832 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.86906E-03 0.00930 -3.07342E-02 0.00318 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.61503E-04 0.04699  8.82072E-03 0.01698 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.30088E-01 0.00120  1.87134E+00 0.00050 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.44873E+00 0.00120  1.78126E-01 0.00050 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.99070E-03 0.00192  4.01379E-02 0.00162 ];
INF_REMXS                 (idx, [1:   4]) = [  3.99516E-02 0.00049  4.03049E-02 0.00158 ];

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

INF_S0                    (idx, [1:   8]) = [  7.00105E-01 0.00044  3.49368E-02 0.00025  1.56759E-04 0.03569  2.75022E+00 0.00042 ];
INF_S1                    (idx, [1:   8]) = [  3.83285E-01 0.00066  1.06430E-02 0.00171  9.74383E-05 0.02996  5.81675E-01 0.00063 ];
INF_S2                    (idx, [1:   8]) = [  1.56137E-01 0.00070 -3.47677E-03 0.00158  6.14484E-05 0.03862  1.01984E-01 0.00153 ];
INF_S3                    (idx, [1:   8]) = [  1.23448E-02 0.00377 -4.14399E-03 0.00187  3.13330E-05 0.05105  2.82523E-02 0.00187 ];
INF_S4                    (idx, [1:   8]) = [ -1.89683E-02 0.00325 -1.06136E-03 0.01121  9.73867E-06 0.10686 -2.16715E-02 0.00719 ];
INF_S5                    (idx, [1:   8]) = [ -1.25721E-03 0.04326  3.61437E-04 0.01489 -1.93134E-06 0.37718  1.19593E-02 0.00827 ];
INF_S6                    (idx, [1:   8]) = [  8.14716E-03 0.00886 -2.78645E-04 0.02628 -8.24020E-06 0.16724 -3.07260E-02 0.00321 ];
INF_S7                    (idx, [1:   8]) = [  1.30070E-03 0.02104 -5.39212E-04 0.01989 -8.90552E-06 0.11905  8.82963E-03 0.01706 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.00133E-01 0.00044  3.49368E-02 0.00025  1.56759E-04 0.03569  2.75022E+00 0.00042 ];
INF_SP1                   (idx, [1:   8]) = [  3.83285E-01 0.00066  1.06430E-02 0.00171  9.74383E-05 0.02996  5.81675E-01 0.00063 ];
INF_SP2                   (idx, [1:   8]) = [  1.56137E-01 0.00070 -3.47677E-03 0.00158  6.14484E-05 0.03862  1.01984E-01 0.00153 ];
INF_SP3                   (idx, [1:   8]) = [  1.23452E-02 0.00377 -4.14399E-03 0.00187  3.13330E-05 0.05105  2.82523E-02 0.00187 ];
INF_SP4                   (idx, [1:   8]) = [ -1.89683E-02 0.00324 -1.06136E-03 0.01121  9.73867E-06 0.10686 -2.16715E-02 0.00719 ];
INF_SP5                   (idx, [1:   8]) = [ -1.25716E-03 0.04330  3.61437E-04 0.01489 -1.93134E-06 0.37718  1.19593E-02 0.00827 ];
INF_SP6                   (idx, [1:   8]) = [  8.14770E-03 0.00889 -2.78645E-04 0.02628 -8.24020E-06 0.16724 -3.07260E-02 0.00321 ];
INF_SP7                   (idx, [1:   8]) = [  1.30071E-03 0.02086 -5.39212E-04 0.01989 -8.90552E-06 0.11905  8.82963E-03 0.01706 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.63061E-01 0.00094  1.74325E+00 0.00510 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61637E-01 0.00207  1.71949E+00 0.01008 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64773E-01 0.00140  1.80498E+00 0.00397 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62800E-01 0.00190  1.70885E+00 0.00467 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26714E+00 0.00094  1.91234E-01 0.00516 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27405E+00 0.00206  1.93935E-01 0.01012 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25895E+00 0.00140  1.84686E-01 0.00399 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26841E+00 0.00191  1.95080E-01 0.00467 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.41411E-03 0.01933  2.07811E-04 0.10085  1.28887E-03 0.04027  1.16824E-03 0.05158  3.43337E-03 0.02617  9.68827E-04 0.04903  3.46989E-04 0.08044 ];
LAMBDA                    (idx, [1:  14]) = [  7.58821E-01 0.04180  1.24907E-02 5.6E-06  3.16924E-02 0.00054  1.09806E-01 0.00063  3.18923E-01 0.00053  1.34739E+00 0.00054  8.81348E+00 0.00422 ];

