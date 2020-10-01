# There are some more command-line options, DeCE recognizes:

# -r
# Print thermal cross sections calculated from resonance parameters.
# -e En
# Print a cross section at a given energy En in MF3. MT must be specified by -f 3 -t MT .
# -v
# Verbose mode with annoying output.
# -h
# Print help, and quit.
# -s
# Print a complete list of MF/MT numbers in the file, and quit.

# we can open ENDF_original and modify comment section to express it is an ML genrated XS. 
open ENDF_original with python
modify comment section to add ML generation
# -q will quit after renumbering automatically, no need to pres q
dece -o ENDF_ML.dat ENDF_original.dat
tpid "ML Generated Cross Section"
quit
# ENDF_ML can be use for futher modifications

# We can gathere what type of data is avaliable
dece ENDF_ML.dat
index # returns mf/mt NUMBER IN THE GIVEN FILE
# or in one liner
dece -s ENDF_ML.dat

# We can EXTRACT a tabulated XS with MF and MT
dece -f MF -t MT ENDF_ML.dat
dece ENDF_ML.dat
table MF MT # alternative

# We can also in interactive mode xtract the portion belonging to an MF/MT pair withouth tabulation
dece ENDF_ML.dat
extract MF MT

# We can put all our commands in an external input file like MCNP
dece ENDF_ML.dat < input.dat



# --------------------------------------------------------------------
# --------------------------------------------------------------------
# --------------------------------------------------------------------
# MODIFY MF3/MT103 WITH ML GENERATED VALUES
# --------------------------------------------------------------------
# --------------------------------------------------------------------
# --------------------------------------------------------------------

# Data from external file can be read (energy in MeV and XS in millibarns)
# In the following case we give offset 2 so that third column is read
# Energy      Total        Capture
 1.000000e-03 3.518258e+04 7.921335e+03
 2.000000e-03 2.643521e+04 4.590701e+03
 5.000000e-03 1.870179e+04 2.295811e+03
 1.000000e-02 1.479458e+04 1.437977e+03
 2.000000e-02 1.201587e+04 9.583236e+02
 5.000000e-02 9.506811e+03 5.829248e+02
 1.000000e-01 8.172826e+03 3.250598e+02
 1.500000e-01 7.532394e+03 2.282769e+02
 8.000000e-01 4.944550e+03 4.656816e+01
 9.000000e-01 4.735559e+03 3.920111e+01
 1.000000e+00 4.550877e+03 3.409828e+01
# If we want to substitute (n,p) reaciton MT 103 we first need to call
dece -o ENDF_ML_modified.dat ENDF_ML.dat
delete 3 103 #optional
read 3 103 "cross_section.dat" 2 
extract 3 103 #should be new data

#In this case, the resonance region goes up to 100 keV, and therefore the data below 100 keV are skipped. 
# Ocassionally, though quite rare, DeCE cannot determine the correct resonance upper boundary. Users should be aware of this.
# Because of this should we eliminate 3 103 first or is it constraint by another MF2
# Can i delete MF2?


# OPTION2
delpoint MFnumber MTnumber X-data # deletes other points already inthe MF3/MT section x-data is energy
delpoint MFnumber MTnumber X-min X-max

# or 

delete 3 103
addpoint  MFnumber MTnumber X-data Y-data #inserts data point into MF3/MT section
factor MFnumber MTnumber Factor [X-min X-max] #multiplys data by given factor of MF3/MT (unit conversion)

# Once this is done If you want to normalize data
normalize  # renormalize the data to a given point
readjust MTnumber # re-scale all partial cross sections, such as the inelastic scattering, by the summed section like MT4



# --------------------------------------------------------------------
# --------------------------------------------------------------------
# --------------------------------------------------------------------
# AFTER WE HAVE MF3/MT103 MODIFIED WE CAN READJUST THE ENDF FILE
# --------------------------------------------------------------------
# --------------------------------------------------------------------
# --------------------------------------------------------------------

# If we want to substitute (n,p) reaciton MT 103 we first need to call
dece -o ENDF_ML_modified.dat ENDF_ML.dat
make4 # makes MF3/MT4 from other inelastic scattering sections MF51:91


# Verifying total cross sections are equal to the sum of all partial cross sections. 
# Satisfied by subtracting the sum of partial cross sections from the total cross section
# and put it in the elastic cross section
calc MTdestination = MTsource1 operation MTsource2
# where operation can be + - * / :
# the : operand is useful if you want to sum over a range of MT values for example
calc 4 = 5:10000 # will sum MF3/MT5 to MF3/MT10000

#More generally
make4 # recalcultes MF3/MT4 the total inelastic scattering cross section sometimes already given equivalent to calc 4 = 51:91
calc 3 = 4+16
calc 3 = 3+22
calc 3 = 3+28
calc 3 = 3+32
calc 3 = 3+102
calc 3 = 3+103
calc 3 = 3+104
calc 3 = 3+105
calc 3 = 3+106
calc 3 = 3+107
calc 3 = 3+111
calc 3 = 3+112 # MF3/MT3 ends up being the SUM of all partial cross sections
calc 2 = 1-3   # MF3/MT2 (elastic scattering) is the total MF3/MT1 minus MF3/MT3
calc 1 = 2+3   # Recalculate 1 just to make sure all energy points appear in MF3
delete 3 3     
quit


# We can verify that the elastic scattering section MF3/MT2 changed by taking the ratio 
make4 # recalcultes MF3/MT4 the total inelastic scattering cross section sometimes already given
calc 3 = 4+16
calc 3 = 3+22
calc 3 = 3+28
calc 3 = 3+32
calc 3 = 3+102
calc 3 = 3+103
calc 3 = 3+104
calc 3 = 3+105
calc 3 = 3+106
calc 3 = 3+107
calc 3 = 3+111
calc 3 = 3+112 # MF3/MT3 ends up being the SUM of all partial cross sections
calc 4 = 1-3 # We already accounted for 4 back in the first line, this is MF3/MT2
calc 5 = 2/4 # This is original MF3/MT2 divided by new MF3/MT2
extract 3 5 
































