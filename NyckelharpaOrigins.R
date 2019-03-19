library(leaflet)
library(tidyverse)
library(htmlwidgets)
library(rvest)
library(readxl)
library(mapview)

x <- read_xlsx("NyckelharpaHistoryData.xlsx")

description <- paste0("<br><b>Dates Back To ",
                    x$DatesBackTo,
                    "</b><br>",
                    x$Description)

image75 <- popupImage(x$Localimage, src = "local", width = 100)

leaflet(x) %>%
  setView(lng = 16.5, lat = 57, zoom = 3.5) %>%
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  addCircleMarkers(
    lng = ~ Longitude,
    lat = ~ Latitude,
    popup = paste0(
      "<div><h3><b>Dates Back To: ",
      x$DatesBackTo,
      "</b></h3>",
      x$Description,
      "</br><img src=\"",
      image75,
      "\"></div>"
    )
  )
  


