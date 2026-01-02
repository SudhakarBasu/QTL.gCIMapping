library(qtl)
phenoGeno <-read.cross(format = "csv", file = "Vulnerablity_Index_(E1).csv",  
                       na.strings= c('NA'), genotypes = c("A","B","H"))

data(F2data)

library(readr)
test <- read_csv("test.csv", col_names = FALSE)
View(test)

QTL.gCIMapping(
  file = test,
  fileFormat = "GCIM",
  filecov = NULL,
  MCIMmap = NULL,
  Population = "F2",
  method = "GCIM-QEI",
  MultiEnv = FALSE,
  Model = "Random",
  WalkSpeed = 1,
  CriLOD = 2.5,
  CriDis = 5,
  Likelihood = "REML",
  SetSeed = 11001,
  flagrqtl = FALSE,
  DrawPlot = TRUE,
  PlotFormat = "jpeg",
  Resolution = "Low",
  Trait = 1:4,
  dir = getwd(),
  CLO = NULL
)

getwd()
QTL.gCIMapping(
  cross = phenoGeno,
  flagrqtl = TRUE,           # use R/qtl object
  Population = "F2",
  method = "GCIM",
  dir = getwd()
)
