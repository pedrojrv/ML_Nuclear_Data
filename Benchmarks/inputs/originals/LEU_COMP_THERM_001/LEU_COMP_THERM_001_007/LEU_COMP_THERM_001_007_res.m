
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-007' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_007' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_007/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0135.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:34:42 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:35:11 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275283001 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.94076E-01  9.97089E-01  1.00835E+00  1.00697E+00  9.98675E-01  1.00806E+00  9.96795E-01  1.01209E+00  9.95876E-01  1.00975E+00  9.88904E-01  1.00895E+00  9.91676E-01  1.00685E+00  9.97262E-01  1.00601E+00  9.89637E-01  1.00457E+00  9.85904E-01  9.92516E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.35924E-02 0.00164  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.76408E-01 4.0E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.91887E-01 0.00020  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.92024E-01 0.00020  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.07716E+00 0.00059  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.90748E+01 0.00122  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.90697E+01 0.00122  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.56980E+00 0.00121  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.03088E+00 0.00132  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000000 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00000E+04 0.00167 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00000E+04 0.00167 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.50900E+00 ;
RUNNING_TIME              (idx, 1)        =  4.75900E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  3.79000E-02  3.79000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.38333E-03  1.38333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.36567E-01  4.36567E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.71600E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.87981 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95386E+01 0.00551 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.81663E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.00014E-04 0.00083  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.13141E-01 0.00304 ];
U235_FISS                 (idx, [1:   4]) = [  3.93281E-01 0.00133  9.64529E-01 0.00030 ];
U238_FISS                 (idx, [1:   4]) = [  1.44407E-02 0.00817  3.54177E-02 0.00810 ];
U235_CAPT                 (idx, [1:   4]) = [  7.26189E-02 0.00377  1.23483E-01 0.00367 ];
U238_CAPT                 (idx, [1:   4]) = [  1.45249E-01 0.00257  2.46990E-01 0.00248 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000000 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.88515E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000000 1.00079E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587554 5.88020E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407370 4.07693E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5076 5.07592E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000000 1.00079E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -2.42144E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.31966E-11 0.00088 ];
TOT_POWDENS               (idx, [1:   2]) = [  2.13819E-20 0.00088 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.96908E-01 0.00087 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.06876E-01 0.00088 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.88048E-01 0.00060 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94924E-01 7.5E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.00014E+00 0.00083 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66895E+01 0.00071 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.07641E-03 0.01461 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.91323E+01 0.00104 ];
INI_FMASS                 (idx, 1)        =  6.17189E+02 ;
TOT_FMASS                 (idx, 1)        =  6.17189E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.78055E+00 0.00078 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.87034E-01 0.00102 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.75748E-01 0.00038 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09691E+00 0.00049 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96665E-01 5.6E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98253E-01 4.0E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00404E+00 0.00114 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.98947E-01 0.00114 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45015E+00 2.0E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02437E+02 2.1E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99260E-01 0.00115  9.91309E-01 0.00118  7.63808E-03 0.01824 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.97655E-01 0.00087 ];
COL_KEFF                  (idx, [1:   2]) = [  9.96839E-01 0.00124 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.97655E-01 0.00087 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00275E+00 0.00087 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91507E+01 0.00030 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91549E+01 0.00012 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.65442E-08 0.00584 ];
IMP_EALF                  (idx, [1:   2]) = [  9.60030E-08 0.00224 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.19683E-01 0.00924 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.18981E-01 0.00326 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  7.12638E-03 0.01201  2.12438E-04 0.07421  1.14040E-03 0.03071  1.10537E-03 0.03092  3.32833E-03 0.01724  9.91557E-04 0.03249  3.48284E-04 0.05225 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.94525E-01 0.02921  1.03673E-02 0.04548  3.17371E-02 0.00038  1.09885E-01 0.00049  3.19237E-01 0.00040  1.34876E+00 0.00030  8.71102E+00 0.01048 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.56595E-03 0.01836  2.43025E-04 0.12223  1.22694E-03 0.04412  1.16775E-03 0.04581  3.54995E-03 0.02322  1.01925E-03 0.04586  3.59035E-04 0.08413 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.78778E-01 0.04636  1.24907E-02 5.7E-06  3.17430E-02 0.00048  1.09848E-01 0.00060  3.19310E-01 0.00058  1.34912E+00 0.00043  8.83455E+00 0.00379 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.82158E-05 0.00244  5.82134E-05 0.00243  5.78232E-05 0.02352 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.81653E-05 0.00218  5.81628E-05 0.00216  5.77813E-05 0.02360 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.64219E-03 0.01897  2.26396E-04 0.11947  1.24686E-03 0.04670  1.22374E-03 0.04536  3.52540E-03 0.02387  1.04428E-03 0.05118  3.75515E-04 0.09079 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.87679E-01 0.04832  1.24907E-02 5.8E-06  3.17486E-02 0.00053  1.09919E-01 0.00091  3.19304E-01 0.00059  1.34896E+00 0.00057  8.83802E+00 0.00457 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.71341E-05 0.00705  5.71641E-05 0.00709  5.07142E-05 0.05698 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.70800E-05 0.00684  5.71097E-05 0.00688  5.06746E-05 0.05715 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.74719E-03 0.05825  1.42713E-04 0.33362  1.25093E-03 0.13027  9.82578E-04 0.14075  3.83087E-03 0.08999  9.75068E-04 0.16460  5.65027E-04 0.20168 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  9.35506E-01 0.11876  1.24909E-02 2.7E-05  3.17500E-02 0.00119  1.09634E-01 0.00145  3.19607E-01 0.00195  1.34876E+00 0.00130  8.89836E+00 0.01078 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.82895E-03 0.05628  1.52143E-04 0.33642  1.30406E-03 0.12156  1.02585E-03 0.14164  3.80360E-03 0.08710  9.59146E-04 0.15636  5.84149E-04 0.20160 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  9.17878E-01 0.11878  1.24909E-02 2.7E-05  3.17521E-02 0.00117  1.09625E-01 0.00140  3.19519E-01 0.00188  1.34906E+00 0.00126  8.88878E+00 0.01068 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.36317E+02 0.05915 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.76036E-05 0.00150 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.75539E-05 0.00107 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.70611E-03 0.00953 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.33838E+02 0.00989 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.76354E-06 0.00082 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.73712E-06 0.00078  1.73673E-06 0.00077  1.79003E-06 0.01109 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.24646E-05 0.00148  9.25501E-05 0.00147  8.05678E-05 0.01706 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.73088E-01 0.00038  8.73076E-01 0.00042  8.86139E-01 0.01576 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04661E+01 0.02808 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.90697E+01 0.00122  5.91890E+01 0.00136 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  6.01138E+04 0.00608  2.32812E+05 0.00367  4.62566E+05 0.00155  4.82117E+05 0.00110  4.15629E+05 0.00112  3.98085E+05 0.00103  2.72582E+05 0.00246  2.30148E+05 0.00167  1.75241E+05 0.00227  1.44201E+05 0.00183  1.24655E+05 0.00231  1.11783E+05 0.00251  1.03944E+05 0.00256  9.92636E+04 0.00112  9.67697E+04 0.00197  8.37271E+04 0.00286  8.35525E+04 0.00176  8.26885E+04 0.00240  8.21588E+04 0.00232  1.62394E+05 0.00180  1.60735E+05 0.00084  1.18813E+05 0.00224  7.82461E+04 0.00255  9.26868E+04 0.00221  9.09057E+04 0.00234  8.14626E+04 0.00329  1.44350E+05 0.00151  3.20013E+04 0.00373  4.02110E+04 0.00189  3.64031E+04 0.00360  2.11469E+04 0.00434  3.68774E+04 0.00297  2.50283E+04 0.00162  2.14621E+04 0.00393  4.12525E+03 0.00640  4.14526E+03 0.01081  4.19532E+03 0.01075  4.29498E+03 0.00564  4.34756E+03 0.01026  4.21726E+03 0.01336  4.35249E+03 0.00673  4.05750E+03 0.00679  7.60926E+03 0.00533  1.23374E+04 0.00525  1.55834E+04 0.00335  4.09231E+04 0.00271  4.27474E+04 0.00415  4.37597E+04 0.00268  2.63053E+04 0.00188  1.78675E+04 0.00435  1.29644E+04 0.00710  1.42406E+04 0.00473  2.44139E+04 0.00347  3.12521E+04 0.00398  6.50404E+04 0.00245  1.34735E+05 0.00118  3.51817E+05 0.00070  3.70143E+05 0.00070  3.41346E+05 0.00099  3.06658E+05 0.00090  3.22146E+05 0.00049  3.71341E+05 0.00104  3.59540E+05 0.00124  2.71669E+05 0.00156  2.77150E+05 0.00113  2.70265E+05 0.00144  2.53131E+05 0.00105  2.13654E+05 0.00101  1.58467E+05 0.00062  6.13077E+04 0.00148 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00195E+00 0.00124 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.49783E+01 0.00047  2.17129E+01 0.00080 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.41592E-01 0.00016  2.79156E+00 0.00026 ];
INF_CAPT                  (idx, [1:   4]) = [  3.61506E-03 0.00097  2.29259E-02 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  4.96831E-03 0.00090  4.01095E-02 0.00102 ];
INF_FISS                  (idx, [1:   4]) = [  1.35326E-03 0.00123  1.71836E-02 0.00190 ];
INF_NSF                   (idx, [1:   4]) = [  3.51663E-03 0.00121  4.18712E-02 0.00190 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59864E+00 0.00011  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04286E+02 1.4E-05  2.02270E+02 5.9E-09 ];
INF_INVV                  (idx, [1:   4]) = [  6.35380E-08 0.00053  3.71936E-06 0.00014 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.36611E-01 0.00017  2.75143E+00 0.00028 ];
INF_SCATT1                (idx, [1:   4]) = [  3.95320E-01 0.00020  5.81950E-01 0.00013 ];
INF_SCATT2                (idx, [1:   4]) = [  1.53271E-01 0.00068  1.01855E-01 0.00104 ];
INF_SCATT3                (idx, [1:   4]) = [  8.21896E-03 0.00783  2.81671E-02 0.00222 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.00503E-02 0.00145 -2.18260E-02 0.00660 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.67783E-04 0.06865  1.18365E-02 0.01114 ];
INF_SCATT6                (idx, [1:   4]) = [  7.84835E-03 0.00679 -3.06903E-02 0.00143 ];
INF_SCATT7                (idx, [1:   4]) = [  7.41351E-04 0.07306  8.69083E-03 0.01102 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.36643E-01 0.00017  2.75143E+00 0.00028 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.95321E-01 0.00020  5.81950E-01 0.00013 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.53271E-01 0.00069  1.01855E-01 0.00104 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.21909E-03 0.00786  2.81671E-02 0.00222 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.00499E-02 0.00148 -2.18260E-02 0.00660 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.67771E-04 0.06877  1.18365E-02 0.01114 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.84809E-03 0.00680 -3.06903E-02 0.00143 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.41794E-04 0.07270  8.69083E-03 0.01102 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29324E-01 0.00042  1.87240E+00 0.00038 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.45355E+00 0.00042  1.78025E-01 0.00038 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  4.93674E-03 0.00084  4.01095E-02 0.00102 ];
INF_REMXS                 (idx, [1:   4]) = [  4.00729E-02 0.00021  4.02899E-02 0.00080 ];

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

INF_S0                    (idx, [1:   8]) = [  7.01519E-01 0.00017  3.50924E-02 0.00044  1.55733E-04 0.02766  2.75127E+00 0.00028 ];
INF_S1                    (idx, [1:   8]) = [  3.84621E-01 0.00022  1.06991E-02 0.00114  9.84469E-05 0.03613  5.81851E-01 0.00013 ];
INF_S2                    (idx, [1:   8]) = [  1.56736E-01 0.00064 -3.46561E-03 0.00184  6.23505E-05 0.03847  1.01793E-01 0.00105 ];
INF_S3                    (idx, [1:   8]) = [  1.23725E-02 0.00428 -4.15352E-03 0.00337  3.37113E-05 0.04164  2.81334E-02 0.00223 ];
INF_S4                    (idx, [1:   8]) = [ -1.89916E-02 0.00117 -1.05868E-03 0.01058  1.25530E-05 0.10662 -2.18385E-02 0.00662 ];
INF_S5                    (idx, [1:   8]) = [ -1.22406E-03 0.04466  3.56273E-04 0.01843 -9.14271E-07 1.00000  1.18374E-02 0.01113 ];
INF_S6                    (idx, [1:   8]) = [  8.14044E-03 0.00632 -2.92084E-04 0.01543 -7.68703E-06 0.06490 -3.06827E-02 0.00144 ];
INF_S7                    (idx, [1:   8]) = [  1.28364E-03 0.04152 -5.42288E-04 0.01166 -9.19499E-06 0.07740  8.70003E-03 0.01101 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  7.01550E-01 0.00017  3.50924E-02 0.00044  1.55733E-04 0.02766  2.75127E+00 0.00028 ];
INF_SP1                   (idx, [1:   8]) = [  3.84622E-01 0.00022  1.06991E-02 0.00114  9.84469E-05 0.03613  5.81851E-01 0.00013 ];
INF_SP2                   (idx, [1:   8]) = [  1.56736E-01 0.00064 -3.46561E-03 0.00184  6.23505E-05 0.03847  1.01793E-01 0.00105 ];
INF_SP3                   (idx, [1:   8]) = [  1.23726E-02 0.00430 -4.15352E-03 0.00337  3.37113E-05 0.04164  2.81334E-02 0.00223 ];
INF_SP4                   (idx, [1:   8]) = [ -1.89912E-02 0.00120 -1.05868E-03 0.01058  1.25530E-05 0.10662 -2.18385E-02 0.00662 ];
INF_SP5                   (idx, [1:   8]) = [ -1.22404E-03 0.04473  3.56273E-04 0.01843 -9.14271E-07 1.00000  1.18374E-02 0.01113 ];
INF_SP6                   (idx, [1:   8]) = [  8.14017E-03 0.00632 -2.92084E-04 0.01543 -7.68703E-06 0.06490 -3.06827E-02 0.00144 ];
INF_SP7                   (idx, [1:   8]) = [  1.28408E-03 0.04133 -5.42288E-04 0.01166 -9.19499E-06 0.07740  8.70003E-03 0.01101 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62223E-01 0.00065  1.74203E+00 0.00244 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.59898E-01 0.00154  1.70170E+00 0.00487 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.65171E-01 0.00141  1.82269E+00 0.00426 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.61659E-01 0.00157  1.70718E+00 0.00366 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.27119E+00 0.00065  1.91353E-01 0.00244 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.28257E+00 0.00154  1.95901E-01 0.00488 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25706E+00 0.00141  1.82893E-01 0.00427 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.27394E+00 0.00157  1.95264E-01 0.00369 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.56595E-03 0.01836  2.43025E-04 0.12223  1.22694E-03 0.04412  1.16775E-03 0.04581  3.54995E-03 0.02322  1.01925E-03 0.04586  3.59035E-04 0.08413 ];
LAMBDA                    (idx, [1:  14]) = [  7.78778E-01 0.04636  1.24907E-02 5.7E-06  3.17430E-02 0.00048  1.09848E-01 0.00060  3.19310E-01 0.00058  1.34912E+00 0.00043  8.83455E+00 0.00379 ];

