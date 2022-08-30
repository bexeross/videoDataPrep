
## Paths

# https://owncloud.imr.no/index.php/s/lCkOERjzJkPItZj

# C:\Users\genoveva\ownCloud\NiN_Mareano\inputs

userName = "C:/Users/genoveva/" # replace with your own name here
dataPath1 = "ownCloud/NiN_Mareano/inputs"

dataPath <- paste0(userName, dataPath1)

sppdens <- read.csv(file.path(dataPath,"species_densities.csv"))
refer <- read.table(file.path(dataPath,"reference.csv"), sep ="|", header = TRUE)
sample_info <- read.csv(file.path(dataPath,"sample_info.csv"))
