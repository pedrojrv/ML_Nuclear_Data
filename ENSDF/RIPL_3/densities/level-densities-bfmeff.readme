Directory: densities/total/
File:      level-densities-bfmeff.readme (December 15, 2008)
************************************************************



                     level-densities-bfmeff.dat

	  Total level density parameters for the Back-Shifted-Fermi-Gas model without explicit treatment of collective effects
	   (provided by S. Hilaire on  December 15, 2008)
          *************************************************


Content
-------
Level density parameters for the BSFG model without explicit treatment of collective effects. The parameters are 
obtained by fitting the Fermi-gas model formula both to the RIPL II recommended spacings of s-wave neutron 
resonances D0 and to the cumulative number of low-lying levels evaluated from the analysis of nuclear levels. 
Since the goal is to reproduce as well as possible both the discrete levels and the D0 values, the adopted 
parameters do not generally provide a perfect fit of D0. Instead, we obtain a theoretical value Dth. Therefore, 
uncertainty aerr is deduced by fitting Dth+Derr or Dth-Derr (See TECHDOC for more explanations). 


Format
------
Each record of the file contains:

   Z      :  atomic number of the compound nucleus
   A      :  mass number of the compound nucleus
   El     :  element symbol of the compound nucleus
   Io     :  spin of the ground state of the target nucleus
   Bn     :  neutron binding energy of the compound nucleus in MeV
   Do     :  evaluated average resonance spacing in eV
   Derr   :  uncertainty of the resonance spacing in eV
   Nlow   :  lowest level used for the fit
   Ulow   :  Excitation energy of the level Nlow in MeV
   Ntop   :  highest level used for the fit
   Utop   :  Excitation energy of the level Ntop in MeV
   dW     :  Shell correction energy used in the Ignatyuk formula in MeV
   gamma  :  Damping parameter of the Ignatyuk formula
   ainf   :  asymptotic level density parameter in 1/MeV
   aerr   :  uncertainty of the asymptotic level density parameter in 1/MeV
   pairing:  effective energy shift in MeV

The corresponding FORTRAN format is 
(2i4,1x,a2,1x,f4.1,2x,f6.3,1x,1pe10.3,1x,1pe10.3,0p,1x,i3,2x,f6.3,2x,i3,2x,f6.3,3f10.5,f8.3,f10.5)
