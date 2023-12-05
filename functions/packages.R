## ---------------------------
##
## Script name: Packages.r
##
## Purpose of script: 
##      To keep an up to date list of packages required for the analysis
##
## ---------------------------
##
## Notes:
##   This means only required and missing packages are installed
## ---------------------------

check_and_load_packages <- function(packages) {
  # Check if each package is already installed, and if not, install it
  for (package in packages) {
    if (!requireNamespace(package, quietly = TRUE)) {
      renv::install(package)
    }
    library(package, character.only = TRUE) # Loads every package
  }
}
