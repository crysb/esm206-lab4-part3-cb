
#####################
#  R Lab 4, Part 3  #
#  October 21, 2019 #
#####################

# Read in packages
library(tidyverse)
library(janitor)
library(here)

# Read in disease burden dataset using {here} and {janitor}
db <- read_csv(here::here("data","disease_burden.csv")) %>% 
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)




# Output graphs
#ggsave()