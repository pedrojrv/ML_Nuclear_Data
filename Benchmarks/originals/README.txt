The NucML installation package comes with 18 neutronics benchmarks which can be used to test ML-generated nuclear data.
The current folder (Benchmarks > originals) contains the input files for all of these benchmarks, as well as the 
results of these benchmark simulations (plots, results files, output files, etc.) using cross-section and thermal 
scattering data from ENDF/B-VII.

All benchmarks included in this folder are written in Serpent 2. They are based on benchmarks from the International 
Criticality Safety Benchmark Evaluation Project (ICSBEP). For in-depth information about each benchmark, visit the 
ICSBEP's Database for the International Handbook of Evaluated Criticality Safety Benchmark Experiments (DICE)...

https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

...and use the DICE browser to search for the benchmark of interest. A comprehensive PDF description of each
benchmark experiment can be obtained through DICE; these PDF files are included in this package for convenience.

------------------------------------------------------------------------------------------------------------------------------------------------
Table of Contents
------------------------------------------------------------------------------------------------------------------------------------------------

(1) Overview of available benchmarks
     (a) Fast spectrum
     (b) Thermal spectrum
     (c) Intermediate spectrum

(2) File types
     (a) input
     (b) output
     (c) OUT file (.out)
     (d) SEED file (.seed)
     (e) results (res.m)
     (f) detector results (det0.m, det0.mat)
     (g) benchmark description (.pdf)
     (h) geometry plot (geom1.png)
     (i) mesh plot (mesh1.png)
     (j) flux-energy spectrum (FluxEnergySpectrum.png)

(3) Adding your own benchmarks

------------------------------------------------------------------------------------------------------------------------------------------------

(1) U233_MET_FAST_001
Title: "233U Jezebel: A Bare Sphere of Uranium-233 Metal"

Primary materials: U-233 (metal)
Spectrum: fast
Detailed description: bare sphere of U-233 metal

Criticality (

For more information about each benchmark, 