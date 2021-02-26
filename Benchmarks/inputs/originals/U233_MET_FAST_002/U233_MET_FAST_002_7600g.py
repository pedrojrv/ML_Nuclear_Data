# -*- coding: utf-8 -*-
"""
Created on Tue Dec 22 03:17:47 2020

@author: Chris
"""

import matplotlib.pyplot as plt
import scipy.io

mat = scipy.io.loadmat('U233_MET_FAST_002_7600g_det0.mat')
DETEnergyDetector = mat['DETEnergyDetector']
DETEnergyDetectorE = mat['DETEnergyDetectorE']

energy = []
for i in range(len(DETEnergyDetectorE)):
    energy.append(DETEnergyDetectorE[i][2])
    
scores = []
error = []
for i in range(len(DETEnergyDetector)):
    scores.append(DETEnergyDetector[i][10])

plt.plot(energy, scores)
plt.xlabel('Energy (MeV)')
plt.ylabel('Flux')
plt.show()