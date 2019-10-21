
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

# Subset data
db_sub <- db %>% 
  filter(country_name %in% c("United States", "Japan", "Afghanistan", "Somalia")) %>% 
  filter(age_group == "0-6 days", sex == "Both") # must match both conditions (',' or '&' for AND)

# Create basic line graph
ggplot(data = db_sub, aes(x = year, y = deaths_per_100k)) +
  geom_line(aes(color = country_name)) +
  labs(x = "Year",
       y = "Deaths per 100,000",
       title = "Infant Mortality over Time")

# Output graphs
ggsave()