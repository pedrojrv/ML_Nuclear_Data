#!/usr/bin/env python
# encoding: utf-8
"""
parseC4.py

Created by Caleb Mattoon on 2010-06-28.
Copyright (c) 2010 __nndc.bnl.gov__. All rights reserved.

start with .xc4 file containing full exfor library in one file
(obtain latest from http://www-nds.iaea.org/x4toc4-master/?C=M;O=D)

sorts the library by projectile, target, MF, MT and incident energy
separate directories are created for each projectile,
and separate files for each target
"""

import os
import sys
import time

from os.path import join


# dictionary for sorting by projectile.
# If projectile not found, use 'other'
projectiles = {
    '0': 'gammas',
    '1': 'neutrons',
    '1001': 'protons',
    '1002': 'deuterons',
    '2003': 'helions',
    '2004': 'alphas',
    'other': 'other'
}


def getSymbol(zzz):
    """
    Return Chemical symbol of element with z=zzz
    """
    izzz = int(zzz)

    mat = 'n H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y \
           Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re \
           Os, Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Ns Hs Mt \
           ??'.split()

    if (izzz > 109):
        SMAT = mat[-1]  # return '??' for unknown
    else:
        SMAT = mat[izzz]
    return SMAT


def parseC4(filename):
    """
    read full C4 database and sort by incident particle, then by isotope
    tbd: also sort within each isotope by MF/MT and energy?
    """
    def readC4(line):
        proj = line[:5].strip()
        targ = line[5:11].strip()
        isomer = line[11]
        return proj, targ, isomer

    print "\n...Reading file: %s" % filename
#    c4 = open(filename,"r").readlines()
#2014-Zerkin: user-friendly reading showing process and Entries
    c4 = []
    f = open(filename,"r")
    i = 0
    for line in f:
#        print line
        if line.startswith("#ENTRY "):
            print "...reading %-5d %s\r" % (i,line.strip()),
            if (i%1000==0):
                print ""
            i = i + 1
        c4.append(line)
    f.close()
    print "\n...Reading file finished: %s" % filename
    print "...Total Entries: %d" % i
    time.sleep(5)
    print ""



    entry = []
    ENTRY = False
    data = []
    DATA = False
    ndatasets = 0
    emptySets = 0

    # use newline appropriate for system:
    newline = os.linesep

    # double-check that target and projectile information is correct?
    dblcheck = True

    print "sorting by target and projectile:"

    iEntry = 0
    for i in range(len(c4)):
        line = c4[i]
        # first check some special lines:
        if line.startswith("#ENTRY "):
            ENTRY = True
            entry = []
            print "...sorting %-5d %s\r" % (iEntry,line.strip()),
            if (iEntry%1000==0):
                print ""
            iEntry=iEntry+1
        if line.startswith("#DATASET "):
            if DATA:
                print "DATASET not closed properly, line %i" % i
            DATA = True
            ENTRY = False
        elif line.startswith("#TARG "):
            # grab target for each data set
            try:
                targ = line.strip().split()[1:]
                isomer = False
                if len(targ) > 1:
                    isomer = targ[1]
                zam = int(targ[0])
            except ValueError:
                print "trouble getting target information line %i"%i

        # split library up by projectile
        elif line.startswith("#PROJ "):
            proj = line.strip().split()[-1]
            # if projectile not found, put in 'other' directory
            dir = projectiles.get(proj, 'other')

        elif line.startswith("#/DATASET"):
            ndatasets += 1

            data.append(line.strip()+newline)
            data.append("#/ENTRY%s#%s#%s" % ((newline,)*3) )

            # done with this data set. write to file:
            z = str( zam//1000 ).zfill(3)
            a = str( zam%1000 ).zfill(3)
            el = getSymbol( z )
            #print "z,a=",z,a

            if isomer:
                f = open(join(dir,"%s_%s_%s_%s.c4") % (z,el,a,isomer), "a")
            else:
                f = open(join(dir,"%s_%s_%s.c4") % (z,el,a), "a")
            f.writelines(entry)
            f.writelines(data)
            f.close()
            data = []
            DATA = False

        elif line.startswith("#DATASETS   0"):
            emptySets += 1

        if dblcheck and not line.startswith('#'):
            # do some checking:
            PROJ, TARG, ISOMER = readC4( line )
            if not PROJ == proj and TARG == repr(zam):
                print "bad targ/proj info on line %i" % i


        if DATA:
            data.append(line.rstrip() + newline)
        if ENTRY:
            entry.append(line.rstrip() + newline)

        #if ndatasets >= 10:    # debugging
        #    break

    print "%i data sets extracted" % ndatasets
    print "of these, %i are empty" % emptySets



"""
after sorting by projectile and target, also sort by MF/MT and energy:
"""


def sortC4file( filename ):
    """
    meant for use after sorting into projectile and target:
    sort the file by MF,MT,initial energy, and entry # (in that order)
    """
#    print "...sortC4file:[%s]" % filename
    def readC4( line ):
        # within the 'other' dir, still need to sort by projectile and target:
        proj = line[:5].strip()
        targ = line[5:11].strip()
        MF = int(line[12:15])
        MT = int(line[15:19])
        energy = line[22:31].strip()
        entry = line[122:127]
        subent = line[127:].strip()

        if energy and energy[0] == '-':
#2013-Zerkin2win            name = filename.split('/')[1].split('.')[0]
            name = filename.split(os.sep)[1].split('.')[0]
            print "energy<0! %s, entry %s, subent %s" % (name,entry,subent)

        try:
            energy = float(energy)
        except ValueError:
            if energy=='':
                energy = 0
            else:
                sign = energy[0]
                energy = energy[1:].replace('+','E+').replace('-','E-')
                energy = float(sign+energy)

        return proj,targ,MF,MT,energy,entry

    datasets = []
    current = []
    firstPoint = True

    fin = open(filename,"r").readlines()
    for i in range(len(fin)):
        line = fin[i]
        if line.startswith("#ENTRY"):
            firstline = i
        elif firstPoint and not line.startswith("#"):
            proj,targ,MF,MT,energy,entry = readC4( line )
            firstPoint = False
        elif line.startswith("#/ENTRY"):
            # add #/DATASET plus two more lines:
            lastline = i+2
            datasets.append( [proj,targ,MF,MT,energy,entry, firstline,lastline+1] )
            firstPoint = True

    datasets.sort()
    #fout = open(filename+'s',"w")
    fout = open(filename,"w")
    for set in datasets:
        fout.writelines(fin[ set[6]:set[7] ])
    fout.close()


def sortC4():
    # read all files produced by parseC4, sort using sortC4
    from glob import glob

    files = []
    for dir in projectiles.values():
        files += glob(dir+"/*.c4")

    print "now sorting C4 files"
    iFile=0
    for f in files:
        print "...sortC4file %-7d %s\r" % (iFile,f),
        sortC4file(f)
        if (iFile%20==0):
            print ""
        iFile=iFile+1


if __name__ == '__main__':
    if not len(sys.argv)==2:
        print "Usage: parseC4.py <C4file.xc4>"
        sys.exit()
    try:
        for dir in projectiles.values():
            os.mkdir(dir)
    except OSError:
        print "Please first remove following directories:"
        for dir in projectiles.values():
            print dir
        sys.exit()

    start = time.clock()

    parseC4( sys.argv[1] )
    print
    sortC4()

    stop = time.clock()
    print "\n\nElapsed time (sec):",stop-start

