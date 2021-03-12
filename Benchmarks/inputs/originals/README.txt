------------------------------------------------------------------------------------------------------------------------------------------------
Table of Contents
------------------------------------------------------------------------------------------------------------------------------------------------
# Pedro: has this gotten too long for a README file? If you want to shift some (or most) of this information over to
# the NucML documentation site instead, I think that would be a good idea. Maybe we could just keep sections (1) and
# (6)(a) in this README, along with a few tidbits from other sections.

(1) What's this?

(2) List of available benchmarks

     (a) Fast spectrum (5)
          (i)   U233_MET_FAST_001
	  (ii)  U233_MET_FAST_002
		- U233_MET_FAST_002_001
		- U233_MET_FAST_002_002
	  (iii) PU_MET_FAST_005
	  (iv)  PU_MET_FAST_019

     (b) Thermal spectrum (8)
	  (i)   LEU_COMP_THERM_001
		- LEU_COMP_THERM_001_001
		- LEU_COMP_THERM_001_002
		- LEU_COMP_THERM_001_003
		- LEU_COMP_THERM_001_004
		- LEU_COMP_THERM_001_005
		- LEU_COMP_THERM_001_006
		- LEU_COMP_THERM_001_007
		- LEU_COMP_THERM_001_008

     (c) Intermediate spectrum (5)

(3) Description of file types
     
     (a) "originals" folder
     	   (i) input
     	   (ii) output
     	   (iii) OUT file (.out)
     	   (iv) SEED file (.seed)
     	   (v) results (res.m)
     	   (vi) detector results (det0.m, det0.mat)
     	   (vii) benchmark full PDF description (.pdf)
     	   (viii) geometry plot (geom1.png, geom2.png, etc.)
     	   (ix) mesh plot(s) (mesh1.png, mesh2.png, etc.)
     	   (x) flux-energy spectrum (FluxEnergySpectrum.png)
     	   (xi) flux-energy spectrum creator (.py)

     (b) "templates" folder
	   (i) input
           (ii) composition.csv

(4) How to use these benchmarks

     (a)
     # Pedro: please fill in this section with information about how to actually use the benchmarks with NucML,
     # especially information about the utilities which allow a user to change the nuclear data path in the
     # template input file so that they can test lots of different ML-generated datasets.

(5) Adding your own benchmarks

     (a) Finding new benchmarks

     (b) Serpent 2

     (c) Best practices

     (d) Quality assurance

     (e) Uploading benchmarks to NucML

(6) For more information

     (a) NucML Documentation

     (b) Benchmark Full PDF Descriptions

     (c) Serpent 2 Guide

     (d) Contact Info
	# Pedro: Please delete this section if you don't want to be contacted. (Should we choose a different person as the point of contact
	# for after you leave Berkeley?)

------------------------------------------------------------------------------------------------------------------------------------------------
(1) What's this?
------------------------------------------------------------------------------------------------------------------------------------------------

The current folder (Benchmarks > inputs) contains benchmarks which can be used to test ML-generated nuclear data. It 
is split into two parts:

- The "originals" folder contains the input files for each benchmark, as well as results generated from these
  benchmarks (plots, result files, output files, etc.) using conventional (non-ML) nuclear data such as ENDF.
  These benchmarks also include a detector object, which can be used to generate a flux-energy spectrum from
  the simulation.

- The "templates" folder contains a template input file for each benchmark, as well as a "composition.csv" file
  specifying the abundances of various isotopes in the benchmark materials. NucML utilities can be used to update
  the nuclear data filepath in the template input file, allowing the user to test many ML-generated nuclear
  datasets quickly using the same file.

# Pedro: please add more detail about the NucML utilities mentioned above. What are their names? How are they executed? Where could a user
# find more information about how to use them?

As of 2021, all benchmarks are written in Serpent 2, and are based on benchmarks taken from the International
Criticality Safety Benchmark Evaluation Project (ICSBEP): 

https://www.oecd-nea.org/jcms/pl_24498/international-criticality-safety-benchmark-evaluation-project-icsbep

A detailed PDF description of each benchmark (geometry, materials, real-life experimental counterparts, etc.)
can be obtained using the ICSBEP's Database for the International Handbook of Evaluated Criticality Safety 
Benchmark Experiments (DICE) browser:

>> https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

------------------------------------------------------------------------------------------------------------------------------------------------
(2) List of available benchmarks
------------------------------------------------------------------------------------------------------------------------------------------------

(a) Fast spectrum
	
	(i) U233_MET_FAST_001
		ICSBEP Title:                           "233U Jezebel: A Bare Sphere of Uranium-233 Metal"
		Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021			
		Materials:                 	   	U-233, U-234, U-235, U-238
		Criticality (MCNP, from DICE PDF):      0.9970 +/- 0.0011
		Data used for "originals" results:	ENDF-B/VII.0
		Description:                  	   	bare sphere of U-233 metal

	(ii) U233_MET_FAST_002
		ICSBEP Title:                           "Benchmark Critical Experiments of Uranium-233 Spheres Surrounded by Uranium-235"
		Materials:                         	U-233, U-234, U-235, U-238
		Description:                      	sphere of U-233 metal surrounded by high-enriched U-235 reflector

		- U233_MET_FAST_002_001
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9969 +/- 0.0009
		     Data used for "originals" results:		ENDF-B/VII.0	
		     Description: 				10-kg sphere
	 
		- U233_MET_FAST_002_002
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021           
		     Criticality (MCNP, from DICE PDF): 	1.0007 +/- 0.0009
		     Data used for "originals" results:		ENDF-B/VII.0
		     Description: 				7.6-kg sphere
	
	(iii) PU_MET_FAST_005
		ICSBEP Title:                           "Benchmark Critical Experiment of a Plutonium Sphere Reflected by Tungsten"
		Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		Materials:                 	   	Pu-239, Pu-240, Pu-241, Ga, W, Ni, Cu, Zr
		Criticality (MCNP, from DICE PDF):      1.0080 +/- 0.0010
		Data used for "originals" results:	ENDF-B/VII.0	
		Description:                  	   	sphere of plutonium alloy (Pu-239/240/241, Ga) surrounded by tungsten-alloy reflector

	(iv) PU_MET_FAST_019
		ICSBEP Title:                           "Sphere of Plutonium Reflected by Beryllium"
		Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		Materials:                 	   	Pu-239, Pu-240, Pu-241, Ga, C, Fe, W, Ni, Be, O
		Criticality (MCNP, from DICE PDF):      1.0012 +/- 0.0007
		Data used for "originals" results:	ENDF-B/VII.0
		Description:                  	   	sphere of plutonium metal with void at the center, surrounded by two halves of a beryllium
						   	reflector; entire assembly is supported by a steel shaft and copper cup; thin steel 
						   	"diaphragm" separates the two reflector halves; hole drilled vertically into the pole of the 
						   	upper reflector

(b) Thermal spectrum

	(i) LEU_COMP_THERM_001
		ICSBEP Title:                           "Water-Moderated U(2.35)O2 Fuel Rods in 2.032-cm Square-Pitched Arrays"
		Materials:                 		U-234, U-235, U-236, U-238, O, Al, Cr, Cu, Mg, Mn, Ti, Zn, Si, Fe, H, C
		Description:                  	   	clusters of low-enriched U-235 fuel pins immersed in water, supported by an acrylic plate

		- LEU_COMP_THERM_001_001
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9987 +/- 0.0016
		     Data used for "originals" results:	        ENDF-B/VII.0		
		     Description:				single cluster, 20 x 18 pins, plus an additional row with 1 pin
		 
		- LEU_COMP_THERM_001_002
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9977 +/- 0.0017
		     Data used for "originals" results:	        ENDF-B/VII.0			   
	             Description:                  		three clusters, 20 x 17 pins each, spaced 11.92 cm apart                 

		- LEU_COMP_THERM_001_003
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9956 +/- 0.0016
		     Data used for "originals" results:	        ENDF-B/VII.0		   
	             Description:                  		three clusters, 20 x 16 pins each, spaced  8.41 cm apart                 

		- LEU_COMP_THERM_001_004
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9992 +/- 0.0014
		     Data used for "originals" results:	        ENDF-B/VII.0		
		     Description: 				three clusters, spaced 10.05 cm apart, 20 x 16 pins in center cluster, 22 x 16 in outer two
		 
		- LEU_COMP_THERM_001_005
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9970 +/- 0.0016
		     Data used for "originals" results:	        ENDF-B/VII.0			   
	             Description:                  		three clusters, 20 x 15 pins each, spaced  6.39 cm apart              

		- LEU_COMP_THERM_001_006
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9955 +/- 0.0015
		     Data used for "originals" results:	        ENDF-B/VII.0			   
	             Description:                  		three clusters, spaced 8.01 cm apart, 20 x 15 pins in center cluster, 24 x 15 in outer two

		- LEU_COMP_THERM_001_007
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9968 +/- 0.0017
		     Data used for "originals" results:	        ENDF-B/VII.0			   
	             Description:                  		three clusters, 20 x 14 pins each, spaced  4.46 cm apart                

		- LEU_COMP_THERM_001_008
		     Last updated:				Chris Forsyth (chris.t.forsyth@berkeley.edu) on 03/04/2021
		     Criticality (MCNP, from DICE PDF): 	0.9921 +/- 0.0015
		     Data used for "originals" results:	        ENDF-B/VII.0			   
	             Description:                  		three clusters, 19 x 16 pins each, spaced  7.57 cm apart                 

------------------------------------------------------------------------------------------------------------------------------------------------
(3) File types
------------------------------------------------------------------------------------------------------------------------------------------------

(a) "originals" folder

     (i) input

	  Example:     U233_MET_FAST_001
	  Description: Benchmark input file, written in Serpent 2. Includes a detector object which can be used to generate a flux-energy
                       spectrum of the simulation, alongside all other default simulation results.

     (ii) output

	  Example:     outputU233_MET_FAST_001
	  Description: Information returned while running the simulation, including Serpent version info, date and time, run settings, warning 
		       messages, neutron cycle histories, etc.

     (iii) OUT file (.out)

	  Example:     U233_MET_FAST_001.out
	  Description: Summary of nuclide data and reaction channels present in the benchmark, generated when running the simulation.

     (iv) SEED file (.seed)

	  Example:     U233_MET_FAST_001.seed
	  Description: Contains the random-number seed used for the simulation, which can be used to re-run the simulation and obtain 
		       identical results.

     (v) results (res.m)

	  Example:     U233_MET_FAST_001_res.m
	  Description: The main output file, containing all results calculated by default during the simulation (criticality eigenvalues,
                       neutron balance, normalized total reaction rates, reaction cross sections, run statistics, memory usage, and much more).

     (vi) detector results (det0.m, det0.mat)

	  Example:     U233_MET_FAST_001_det0.m, U233_MET_FAST_001_det0.mat
	  Description: The output file containing detector results, which can be used to create a flux-energy spectrum of the simulation.
		       It includes two variables. The first is a matrix with 12 or 13 columns, containing comprehensive detector results
		       (bin indices, total number of scores, relative statistical error, etc.) by energy bin, where each row in the
		       matrix is a different energy bin. This variable is usually named "DETEnergyDetector". The second variable, usually
		       named "DETEnergyDetectorE", specifies the average energy of each bin, as well as the upper and lower boundary of
		       the bin. For more information on what each row/column in these matrices means, reference the Serpent User's Guide
		       (see section 6(c) of the current README file), and go to Section 7.2 - Detector output.

     (vii) benchmark description (.pdf)

	  Example:     U233_MET_FAST_001.pdf
	  Description: A detailed PDF description of the benchmark (geometry, materials, real-life experimental counterparts, etc.), obtained 
                       using the ICSBEP's Database for the International Handbook of Evaluated Criticality Safety Benchmark Experiments (DICE) 
		       browser: 
                       >> https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

     (viii) geometry plot(s) (geom1.png, geom2.png, etc.)

	  Example:     U233_MET_FAST_001_geom1.png
	  Description: One or more plots of the benchmark geometry, usually cutaway views of the center of the geometry from the x and/or y
                       and/or z directions. Created using Serpent's geometry plotting capabilities. See the Serpent User's Guide for more
		       information.

     (ix) mesh plot(s) (mesh1.png, mesh2.png, etc.)

	  Example:     U233_MET_FAST_001_mesh1.png
	  Description: One or more plots of the fission power and thermal flux distributions, usually cutaway views of the center of the 
		       geometry from the x and/or y and/or z directions. Created using Serpent's reaction rate mesh plotting capabilities.
		       See the Serpent User's Guide for more information.

     (x) flux-energy spectrum (FluxEnergySpectrum.png)

	  Example:     U233_MET_FAST_001_FluxEnergySpectrum.png
	  Description: Plot of the benchmark flux-energy spectrum, created from detector data gathered during the simulation. The user
                       must execute a Python script (see "(3)(a)(xi) flux-energy spectrum creator (.py)") to generate this plot. Flux
                       is normalized, and energy is plotted on a logarithmic scale.

     (xi) flux-energy spectrum creator (.py)

	  Example:     U233_MET_FAST_001.py
	  Description: Python script which creates a flux-energy spectrum of the benchmark using detector data gathered during the
                       simulation. After the simulation has finished and detector data (det0.mat) has been generated, the user can
                       execute the .py script, which will automatically save a copy of the flux-energy spectrum to the local folder
                       as a .png file.

(b) "templates" folder

     (i) input

	  Example:     template
	  Description: Benchmark input file, written in Serpent 2. The 'set acelib' line (which determines the path for nuclear
                       cross-section data used during the simulation) is specified as 'set acelib "to_replace"', where "to_replace"
                       can be repeatedly modified using NucML utilities. This 
     # Pedro: please give a more complete / accurate description of the NucML utilities which can be used to change the 'set acelib' line in
     # the template files, possibly including: what are they called? How do they work? Why would someone want to use them? Where could someone
     # find more information?

     (ii) composition.csv

	  Example:     composition.csv
	  Description: Lists the isotopic composition of each material used in the benchmark, in terms of both atom density
                       (barn^-1 cm^-1) and atom fraction (a/o). The names listed in the "Benchmark Material" column are identical 
		       to the material names used in the benchmark input file. The composition.csv file is used to determine which 
		       isotopes are significant in the benchmark, and therefore which isotopes ML-generated data should be provided 
                       for.
     # Pedro: is my description correct? Please change anything you think is inaccurate or unclear, and add more details if you want.

------------------------------------------------------------------------------------------------------------------------------------------------
(4) How to use these benchmarks
------------------------------------------------------------------------------------------------------------------------------------------------

(a) 
     # Pedro: please fill in this section with information about how to actually use the benchmarks with NucML,
     # especially information about the utilities which allow a user to change the nuclear data path in the
     # template input file so that they can test lots of different ML-generated datasets.

------------------------------------------------------------------------------------------------------------------------------------------------
(5) Adding your own benchmarks
------------------------------------------------------------------------------------------------------------------------------------------------

# Pedro: Are these instructions good, or are there things we need to add? Do any of the instructions conflict with instructions in the
# NucML documentation?

(a) Finding new benchmarks

	To add a new benchmark, use the ICSBEP's Database for the International Handbook of Evaluated Criticality Safety 
	Benchmark Experiments (DICE) browser to find a benchmark which matches your desired materials, neutron spectrum,
	geometry, etc:

	>> https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

	Each DICE benchmark includes a PDF which describes how to create an input file for the benchmark. 

(b) Serpent 2

	You must create your new input file using Serpent 2. More information about Serpent 2, including an installation 
	guide, can be found here:

	>> http://serpent.vtt.fi/mediawiki/index.php/Main_Page

(c) Best practices

	Instead of starting your new benchmark files from scratch, please copy an existing benchmark input file and
	then modify it to meet the new benchmark specifications. This will ensure that formatting is consistent across
	all benchmark inputs, as well as ensuring that certain objects / components (e.g., detectors) are not left out
	of new input files. Please follow this same procedure for all other required files (e.g., flux-energy spectrum 
        creator (.py) files).

(d) Quality assurance

	LANL Whisper includes complete MCNP input files for all ICSBEP benchmarks, which can be used as a cross-reference
	to verify the correctness of your Serpent 2 inputs. More information on Whisper here:

	>> https://mcnp.lanl.gov/pdf_files/la-ur-14-26558v1.pdf

(e) Uploading benchmarks to NucML

	After creating your benchmark, you must make a new entry in both the "originals" and "templates" folders, 
	containing all of the same file types and conventions as existing benchmarks. (Note that benchmark names,
	such as "U233_MET_FAST_001" or "PU_MET_FAST_002", come directly from DICE.) You must also update any relevant 
	sections of the current README file to reflect the new benchmark.

	Once finished, please submit a GitHub pull request to _______________ to have your changes approved.

# Pedro: please fill in the blank ^

------------------------------------------------------------------------------------------------------------------------------------------------
(6) For more information
------------------------------------------------------------------------------------------------------------------------------------------------

(a) NucML Documentation

	For more information about how to use these benchmarks with NucML, how to add your own, and help with 
	NucML in general, please visit the NucML documentation site at:

	>> https://pedrojrv.github.io/nucml/index.html

	and select the "Validating using Benchmarks" tab for help with benchmarks.

(b) Benchmark Full PDF Descriptions

	A detailed PDF description of each benchmark (geometry, materials, real-life experimental counterparts, 
	etc.) can be obtained using the ICSBEP's Database for the International Handbook of Evaluated Criticality 
	Safety Benchmark Experiments (DICE) browser:

	>> https://www.oecd-nea.org/jcms/pl_20293/database-for-icsbep-dice

(c) Serpent 2 Guide

	All benchmark input files are written in Serpent 2. For more information on Serpent 2, including documentation,
	example input files, and other resources, visit the Serpent Wiki:

	>> http://serpent.vtt.fi/mediawiki/index.php/Main_Page

	The Serpent User's Manual is another good resource for Serpent. Although it only applies to Serpent 1, much
	of the information is still relevant to Serpent 2:

	>> http://montecarlo.vtt.fi/download/Serpent_manual.pdf

(d) Contact Info

	If you need further assistance with benchmarks or NucML in general, please contact Pedro Jr. Vincente-Valdez:

	>> pedro.vicentevz@berkeley.edu

# Pedro: Please delete this section if you don't want to be contacted. (Should we choose a different person as the point of contact
# for after you leave Berkeley?)