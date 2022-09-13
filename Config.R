
## Paths

library(readxl)

userName <- "C:/Users/genoveva/" # geno's path
#userName <- "C:/Users/a21448/" # bex's path
#userName <- "C:/Users/Wilson_Margaret/" # Margaret's path
  
  
dataPath1 <- "OneDrive - Havforskningsinstituttet/General/inputs"
dataPath2 <- "Havforskningsinstituttet/Video analysis lab - Reference List"

dataPath <- paste0(userName, dataPath1)
dataPath_2 <- paste0(userName, dataPath2)

sppdens <- read.csv(file.path(dataPath,"species_densities.csv"))
refer <- read.table(file.path(dataPath,"reference.csv"), sep ="|", header = TRUE)
sample_info <- read.csv(file.path(dataPath,"sample_info.csv"))

taxonary <- read_xlsx(file.path(dataPath_2, "Taxonary.xlsx"), sheet=1)


activeSppFilter<-read.csv(file.path(dataPath,"activeSpeciesfilter_2022-09-12.csv"))
activeStFilter<-read.csv(file.path(dataPath,"activeSubsample_2022-09-12.csv"))

## Some functions

#convert geographic coordinates in WGS84 to UTM33N

utmize <- function(x){
  require(rgdal)
  proj4string(x)=CRS("+init=epsg:4326")
  result <- spTransform(x, CRS("+init=epsg:32633")) 
  return(result)
}

