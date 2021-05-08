# Criticality Benchmark Repository

Contributed by Christopher Forsyth.

## Table of Contents

1. What's this?
2. Directory Contents and File Types
3. Adding Your Own Benchmarks
4. For More Information
5. List of Available Benchmarks - See INFO.md
	- Fast Spectrum (5)
        - (i)   U233_MET_FAST_001
		- (ii)  U233_MET_FAST_002
			- U233_MET_FAST_002_001
			- U233_MET_FAST_002_002
		- (iii) PU_MET_FAST_005
		- (iv)  PU_MET_FAST_019

    - Thermal Spectrum (8)
		- LEU_COMP_THERM_001
			- LEU_COMP_THERM_001_001
			- LEU_COMP_THERM_001_002
			- LEU_COMP_THERM_001_003
			- LEU_COMP_THERM_001_004
			- LEU_COMP_THERM_001_005
			- LEU_COMP_THERM_001_006
			- LEU_COMP_THERM_001_007
			- LEU_COMP_THERM_001_008

    - Intermediate Spectrum (5)



# 1 What's this?


The current folder (Benchmarks > inputs) contains benchmarks which can be used to test ML-generated nuclear data. It 
is split into two parts:

- The "originals" folder contains the input files for each benchmark, as well as results generated from these benchmarks (plots, result files, output files, etc.) using conventional (non-ML) nuclear data such as ENDF. These benchmarks also include a detector object, which can be used to generate a flux-energy spectrum from the simulation.

- The "templates" folder contains a template input file for each benchmark, as well as a "composition.csv" file specifying the abundances of various isotopes in the benchmark materials. NucML utilities can be used to update the nuclear data filepath in the template input file, allowing the user to test many ML-generated nuclear datasets quickly using the same file.

As of 2021, all benchmarks are written in Serpent 2, and are based on benchmarks taken from the International Criticality Safety Benchmark Evaluation Project (ICSBEP): 

https://www.oecd-nea.org/jcms/pl_24498/international-criticality-safety-benchmark-evaluation-project-icsbep

A detailed PDF description of each benchmark (geometry, materials, real-life experimental counterparts, etc.) can be obtained using the ICSBEP's Database for the International Handbook of Evaluated Criticality Safety Benchmark Experiments (DICE) browser:

https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice


# 2. Directory Contents and File Types

There exists a directory for each benchmark available in both the `originals` and `template` directories. The `originals` contains the runnable SERPENT inputs and resulting outputs. The `template` directory in the other hand contains a specifically formated version of the `originals` inputs that is meant to be manipulated by the `NucML` utilities for ML algorithm validation. For more information on the data types please read the `INFO.md` document.


# 3. Adding Your Own Benchmarks

The following instructions are meant to guide you through the process of adding your own benchmarks and if possible, incorporate them into this repository. It is our hope that, with the help of the community, this repository can serve as a modernized database for benchmark inputs worldwide. 

## a. Finding New Benchmarks

To add a new benchmark, use the ICSBEP's Database for the International Handbook of Evaluated Criticality Safety Benchmark Experiments (DICE) browser to find a benchmark which matches your desired materials, neutron spectrum,geometry, etc:

https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

Each DICE benchmark includes a PDF which describes how to create an input file for the benchmark. 

## b. Serpent 2

You must create your new input file using Serpent 2. More information about Serpent 2, including an installation guide, can be found here:

http://serpent.vtt.fi/mediawiki/index.php/Main_Page

The runnable input must be placed within the `originals` directory along with the resulting output. Please select the best particle parameteres that minimizes the uncertainty to an acceptable state (not super high fidelity).

The input file for the `templates` directory is similar except we add the `set acelib "to_replace"` line which is looked for by NucML to automatically set the path to the ML-generated cross sections. 

## c. Creating the Composition File

For all `template` benchmarks a `composition.csv` file exists. The best thing is to copy one and adapt it to your benchmark. For each section of the benchmark the fractional composition percentage must be reported. NucML will look for all isotopes with fractions higher than 10% (it can be modified) and generate cross sections for those. 

## d. Best Practices

Instead of starting your new benchmark files from scratch, please copy an existing benchmark input file and then modify it to meet the new benchmark specifications. This will ensure that formatting is consistent across all benchmark inputs, as well as ensuring that certain objects / components (e.g., detectors) are not left out of new input files. Please follow this same procedure for all other required files (e.g., flux-energy spectrum creator (.py) files). The format is not final or super strict. We trust your documentation insticts.

## e. Quality Assurance

LANL Whisper includes complete MCNP input files for all ICSBEP benchmarks, which can be used as a cross-reference to verify the correctness of your Serpent 2 inputs. More information on Whisper here:

https://mcnp.lanl.gov/pdf_files/la-ur-14-26558v1.pdf

## f. Uploading Benchmarks to NucML

After creating your benchmark, you must verify that the new entry, in both the "originals" and "templates" folders, contains the same file types and conventions as existing benchmarks. (Note that benchmark names, such as "U233_MET_FAST_001" or "PU_MET_FAST_002", come directly from DICE.) You must also update any relevant sections of the current README file to reflect the new benchmark.

Once finished, please submit a GitHub pull request to have your changes approved.


# 5. For More Information

## a. Benchmark Full PDF Descriptions

A detailed PDF description of each benchmark (geometry, materials, real-life experimental counterparts, etc.) can be obtained using the ICSBEP's Database for the International Handbook of Evaluated Criticality  Safety Benchmark Experiments (DICE) browser:

https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

## b. Serpent 2 Guide

All benchmark input files are written in Serpent 2. For more information on Serpent 2, including documentation, example input files, and other resources, visit the Serpent Wiki:

http://serpent.vtt.fi/mediawiki/index.php/Main_Page

The Serpent User's Manual is another good resource for Serpent. Although it only applies to Serpent 1, much of the information is still relevant to Serpent 2:

http://montecarlo.vtt.fi/download/Serpent_manual.pdf

