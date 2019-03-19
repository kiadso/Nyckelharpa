library(leaflet)
library(tidyverse)
library(htmlwidgets)
library(rvest)
library(readxl)
library(mapview)

x <- read_xlsx("NyckelharpaHistoryData.xlsx")

leaflet(x) %>%
  setView(lng = 16.5, lat = 57, zoom = 3.5) %>% 
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  addCircleMarkers(
    lng = ~Longitude, 
    lat = ~Latitude,
    popup = paste0(popupImage(x$Localimage, src = "local", width = 75, embed = TRUE),
                  "<br><b>Dates Back To ",
                   x$DatesBackTo,
                   "</b><br>",
                   x$Description))

leaflet(x) %>%
  setView(lng = 16.5, lat = 57, zoom = 3.5) %>% 
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  addCircleMarkers(
    lng = ~Longitude, 
    lat = ~Latitude,
    popup = c(popupImage(image75), #not working
      paste0(
        "<br><b>Dates Back To ",
        x$DatesBackTo,
        "</b><br>",
        x$Description
      )
    ))
