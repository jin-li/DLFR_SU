
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.29' ;
COMPILE_DATE              (idx, [1: 20])  = 'Jul 25 2017 23:52:14' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  9])  = 'DLFR-Core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 16])  = 'dlfr_core_2d_bol' ;
WORKING_DIRECTORY         (idx, [1: 46])  = '/home/jhou8/proj/DLFR_UQ/DLFR_SU/model/core_2D' ;
HOSTNAME                  (idx, [1:  7])  = 'node001' ;
CPU_TYPE                  (idx, [1: 30])  = 'AMD Opteron(tm) Processor 6376' ;
CPU_MHZ                   (idx, 1)        = 100665423.0 ;
START_DATE                (idx, [1: 24])  = 'Sun Oct 22 14:06:25 2017' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Sun Oct 22 18:46:03 2017' ;

% Run parameters:

POP                       (idx, 1)        = 8000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1508695585 ;
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
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 1 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
SHARE_BUF_ARRAY           (idx, 1)        = 1 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 61])  = '/cm/shared/apps/ncsu/SERPENT/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.12545E-01 0.00117  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  8.87455E-01 0.00015  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  4.34226E-01 0.00021  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.24010E-01 0.00017  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  6.01635E+00 0.00053  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.27687E+02 0.00054  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.27681E+02 0.00054  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.57319E+02 0.00075  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.81353E+01 0.00144  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 4000722 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  8.00144E+03 0.00081 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  8.00144E+03 0.00081 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.39546E+02 ;
RUNNING_TIME              (idx, 1)        =  2.79643E+02 ;
INIT_TIME                 (idx, [1:  2])  = [  4.10366E+01  4.10366E+01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.53602E+00  1.53602E+00 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.37070E+02  2.37070E+02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.79641E+02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.85661 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.93737E-01 0.00024 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.76860E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 128918.24 ;
ALLOC_MEMSIZE             (idx, 1)        = 20185.60;
MEMSIZE                   (idx, 1)        = 20144.55;
XS_MEMSIZE                (idx, 1)        = 1432.51;
MAT_MEMSIZE               (idx, 1)        = 122.49;
RES_MEMSIZE               (idx, 1)        = 174.62;
MISC_MEMSIZE              (idx, 1)        = 104.38;
UNKNOWN_MEMSIZE           (idx, 1)        = 18310.55;
UNUSED_MEMSIZE            (idx, 1)        = 41.04;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 236 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 372963 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 21 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 64 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 64 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 1890 ;
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
BETA_DECAY_SOURCE         (idx, 1)        =  0.00000E+00 ;

% Normaliation coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.24810E-04 0.00050  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.62061E-01 0.00125 ];
U235_FISS                 (idx, [1:   4]) = [  4.06225E-01 0.00080  9.06495E-01 0.00024 ];
U238_FISS                 (idx, [1:   4]) = [  4.19051E-02 0.00251  9.35050E-02 0.00233 ];
U235_CAPT                 (idx, [1:   4]) = [  1.09572E-01 0.00147  2.00351E-01 0.00131 ];
U238_CAPT                 (idx, [1:   4]) = [  2.38382E-01 0.00102  4.35886E-01 0.00080 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 4000722 4.00000E+06 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 8.74265E+03 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 4000722 4.00874E+06 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 2186292 2.19093E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 1791870 1.79523E+06 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 22560 2.25871E+04 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 4000722 4.00874E+06 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.11759E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.45496E-11 0.00024 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.24360E-20 0.00024 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.11644E+00 0.00024 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.47975E-01 0.00024 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.46388E-01 0.00019 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.94362E-01 3.8E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98483E-01 0.00050 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.68366E+02 0.00040 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.63770E-03 0.00670 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.38744E+01 0.00044 ];
INI_FMASS                 (idx, 1)        =  1.16996E+03 ;
TOT_FMASS                 (idx, 1)        =  1.16996E+03 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.49219E+00 1.9E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02716E+02 1.8E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.11871E+00 0.00059  1.11070E+00 0.00057  7.78691E-03 0.00862 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.11885E+00 0.00024 ];
COL_KEFF                  (idx, [1:   2]) = [  1.11825E+00 0.00048 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.11885E+00 0.00024 ];
ABS_KINF                  (idx, [1:   2]) = [  1.12521E+00 0.00024 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  5.49287E+00 0.00036 ];
IMP_ALF                   (idx, [1:   2]) = [  5.49157E+00 0.00027 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  8.24013E-02 0.00199 ];
IMP_EALF                  (idx, [1:   2]) = [  8.24728E-02 0.00149 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  5.52326E-01 0.00149 ];
IMP_AFGE                  (idx, [1:   2]) = [  5.52987E-01 0.00071 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.83426E-03 0.00581  1.91468E-04 0.03511  1.04974E-03 0.01554  1.06221E-03 0.01456  3.12669E-03 0.00900  1.05128E-03 0.01358  3.52865E-04 0.02563 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.40821E-01 0.01374  1.02425E-02 0.02097  3.15815E-02 0.00028  1.10564E-01 0.00034  3.22118E-01 0.00027  1.34262E+00 0.00019  8.53502E+00 0.01023 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.10549E-03 0.00777  2.07279E-04 0.04976  1.09703E-03 0.02088  1.10175E-03 0.01992  3.24097E-03 0.01180  1.10535E-03 0.01974  3.53117E-04 0.03529 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.22580E-01 0.01803  1.24908E-02 3.3E-06  3.15715E-02 0.00037  1.10600E-01 0.00049  3.22075E-01 0.00037  1.34258E+00 0.00024  8.95978E+00 0.00217 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  7.61435E-07 0.00976  7.60575E-07 0.00986  9.04701E-07 0.10014 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  8.51575E-07 0.00971  8.50613E-07 0.00981  1.01236E-06 0.10005 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.96655E-03 0.00876  1.86674E-04 0.05647  1.06074E-03 0.02385  1.05825E-03 0.02199  3.23727E-03 0.01375  1.05649E-03 0.02209  3.67119E-04 0.03880 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.51945E-01 0.02147  1.24908E-02 4.5E-06  3.15858E-02 0.00046  1.10578E-01 0.00057  3.21973E-01 0.00044  1.34276E+00 0.00033  8.95438E+00 0.00273 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  6.81817E-07 0.02364  6.82563E-07 0.02377  5.23893E-07 0.10743 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  7.62635E-07 0.02362  7.63457E-07 0.02375  5.87421E-07 0.10821 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.37432E-03 0.02734  1.80312E-04 0.19135  1.21568E-03 0.06959  1.15258E-03 0.07260  3.30858E-03 0.04079  1.08428E-03 0.07407  4.32882E-04 0.11666 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.83156E-01 0.06449  1.24909E-02 1.2E-05  3.15972E-02 0.00105  1.10784E-01 0.00141  3.22164E-01 0.00120  1.34356E+00 0.00073  9.01175E+00 0.00616 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.32299E-03 0.02691  1.71544E-04 0.18181  1.18284E-03 0.06851  1.14588E-03 0.07113  3.26584E-03 0.03996  1.11769E-03 0.07355  4.39194E-04 0.11434 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.89051E-01 0.06226  1.24909E-02 1.2E-05  3.15951E-02 0.00105  1.10782E-01 0.00140  3.22132E-01 0.00117  1.34354E+00 0.00073  9.01029E+00 0.00615 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.29006E+04 0.03305 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  7.22512E-07 0.00431 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  8.08146E-07 0.00428 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.15426E-03 0.00524 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -9.98935E+03 0.00673 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.51806E-08 0.00363 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  8.08537E-05 0.00165  8.08605E-05 0.00167  2.56353E-05 0.06805 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.03115E-04 0.00710  1.03128E-04 0.00710  3.33277E-05 0.11365 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.76155E-03 0.00599  6.75999E-03 0.00602  7.07004E-03 0.07192 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.00230E+01 0.01417 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.27681E+02 0.00054  9.90418E+01 0.00078 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  4.77481E+04 0.00448  2.21616E+05 0.00215  6.48878E+05 0.00149  9.85748E+05 0.00091  1.29943E+06 0.00093  2.84874E+06 0.00072  2.28846E+06 0.00057  2.94544E+06 0.00056  2.96679E+06 0.00047  2.49627E+06 0.00060  2.28376E+06 0.00077  1.64848E+06 0.00090  1.39322E+06 0.00110  1.11581E+06 0.00130  6.46232E+05 0.00170  4.24221E+05 0.00202  3.96295E+05 0.00231  3.74464E+05 0.00248  2.95543E+05 0.00274  4.23556E+05 0.00331  2.83820E+05 0.00379  1.78238E+05 0.00381  1.06670E+05 0.00341  1.17944E+05 0.00381  1.04367E+05 0.00440  8.03035E+04 0.00446  1.24400E+05 0.00413  2.20878E+04 0.00634  2.57754E+04 0.00690  2.15450E+04 0.00662  1.17123E+04 0.00739  1.89121E+04 0.00683  1.18731E+04 0.00924  9.77945E+03 0.00991  1.79764E+03 0.01447  1.78734E+03 0.01199  1.79100E+03 0.01430  1.80809E+03 0.01131  1.78529E+03 0.01785  1.75673E+03 0.01668  1.76581E+03 0.01198  1.62401E+03 0.01341  3.04598E+03 0.01277  4.76129E+03 0.00692  5.83276E+03 0.01040  1.42376E+04 0.00894  1.31382E+04 0.01035  1.19960E+04 0.01198  6.42262E+03 0.01185  4.00340E+03 0.01272  2.74871E+03 0.01237  2.75626E+03 0.01632  4.22442E+03 0.01409  4.21963E+03 0.01455  5.58207E+03 0.01653  5.28776E+03 0.01897  4.75923E+03 0.01759  2.00612E+03 0.02274  1.13179E+03 0.02202  7.22802E+02 0.02771  5.53399E+02 0.02907  5.02946E+02 0.02932  3.64371E+02 0.03775  2.29490E+02 0.04551  1.87967E+02 0.04195  1.69944E+02 0.05246  1.33953E+02 0.05817  9.68453E+01 0.05179  5.68557E+01 0.07921  1.71214E+01 0.10001 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.12447E+00 0.00279 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.67932E+02 0.00056  4.44993E-01 0.01006 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.79179E-01 0.00019  4.56347E-01 0.00142 ];
INF_CAPT                  (idx, [1:   4]) = [  3.22168E-03 0.00068  1.22298E-02 0.00550 ];
INF_ABS                   (idx, [1:   4]) = [  5.88480E-03 0.00060  1.40251E-02 0.00538 ];
INF_FISS                  (idx, [1:   4]) = [  2.66312E-03 0.00059  1.79539E-03 0.01862 ];
INF_NSF                   (idx, [1:   4]) = [  6.63726E-03 0.00058  4.37482E-03 0.01862 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.49228E+00 2.2E-05  2.43670E+00 2.7E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02716E+02 2.0E-06  2.02270E+02 4.7E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.13000E-08 0.00276  1.48079E-06 0.00272 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.73289E-01 0.00020  4.42527E-01 0.00172 ];
INF_SCATT1                (idx, [1:   4]) = [  2.85799E-02 0.00064  7.34591E-03 0.03844 ];
INF_SCATT2                (idx, [1:   4]) = [  1.26925E-02 0.00109  3.21743E-04 0.60881 ];
INF_SCATT3                (idx, [1:   4]) = [  4.83900E-03 0.00252 -4.00534E-05 1.00000 ];
INF_SCATT4                (idx, [1:   4]) = [  2.97231E-03 0.00290 -9.90134E-05 1.00000 ];
INF_SCATT5                (idx, [1:   4]) = [  8.32847E-04 0.01081  5.61956E-05 1.00000 ];
INF_SCATT6                (idx, [1:   4]) = [  5.10958E-04 0.01492 -2.33889E-04 0.64180 ];
INF_SCATT7                (idx, [1:   4]) = [  1.34955E-04 0.06314 -3.03045E-05 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.73302E-01 0.00020  4.42527E-01 0.00172 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.85801E-02 0.00064  7.34591E-03 0.03844 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.26926E-02 0.00109  3.21743E-04 0.60881 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.83892E-03 0.00252 -4.00534E-05 1.00000 ];
INF_SCATTP4               (idx, [1:   4]) = [  2.97235E-03 0.00290 -9.90134E-05 1.00000 ];
INF_SCATTP5               (idx, [1:   4]) = [  8.32880E-04 0.01081  5.61956E-05 1.00000 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.11001E-04 0.01493 -2.33889E-04 0.64180 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.34935E-04 0.06315 -3.03045E-05 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.99946E-01 0.00025  4.48622E-01 0.00163 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.11131E+00 0.00025  7.43063E-01 0.00163 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.87180E-03 0.00060  1.40251E-02 0.00538 ];
INF_REMXS                 (idx, [1:   4]) = [  5.95622E-03 0.00264  2.45663E-02 0.01410 ];

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

INF_S0                    (idx, [1:   8]) = [  3.73223E-01 0.00020  6.59508E-05 0.00687  1.07462E-02 0.00967  4.31781E-01 0.00177 ];
INF_S1                    (idx, [1:   8]) = [  2.85951E-02 0.00064 -1.52032E-05 0.01203 -1.30903E-03 0.03322  8.65494E-03 0.03308 ];
INF_S2                    (idx, [1:   8]) = [  1.26942E-02 0.00109 -1.65996E-06 0.06840 -4.41874E-04 0.07681  7.63617E-04 0.25112 ];
INF_S3                    (idx, [1:   8]) = [  4.83953E-03 0.00252 -5.32408E-07 0.15890 -1.87153E-04 0.15177  1.47099E-04 1.00000 ];
INF_S4                    (idx, [1:   8]) = [  2.97257E-03 0.00289 -2.58067E-07 0.33077 -7.18014E-05 0.37652 -2.72120E-05 1.00000 ];
INF_S5                    (idx, [1:   8]) = [  8.32876E-04 0.01081 -2.92718E-08 1.00000 -9.82835E-06 1.00000  6.60240E-05 1.00000 ];
INF_S6                    (idx, [1:   8]) = [  5.11088E-04 0.01493 -1.29667E-07 0.65549 -4.11556E-05 0.50561 -1.92733E-04 0.73326 ];
INF_S7                    (idx, [1:   8]) = [  1.35021E-04 0.06318 -6.63275E-08 1.00000 -3.89260E-05 0.39785  8.62149E-06 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.73236E-01 0.00020  6.59508E-05 0.00687  1.07462E-02 0.00967  4.31781E-01 0.00177 ];
INF_SP1                   (idx, [1:   8]) = [  2.85953E-02 0.00064 -1.52032E-05 0.01203 -1.30903E-03 0.03322  8.65494E-03 0.03308 ];
INF_SP2                   (idx, [1:   8]) = [  1.26943E-02 0.00109 -1.65996E-06 0.06840 -4.41874E-04 0.07681  7.63617E-04 0.25112 ];
INF_SP3                   (idx, [1:   8]) = [  4.83945E-03 0.00252 -5.32408E-07 0.15890 -1.87153E-04 0.15177  1.47099E-04 1.00000 ];
INF_SP4                   (idx, [1:   8]) = [  2.97261E-03 0.00289 -2.58067E-07 0.33077 -7.18014E-05 0.37652 -2.72120E-05 1.00000 ];
INF_SP5                   (idx, [1:   8]) = [  8.32909E-04 0.01081 -2.92718E-08 1.00000 -9.82835E-06 1.00000  6.60240E-05 1.00000 ];
INF_SP6                   (idx, [1:   8]) = [  5.11131E-04 0.01494 -1.29667E-07 0.65549 -4.11556E-05 0.50561 -1.92733E-04 0.73326 ];
INF_SP7                   (idx, [1:   8]) = [  1.35002E-04 0.06319 -6.63275E-08 1.00000 -3.89260E-05 0.39785  8.62149E-06 1.00000 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  3.01959E-01 0.00068  7.90032E-01 0.07903 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  3.06801E-01 0.00096  1.22122E+00 0.18303 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  3.07670E-01 0.00101  1.88085E+00 0.33883 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.91942E-01 0.00102  5.86910E-01 0.06541 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.10392E+00 0.00067  4.71410E-01 0.05848 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.08650E+00 0.00096  4.21151E-01 0.10218 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.08344E+00 0.00101  3.71459E-01 0.09047 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.14181E+00 0.00102  6.21621E-01 0.05825 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  7.10549E-03 0.00777  2.07279E-04 0.04976  1.09703E-03 0.02088  1.10175E-03 0.01992  3.24097E-03 0.01180  1.10535E-03 0.01974  3.53117E-04 0.03529 ];
LAMBDA                    (idx, [1:  14]) = [  8.22580E-01 0.01803  1.24908E-02 3.3E-06  3.15715E-02 0.00037  1.10600E-01 0.00049  3.22075E-01 0.00037  1.34258E+00 0.00024  8.95978E+00 0.00217 ];

