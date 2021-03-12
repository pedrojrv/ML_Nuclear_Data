
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-002' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_002' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_002/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0107.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:32:09 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:32:44 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275129746 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.96226E-01  1.00653E+00  9.98266E-01  9.98466E-01  1.00288E+00  9.95026E-01  9.99079E-01  9.97866E-01  1.00294E+00  1.00292E+00  9.99225E-01  9.99612E-01  1.00949E+00  9.96533E-01  1.00184E+00  1.00189E+00  9.99359E-01  9.96453E-01  9.98559E-01  9.96839E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.39149E-02 0.00147  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76085E-01 3.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.89969E-01 0.00017  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.90110E-01 0.00017  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.08102E+00 0.00062  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.87503E+01 0.00113  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.87453E+01 0.00113  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.72065E+00 0.00107  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.05667E+00 0.00112  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000157 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00016E+04 0.00187 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00016E+04 0.00187 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.53450E+00 ;
RUNNING_TIME              (idx, 1)        =  5.77233E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.39683E-01  1.39683E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.26667E-03  1.26667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.36233E-01  4.36233E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  5.73300E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 14.78518 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95502E+01 0.00625 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.27147E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.98679E-05 0.00079  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.16265E-01 0.00313 ];
U235_FISS                 (idx, [1:   4]) = [  3.93354E-01 0.00147  9.63962E-01 0.00031 ];
U238_FISS                 (idx, [1:   4]) = [  1.46805E-02 0.00854  3.59716E-02 0.00821 ];
U235_CAPT                 (idx, [1:   4]) = [  7.25696E-02 0.00340  1.23779E-01 0.00329 ];
U238_CAPT                 (idx, [1:   4]) = [  1.46703E-01 0.00277  2.50207E-01 0.00231 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000157 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.62814E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000157 1.00076E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 586751 5.87081E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 408333 4.08608E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5073 5.07442E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000157 1.00076E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.21072E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32255E-11 0.00078 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.76471E-20 0.00078 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.99151E-01 0.00078 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07762E-01 0.00078 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.87171E-01 0.00052 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94932E-01 7.0E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98679E-01 0.00079 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66510E+01 0.00060 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.06752E-03 0.01367 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.86895E+01 0.00086 ];
INI_FMASS                 (idx, 1)        =  7.49443E+02 ;
TOT_FMASS                 (idx, 1)        =  7.49443E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77966E+00 0.00081 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.88991E-01 0.00093 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.73333E-01 0.00038 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09934E+00 0.00050 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96756E-01 5.6E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98164E-01 4.3E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00637E+00 0.00136 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.00126E+00 0.00137 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45033E+00 2.0E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02440E+02 2.2E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.00210E+00 0.00141  9.93943E-01 0.00139  7.31822E-03 0.01756 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.99917E-01 0.00078 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00054E+00 0.00112 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.99917E-01 0.00078 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00501E+00 0.00076 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91266E+01 0.00032 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91335E+01 0.00011 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.89185E-08 0.00618 ];
IMP_EALF                  (idx, [1:   2]) = [  9.80758E-08 0.00218 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.21523E-01 0.00815 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.20586E-01 0.00320 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.72270E-03 0.01222  1.93982E-04 0.06667  1.07140E-03 0.03109  1.07652E-03 0.03253  3.11735E-03 0.01692  9.62701E-04 0.03104  3.00749E-04 0.05654 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.53637E-01 0.02745  1.04921E-02 0.04386  3.17330E-02 0.00036  1.09905E-01 0.00046  3.19198E-01 0.00043  1.34905E+00 0.00029  8.31146E+00 0.02325 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.19464E-03 0.01545  2.26092E-04 0.10645  1.17246E-03 0.04923  1.18573E-03 0.04608  3.31504E-03 0.02459  9.85197E-04 0.03704  3.10128E-04 0.07609 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.38939E-01 0.04084  1.24907E-02 4.3E-06  3.17152E-02 0.00055  1.10011E-01 0.00085  3.19374E-01 0.00068  1.34846E+00 0.00045  8.77211E+00 0.00386 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.55363E-05 0.00280  5.55291E-05 0.00283  5.68913E-05 0.03237 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.56389E-05 0.00219  5.56317E-05 0.00222  5.70051E-05 0.03231 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.30414E-03 0.01811  2.04660E-04 0.10847  1.20863E-03 0.05125  1.17378E-03 0.04615  3.38233E-03 0.02479  9.93499E-04 0.05083  3.41236E-04 0.09230 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.61503E-01 0.04878  1.24907E-02 5.7E-06  3.17224E-02 0.00056  1.09946E-01 0.00088  3.19201E-01 0.00065  1.34863E+00 0.00060  8.76949E+00 0.00491 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.38058E-05 0.00673  5.38274E-05 0.00678  5.62181E-05 0.07459 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.39086E-05 0.00660  5.39302E-05 0.00665  5.63447E-05 0.07503 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.64561E-03 0.06246  1.78525E-04 0.39425  1.15814E-03 0.13782  1.23382E-03 0.17736  3.58915E-03 0.09305  1.07138E-03 0.16293  4.14596E-04 0.24528 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.59987E-01 0.16026  1.24907E-02 1.3E-05  3.16778E-02 0.00175  1.09780E-01 0.00203  3.19119E-01 0.00177  1.34882E+00 0.00115  8.94442E+00 0.01268 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.56278E-03 0.05775  1.91932E-04 0.37037  1.11462E-03 0.13878  1.19709E-03 0.17135  3.53244E-03 0.08746  1.13804E-03 0.14953  3.88662E-04 0.23429 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.61974E-01 0.15157  1.24907E-02 1.2E-05  3.16706E-02 0.00176  1.09775E-01 0.00203  3.19156E-01 0.00179  1.34890E+00 0.00113  8.95523E+00 0.01295 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.42102E+02 0.06180 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.46837E-05 0.00180 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.47882E-05 0.00120 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.31316E-03 0.00839 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.33825E+02 0.00898 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75371E-06 0.00080 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74651E-06 0.00089  1.74628E-06 0.00089  1.77948E-06 0.01007 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.22781E-05 0.00138  9.23591E-05 0.00136  8.04380E-05 0.02024 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.70780E-01 0.00039  8.70743E-01 0.00040  8.89424E-01 0.01783 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.05346E+01 0.03315 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.87453E+01 0.00113  5.74558E+01 0.00132 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  6.00654E+04 0.00796  2.33296E+05 0.00421  4.63261E+05 0.00244  4.83250E+05 0.00230  4.17480E+05 0.00190  4.00991E+05 0.00136  2.73720E+05 0.00117  2.32012E+05 0.00131  1.77565E+05 0.00078  1.45064E+05 0.00169  1.25302E+05 0.00109  1.12577E+05 0.00149  1.04586E+05 0.00087  9.97010E+04 0.00114  9.74377E+04 0.00074  8.48169E+04 0.00228  8.42754E+04 0.00205  8.32251E+04 0.00302  8.26990E+04 0.00426  1.63710E+05 0.00100  1.61217E+05 0.00179  1.19080E+05 0.00253  7.86967E+04 0.00369  9.36574E+04 0.00241  9.15239E+04 0.00106  8.19699E+04 0.00271  1.44671E+05 0.00093  3.21578E+04 0.00195  4.05397E+04 0.00059  3.65048E+04 0.00347  2.13036E+04 0.00406  3.68973E+04 0.00433  2.52651E+04 0.00391  2.16363E+04 0.00337  4.12390E+03 0.01164  4.15556E+03 0.00491  4.24995E+03 0.00914  4.31674E+03 0.00777  4.29447E+03 0.00920  4.30200E+03 0.00788  4.34379E+03 0.01786  4.10250E+03 0.00961  7.66737E+03 0.00484  1.22522E+04 0.00799  1.56543E+04 0.00236  4.13509E+04 0.00272  4.26886E+04 0.00104  4.35982E+04 0.00133  2.64554E+04 0.00637  1.79177E+04 0.00315  1.30742E+04 0.00455  1.44690E+04 0.00268  2.45675E+04 0.00137  3.12601E+04 0.00374  6.50325E+04 0.00142  1.34375E+05 0.00167  3.50102E+05 0.00185  3.68681E+05 0.00189  3.39520E+05 0.00152  3.04528E+05 0.00161  3.20822E+05 0.00207  3.69866E+05 0.00170  3.57927E+05 0.00171  2.70461E+05 0.00142  2.75804E+05 0.00152  2.68475E+05 0.00172  2.51638E+05 0.00219  2.12156E+05 0.00279  1.57538E+05 0.00171  6.09351E+04 0.00254 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00566E+00 0.00160 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50717E+01 0.00105  2.15809E+01 0.00161 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.38944E-01 0.00035  2.78798E+00 0.00042 ];
INF_CAPT                  (idx, [1:   4]) = [  3.66858E-03 0.00286  2.29476E-02 0.00052 ];
INF_ABS                   (idx, [1:   4]) = [  5.04747E-03 0.00207  4.02417E-02 0.00157 ];
INF_FISS                  (idx, [1:   4]) = [  1.37890E-03 0.00134  1.72941E-02 0.00298 ];
INF_NSF                   (idx, [1:   4]) = [  3.58164E-03 0.00124  4.21405E-02 0.00298 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59747E+00 0.00024  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04273E+02 2.9E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.35526E-08 0.00037  3.71740E-06 0.00020 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.33895E-01 0.00035  2.74778E+00 0.00045 ];
INF_SCATT1                (idx, [1:   4]) = [  3.92924E-01 0.00040  5.81202E-01 0.00036 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52455E-01 0.00070  1.01455E-01 0.00091 ];
INF_SCATT3                (idx, [1:   4]) = [  8.27060E-03 0.00737  2.83808E-02 0.00440 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.99153E-02 0.00301 -2.17156E-02 0.00599 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.69631E-04 0.06500  1.16378E-02 0.00483 ];
INF_SCATT6                (idx, [1:   4]) = [  7.78156E-03 0.00403 -3.08714E-02 0.00548 ];
INF_SCATT7                (idx, [1:   4]) = [  7.93650E-04 0.02728  8.54663E-03 0.00810 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.33925E-01 0.00034  2.74778E+00 0.00045 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.92924E-01 0.00041  5.81202E-01 0.00036 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52455E-01 0.00070  1.01455E-01 0.00091 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.27070E-03 0.00737  2.83808E-02 0.00440 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.99145E-02 0.00301 -2.17156E-02 0.00599 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.69396E-04 0.06507  1.16378E-02 0.00483 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.78102E-03 0.00403 -3.08714E-02 0.00548 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.93343E-04 0.02760  8.54663E-03 0.00810 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.30047E-01 0.00101  1.86904E+00 0.00061 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.44898E+00 0.00101  1.78345E-01 0.00061 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.01709E-03 0.00231  4.02417E-02 0.00157 ];
INF_REMXS                 (idx, [1:   4]) = [  3.98708E-02 0.00029  4.03693E-02 0.00185 ];

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

INF_S0                    (idx, [1:   8]) = [  6.99073E-01 0.00036  3.48212E-02 0.00018  1.59563E-04 0.01245  2.74762E+00 0.00045 ];
INF_S1                    (idx, [1:   8]) = [  3.82338E-01 0.00041  1.05853E-02 0.00147  9.91174E-05 0.01740  5.81103E-01 0.00036 ];
INF_S2                    (idx, [1:   8]) = [  1.55918E-01 0.00066 -3.46303E-03 0.00522  6.31166E-05 0.03668  1.01392E-01 0.00090 ];
INF_S3                    (idx, [1:   8]) = [  1.23965E-02 0.00427 -4.12586E-03 0.00310  3.30711E-05 0.05285  2.83477E-02 0.00439 ];
INF_S4                    (idx, [1:   8]) = [ -1.88585E-02 0.00333 -1.05677E-03 0.00671  1.13445E-05 0.14542 -2.17269E-02 0.00593 ];
INF_S5                    (idx, [1:   8]) = [ -1.23745E-03 0.04808  3.67817E-04 0.02547 -6.33048E-07 1.00000  1.16385E-02 0.00477 ];
INF_S6                    (idx, [1:   8]) = [  8.06086E-03 0.00411 -2.79300E-04 0.02548 -7.54014E-06 0.07584 -3.08639E-02 0.00546 ];
INF_S7                    (idx, [1:   8]) = [  1.32717E-03 0.01272 -5.33519E-04 0.01193 -1.00126E-05 0.06463  8.55665E-03 0.00804 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.99104E-01 0.00036  3.48212E-02 0.00018  1.59563E-04 0.01245  2.74762E+00 0.00045 ];
INF_SP1                   (idx, [1:   8]) = [  3.82339E-01 0.00041  1.05853E-02 0.00147  9.91174E-05 0.01740  5.81103E-01 0.00036 ];
INF_SP2                   (idx, [1:   8]) = [  1.55918E-01 0.00066 -3.46303E-03 0.00522  6.31166E-05 0.03668  1.01392E-01 0.00090 ];
INF_SP3                   (idx, [1:   8]) = [  1.23966E-02 0.00427 -4.12586E-03 0.00310  3.30711E-05 0.05285  2.83477E-02 0.00439 ];
INF_SP4                   (idx, [1:   8]) = [ -1.88577E-02 0.00332 -1.05677E-03 0.00671  1.13445E-05 0.14542 -2.17269E-02 0.00593 ];
INF_SP5                   (idx, [1:   8]) = [ -1.23721E-03 0.04812  3.67817E-04 0.02547 -6.33048E-07 1.00000  1.16385E-02 0.00477 ];
INF_SP6                   (idx, [1:   8]) = [  8.06032E-03 0.00412 -2.79300E-04 0.02548 -7.54014E-06 0.07584 -3.08639E-02 0.00546 ];
INF_SP7                   (idx, [1:   8]) = [  1.32686E-03 0.01291 -5.33519E-04 0.01193 -1.00126E-05 0.06463  8.55665E-03 0.00804 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62800E-01 0.00189  1.73087E+00 0.00302 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.62050E-01 0.00154  1.72732E+00 0.00243 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.64144E-01 0.00274  1.77744E+00 0.00556 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62222E-01 0.00269  1.69041E+00 0.00649 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26841E+00 0.00190  1.92588E-01 0.00302 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27203E+00 0.00153  1.92981E-01 0.00244 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.26197E+00 0.00274  1.87559E-01 0.00561 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27122E+00 0.00269  1.97224E-01 0.00643 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.19464E-03 0.01545  2.26092E-04 0.10645  1.17246E-03 0.04923  1.18573E-03 0.04608  3.31504E-03 0.02459  9.85197E-04 0.03704  3.10128E-04 0.07609 ];
LAMBDA                    (idx, [1:  14]) = [  7.38939E-01 0.04084  1.24907E-02 4.3E-06  3.17152E-02 0.00055  1.10011E-01 0.00085  3.19374E-01 0.00068  1.34846E+00 0.00045  8.77211E+00 0.00386 ];

