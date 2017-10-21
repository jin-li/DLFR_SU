
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
INPUT_FILE_NAME           (idx, [1: 23])  = 'dlfr_core_2d_bol_nosafe' ;
WORKING_DIRECTORY         (idx, [1: 46])  = '/home/jhou8/proj/DLFR_UQ/DLFR_SU/model/core_2D' ;
HOSTNAME                  (idx, [1:  7])  = 'node003' ;
CPU_TYPE                  (idx, [1: 30])  = 'AMD Opteron(tm) Processor 6376' ;
CPU_MHZ                   (idx, 1)        = 100665423.0 ;
START_DATE                (idx, [1: 24])  = 'Thu Oct 19 22:32:09 2017' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Fri Oct 20 03:23:08 2017' ;

% Run parameters:

POP                       (idx, 1)        = 8000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1508466729 ;
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
ST_FRAC                   (idx, [1:   4]) = [  1.06215E-01 0.00122  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  8.93785E-01 0.00014  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  4.36216E-01 0.00021  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.24237E-01 0.00018  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  5.99775E+00 0.00049  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.28682E+02 0.00051  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.28678E+02 0.00051  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.58248E+02 0.00073  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  2.69354E+01 0.00142  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_POPULATION         (idx, 1)        = 4000750 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  8.00150E+03 0.00079 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  8.00150E+03 0.00079 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.34123E+02 ;
RUNNING_TIME              (idx, 1)        =  2.90980E+02 ;
INIT_TIME                 (idx, [1:  2])  = [  5.55815E+01  5.55815E+01 ];
PROCESS_TIME              (idx, [1:  2])  = [  5.26142E+00  5.26142E+00 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.30137E+02  2.30137E+02  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.90978E+02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.80460 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.93705E-01 0.00019 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.53375E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.24778E-04 0.00050  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.71356E-01 0.00118 ];
U235_FISS                 (idx, [1:   4]) = [  4.13978E-01 0.00081  9.07127E-01 0.00025 ];
U238_FISS                 (idx, [1:   4]) = [  4.23869E-02 0.00266  9.28733E-02 0.00248 ];
U235_CAPT                 (idx, [1:   4]) = [  1.11621E-01 0.00139  2.07070E-01 0.00125 ];
U238_CAPT                 (idx, [1:   4]) = [  2.47801E-01 0.00096  4.59699E-01 0.00074 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 4000750 4.00000E+06 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 8.62517E+03 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 4000750 4.00863E+06 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 2155617 2.16009E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 1825281 1.82867E+06 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 19852 1.98628E+04 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 4000750 4.00863E+06 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.74740E-08 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.48152E-11 0.00023 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.26630E-20 0.00023 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.13641E+00 0.00023 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.56164E-01 0.00023 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.38879E-01 0.00020 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.95043E-01 3.7E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98221E-01 0.00050 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.71201E+02 0.00036 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  4.95700E-03 0.00737 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.43546E+01 0.00038 ];
INI_FMASS                 (idx, 1)        =  1.16996E+03 ;
TOT_FMASS                 (idx, 1)        =  1.16996E+03 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.49123E+00 1.8E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02710E+02 1.8E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.13888E+00 0.00056  1.13109E+00 0.00054  7.79250E-03 0.00873 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.13887E+00 0.00024 ];
COL_KEFF                  (idx, [1:   2]) = [  1.13855E+00 0.00045 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.13887E+00 0.00024 ];
ABS_KINF                  (idx, [1:   2]) = [  1.14456E+00 0.00023 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  5.49964E+00 0.00036 ];
IMP_ALF                   (idx, [1:   2]) = [  5.49909E+00 0.00028 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  8.18446E-02 0.00197 ];
IMP_EALF                  (idx, [1:   2]) = [  8.18577E-02 0.00153 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  5.44402E-01 0.00155 ];
IMP_AFGE                  (idx, [1:   2]) = [  5.44824E-01 0.00070 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.66177E-03 0.00577  1.94878E-04 0.03338  1.03548E-03 0.01535  1.00786E-03 0.01506  3.04040E-03 0.00875  1.04015E-03 0.01452  3.42996E-04 0.02524 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.43071E-01 0.01376  1.05922E-02 0.01895  3.15646E-02 0.00029  1.10502E-01 0.00035  3.22049E-01 0.00027  1.34299E+00 0.00019  8.56353E+00 0.01003 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.98240E-03 0.00799  2.03562E-04 0.04540  1.07096E-03 0.02025  1.04737E-03 0.02181  3.18216E-03 0.01214  1.09692E-03 0.02026  3.81435E-04 0.03572 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.69875E-01 0.01924  1.24908E-02 3.0E-06  3.15473E-02 0.00039  1.10531E-01 0.00046  3.21989E-01 0.00035  1.34274E+00 0.00025  8.97243E+00 0.00224 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  6.99586E-07 0.00863  6.98640E-07 0.00865  8.53137E-07 0.10659 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  7.96664E-07 0.00863  7.95586E-07 0.00865  9.71414E-07 0.10639 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83933E-03 0.00889  2.05123E-04 0.05241  1.08632E-03 0.02252  9.92934E-04 0.02464  3.14724E-03 0.01300  1.06776E-03 0.02249  3.39958E-04 0.04109 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.29093E-01 0.02152  1.24908E-02 4.2E-06  3.15779E-02 0.00048  1.10530E-01 0.00066  3.22015E-01 0.00044  1.34306E+00 0.00031  8.95364E+00 0.00289 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  6.20155E-07 0.02283  6.20369E-07 0.02294  7.78243E-07 0.23168 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  7.06326E-07 0.02290  7.06577E-07 0.02301  8.82316E-07 0.22871 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.72762E-03 0.02764  2.12227E-04 0.15392  1.16800E-03 0.07050  9.38617E-04 0.06826  3.07095E-03 0.03856  9.87298E-04 0.07261  3.50531E-04 0.12386 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.13662E-01 0.06688  1.24908E-02 9.6E-06  3.15817E-02 0.00101  1.10757E-01 0.00145  3.21526E-01 0.00113  1.34335E+00 0.00070  8.97173E+00 0.00630 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.76783E-03 0.02698  2.19084E-04 0.14687  1.15484E-03 0.06938  9.50560E-04 0.06651  3.09360E-03 0.03851  9.95620E-04 0.07080  3.54118E-04 0.12046 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.23741E-01 0.06626  1.24908E-02 9.6E-06  3.15776E-02 0.00101  1.10748E-01 0.00144  3.21529E-01 0.00112  1.34335E+00 0.00070  8.96805E+00 0.00625 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.30971E+04 0.03460 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  6.54006E-07 0.00439 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  7.44754E-07 0.00437 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.89319E-03 0.00554 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.06482E+04 0.00725 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.35418E-08 0.00375 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  8.09670E-05 0.00175  8.09595E-05 0.00176  2.32763E-05 0.07482 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.03536E-04 0.00739  1.03488E-04 0.00742  3.20207E-05 0.11282 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  5.93479E-03 0.00628  5.93353E-03 0.00629  6.21156E-03 0.08033 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02232E+01 0.01463 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.28678E+02 0.00051  1.01258E+02 0.00080 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  4.74439E+04 0.00451  2.21833E+05 0.00170  6.51007E+05 0.00135  9.94017E+05 0.00098  1.31988E+06 0.00080  2.91427E+06 0.00072  2.35876E+06 0.00053  3.03825E+06 0.00039  3.06324E+06 0.00050  2.58230E+06 0.00054  2.37012E+06 0.00063  1.70183E+06 0.00099  1.43957E+06 0.00102  1.14637E+06 0.00114  6.50340E+05 0.00181  4.22143E+05 0.00174  3.91389E+05 0.00202  3.67780E+05 0.00219  2.85092E+05 0.00247  3.92889E+05 0.00337  2.53744E+05 0.00456  1.56924E+05 0.00424  9.33584E+04 0.00441  1.03322E+05 0.00463  9.13668E+04 0.00547  7.03577E+04 0.00616  1.08810E+05 0.00635  1.92673E+04 0.00726  2.25076E+04 0.00746  1.88634E+04 0.00768  1.02582E+04 0.00813  1.68356E+04 0.00746  1.05461E+04 0.00749  8.56862E+03 0.00792  1.62255E+03 0.01527  1.54099E+03 0.01110  1.58168E+03 0.01343  1.61635E+03 0.01495  1.54070E+03 0.01449  1.55620E+03 0.01254  1.55651E+03 0.01120  1.43256E+03 0.01254  2.68136E+03 0.01472  4.19406E+03 0.01024  5.14576E+03 0.01163  1.25624E+04 0.00802  1.16387E+04 0.01155  1.04191E+04 0.01067  5.72774E+03 0.01087  3.57927E+03 0.00962  2.39340E+03 0.01418  2.44400E+03 0.01345  3.66151E+03 0.01584  3.74301E+03 0.01571  4.85363E+03 0.01387  4.68672E+03 0.01658  4.17812E+03 0.02041  1.83934E+03 0.02036  9.98889E+02 0.02165  6.23924E+02 0.02216  5.06013E+02 0.02851  4.27411E+02 0.03091  3.23296E+02 0.02890  2.04339E+02 0.03989  1.72834E+02 0.04150  1.45079E+02 0.05298  1.03077E+02 0.04960  8.46760E+01 0.08351  4.25967E+01 0.07546  1.60434E+01 0.11006 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.14217E+00 0.00310 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.70822E+02 0.00044  3.91880E-01 0.00911 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.75722E-01 0.00021  4.56215E-01 0.00141 ];
INF_CAPT                  (idx, [1:   4]) = [  3.12730E-03 0.00049  1.21194E-02 0.00505 ];
INF_ABS                   (idx, [1:   4]) = [  5.79388E-03 0.00045  1.39069E-02 0.00618 ];
INF_FISS                  (idx, [1:   4]) = [  2.66659E-03 0.00050  1.78750E-03 0.02357 ];
INF_NSF                   (idx, [1:   4]) = [  6.64331E-03 0.00051  4.35559E-03 0.02357 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.49131E+00 2.0E-05  2.43670E+00 2.7E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02711E+02 2.1E-06  2.02270E+02 2.7E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.01797E-08 0.00343  1.48017E-06 0.00228 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.69915E-01 0.00022  4.42353E-01 0.00168 ];
INF_SCATT1                (idx, [1:   4]) = [  2.84062E-02 0.00056  7.54982E-03 0.04199 ];
INF_SCATT2                (idx, [1:   4]) = [  1.25604E-02 0.00112  7.32736E-04 0.33127 ];
INF_SCATT3                (idx, [1:   4]) = [  4.83496E-03 0.00252  2.82101E-04 0.65665 ];
INF_SCATT4                (idx, [1:   4]) = [  2.95787E-03 0.00310  6.70540E-05 1.00000 ];
INF_SCATT5                (idx, [1:   4]) = [  8.15252E-04 0.00791 -6.82956E-05 1.00000 ];
INF_SCATT6                (idx, [1:   4]) = [  5.10033E-04 0.01258  9.53379E-05 1.00000 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36957E-04 0.04623 -9.50239E-05 1.00000 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.69927E-01 0.00022  4.42353E-01 0.00168 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.84064E-02 0.00056  7.54982E-03 0.04199 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.25605E-02 0.00112  7.32736E-04 0.33127 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.83496E-03 0.00252  2.82101E-04 0.65665 ];
INF_SCATTP4               (idx, [1:   4]) = [  2.95782E-03 0.00311  6.70540E-05 1.00000 ];
INF_SCATTP5               (idx, [1:   4]) = [  8.15144E-04 0.00792 -6.82956E-05 1.00000 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.10039E-04 0.01259  9.53379E-05 1.00000 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.37009E-04 0.04619 -9.50239E-05 1.00000 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.97333E-01 0.00031  4.48157E-01 0.00139 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.12108E+00 0.00031  7.43822E-01 0.00140 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  5.78128E-03 0.00045  1.39069E-02 0.00618 ];
INF_REMXS                 (idx, [1:   4]) = [  5.86452E-03 0.00303  2.48161E-02 0.01786 ];

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

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 2.5E-07  2.53317E-07 1.00000 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  9.99966E-01 3.4E-05  3.41303E-05 1.00000 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  3.69857E-01 0.00022  5.73527E-05 0.00723  1.09536E-02 0.01051  4.31399E-01 0.00178 ];
INF_S1                    (idx, [1:   8]) = [  2.84193E-02 0.00056 -1.31051E-05 0.01121 -1.41386E-03 0.03737  8.96368E-03 0.03366 ];
INF_S2                    (idx, [1:   8]) = [  1.25617E-02 0.00112 -1.35131E-06 0.07334 -4.25226E-04 0.07310  1.15796E-03 0.20728 ];
INF_S3                    (idx, [1:   8]) = [  4.83533E-03 0.00251 -3.67953E-07 0.29278 -1.49283E-04 0.21451  4.31384E-04 0.43873 ];
INF_S4                    (idx, [1:   8]) = [  2.95807E-03 0.00309 -2.00487E-07 0.58209 -1.20853E-04 0.26863  1.87907E-04 0.87012 ];
INF_S5                    (idx, [1:   8]) = [  8.15443E-04 0.00796 -1.90528E-07 0.53984 -7.67099E-05 0.35100  8.41433E-06 1.00000 ];
INF_S6                    (idx, [1:   8]) = [  5.10096E-04 0.01259 -6.37117E-08 1.00000  2.29390E-05 1.00000  7.23989E-05 1.00000 ];
INF_S7                    (idx, [1:   8]) = [  1.36922E-04 0.04604  3.42288E-08 1.00000 -3.77014E-05 0.61025 -5.73225E-05 1.00000 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.69870E-01 0.00022  5.73527E-05 0.00723  1.09536E-02 0.01051  4.31399E-01 0.00178 ];
INF_SP1                   (idx, [1:   8]) = [  2.84195E-02 0.00056 -1.31051E-05 0.01121 -1.41386E-03 0.03737  8.96368E-03 0.03366 ];
INF_SP2                   (idx, [1:   8]) = [  1.25619E-02 0.00112 -1.35131E-06 0.07334 -4.25226E-04 0.07310  1.15796E-03 0.20728 ];
INF_SP3                   (idx, [1:   8]) = [  4.83533E-03 0.00251 -3.67953E-07 0.29278 -1.49283E-04 0.21451  4.31384E-04 0.43873 ];
INF_SP4                   (idx, [1:   8]) = [  2.95802E-03 0.00309 -2.00487E-07 0.58209 -1.20853E-04 0.26863  1.87907E-04 0.87012 ];
INF_SP5                   (idx, [1:   8]) = [  8.15334E-04 0.00797 -1.90528E-07 0.53984 -7.67099E-05 0.35100  8.41433E-06 1.00000 ];
INF_SP6                   (idx, [1:   8]) = [  5.10103E-04 0.01260 -6.37117E-08 1.00000  2.29390E-05 1.00000  7.23989E-05 1.00000 ];
INF_SP7                   (idx, [1:   8]) = [  1.36975E-04 0.04600  3.42288E-08 1.00000 -3.77014E-05 0.61025 -5.73225E-05 1.00000 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.97261E-01 0.00062  1.05817E+00 0.31448 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  3.02450E-01 0.00099  9.02880E-01 0.35253 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  3.01998E-01 0.00096  5.42465E-01 0.85084 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.87819E-01 0.00088  7.57602E-01 0.31976 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.12136E+00 0.00062  4.70114E-01 0.06506 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.10214E+00 0.00099  3.53723E-01 0.11770 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.10378E+00 0.00096  3.64212E-01 0.08812 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.15816E+00 0.00088  6.92407E-01 0.06753 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.98240E-03 0.00799  2.03562E-04 0.04540  1.07096E-03 0.02025  1.04737E-03 0.02181  3.18216E-03 0.01214  1.09692E-03 0.02026  3.81435E-04 0.03572 ];
LAMBDA                    (idx, [1:  14]) = [  8.69875E-01 0.01924  1.24908E-02 3.0E-06  3.15473E-02 0.00039  1.10531E-01 0.00046  3.21989E-01 0.00035  1.34274E+00 0.00025  8.97243E+00 0.00224 ];

