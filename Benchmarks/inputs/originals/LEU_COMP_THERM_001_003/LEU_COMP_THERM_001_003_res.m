
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
WORKING_DIRECTORY         (idx, [1:111])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_003/water_replaces_acrylic' ;
HOSTNAME                  (idx, [1: 12])  = 'n0010.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu May 27 21:41:38 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu May 27 21:42:07 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1622176898212 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99142E-01  9.90758E-01  1.00048E+00  9.96876E-01  1.00714E+00  1.00409E+00  9.97036E-01  1.00125E+00  9.97290E-01  9.90078E-01  9.96890E-01  9.95930E-01  1.00715E+00  1.00013E+00  9.88692E-01  9.97756E-01  1.00833E+00  1.00235E+00  1.00947E+00  1.00917E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.39149E-02 0.00133  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76085E-01 3.3E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.93577E-01 0.00015  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.93713E-01 0.00015  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07753E+00 0.00055  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.88935E+01 0.00094  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.88883E+01 0.00094  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.38134E+00 0.00105  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.05149E+00 0.00121  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000397 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00040E+04 0.00188 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00040E+04 0.00188 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.50817E+00 ;
RUNNING_TIME              (idx, 1)        =  4.92483E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  5.69000E-02  5.69000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.11667E-03  1.11667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.34417E-01  4.34417E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.88350E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.27605 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95978E+01 0.00482 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.49843E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.99157E-05 0.00082  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.14350E-01 0.00274 ];
U235_FISS                 (idx, [1:   4]) = [  3.92941E-01 0.00154  9.64759E-01 0.00026 ];
U238_FISS                 (idx, [1:   4]) = [  1.43431E-02 0.00724  3.52191E-02 0.00723 ];
U235_CAPT                 (idx, [1:   4]) = [  7.34377E-02 0.00398  1.25002E-01 0.00348 ];
U238_CAPT                 (idx, [1:   4]) = [  1.45922E-01 0.00224  2.48415E-01 0.00203 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000397 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.65957E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000397 1.00077E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587699 5.87931E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407508 4.07649E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5190 5.18572E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000397 1.00077E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.49012E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32303E-11 0.00071 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.87569E-20 0.00071 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.99471E-01 0.00070 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07913E-01 0.00071 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.86906E-01 0.00049 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94819E-01 7.2E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99157E-01 0.00082 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.65772E+01 0.00070 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.18142E-03 0.01377 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.88690E+01 0.00085 ];
INI_FMASS                 (idx, 1)        =  7.05358E+02 ;
TOT_FMASS                 (idx, 1)        =  7.05358E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77812E+00 0.00095 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.88585E-01 0.00090 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.74730E-01 0.00035 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09670E+00 0.00044 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96694E-01 5.9E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98114E-01 3.9E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00399E+00 0.00146 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.98789E-01 0.00147 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45021E+00 2.3E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02438E+02 2.3E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.98471E-01 0.00151  9.91315E-01 0.00146  7.47422E-03 0.01644 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.00023E+00 0.00070 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00039E+00 0.00119 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.00023E+00 0.00070 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00544E+00 0.00070 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91534E+01 0.00027 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91461E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.62475E-08 0.00507 ];
IMP_EALF                  (idx, [1:   2]) = [  9.68530E-08 0.00235 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.18681E-01 0.00763 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19524E-01 0.00371 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.92446E-03 0.01051  2.21140E-04 0.06407  1.14148E-03 0.03217  1.08566E-03 0.02817  3.09469E-03 0.01587  1.01757E-03 0.03314  3.63912E-04 0.04946 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.24299E-01 0.02663  1.12416E-02 0.03350  3.17328E-02 0.00039  1.09839E-01 0.00042  3.19074E-01 0.00042  1.34884E+00 0.00030  8.37378E+00 0.02329 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.42245E-03 0.01681  2.72984E-04 0.09611  1.24035E-03 0.04641  1.15399E-03 0.04477  3.29739E-03 0.02618  1.03596E-03 0.04531  4.21780E-04 0.06647 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.56016E-01 0.03784  1.24907E-02 4.8E-06  3.17369E-02 0.00053  1.09806E-01 0.00060  3.19137E-01 0.00062  1.34896E+00 0.00047  8.83314E+00 0.00445 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.69111E-05 0.00265  5.69145E-05 0.00268  5.61966E-05 0.02319 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.68112E-05 0.00217  5.68146E-05 0.00220  5.61031E-05 0.02322 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.42093E-03 0.01691  2.66834E-04 0.09220  1.24642E-03 0.04627  1.11305E-03 0.04753  3.30508E-03 0.02341  1.06409E-03 0.04783  4.25464E-04 0.07262 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.63368E-01 0.04213  1.24908E-02 7.0E-06  3.17318E-02 0.00056  1.09798E-01 0.00088  3.19114E-01 0.00065  1.34903E+00 0.00052  8.80831E+00 0.00454 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.56051E-05 0.00634  5.55619E-05 0.00637  5.77095E-05 0.06306 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.55155E-05 0.00642  5.54721E-05 0.00644  5.76695E-05 0.06329 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.00859E-03 0.06366  3.65440E-04 0.26775  1.18067E-03 0.14791  1.07805E-03 0.15600  2.70726E-03 0.09337  1.08150E-03 0.17966  5.95660E-04 0.22555 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  1.07190E+00 0.12751  1.24907E-02 1.4E-05  3.17559E-02 0.00124  1.09776E-01 0.00188  3.19217E-01 0.00191  1.34700E+00 0.00139  8.99442E+00 0.01226 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.14151E-03 0.06173  3.84684E-04 0.27737  1.15054E-03 0.14468  1.14522E-03 0.15489  2.76945E-03 0.09230  1.09979E-03 0.17693  5.91827E-04 0.22066 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  1.08391E+00 0.12544  1.24907E-02 1.4E-05  3.17574E-02 0.00122  1.09786E-01 0.00189  3.19390E-01 0.00198  1.34685E+00 0.00138  8.99442E+00 0.01226 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.26334E+02 0.06397 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.62889E-05 0.00166 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.61918E-05 0.00101 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.55745E-03 0.00850 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.34324E+02 0.00889 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75630E-06 0.00067 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74414E-06 0.00076  1.74392E-06 0.00077  1.77534E-06 0.01078 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.20520E-05 0.00115  9.21326E-05 0.00115  8.02641E-05 0.01707 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.72106E-01 0.00036  8.72085E-01 0.00037  8.84788E-01 0.01489 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07630E+01 0.03059 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.88883E+01 0.00094  5.85036E+01 0.00135 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.92529E+04 0.00895  2.32410E+05 0.00452  4.63230E+05 0.00303  4.81358E+05 0.00159  4.16640E+05 0.00098  4.00076E+05 0.00120  2.72892E+05 0.00195  2.30870E+05 0.00133  1.76617E+05 0.00149  1.44738E+05 0.00197  1.25111E+05 0.00186  1.11913E+05 0.00173  1.04219E+05 0.00272  9.98751E+04 0.00264  9.68342E+04 0.00197  8.44370E+04 0.00341  8.39871E+04 0.00235  8.33067E+04 0.00281  8.19467E+04 0.00352  1.62933E+05 0.00163  1.61509E+05 0.00327  1.18454E+05 0.00222  7.83154E+04 0.00117  9.29950E+04 0.00294  9.11567E+04 0.00218  8.12646E+04 0.00225  1.44940E+05 0.00142  3.21651E+04 0.00363  4.02945E+04 0.00454  3.64731E+04 0.00128  2.13265E+04 0.00259  3.70074E+04 0.00225  2.51668E+04 0.00426  2.15952E+04 0.00445  4.14595E+03 0.00735  4.12460E+03 0.01175  4.29069E+03 0.01022  4.36477E+03 0.00870  4.33246E+03 0.00773  4.21576E+03 0.00725  4.34817E+03 0.00649  4.06966E+03 0.00655  7.75614E+03 0.00563  1.23979E+04 0.00574  1.56934E+04 0.00206  4.09675E+04 0.00254  4.25295E+04 0.00303  4.35410E+04 0.00465  2.61784E+04 0.00661  1.78154E+04 0.00527  1.30433E+04 0.00798  1.44486E+04 0.00488  2.46884E+04 0.00255  3.12095E+04 0.00111  6.49888E+04 0.00210  1.34397E+05 0.00200  3.48765E+05 0.00254  3.67798E+05 0.00137  3.38870E+05 0.00131  3.04392E+05 0.00154  3.20650E+05 0.00165  3.70296E+05 0.00233  3.57395E+05 0.00110  2.69998E+05 0.00109  2.75363E+05 0.00142  2.68642E+05 0.00141  2.51497E+05 0.00150  2.12337E+05 0.00227  1.57599E+05 0.00149  6.10740E+04 0.00113 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00560E+00 0.00107 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50090E+01 0.00043  2.15693E+01 0.00099 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.40345E-01 0.00018  2.79827E+00 0.00032 ];
INF_CAPT                  (idx, [1:   4]) = [  3.64638E-03 0.00184  2.29839E-02 0.00032 ];
INF_ABS                   (idx, [1:   4]) = [  5.01765E-03 0.00147  4.03072E-02 0.00091 ];
INF_FISS                  (idx, [1:   4]) = [  1.37126E-03 0.00168  1.73233E-02 0.00173 ];
INF_NSF                   (idx, [1:   4]) = [  3.56169E-03 0.00159  4.22117E-02 0.00173 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59738E+00 0.00026  2.43670E+00 5.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04273E+02 1.4E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.36255E-08 0.00038  3.71900E-06 0.00019 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.35336E-01 0.00018  2.75796E+00 0.00033 ];
INF_SCATT1                (idx, [1:   4]) = [  3.94266E-01 8.5E-05  5.81269E-01 0.00031 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52923E-01 0.00054  1.00599E-01 0.00147 ];
INF_SCATT3                (idx, [1:   4]) = [  8.25139E-03 0.00329  2.74884E-02 0.00762 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.98290E-02 0.00182 -2.25839E-02 0.00584 ];
INF_SCATT5                (idx, [1:   4]) = [ -7.70292E-04 0.05694  1.16559E-02 0.00536 ];
INF_SCATT6                (idx, [1:   4]) = [  7.84511E-03 0.00511 -3.11487E-02 0.00346 ];
INF_SCATT7                (idx, [1:   4]) = [  7.03479E-04 0.08832  8.79630E-03 0.00669 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.35366E-01 0.00017  2.75796E+00 0.00033 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.94267E-01 8.6E-05  5.81269E-01 0.00031 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52923E-01 0.00054  1.00599E-01 0.00147 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.25124E-03 0.00330  2.74884E-02 0.00762 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.98295E-02 0.00181 -2.25839E-02 0.00584 ];
INF_SCATTP5               (idx, [1:   4]) = [ -7.70458E-04 0.05661  1.16559E-02 0.00536 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.84474E-03 0.00509 -3.11487E-02 0.00346 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.03721E-04 0.08823  8.79630E-03 0.00669 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29855E-01 0.00060  1.87721E+00 0.00058 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45019E+00 0.00061  1.77569E-01 0.00058 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.98704E-03 0.00155  4.03072E-02 0.00091 ];
INF_REMXS                 (idx, [1:   4]) = [  3.99859E-02 0.00051  4.04668E-02 0.00097 ];

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

INF_S0                    (idx, [1:   8]) = [  7.00360E-01 0.00018  3.49761E-02 0.00017  1.56632E-04 0.00987  2.75780E+00 0.00033 ];
INF_S1                    (idx, [1:   8]) = [  3.83635E-01 8.9E-05  1.06309E-02 0.00152  1.00710E-04 0.01123  5.81168E-01 0.00031 ];
INF_S2                    (idx, [1:   8]) = [  1.56405E-01 0.00054 -3.48180E-03 0.00431  6.41483E-05 0.01104  1.00534E-01 0.00147 ];
INF_S3                    (idx, [1:   8]) = [  1.23749E-02 0.00305 -4.12350E-03 0.00316  3.44864E-05 0.03334  2.74539E-02 0.00764 ];
INF_S4                    (idx, [1:   8]) = [ -1.87838E-02 0.00176 -1.04524E-03 0.00783  1.16396E-05 0.08609 -2.25955E-02 0.00585 ];
INF_S5                    (idx, [1:   8]) = [ -1.12097E-03 0.03756  3.50680E-04 0.03598 -1.61175E-06 0.39481  1.16575E-02 0.00538 ];
INF_S6                    (idx, [1:   8]) = [  8.13637E-03 0.00479 -2.91255E-04 0.01462 -8.11001E-06 0.12492 -3.11406E-02 0.00345 ];
INF_S7                    (idx, [1:   8]) = [  1.24068E-03 0.04936 -5.37199E-04 0.01573 -1.03427E-05 0.07880  8.80665E-03 0.00661 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.00390E-01 0.00018  3.49761E-02 0.00017  1.56632E-04 0.00987  2.75780E+00 0.00033 ];
INF_SP1                   (idx, [1:   8]) = [  3.83636E-01 8.9E-05  1.06309E-02 0.00152  1.00710E-04 0.01123  5.81168E-01 0.00031 ];
INF_SP2                   (idx, [1:   8]) = [  1.56405E-01 0.00054 -3.48180E-03 0.00431  6.41483E-05 0.01104  1.00534E-01 0.00147 ];
INF_SP3                   (idx, [1:   8]) = [  1.23747E-02 0.00306 -4.12350E-03 0.00316  3.44864E-05 0.03334  2.74539E-02 0.00764 ];
INF_SP4                   (idx, [1:   8]) = [ -1.87843E-02 0.00175 -1.04524E-03 0.00783  1.16396E-05 0.08609 -2.25955E-02 0.00585 ];
INF_SP5                   (idx, [1:   8]) = [ -1.12114E-03 0.03723  3.50680E-04 0.03598 -1.61175E-06 0.39481  1.16575E-02 0.00538 ];
INF_SP6                   (idx, [1:   8]) = [  8.13600E-03 0.00478 -2.91255E-04 0.01462 -8.11001E-06 0.12492 -3.11406E-02 0.00345 ];
INF_SP7                   (idx, [1:   8]) = [  1.24092E-03 0.04931 -5.37199E-04 0.01573 -1.03427E-05 0.07880  8.80665E-03 0.00661 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62551E-01 0.00143  1.73898E+00 0.00265 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.62116E-01 0.00138  1.72401E+00 0.00767 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64076E-01 0.00175  1.81421E+00 0.00451 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.61479E-01 0.00240  1.68418E+00 0.00157 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26961E+00 0.00143  1.91688E-01 0.00264 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27171E+00 0.00138  1.93393E-01 0.00766 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26228E+00 0.00175  1.83750E-01 0.00450 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27483E+00 0.00240  1.97922E-01 0.00157 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.42245E-03 0.01681  2.72984E-04 0.09611  1.24035E-03 0.04641  1.15399E-03 0.04477  3.29739E-03 0.02618  1.03596E-03 0.04531  4.21780E-04 0.06647 ];
LAMBDA                    (idx, [1:  14]) = [  8.56016E-01 0.03784  1.24907E-02 4.8E-06  3.17369E-02 0.00053  1.09806E-01 0.00060  3.19137E-01 0.00062  1.34896E+00 0.00047  8.83314E+00 0.00445 ];

