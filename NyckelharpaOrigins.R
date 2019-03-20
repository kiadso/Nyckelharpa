library(leaflet)
library(tidyverse)
library(htmlwidgets)
library(rvest)
library(readxl)
library(mapview)

x <- read_xlsx("NyckelharpaHistoryData.xlsx")

image75 <- popupImage(x$Localimage, 
                      src = "local", 
                      width = "200px", 
                      height = "100%")

leaflet(x) %>%
  setView(lng = 16.5, lat = 57, zoom = 3.5) %>%
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  addCircleMarkers(
    lng = ~ Longitude,
    lat = ~ Latitude,
    popup = paste0(
      "<div style=\"background-color: #fff; padding: 8px\"><h3><b>Dates Back To ",
      x$DatesBackTo,
      "</b></h3><div>",
      x$Description,
      "</div><br>",
      image75,
      "</div>"
    )
  )
  

