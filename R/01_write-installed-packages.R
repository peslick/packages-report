## deja vu from yesterday!
library(here)
options(stringsAsFactors = FALSE)
## create a data frame of your installed packages

packages <- installed.packages()
packages <- data.frame(packages)

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

packages <- packages[,c("Package", "LibPath", "Version", "Priority", "Built")]

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

write.csv(packages, file=here("data", "installed-packages.csv"), row.names=FALSE)

## when this script works, stage & commit it and the csv file
## PUSH!
