
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-001' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_001' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_001/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0094.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Thu Mar 11 15:40:32 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu Mar 11 15:41:03 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615506032926 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.97418E-01  1.00144E+00  1.00507E+00  9.98191E-01  1.00150E+00  1.00762E+00  1.00664E+00  9.91965E-01  1.00878E+00  9.90605E-01  9.95031E-01  9.91912E-01  9.92592E-01  1.00019E+00  1.00538E+00  9.96604E-01  9.97924E-01  1.00792E+00  1.00474E+00  9.98484E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.40651E-02 0.00161  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75935E-01 4.0E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.89819E-01 0.00018  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.89960E-01 0.00018  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07939E+00 0.00058  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.84092E+01 0.00136  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.84036E+01 0.00136  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.69285E+00 0.00102  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.06225E+00 0.00140  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000011 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00001E+04 0.00168 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00001E+04 0.00168 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.40567E+00 ;
RUNNING_TIME              (idx, 1)        =  5.14933E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  8.40000E-02  8.40000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.01666E-03  1.01666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.29867E-01  4.29867E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.11933E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 16.32380 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95777E+01 0.00447 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.02822E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 591.30;
MEMSIZE                   (idx, 1)        = 428.93;
XS_MEMSIZE                (idx, 1)        = 241.98;
MAT_MEMSIZE               (idx, 1)        = 35.83;
RES_MEMSIZE               (idx, 1)        = 17.01;
IFC_MEMSIZE               (idx, 1)        = 0.00;
MISC_MEMSIZE              (idx, 1)        = 134.10;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 162.37;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 32 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.00057E-04 0.00093  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.16775E-01 0.00278 ];
U235_FISS                 (idx, [1:   4]) = [  3.93675E-01 0.00153  9.64283E-01 0.00025 ];
U238_FISS                 (idx, [1:   4]) = [  1.45662E-02 0.00675  3.56805E-02 0.00665 ];
U235_CAPT                 (idx, [1:   4]) = [  7.34624E-02 0.00415  1.25057E-01 0.00393 ];
U238_CAPT                 (idx, [1:   4]) = [  1.47324E-01 0.00246  2.50807E-01 0.00232 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000011 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.21751E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000011 1.00072E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 586672 5.87089E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407734 4.08025E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5605 5.60735E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000011 1.00072E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.35042E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32235E-11 0.00086 ];
TOT_POWDENS               (idx, [1:   2]) = [  4.98540E-20 0.00086 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.98996E-01 0.00086 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07698E-01 0.00086 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.86692E-01 0.00060 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94390E-01 7.1E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.00057E+00 0.00093 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66364E+01 0.00070 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.61030E-03 0.01265 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.84909E+01 0.00103 ];
INI_FMASS                 (idx, 1)        =  2.65244E+02 ;
TOT_FMASS                 (idx, 1)        =  2.65244E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77822E+00 0.00091 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.89388E-01 0.00101 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.71897E-01 0.00041 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.10029E+00 0.00049 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96402E-01 6.2E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.97983E-01 4.0E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00541E+00 0.00124 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.99774E-01 0.00125 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45034E+00 1.9E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02441E+02 2.0E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99765E-01 0.00125  9.92422E-01 0.00127  7.35229E-03 0.01751 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.99741E-01 0.00086 ];
COL_KEFF                  (idx, [1:   2]) = [  9.98497E-01 0.00118 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.99741E-01 0.00086 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00539E+00 0.00086 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91246E+01 0.00027 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91239E+01 0.00011 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.90658E-08 0.00525 ];
IMP_EALF                  (idx, [1:   2]) = [  9.90202E-08 0.00215 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.20178E-01 0.00771 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20754E-01 0.00297 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.97876E-03 0.01211  2.09005E-04 0.06559  1.06481E-03 0.02799  1.12799E-03 0.02871  3.25733E-03 0.01837  9.80979E-04 0.03016  3.38644E-04 0.04946 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.86951E-01 0.02516  1.08669E-02 0.03885  3.17363E-02 0.00035  1.09791E-01 0.00044  3.19004E-01 0.00034  1.34861E+00 0.00029  8.69496E+00 0.01060 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.49763E-03 0.01741  2.01045E-04 0.09975  1.12543E-03 0.04375  1.21084E-03 0.04561  3.60692E-03 0.02526  9.96597E-04 0.04852  3.56805E-04 0.07546 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.74279E-01 0.03928  1.24907E-02 5.5E-06  3.17478E-02 0.00042  1.09839E-01 0.00071  3.18962E-01 0.00048  1.34847E+00 0.00046  8.75726E+00 0.00344 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.39196E-05 0.00253  5.39212E-05 0.00256  5.36596E-05 0.02525 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.39005E-05 0.00237  5.39022E-05 0.00239  5.36406E-05 0.02516 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.40275E-03 0.01804  2.38531E-04 0.09880  1.09359E-03 0.04658  1.16981E-03 0.04692  3.48565E-03 0.02914  1.06008E-03 0.04862  3.55090E-04 0.09002 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.86623E-01 0.04802  1.24906E-02 3.0E-06  3.17362E-02 0.00058  1.09703E-01 0.00061  3.19026E-01 0.00057  1.34937E+00 0.00048  8.75310E+00 0.00400 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.21639E-05 0.00642  5.21633E-05 0.00645  5.35682E-05 0.06631 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.21414E-05 0.00621  5.21407E-05 0.00624  5.35241E-05 0.06603 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  8.00612E-03 0.06522  2.15556E-04 0.36869  1.14311E-03 0.16495  1.39600E-03 0.13745  3.81111E-03 0.08797  1.12189E-03 0.20030  3.18450E-04 0.28041 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.21136E-01 0.16832  1.24906E-02 0.0E+00  3.17435E-02 0.00135  1.09853E-01 0.00188  3.18223E-01 0.00131  1.34859E+00 0.00130  8.63638E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.75150E-03 0.06039  2.37635E-04 0.37808  1.16372E-03 0.15734  1.28231E-03 0.13762  3.68043E-03 0.08621  1.10340E-03 0.18485  2.84009E-04 0.27930 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.19048E-01 0.16372  1.24906E-02 3.8E-09  3.17350E-02 0.00142  1.09831E-01 0.00181  3.18169E-01 0.00129  1.34880E+00 0.00126  8.63638E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.54836E+02 0.06628 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.29576E-05 0.00155 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.29377E-05 0.00105 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.64902E-03 0.01378 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.44486E+02 0.01392 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.74776E-06 0.00097 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.75278E-06 0.00081  1.75244E-06 0.00082  1.80184E-06 0.00966 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.18931E-05 0.00160  9.19925E-05 0.00158  7.75026E-05 0.01870 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.69066E-01 0.00041  8.69048E-01 0.00044  8.85759E-01 0.01850 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02782E+01 0.02953 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.84036E+01 0.00136  5.60041E+01 0.00135 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.85312E+04 0.00691  2.33413E+05 0.00257  4.63982E+05 0.00086  4.82880E+05 0.00077  4.17668E+05 0.00054  4.01536E+05 0.00153  2.73280E+05 0.00084  2.31976E+05 0.00179  1.77262E+05 0.00087  1.44975E+05 0.00152  1.25999E+05 0.00100  1.12864E+05 0.00201  1.04934E+05 0.00168  9.97977E+04 0.00198  9.75147E+04 0.00191  8.47695E+04 0.00221  8.42981E+04 0.00389  8.35977E+04 0.00162  8.29921E+04 0.00137  1.64354E+05 0.00187  1.61692E+05 0.00084  1.19371E+05 0.00227  7.89687E+04 0.00249  9.35801E+04 0.00235  9.17145E+04 0.00163  8.18454E+04 0.00182  1.45027E+05 0.00208  3.21961E+04 0.00150  4.03880E+04 0.00268  3.66883E+04 0.00068  2.14264E+04 0.00252  3.69465E+04 0.00297  2.50267E+04 0.00394  2.14952E+04 0.00428  4.07490E+03 0.00989  4.24617E+03 0.00945  4.27663E+03 0.00887  4.38984E+03 0.00543  4.28339E+03 0.00882  4.24672E+03 0.00600  4.33448E+03 0.00791  4.06643E+03 0.01237  7.82162E+03 0.00690  1.22898E+04 0.00675  1.56802E+04 0.00642  4.09867E+04 0.00291  4.28835E+04 0.00291  4.35844E+04 0.00457  2.66262E+04 0.00172  1.79082E+04 0.00609  1.29668E+04 0.00470  1.43998E+04 0.00548  2.45089E+04 0.00449  3.12500E+04 0.00417  6.48585E+04 0.00228  1.33668E+05 0.00153  3.47721E+05 0.00171  3.66173E+05 0.00160  3.37662E+05 0.00157  3.02854E+05 0.00042  3.18849E+05 0.00117  3.68131E+05 0.00089  3.55648E+05 0.00082  2.69133E+05 0.00110  2.74140E+05 0.00104  2.67301E+05 0.00140  2.50474E+05 0.00072  2.11013E+05 0.00131  1.56398E+05 0.00124  6.04959E+04 0.00134 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00412E+00 0.00168 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.51329E+01 0.00136  2.15055E+01 0.00095 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.38438E-01 0.00012  2.78710E+00 0.00019 ];
INF_CAPT                  (idx, [1:   4]) = [  3.70276E-03 0.00311  2.29561E-02 0.00051 ];
INF_ABS                   (idx, [1:   4]) = [  5.08983E-03 0.00270  4.02944E-02 0.00115 ];
INF_FISS                  (idx, [1:   4]) = [  1.38707E-03 0.00223  1.73382E-02 0.00202 ];
INF_NSF                   (idx, [1:   4]) = [  3.60106E-03 0.00220  4.22481E-02 0.00202 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59616E+00 0.00023  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04264E+02 2.9E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.35127E-08 0.00072  3.71632E-06 0.00019 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.33338E-01 0.00013  2.74676E+00 0.00020 ];
INF_SCATT1                (idx, [1:   4]) = [  3.92367E-01 0.00022  5.81160E-01 0.00032 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52284E-01 0.00037  1.01412E-01 0.00095 ];
INF_SCATT3                (idx, [1:   4]) = [  8.18556E-03 0.00443  2.81280E-02 0.00510 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.98361E-02 0.00307 -2.18821E-02 0.00363 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.73102E-04 0.03968  1.18908E-02 0.00888 ];
INF_SCATT6                (idx, [1:   4]) = [  7.80362E-03 0.00524 -3.06193E-02 0.00186 ];
INF_SCATT7                (idx, [1:   4]) = [  7.87306E-04 0.06349  8.69581E-03 0.00734 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.33367E-01 0.00013  2.74676E+00 0.00020 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.92367E-01 0.00022  5.81160E-01 0.00032 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52284E-01 0.00037  1.01412E-01 0.00095 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.18603E-03 0.00444  2.81280E-02 0.00510 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.98369E-02 0.00308 -2.18821E-02 0.00363 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.72872E-04 0.03977  1.18908E-02 0.00888 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.80385E-03 0.00524 -3.06193E-02 0.00186 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.87370E-04 0.06356  8.69581E-03 0.00734 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.30145E-01 0.00036  1.86754E+00 0.00031 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.44836E+00 0.00036  1.78488E-01 0.00031 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.06110E-03 0.00275  4.02944E-02 0.00115 ];
INF_REMXS                 (idx, [1:   4]) = [  3.98318E-02 0.00044  4.04958E-02 0.00076 ];

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

INF_S0                    (idx, [1:   8]) = [  6.98607E-01 0.00014  3.47312E-02 0.00027  1.57080E-04 0.00950  2.74660E+00 0.00020 ];
INF_S1                    (idx, [1:   8]) = [  3.81790E-01 0.00025  1.05769E-02 0.00192  9.57140E-05 0.01408  5.81064E-01 0.00032 ];
INF_S2                    (idx, [1:   8]) = [  1.55708E-01 0.00040 -3.42419E-03 0.00343  6.13005E-05 0.01121  1.01351E-01 0.00094 ];
INF_S3                    (idx, [1:   8]) = [  1.22841E-02 0.00285 -4.09854E-03 0.00315  3.19870E-05 0.01934  2.80960E-02 0.00510 ];
INF_S4                    (idx, [1:   8]) = [ -1.87929E-02 0.00280 -1.04318E-03 0.01231  1.09534E-05 0.05536 -2.18930E-02 0.00361 ];
INF_S5                    (idx, [1:   8]) = [ -1.22338E-03 0.02187  3.50275E-04 0.03260 -2.22099E-06 0.19079  1.18930E-02 0.00886 ];
INF_S6                    (idx, [1:   8]) = [  8.09922E-03 0.00377 -2.95592E-04 0.04145 -8.20345E-06 0.09689 -3.06111E-02 0.00187 ];
INF_S7                    (idx, [1:   8]) = [  1.33097E-03 0.03332 -5.43666E-04 0.01863 -9.04970E-06 0.06204  8.70486E-03 0.00732 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.98635E-01 0.00014  3.47312E-02 0.00027  1.57080E-04 0.00950  2.74660E+00 0.00020 ];
INF_SP1                   (idx, [1:   8]) = [  3.81790E-01 0.00025  1.05769E-02 0.00192  9.57140E-05 0.01408  5.81064E-01 0.00032 ];
INF_SP2                   (idx, [1:   8]) = [  1.55708E-01 0.00040 -3.42419E-03 0.00343  6.13005E-05 0.01121  1.01351E-01 0.00094 ];
INF_SP3                   (idx, [1:   8]) = [  1.22846E-02 0.00285 -4.09854E-03 0.00315  3.19870E-05 0.01934  2.80960E-02 0.00510 ];
INF_SP4                   (idx, [1:   8]) = [ -1.87937E-02 0.00281 -1.04318E-03 0.01231  1.09534E-05 0.05536 -2.18930E-02 0.00361 ];
INF_SP5                   (idx, [1:   8]) = [ -1.22315E-03 0.02194  3.50275E-04 0.03260 -2.22099E-06 0.19079  1.18930E-02 0.00886 ];
INF_SP6                   (idx, [1:   8]) = [  8.09944E-03 0.00376 -2.95592E-04 0.04145 -8.20345E-06 0.09689 -3.06111E-02 0.00187 ];
INF_SP7                   (idx, [1:   8]) = [  1.33104E-03 0.03338 -5.43666E-04 0.01863 -9.04970E-06 0.06204  8.70486E-03 0.00732 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.63443E-01 0.00185  1.74439E+00 0.00172 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.62751E-01 0.00243  1.75270E+00 0.00663 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64201E-01 0.00287  1.77480E+00 0.00391 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.63386E-01 0.00134  1.70755E+00 0.00496 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26531E+00 0.00186  1.91091E-01 0.00172 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.26866E+00 0.00245  1.90216E-01 0.00661 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26171E+00 0.00289  1.87826E-01 0.00393 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26558E+00 0.00134  1.95230E-01 0.00494 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.49763E-03 0.01741  2.01045E-04 0.09975  1.12543E-03 0.04375  1.21084E-03 0.04561  3.60692E-03 0.02526  9.96597E-04 0.04852  3.56805E-04 0.07546 ];
LAMBDA                    (idx, [1:  14]) = [  7.74279E-01 0.03928  1.24907E-02 5.5E-06  3.17478E-02 0.00042  1.09839E-01 0.00071  3.18962E-01 0.00048  1.34847E+00 0.00046  8.75726E+00 0.00344 ];

