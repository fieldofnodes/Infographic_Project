#This will be the main file for the project
#Ensure the wroking directory is set in the project
setwd("/home/jon/Documents/R_Projects/Infographic_Project")


#This file will source the modular files, until I can figure out how to run a project differently
source("src/00_Packages_Infographic.R")

data.sources = list.files("data/",
                          pattern="*.R$", full.names=TRUE, 
                          ignore.case=TRUE)
file.sources = list.files(c("src/", "fig/"), 
                          pattern="*.R$", full.names=TRUE, 
                          ignore.case=TRUE)

#for actual data - use the following line, for the current situation, which uses generated data, used the line just below
#sapply(data.sources,load,.GlobalEnv)
sapply(data.sources,source,.GlobalEnv)
sapply(file.sources,source,.GlobalEnv)

