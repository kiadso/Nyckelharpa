library(shiny)
library(leaflet)
library(dplyr)
library(htmlwidgets)
library(readxl)
library(mapview)
library(leafpop)
library(here)
#library(ggmap)

x <- read_xlsx(here("NyckelharpaHistoryData.xlsx")) %>% arrange(DatesBackTo)

image75 <- popupImage(x$RemoteImage,
                      src = "remote",
                      width = "200px",
                      height = "100%")

origins <- leaflet(x) %>%
  setView(lng = 16.5, lat = 57, zoom = 3.5) %>%
  addProviderTiles("Esri.NatGeoWorldMap") %>%
  addCircleMarkers(
    lng = ~ Longitude,
    lat = ~ Latitude,
    popup =
      paste0(
        "<div style=\"background-color: #fff; padding: 8px;\"><h3><b>Dates Back To ",
        x$DatesBackTo,
        "</b></h3><div>",
        x$Description,
        "</div><br>",
        image75,
        "</div><div style=\"background-color: #fff; padding: 8px; \"><small>Photo:",
        x$Attribution,
        "</small></div>"
      ),
    popupOptions = popupOptions(keepInView = TRUE),
    group = x$DatesBackTo
  ) %>%
  addLayersControl(overlayGroups = x$DatesBackTo,
                   options = layersControlOptions(collapsed = FALSE))

