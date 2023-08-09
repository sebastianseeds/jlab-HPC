#!/bin/bash

# -------------------------------------------------------------------------- #
# This script sets various environmet paths reuired by the "submit-" scripts #
# Environment paths are user specific, hence all the entries in this script  #
# have been kept in a templated format. User must modify the necessary paths #
# appropriately for proper execution of any process.                         #
# ---------                                                                  #
# P. Datta <pdbforce@jlab.org> CREATED 07-25-2023                            #
# ---------                                                                  #
# ** Do not tamper with this sticker! Log any updates to the script above.   #
# -------------------------------------------------------------------------- #

# ********************************************** # 
# Choosing the proper softare environment for    #
# root, analyzer, gcc, python, & evio            #
# - It can be done in the following two ways.    #
# - The choice affects all the `run-` scripts.   #
# - The chosen software environment should have  #
#   been used to build all the additional        #
#   libraries (ie simc, g4sbs, libsbsdig, etc.). #  
# ---------------------------------------------- #
# 1) Using /group/halla/modulefiles (Recommended)
# E.g. ANAVER='1.7.4' loads analyzer/1.7.4. It comes with:
# root/6.26.10, gcc/12.3.0, python/3.11.4,x & evio/5.3
ANAVER='1.7.4'  # Analyzer version
# 2) Using /site/12gev_phys/softenv.sh (NOT recommended!) 
# ** $ANALYZER will be needed for this
useJLABENV=1    # =1, forces 12gev_phys environment
JLABENV='2.6'   # /site/12gev_phys/softenv.sh version
# ********************************************** # 

# Required by all
export SCRIPT_DIR=/Path/to/jlab-HPC/repository

# Required by the scripts running G4SBS or LIBSBSDIG jobs
export G4SBS=/Path/to/G4SBS/install/directory

# Required by the scripts running SIMC (simc_gfortran) jobs
export SIMC=/Path/to/simc_gfortran/repository

# Required by the scripts running digitization jobs using sbsdig
export LIBSBSDIG=/Path/to/libsbsdig/install/directory

# Required by the scripts running replay (data or MC) jobs
# $ANALYZER not needed while using modulefiles (See above)
export ANALYZER=/Path/to/analyzer/install/directory
export SBSOFFLINE=/Path/to/SBS-offline/install/directory
export SBS_REPLAY=/Path/to/SBS-replay/repository

# Path to data directories (NOT User Specific)
# The path is written this way below becauses strings will need
# to be added to the left side of them, ie /cache/$GMN_DATA_PATH
export GMN_DATA_PATH=halla/sbs/raw
export GEN_DATA_PATH=halla/sbs/GEnII/raw
