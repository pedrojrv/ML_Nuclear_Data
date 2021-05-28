# -*- coding: utf-8 -*-
"""
Created on Tue Dec 22 02:25:01 2020

@author: Chris
"""

import matplotlib.pyplot as plt
import scipy.io

# load detector results
mat = scipy.io.loadmat('LEU_COMP_THERM_001_008_det0.mat')
DETEnergyDetector = mat['DETEnergyDetector']
DETEnergyDetectorE = mat['DETEnergyDetectorE']

# extract x-axis values
energy = []
for i in range(len(DETEnergyDetectorE)):
    energy.append(DETEnergyDetectorE[i][2])

# calculate maximum flux (for normalization)
max_flux = 0
for i in range(len(DETEnergyDetector)):
    if DETEnergyDetector[i][10] > max_flux:
        max_flux = DETEnergyDetector[i][10]
        
# extract / calculate y-axis values
normalized_flux = []
for i in range(len(DETEnergyDetector)):
    normalized_flux.append(DETEnergyDetector[i][10] / max_flux)

# extract / calculate error bar values
error = []
for i in range(len(DETEnergyDetector)):
    error.append(2*DETEnergyDetector[i][10]*DETEnergyDetector[i][11])

# create plot
plt.figure()
plt.errorbar(energy, normalized_flux, yerr=error, ecolor='k', capsize=3, capthick=0.5, lw=0.5, ms=2, fmt='k.')
plt.xscale('log')
plt.yscale('log')
plt.xlabel('Energy (MeV)')
plt.ylabel('Normalized Flux ( $\phi$ / $\phi_{max}$ )')
plt.title('Flux-Energy Spectrum for LEU_COMP_THERM_001_008')
plt.savefig('LEU_COMP_THERM_001_008_FluxEnergySpectrum.png')
plt.show()