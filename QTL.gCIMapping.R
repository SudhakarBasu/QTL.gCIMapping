library(QTL.gCIMapping)

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
