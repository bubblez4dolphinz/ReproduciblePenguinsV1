## ---------------------------
##
## Script name: Cleaning.r
##
## Purpose of script: 
##      Cleaning up the raw penguin data set 
##
## ---------------------------
##
## Notes:
##   This function can be used on the raw penguins dataset to prepare it for plotting and analysis
##
## ---------------------------

# A function to clean the dataset

cleaning_penguins <- function(penguin_raw) {
  penguins_raw %>%
  select(-starts_with("Delta")) %>% #removing the 2 columns starting with Delta
  select(-Comments) %>% #removing the Comments column
  clean_names() %>% #this function replaces spaces with '_', decapitalizes letters and removes brackets
  mutate(species = case_when( #shorten species names
    species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
    species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo",
    species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap")) %>%
    remove_empty(c("rows", "cols")) #remove empty columns and rows
}


