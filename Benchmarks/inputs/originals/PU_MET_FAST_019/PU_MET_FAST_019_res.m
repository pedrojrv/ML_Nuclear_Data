
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
HOSTNAME                  (idx, [1: 12])  = 'n0016.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Tue May 25 19:40:16 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Tue May 25 19:40:24 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1621996816446 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.02599E+00  9.88879E-01  1.01274E+00  9.71375E-01  1.02923E+00  9.80093E-01  1.00526E+00  9.91812E-01  1.02535E+00  9.68082E-01  1.00941E+00  9.83133E-01  1.00993E+00  9.90425E-01  9.92665E-01  9.81067E-01  1.01727E+00  9.92052E-01  1.01037E+00  1.01485E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:106])  = '/global/home/groups/co_nuclear/serpent/xsdata/combined_endfb7_ENDF80SaB2/combined_endfb7_ENDF80SaB2.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 2.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.17240E-01 0.00117  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  8.82760E-01 0.00016  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.03777E-01 0.00044  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.96484E-01 0.00043  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.92869E+00 0.00056  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  6.81478E+00 0.00118  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  6.16937E+00 0.00129  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  2.68880E+00 0.00214  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.12678E+00 0.00104  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 999970 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  9.99970E+03 0.00219 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  9.99970E+03 0.00219 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  9.28167E-01 ;
RUNNING_TIME              (idx, 1)        =  1.37300E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  8.22167E-02  8.22167E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  5.16665E-04  5.16665E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  5.45333E-02  5.45333E-02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.36583E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 6.76014 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.65034E+01 0.00601 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  2.84899E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64378.66 ;
ALLOC_MEMSIZE             (idx, 1)        = 474.41;
MEMSIZE                   (idx, 1)        = 290.19;
XS_MEMSIZE                (idx, 1)        = 134.50;
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

NORM_COEF                 (idx, [1:   4]) = [  9.56059E-05 0.00063  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  9.22923E-03 0.01984 ];
PU239_FISS                (idx, [1:   4]) = [  2.85209E-01 0.00184  9.30471E-01 0.00049 ];
PU240_FISS                (idx, [1:   4]) = [  1.79262E-02 0.00783  5.84707E-02 0.00736 ];
PU241_FISS                (idx, [1:   4]) = [  3.39005E-03 0.01499  1.10585E-02 0.01482 ];
PU239_CAPT                (idx, [1:   4]) = [  1.90515E-02 0.00800  4.96726E-01 0.00552 ];
PU240_CAPT                (idx, [1:   4]) = [  2.80969E-03 0.02003  7.33529E-02 0.02004 ];
PU241_CAPT                (idx, [1:   4]) = [  3.30262E-04 0.05399  8.63221E-03 0.05402 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 999970 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 4.51830E+04 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 999970 1.04518E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 38604 4.01076E+04 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 315966 3.20596E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 645400 6.84480E+05 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 999970 1.04518E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.10595E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.02133E-11 0.00101 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.07925E-18 0.00101 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.55248E-01 0.00100 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.06925E-01 0.00101 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  3.86989E-02 0.00212 ];
TOT_ABSRATE               (idx, [1:   2]) = [  3.45623E-01 0.00094 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.56059E-01 0.00063 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.86035E+01 0.00086 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  6.54377E-01 0.00050 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.23218E+00 0.00116 ];
INI_FMASS                 (idx, 1)        =  9.46336E+00 ;
TOT_FMASS                 (idx, 1)        =  9.46336E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.85537E+00 0.05956 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.20968E-01 0.02049 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.68774E-04 0.06506 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  2.22397E+03 0.05535 ];
SIX_FF_LF                 (idx, [1:   2]) = [  3.16227E-01 0.00175 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.97765E-01 9.8E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  2.43644E+00 0.05494 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  7.67751E-01 0.05495 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  3.11233E+00 9.0E-05 ];
FISSE                     (idx, [1:   2]) = [  2.07694E+02 2.9E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.98091E-01 0.00141  9.95807E-01 0.00138  1.99644E-03 0.04166 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.98417E-01 0.00095 ];
COL_KEFF                  (idx, [1:   2]) = [  9.99186E-01 0.00114 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.98417E-01 0.00095 ];
ABS_KINF                  (idx, [1:   2]) = [  3.15921E+00 0.00050 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  3.24280E+00 0.00092 ];
IMP_ALF                   (idx, [1:   2]) = [  3.24519E+00 0.00088 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  7.81431E-01 0.00298 ];
IMP_EALF                  (idx, [1:   2]) = [  7.79540E-01 0.00287 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.62753E+00 0.00159 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.62715E+00 0.00117 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  2.16260E-03 0.02176  7.51613E-05 0.12379  5.80738E-04 0.04296  4.05321E-04 0.05366  8.26438E-04 0.03641  2.23667E-04 0.05990  5.12769E-05 0.14197 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  4.81516E-01 0.06451  6.27023E-03 0.10053  2.96934E-02 0.01010  1.05782E-01 0.01444  3.15968E-01 0.00057  1.12257E+00 0.03710  3.26404E+00 0.14111 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  2.19007E-03 0.02856  7.57626E-05 0.16555  5.79489E-04 0.06280  4.07402E-04 0.07456  8.39718E-04 0.04782  2.34205E-04 0.08395  5.34919E-05 0.18928 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  4.82032E-01 0.08139  1.25461E-02 0.00252  2.99924E-02 0.00036  1.07905E-01 0.00176  3.16073E-01 0.00080  1.26976E+00 0.01269  8.30338E+00 0.06825 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.66104E-08 0.06186  3.65993E-08 0.06195  3.31644E-08 0.14972 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.65121E-08 0.06150  3.65010E-08 0.06160  3.30939E-08 0.14951 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  2.00585E-03 0.04263  6.76380E-05 0.19352  5.31935E-04 0.08013  3.70953E-04 0.09288  7.58660E-04 0.06277  2.06045E-04 0.11065  7.06231E-05 0.21234 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  6.06534E-01 0.13427  1.25180E-02 0.00294  3.00124E-02 0.00051  1.07783E-01 0.00216  3.15843E-01 0.00128  1.24687E+00 0.02096  8.92141E+00 0.07982 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.49571E-08 0.11360  3.49567E-08 0.11372  1.68980E-08 0.23971 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.48901E-08 0.11333  3.48898E-08 0.11346  1.69228E-08 0.23910 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  2.50968E-03 0.13017  1.75952E-04 0.52386  7.54285E-04 0.21007  4.13708E-04 0.26366  9.22711E-04 0.21678  1.80703E-04 0.53435  6.23206E-05 0.54616 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  6.52051E-01 0.35369  1.24811E-02 5.8E-09  3.00225E-02 0.00120  1.08268E-01 0.00568  3.16240E-01 0.00236  1.03693E+00 0.08907  1.06912E+01 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  2.43797E-03 0.13074  1.71577E-04 0.50847  7.02668E-04 0.21539  3.88408E-04 0.28482  9.24520E-04 0.21338  1.76478E-04 0.50721  7.43137E-05 0.55549 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.65868E-01 0.34985  1.24811E-02 0.0E+00  3.00237E-02 0.00121  1.08268E-01 0.00568  3.16249E-01 0.00236  1.03693E+00 0.08907  1.06912E+01 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.25715E+05 0.15934 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.52148E-08 0.01900 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.51369E-08 0.01886 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  2.05848E-03 0.02350 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -6.08390E+04 0.03331 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.97148E-09 0.02298 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.05665E-05 0.01468  1.05713E-05 0.01472  3.08982E-07 0.59604 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.43738E-05 0.04869  3.43251E-05 0.04886  1.34924E-06 0.62383 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  9.81984E-04 0.03792  9.81085E-04 0.03822  1.43194E-03 0.58643 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.47648E+01 0.04643 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  6.16937E+00 0.00129  3.98788E+00 0.00291 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.20647E+04 0.01214  1.95841E+05 0.00427  3.60078E+05 0.00261  5.43241E+05 0.00113  4.99793E+05 0.00205  4.34384E+05 0.00198  4.24791E+05 0.00132  3.21844E+05 0.00146  2.31361E+05 0.00335  1.73508E+05 0.00245  1.32944E+05 0.00346  1.03997E+05 0.00589  8.20193E+04 0.00437  6.57751E+04 0.00261  5.30676E+04 0.00821  3.77615E+04 0.00599  3.16666E+04 0.01073  2.58064E+04 0.00564  2.16494E+04 0.00900  3.28132E+04 0.00782  2.23723E+04 0.01235  1.17609E+04 0.01796  6.07827E+03 0.01668  6.43192E+03 0.01294  4.97140E+03 0.01575  3.38326E+03 0.01556  4.53372E+03 0.01930  7.27752E+02 0.03768  8.32480E+02 0.02381  7.15396E+02 0.07594  3.22206E+02 0.06244  6.00959E+02 0.03677  2.77669E+02 0.06899  2.48377E+02 0.10141  3.50346E+01 0.07937  5.24492E+01 0.15969  5.01323E+01 0.20888  6.15876E+01 0.17300  6.60793E+01 0.25903  5.37696E+01 0.09480  5.29990E+01 0.07124  3.14480E+01 0.07589  7.75241E+01 0.17640  1.15778E+02 0.09689  1.34273E+02 0.08025  3.87394E+02 0.06173  3.77946E+02 0.08256  3.26525E+02 0.06764  1.61723E+02 0.08519  1.18879E+02 0.13188  8.27839E+01 0.11618  8.34590E+01 0.14445  1.18503E+02 0.12164  1.47251E+02 0.03869  2.19636E+02 0.08368  2.35286E+02 0.05999  3.13433E+02 0.07713  1.77964E+02 0.02430  1.20509E+02 0.14992  8.82813E+01 0.15128  6.87558E+01 0.17949  7.51206E+01 0.15277  7.70081E+01 0.09162  4.91248E+01 0.11846  6.75886E+01 0.22864  4.80946E+01 0.18896  5.35530E+01 0.06229  5.39832E+01 0.26543  2.44582E+01 0.23689  1.15253E+01 0.35725 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  3.16680E+00 0.00106 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.85895E+01 0.00069  1.48255E-02 0.02543 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.34796E-01 0.00038  5.94429E-01 0.02523 ];
INF_CAPT                  (idx, [1:   4]) = [  2.07561E-03 0.00114  7.88428E-03 0.04236 ];
INF_ABS                   (idx, [1:   4]) = [  1.85787E-02 0.00129  1.81580E-02 0.03541 ];
INF_FISS                  (idx, [1:   4]) = [  1.65031E-02 0.00144  1.02737E-02 0.03053 ];
INF_NSF                   (idx, [1:   4]) = [  5.13648E-02 0.00147  2.94681E-02 0.03058 ];
INF_NUBAR                 (idx, [1:   4]) = [  3.11244E+00 5.6E-05  2.86829E+00 0.00010 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.07694E+02 2.0E-07  2.07653E+02 5.4E-06 ];
INF_INVV                  (idx, [1:   4]) = [  4.28432E-09 0.00214  2.12134E-06 0.03494 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.16259E-01 0.00039  5.76829E-01 0.02735 ];
INF_SCATT1                (idx, [1:   4]) = [  5.47467E-02 0.00146  3.81775E-02 0.09479 ];
INF_SCATT2                (idx, [1:   4]) = [  2.18977E-02 0.00299 -5.09544E-04 1.00000 ];
INF_SCATT3                (idx, [1:   4]) = [  1.19542E-02 0.00650 -2.39369E-03 0.67078 ];
INF_SCATT4                (idx, [1:   4]) = [  6.91488E-03 0.00758 -3.42526E-03 0.73821 ];
INF_SCATT5                (idx, [1:   4]) = [  3.40224E-03 0.01946 -2.69840E-03 0.91752 ];
INF_SCATT6                (idx, [1:   4]) = [  1.64247E-03 0.03089 -1.14705E-03 1.00000 ];
INF_SCATT7                (idx, [1:   4]) = [  7.71256E-04 0.04564  1.62972E-03 0.78593 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.18583E-01 0.00036  5.76829E-01 0.02735 ];
INF_SCATTP1               (idx, [1:   4]) = [  5.53496E-02 0.00143  3.81775E-02 0.09479 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.20054E-02 0.00301 -5.09544E-04 1.00000 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.19626E-02 0.00637 -2.39369E-03 0.67078 ];
INF_SCATTP4               (idx, [1:   4]) = [  6.91290E-03 0.00766 -3.42526E-03 0.73821 ];
INF_SCATTP5               (idx, [1:   4]) = [  3.39964E-03 0.01992 -2.69840E-03 0.91752 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.64036E-03 0.03156 -1.14705E-03 1.00000 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.72799E-04 0.05005  1.62972E-03 0.78593 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.22173E-01 0.00083  5.28913E-01 0.03412 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50033E+00 0.00083  6.33117E-01 0.03359 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.62549E-02 0.00194  1.81580E-02 0.03541 ];
INF_REMXS                 (idx, [1:   4]) = [  1.85886E-02 0.00096  1.91728E-02 0.04113 ];

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

INF_S0                    (idx, [1:   8]) = [  3.16207E-01 0.00039  5.16370E-05 0.01737  1.57270E-03 0.30202  5.75256E-01 0.02714 ];
INF_S1                    (idx, [1:   8]) = [  5.47608E-02 0.00146 -1.41093E-05 0.00820  5.72597E-04 0.45310  3.76049E-02 0.09180 ];
INF_S2                    (idx, [1:   8]) = [  2.18984E-02 0.00300 -7.67518E-07 0.71761  4.99714E-05 1.00000 -5.59516E-04 1.00000 ];
INF_S3                    (idx, [1:   8]) = [  1.19549E-02 0.00651 -6.93409E-07 1.00000 -1.23667E-04 0.99085 -2.27002E-03 0.73288 ];
INF_S4                    (idx, [1:   8]) = [  6.91427E-03 0.00745  6.05764E-07 1.00000 -1.19603E-04 1.00000 -3.30566E-03 0.74271 ];
INF_S5                    (idx, [1:   8]) = [  3.40256E-03 0.01932 -3.16533E-07 1.00000  4.60519E-05 1.00000 -2.74446E-03 0.93817 ];
INF_S6                    (idx, [1:   8]) = [  1.64240E-03 0.03089  6.50186E-08 1.00000  1.08215E-04 1.00000 -1.25526E-03 1.00000 ];
INF_S7                    (idx, [1:   8]) = [  7.71243E-04 0.04567  1.27545E-08 1.00000  2.12949E-04 0.62110  1.41677E-03 0.87099 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.18531E-01 0.00036  5.16370E-05 0.01737  1.57270E-03 0.30202  5.75256E-01 0.02714 ];
INF_SP1                   (idx, [1:   8]) = [  5.53637E-02 0.00143 -1.41093E-05 0.00820  5.72597E-04 0.45310  3.76049E-02 0.09180 ];
INF_SP2                   (idx, [1:   8]) = [  2.20062E-02 0.00302 -7.67518E-07 0.71761  4.99714E-05 1.00000 -5.59516E-04 1.00000 ];
INF_SP3                   (idx, [1:   8]) = [  1.19633E-02 0.00638 -6.93409E-07 1.00000 -1.23667E-04 0.99085 -2.27002E-03 0.73288 ];
INF_SP4                   (idx, [1:   8]) = [  6.91229E-03 0.00753  6.05764E-07 1.00000 -1.19603E-04 1.00000 -3.30566E-03 0.74271 ];
INF_SP5                   (idx, [1:   8]) = [  3.39996E-03 0.01979 -3.16533E-07 1.00000  4.60519E-05 1.00000 -2.74446E-03 0.93817 ];
INF_SP6                   (idx, [1:   8]) = [  1.64030E-03 0.03155  6.50186E-08 1.00000  1.08215E-04 1.00000 -1.25526E-03 1.00000 ];
INF_SP7                   (idx, [1:   8]) = [  7.72786E-04 0.05008  1.27545E-08 1.00000  2.12949E-04 0.62110  1.41677E-03 0.87099 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  1.14433E+00 0.00169  1.11945E+01 0.33258 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.07691E+00 0.00185  1.68145E+00 1.00000 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.18102E+00 0.00248 -2.61354E-02 1.00000 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.18161E+00 0.00169  4.25297E+00 0.16094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  2.91295E-01 0.00169  4.12794E-02 0.23355 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  3.09532E-01 0.00185  6.02648E-02 0.43763 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  2.82249E-01 0.00247 -2.44960E-02 1.00000 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  2.82105E-01 0.00169  8.80696E-02 0.18097 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  2.19007E-03 0.02856  7.57626E-05 0.16555  5.79489E-04 0.06280  4.07402E-04 0.07456  8.39718E-04 0.04782  2.34205E-04 0.08395  5.34919E-05 0.18928 ];
LAMBDA                    (idx, [1:  14]) = [  4.82032E-01 0.08139  1.25461E-02 0.00252  2.99924E-02 0.00036  1.07905E-01 0.00176  3.16073E-01 0.00080  1.26976E+00 0.01269  8.30338E+00 0.06825 ];

