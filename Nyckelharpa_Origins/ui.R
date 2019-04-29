
library(shiny)
library(leaflet)
shinyUI(fluidPage(
  titlePanel("Nyckelharpa Origins"),
      mainPanel(
       shinyWidgetOutput(outputId = "map", 
                         name = "originsMap",
                         width = "100%",
                         height = "100%")
    )
))
