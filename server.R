


function(input, output) {
  output$originsMap <- renderLeaflet({
    x <- x %>%
      filter(Century %in% c(input$centuries))
    
    image75 <- popupImage(x$RemoteImage,
                          src = "remote",
                          width = "200px",
                          height = "100%")
    
    leaflet(x) %>%
      setView(lng = 16.5, lat = 57, zoom = 4.5) %>%
      addProviderTiles("Esri.NatGeoWorldMap") %>%
      addCircleMarkers(
        lng = ~ Longitude,
        lat = ~ Latitude,
        radius = 3,
        opacity = 6,
        color = ~x$Color,
        fillColor = ~x$Color,
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
      ) 
  })
}
