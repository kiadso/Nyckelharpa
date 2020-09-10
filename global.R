library(shiny)
library(leaflet)
library(dplyr)
library(htmlwidgets)
library(readxl)
library(mapview)
library(leafpop)
library(here)
library(stringr)
#library(ggmap)

x <- read_xlsx(here("NyckelharpaHistoryData.xlsx")) %>% 
  arrange(DatesBackTo) %>%
  mutate(Century = case_when(
    str_starts(DatesBackTo, "12") ~ "1200's",
    str_starts(DatesBackTo, "13") ~ "1300's",
    str_starts(DatesBackTo, "14") ~ "1400's",
    str_starts(DatesBackTo, "15") ~ "1500's",
    str_starts(DatesBackTo, "16") ~ "1600's",
    str_starts(DatesBackTo, "17") ~ "1700's",
    str_starts(DatesBackTo, "18") ~ "1800's",
    str_starts(DatesBackTo, "19") ~ "1900's"
  ),
  Color = case_when(
    Century == "1200's" ~ "#FF0000",
    Century == "1300's" ~ "#FF7F00",
    Century == "1400's" ~ "#FFFF00",
    Century == "1500's" ~ "#00B300",
    Century == "1600's" ~ "#0000FF",
    Century == "1700's" ~ "#4B0082",
    Century == "1800's" ~ "#9400D3",
    Century == "1900's" ~ "#222222"
  ))


