library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(tidyverse)
library(magrittr)
library(stringr)
library(haven)
library(writexl)


wage_path <-  file.path(getwd(), "DATASETS", "wagepan.csv")
wagepan_df <- read_csv(wage_path)

black_df <- wagepan_df |> filter(black==1) |> rename(person_id = nr) |> group_by(person_id) |> summarise (
 mean_hours=mean(hours, na.rm = TRUE),
 work_intensity = case_when(
   mean_hours >= 2500 ~ "Overtime Worker",
   mean_hours >= 1800 & mean_hours < 2500 ~ "Full-Time Worker",
   mean_hours < 1800 ~ "Part-Time/Seasonal",
   TRUE ~ "Unknown"),
 .groups = "drop")
view(black_df)
