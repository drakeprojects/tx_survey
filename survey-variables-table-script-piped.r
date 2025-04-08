# R Script to Create Variable Tables from Survey Data - Using Pipes

# Install and load necessary packages
if(!require(tidyverse)) install.packages("tidyverse")
if(!require(readr)) install.packages("readr")
if(!require(writexl)) install.packages("writexl")
library(tidyverse)
library(readr)
library(writexl)

# Create an initial tibble to hold all variable data
all_variables <- tibble(
  Variable = character(),
  Level = character(),
  Count = numeric()
)

# Age variable
all_variables <- tibble(
  Variable = "age",
  Level = c("mean_age", "sd_age", "min_age", "max_age"),
  Count = c(22.2, 6.29, 16, 69)
) %>% 
  bind_rows(all_variables, .)

# Class variable
all_variables <- tibble(
  Variable = "class",
  Level = c("senior", "junior", "sophomore", "freshman", "masters", "doctoral", "post-bacc"),
  Count = c(344, 264, 244, 216, 78, 25, 12)
) %>% 
  bind_rows(all_variables, .)

# Ethnicity variable
all_variables <- tibble(
  Variable = "ethnicity",
  Level = c("wn_hisp", "hisp", "black", "ubknown", "multiracial", "asian", "intrnl", "am_ind"),
  Count = c(569, 400, 75, 53, 39, 29, 14, 4)
) %>% 
  bind_rows(all_variables, .)

# Gender variable
all_variables <- tibble(
  Variable = "gender",
  Level = c("female_n", "male_n"),
  Count = c(798, 385)
) %>% 
  bind_rows(all_variables, .)

# Housing variable
all_variables <- tibble(
  Variable = "housing",
  Level = c("bv", "Off", "On"),
  Count = c(20, 909, 254)
) %>% 
  bind_rows(all_variables, .)

# Status variable
all_variables <- tibble(
  Variable = "status",
  Level = c("full-time", "part-time"),
  Count = c(1038, 145)
) %>% 
  bind_rows(all_variables, .)

# Veteran variable
all_variables <- tibble(
  Variable = "veteran",
  Level = c("vet", "vet_dep", "na"),
  Count = c(1038, 66, 1038)
) %>% 
  bind_rows(all_variables, .)

# Worker variable
all_variables <- tibble(
  Variable = "worker",
  Level = c("GA", "UGA", "Stu_wage", "na"),
  Count = c(991, 12, 129, 991)
) %>% 
  bind_rows(all_variables, .)

# Drive variable
all_variables <- tibble(
  Variable = "drive",
  Level = c("yes", "no", "na"),
  Count = c(1120, 51, 12)
) %>% 
  bind_rows(all_variables, .)

# License variable
all_variables <- tibble(
  Variable = "license",
  Level = c("yes", "no", "na"),
  Count = c(39, 12, 1132)
) %>% 
  bind_rows(all_variables, .)

# Park campus variable
all_variables <- tibble(
  Variable = "park_campus",
  Level = c("0 days", "1 day", "2 days", "3 days", "4 days", "5 days", "6 days", "7 days", "na"),
  Count = c(83, 94, 143, 126, 148, 127, 22, 152, 288)
) %>% 
  bind_rows(all_variables, .)

# Park campus days variable
all_variables <- tibble(
  Variable = "park_campus_days",
  Level = c("0", "1", "2", "3", "4", "5", "6", "7", "na"),
  Count = c(83, 94, 143, 126, 148, 127, 22, 152, 288)
) %>% 
  bind_rows(all_variables, .)

# Travel time variable
all_variables <- tibble(
  Variable = "travel_time",
  Level = c("0", "15", "30", "45", "60", "na"),
  Count = c(360, 190, 107, 56, 52, 418)
) %>% 
  bind_rows(all_variables, .)

# Travel distance variable
all_variables <- tibble(
  Variable = "travel_distance",
  Level = c("0", "5", "10", "20", "30", "na"),
  Count = c(373, 117, 77, 90, 87, 426)
) %>% 
  bind_rows(all_variables, .)

# Main route variable
all_variables <- tibble(
  Variable = "main_route",
  Level = c("Aquarena Springs", "Hopkins", "Hunter", "N. Guadalupe St", 
           "N. LBJ Dr. at Sessom Dr.", "N. LBJ Dr. at Woods St.", "Old Ranch Road 12", 
           "Other", "Sessom Dr", "Thorpe Lane", "Wonder World", "na"),
  Count = c(210, 54, 11, 39, 44, 14, 37, 29, 57, 14, 26, 648)
) %>% 
  bind_rows(all_variables, .)

# Region variable
all_variables <- tibble(
  Variable = "region",
  Level = c("Region #1", "Region #10", "Region #11", "Region #2", "Region #3", 
           "Region #4", "Region #5", "Region #6", "Region #7", "Region #8", "Other", "na"),
  Count = c(3, 2, 3, 5, 23, 12, 18, 105, 19, 11, 40, 938)
) %>% 
  bind_rows(all_variables, .)

# Park permit variable
all_variables <- tibble(
  Variable = "park_permit",
  Level = c("Yes", "No", "na"),
  Count = c(563, 264, 356)
) %>% 
  bind_rows(all_variables, .)

# Permit type variable
all_variables <- tibble(
  Variable = "permit_type",
  Level = c("Gold", "Green", "na"),
  Count = c(22, 143, 1183)
) %>% 
  bind_rows(all_variables, .)

# Gold vs green variable
all_variables <- tibble(
  Variable = "goldvgreen",
  Level = c("Green Residential Permits were sold out", "Price", "Other", "na"),
  Count = c(5, 13, 4, 1161)
) %>% 
  bind_rows(all_variables, .)

# Green vs gold variable
all_variables <- tibble(
  Variable = "greenvgold",
  Level = c("Bobcat Shuttle -  I did not want to ride the bus to my vehicle", 
           "Convenience - I wanted more immediate access to my vehicle", 
           "I did not know that there was a Gold Mill Street/Residence Hall Permit (less expensive) optiOn", 
           "Vehicle Safety -  I do not feel my vehicle is secure in the Mill Street Lot", 
           "Other", "na"),
  Count = c(8, 104, 8, 8, 14, 1041)
) %>% 
  bind_rows(all_variables, .)

# Permit type 2 variable
all_variables <- tibble(
  Variable = "permit_type_2",
  Level = c("Gold", "Green", "na"),
  Count = c(22, 143, 1018)
) %>% 
  bind_rows(all_variables, .)

# No permit variable
all_variables <- tibble(
  Variable = "no_permit",
  Level = c("Available parking is incOnvenient for me", 
           "Did not want to ride the Bobcat Shuttle from available parking", 
           "Do not believe there is available parking", 
           "Other", 
           "Permit cost is too high", 
           "Purchase temporary permits as needed", 
           "Rarely/never drive to campus", 
           "na"),
  Count = c(36, 8, 40, 9, 76, 1, 9, 1004)
) %>% 
  bind_rows(all_variables, .)

# Park where variable
all_variables <- tibble(
  Variable = "park_where",
  Level = c("Closest to class", 
           "Easiest lot to get to", 
           "Lot most likely to have available spaces", 
           "Lot that doesn't require riding the Bobcat Shuttle", 
           "Other", "na"),
  Count = c(178, 37, 114, 22, 27, 805)
) %>% 
  bind_rows(all_variables, .)

# Drive resident class variable
all_variables <- tibble(
  Variable = "drive_res_class",
  Level = c("No", "Yes", "na"),
  Count = c(109, 33, 1041)
) %>% 
  bind_rows(all_variables, .)

# Drive resident class days variable
all_variables <- tibble(
  Variable = "drive_res_class_days",
  Level = c("2-3 times a week", "4-6 times a week", "Daily", "Once a week", "na"),
  Count = c(14, 6, 8, 5, 1150)
) %>% 
  bind_rows(all_variables, .)

# Resident park variable
all_variables <- tibble(
  Variable = "res_park",
  Level = c("Academy Street Garage (Lot 304)", 
           "Blanco Garage (Lot 303)", 
           "College Inn (Lot 202)", 
           "I prefer to park in a Pay-to-Park garage (LBJ Garage or Edward Gary Garage)", 
           "JacksOn (Lot 204)", 
           "Llano Drive (Lot 301)", 
           "Matthews Garage (Lot 113)", 
           "Other Green Residential Parking", 
           "San Jacinto Hall (Lot 112)", 
           "Speck Garage (Lot 306)", 
           "Tower Garage (Lot 106)", 
           "Woods Garage (Lot 108)", 
           "na"),
  Count = c(12, 36, 8, 5, 1, 1, 13, 18, 12, 14, 13, 9, 1041)
) %>% 
  bind_rows(all_variables, .)

# Resident park 2 variable
all_variables <- tibble(
  Variable = "res_park2",
  Level = c("Academy Street Garage (Lot 304)", 
           "AdmissiOns (Lot 105)", 
           "I prefer to park in a Pay-to-Park garage (LBJ Garage or Edward Gary Garage)", 
           "Matthews Garage (Lot 113)", 
           "Other Green Residential Parking", 
           "San Jacinto Hall (Lot 112)", 
           "Tower Garage (Lot 106)", 
           "Woods Garage (Lot 108)", 
           "na"),
  Count = c(1, 1, 1, 5, 5, 2, 5, 12, 1151)
) %>% 
  bind_rows(all_variables, .)

# Mills campus peak variable
all_variables <- tibble(
  Variable = "mills_campus_peak",
  Level = c("No", "Yes", "na"),
  Count = c(20, 2, 1161)
) %>% 
  bind_rows(all_variables, .)

# BV campus peak variable
all_variables <- tibble(
  Variable = "bv_campus_peak",
  Level = c("No", "Yes", "na"),
  Count = c(3, 9, 1171)
) %>% 
  bind_rows(all_variables, .)

# Process and export the data
all_variables %>%
  # Arrange by variable name for better organization
  arrange(Variable, Level) %>%
  # Export to Excel
  write_xlsx("survey_variables_table.xlsx")

# Create individual variable tables
variable_tables <- all_variables %>%
  group_by(Variable) %>%
  group_split()

# Name the list elements with the variable names
names(variable_tables) <- unique(all_variables$Variable)

# Print a summary of the data
cat("Total number of variables processed:", length(unique(all_variables$Variable)), "\n")
cat("Total number of levels across all variables:", nrow(all_variables), "\n")
cat("Output saved to survey_variables_table.xlsx", "\n")

# Print sample of the first few tables
print(variable_tables$age)
print(variable_tables$class)
print(variable_tables$ethnicity)
