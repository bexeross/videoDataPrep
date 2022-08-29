
## Station/sample filters
## By Genoveva Gonzalez Mirelis and Rebecca Ross

# This script reads MarVid data and applies filters on stations/subsamples on the basis of data quality.
# Further, it selects a subsample at random from within all available stations.

## Paths

# https://owncloud.imr.no/index.php/s/lCkOERjzJkPItZj

# C:\Users\genoveva\ownCloud\NiN_Mareano\inputs

userName = "C:/Users/genoveva/"
dataPath1 = "ownCloud/NiN_Mareano/inputs"

dataPath <- paste0(userName, dataPath1)

sppdens <- read.csv(file.path(dataPath,"species_densities.csv"))
