
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
TITLE                     (idx, [1: 22])  = 'LEU-COMP-THERM-001-004' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 22])  = 'LEU_COMP_THERM_001_004' ;
WORKING_DIRECTORY         (idx, [1:108])  = '/global/home/users/christforsyth/ML_neutronics/LEU_COMP_THERM_001/LEU_COMP_THERM_001_004/H_in_H2O_scattering' ;
HOSTNAME                  (idx, [1: 12])  = 'n0135.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Mar  8 23:33:55 2021' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Mar  8 23:34:24 2021' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1615275235790 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99087E-01  9.96675E-01  9.92782E-01  1.00422E+00  1.00285E+00  1.00619E+00  9.90276E-01  1.00577E+00  1.00383E+00  1.00265E+00  1.00506E+00  9.85743E-01  9.93662E-01  1.00089E+00  1.00359E+00  1.00819E+00  9.97341E-01  9.97221E-01  1.00495E+00  9.99021E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  2.40117E-02 0.00164  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75988E-01 4.0E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  8.90265E-01 0.00019  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  8.90406E-01 0.00019  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.08063E+00 0.00058  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.86768E+01 0.00119  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.86716E+01 0.00119  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  9.68200E+00 0.00109  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.06261E+00 0.00125  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 1000015 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00001E+04 0.00180 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00001E+04 0.00180 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  8.49333E+00 ;
RUNNING_TIME              (idx, 1)        =  4.83783E-01 ;
INIT_TIME                 (idx, [1:  2])  = [  4.55000E-02  4.55000E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.08333E-03  1.08333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.37167E-01  4.37167E-01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.79817E-01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 17.55607 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.95587E+01 0.00601 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.64437E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  9.98716E-05 0.00077  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.17762E-01 0.00308 ];
U235_FISS                 (idx, [1:   4]) = [  3.92482E-01 0.00141  9.64265E-01 0.00028 ];
U238_FISS                 (idx, [1:   4]) = [  1.45228E-02 0.00768  3.56783E-02 0.00747 ];
U235_CAPT                 (idx, [1:   4]) = [  7.34044E-02 0.00371  1.25004E-01 0.00368 ];
U238_CAPT                 (idx, [1:   4]) = [  1.47410E-01 0.00244  2.51026E-01 0.00230 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS    (idx, [1:  2])  = [ 1000015 1.00000E+06 ];
BALA_SRC_NEUTRON_NXN     (idx, [1:  2])  = [ 0 7.56457E+02 ];
BALA_SRC_NEUTRON_VR      (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT     (idx, [1:  2])  = [ 1000015 1.00076E+06 ];

BALA_LOSS_NEUTRON_CAPT    (idx, [1:  2])  = [ 587580 5.88010E+05 ];
BALA_LOSS_NEUTRON_FISS    (idx, [1:  2])  = [ 407249 4.07560E+05 ];
BALA_LOSS_NEUTRON_LEAK    (idx, [1:  2])  = [ 5186 5.18702E+03 ];
BALA_LOSS_NEUTRON_CUT     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_ERR     (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT     (idx, [1:  2])  = [ 1000015 1.00076E+06 ];

BALA_NEUTRON_DIFF         (idx, [1:  2])  = [ 0 -1.37370E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.32282E-11 0.00090 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.75817E-20 0.00090 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.99316E-01 0.00089 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.07846E-01 0.00090 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.86972E-01 0.00060 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94818E-01 7.4E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98716E-01 0.00077 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.66129E+01 0.00069 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.18222E-03 0.01424 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  7.86180E+01 0.00106 ];
INI_FMASS                 (idx, 1)        =  7.52382E+02 ;
TOT_FMASS                 (idx, 1)        =  7.52382E+02 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.77520E+00 0.00085 ];
SIX_FF_F                  (idx, [1:   2]) = [  5.89497E-01 0.00100 ];
SIX_FF_P                  (idx, [1:   2]) = [  8.73043E-01 0.00036 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.09875E+00 0.00049 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96658E-01 5.7E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.98149E-01 4.4E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.00383E+00 0.00134 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.98618E-01 0.00134 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45023E+00 1.9E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02439E+02 2.0E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.99086E-01 0.00139  9.91200E-01 0.00136  7.41788E-03 0.02025 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.00006E+00 0.00089 ];
COL_KEFF                  (idx, [1:   2]) = [  1.00067E+00 0.00125 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.00006E+00 0.00089 ];
ABS_KINF                  (idx, [1:   2]) = [  1.00527E+00 0.00087 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.91342E+01 0.00029 ];
IMP_ALF                   (idx, [1:   2]) = [  1.91397E+01 0.00011 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  9.81292E-08 0.00550 ];
IMP_EALF                  (idx, [1:   2]) = [  9.74662E-08 0.00210 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.19927E-01 0.00879 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19758E-01 0.00303 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.98789E-03 0.01189  2.03506E-04 0.07022  1.09863E-03 0.02621  1.15641E-03 0.03276  3.23351E-03 0.01589  9.79305E-04 0.03240  3.16537E-04 0.05463 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.62003E-01 0.02791  1.07419E-02 0.04055  3.17236E-02 0.00037  1.09856E-01 0.00041  3.19206E-01 0.00040  1.34847E+00 0.00034  8.50616E+00 0.02091 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.45847E-03 0.01726  2.31130E-04 0.10087  1.16598E-03 0.04287  1.26134E-03 0.04030  3.42862E-03 0.02307  1.08744E-03 0.03978  2.83972E-04 0.08128 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.03817E-01 0.03934  1.24906E-02 3.8E-06  3.17098E-02 0.00064  1.09785E-01 0.00053  3.19406E-01 0.00062  1.34866E+00 0.00044  8.88833E+00 0.00523 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  5.61270E-05 0.00287  5.61216E-05 0.00287  5.69453E-05 0.03219 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.60639E-05 0.00243  5.60584E-05 0.00242  5.68893E-05 0.03216 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.35837E-03 0.02040  2.50803E-04 0.09712  1.16627E-03 0.04328  1.21068E-03 0.04794  3.36168E-03 0.02902  1.04897E-03 0.04626  3.19956E-04 0.08902 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.42754E-01 0.04475  1.24907E-02 6.4E-06  3.17392E-02 0.00051  1.09817E-01 0.00079  3.19031E-01 0.00058  1.34835E+00 0.00057  8.89494E+00 0.00600 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  5.41884E-05 0.00671  5.41930E-05 0.00679  5.38642E-05 0.07132 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.41217E-05 0.00635  5.41260E-05 0.00642  5.38388E-05 0.07159 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.52963E-03 0.06763  3.35303E-04 0.27703  1.54113E-03 0.14732  1.05228E-03 0.14717  3.33157E-03 0.09066  8.21005E-04 0.17758  4.48338E-04 0.28378 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.98884E-01 0.15529  1.24906E-02 0.0E+00  3.18174E-02 0.00015  1.09677E-01 0.00170  3.18512E-01 0.00170  1.34921E+00 0.00130  9.01999E+00 0.01504 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.55584E-03 0.06605  3.36093E-04 0.28801  1.53813E-03 0.14666  1.07461E-03 0.14245  3.33845E-03 0.08752  8.00524E-04 0.17879  4.68033E-04 0.26716 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.19550E-01 0.15658  1.24906E-02 0.0E+00  3.18158E-02 0.00018  1.09683E-01 0.00171  3.18636E-01 0.00178  1.34913E+00 0.00130  9.01999E+00 0.01504 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.39944E+02 0.06916 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  5.50518E-05 0.00152 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.49914E-05 0.00073 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.49429E-03 0.01536 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.36129E+02 0.01527 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.75359E-06 0.00084 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.74721E-06 0.00078  1.74679E-06 0.00078  1.80365E-06 0.00982 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  9.22106E-05 0.00144  9.23067E-05 0.00143  7.86555E-05 0.01755 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  8.70416E-01 0.00036  8.70384E-01 0.00038  8.87265E-01 0.01750 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.00089E+01 0.02787 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  7.86716E+01 0.00119  5.78135E+01 0.00159 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  5.95094E+04 0.00804  2.32945E+05 0.00265  4.63366E+05 0.00260  4.82421E+05 0.00210  4.17563E+05 0.00228  3.99828E+05 0.00085  2.73496E+05 0.00114  2.31485E+05 0.00121  1.77333E+05 0.00277  1.45121E+05 0.00238  1.25906E+05 0.00159  1.12547E+05 0.00145  1.04738E+05 0.00141  9.98955E+04 0.00129  9.76650E+04 0.00151  8.48399E+04 0.00136  8.43983E+04 0.00248  8.32986E+04 0.00243  8.27537E+04 0.00106  1.64023E+05 0.00127  1.61491E+05 0.00120  1.19167E+05 0.00339  7.83572E+04 0.00183  9.32855E+04 0.00195  9.15409E+04 0.00279  8.14810E+04 0.00151  1.44863E+05 0.00071  3.21818E+04 0.00302  4.02116E+04 0.00192  3.65392E+04 0.00237  2.11677E+04 0.00593  3.67257E+04 0.00389  2.49428E+04 0.00481  2.15911E+04 0.00497  4.17926E+03 0.00676  4.03455E+03 0.00882  4.23229E+03 0.00752  4.37796E+03 0.01628  4.32081E+03 0.00386  4.16006E+03 0.00445  4.34551E+03 0.00891  4.15635E+03 0.00787  7.77397E+03 0.00409  1.23691E+04 0.00402  1.57577E+04 0.00527  4.12554E+04 0.00317  4.28057E+04 0.00535  4.36362E+04 0.00387  2.64137E+04 0.00464  1.77920E+04 0.00291  1.30164E+04 0.00600  1.43530E+04 0.00577  2.44635E+04 0.00277  3.12900E+04 0.00476  6.47673E+04 0.00293  1.34191E+05 0.00153  3.49847E+05 0.00118  3.67737E+05 0.00164  3.38717E+05 0.00165  3.04317E+05 0.00151  3.20827E+05 0.00132  3.69708E+05 0.00161  3.57147E+05 0.00136  2.70112E+05 0.00154  2.75421E+05 0.00089  2.68660E+05 0.00162  2.51514E+05 0.00179  2.12165E+05 0.00170  1.57312E+05 0.00173  6.09785E+04 0.00224 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.00587E+00 0.00048 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.50560E+01 0.00066  2.15582E+01 0.00088 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  7.39131E-01 0.00033  2.78788E+00 0.00033 ];
INF_CAPT                  (idx, [1:   4]) = [  3.67554E-03 0.00115  2.29569E-02 0.00029 ];
INF_ABS                   (idx, [1:   4]) = [  5.05330E-03 0.00091  4.02754E-02 0.00079 ];
INF_FISS                  (idx, [1:   4]) = [  1.37775E-03 0.00108  1.73184E-02 0.00151 ];
INF_NSF                   (idx, [1:   4]) = [  3.57737E-03 0.00107  4.21999E-02 0.00151 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59653E+00 0.00017  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.04266E+02 2.1E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.34965E-08 0.00115  3.71806E-06 0.00019 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  7.34066E-01 0.00031  2.74764E+00 0.00035 ];
INF_SCATT1                (idx, [1:   4]) = [  3.93035E-01 0.00025  5.81033E-01 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  1.52434E-01 0.00054  1.01432E-01 0.00259 ];
INF_SCATT3                (idx, [1:   4]) = [  8.19238E-03 0.00924  2.81922E-02 0.00328 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.99179E-02 0.00364 -2.19984E-02 0.00262 ];
INF_SCATT5                (idx, [1:   4]) = [ -8.61935E-04 0.07662  1.16563E-02 0.01168 ];
INF_SCATT6                (idx, [1:   4]) = [  7.80261E-03 0.00416 -3.07870E-02 0.00355 ];
INF_SCATT7                (idx, [1:   4]) = [  7.12032E-04 0.02637  8.54479E-03 0.01117 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  7.34096E-01 0.00031  2.74764E+00 0.00035 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.93035E-01 0.00025  5.81033E-01 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.52434E-01 0.00054  1.01432E-01 0.00259 ];
INF_SCATTP3               (idx, [1:   4]) = [  8.19335E-03 0.00922  2.81922E-02 0.00328 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.99181E-02 0.00365 -2.19984E-02 0.00262 ];
INF_SCATTP5               (idx, [1:   4]) = [ -8.61941E-04 0.07681  1.16563E-02 0.01168 ];
INF_SCATTP6               (idx, [1:   4]) = [  7.80296E-03 0.00417 -3.07870E-02 0.00355 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.11967E-04 0.02623  8.54479E-03 0.01117 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.29952E-01 0.00117  1.86899E+00 0.00049 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.44958E+00 0.00117  1.78350E-01 0.00049 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.02314E-03 0.00079  4.02754E-02 0.00079 ];
INF_REMXS                 (idx, [1:   4]) = [  3.98937E-02 0.00065  4.03942E-02 0.00112 ];

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

INF_S0                    (idx, [1:   8]) = [  6.99237E-01 0.00031  3.48287E-02 0.00052  1.58872E-04 0.01329  2.74748E+00 0.00035 ];
INF_S1                    (idx, [1:   8]) = [  3.82441E-01 0.00025  1.05946E-02 0.00134  1.01291E-04 0.00610  5.80932E-01 0.00045 ];
INF_S2                    (idx, [1:   8]) = [  1.55891E-01 0.00052 -3.45683E-03 0.00294  6.44761E-05 0.01520  1.01368E-01 0.00259 ];
INF_S3                    (idx, [1:   8]) = [  1.23231E-02 0.00546 -4.13072E-03 0.00305  3.40640E-05 0.03182  2.81582E-02 0.00325 ];
INF_S4                    (idx, [1:   8]) = [ -1.88652E-02 0.00376 -1.05271E-03 0.00796  1.16315E-05 0.11304 -2.20100E-02 0.00263 ];
INF_S5                    (idx, [1:   8]) = [ -1.23374E-03 0.05020  3.71808E-04 0.02453 -1.25295E-06 1.00000  1.16575E-02 0.01169 ];
INF_S6                    (idx, [1:   8]) = [  8.07510E-03 0.00362 -2.72488E-04 0.02907 -5.69637E-06 0.21089 -3.07813E-02 0.00355 ];
INF_S7                    (idx, [1:   8]) = [  1.24535E-03 0.01780 -5.33322E-04 0.01402 -7.72840E-06 0.10982  8.55252E-03 0.01115 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.99268E-01 0.00031  3.48287E-02 0.00052  1.58872E-04 0.01329  2.74748E+00 0.00035 ];
INF_SP1                   (idx, [1:   8]) = [  3.82441E-01 0.00025  1.05946E-02 0.00134  1.01291E-04 0.00610  5.80932E-01 0.00045 ];
INF_SP2                   (idx, [1:   8]) = [  1.55891E-01 0.00052 -3.45683E-03 0.00294  6.44761E-05 0.01520  1.01368E-01 0.00259 ];
INF_SP3                   (idx, [1:   8]) = [  1.23241E-02 0.00545 -4.13072E-03 0.00305  3.40640E-05 0.03182  2.81582E-02 0.00325 ];
INF_SP4                   (idx, [1:   8]) = [ -1.88654E-02 0.00376 -1.05271E-03 0.00796  1.16315E-05 0.11304 -2.20100E-02 0.00263 ];
INF_SP5                   (idx, [1:   8]) = [ -1.23375E-03 0.05033  3.71808E-04 0.02453 -1.25295E-06 1.00000  1.16575E-02 0.01169 ];
INF_SP6                   (idx, [1:   8]) = [  8.07545E-03 0.00364 -2.72488E-04 0.02907 -5.69637E-06 0.21089 -3.07813E-02 0.00355 ];
INF_SP7                   (idx, [1:   8]) = [  1.24529E-03 0.01771 -5.33322E-04 0.01402 -7.72840E-06 0.10982  8.55252E-03 0.01115 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.62946E-01 0.00190  1.74392E+00 0.00533 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.61231E-01 0.00218  1.70370E+00 0.00969 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.65026E-01 0.00199  1.81334E+00 0.00620 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.62613E-01 0.00268  1.71931E+00 0.00672 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.26771E+00 0.00191  1.91163E-01 0.00540 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.27604E+00 0.00218  1.95726E-01 0.00969 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.25776E+00 0.00200  1.83851E-01 0.00620 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.26933E+00 0.00269  1.93911E-01 0.00673 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.45847E-03 0.01726  2.31130E-04 0.10087  1.16598E-03 0.04287  1.26134E-03 0.04030  3.42862E-03 0.02307  1.08744E-03 0.03978  2.83972E-04 0.08128 ];
LAMBDA                    (idx, [1:  14]) = [  7.03817E-01 0.03934  1.24906E-02 3.8E-06  3.17098E-02 0.00064  1.09785E-01 0.00053  3.19406E-01 0.00062  1.34866E+00 0.00044  8.88833E+00 0.00523 ];

