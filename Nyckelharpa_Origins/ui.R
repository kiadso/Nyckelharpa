
library(shiny)
library(leaflet)
shinyUI(fluidPage(
  titlePanel("Nyckelharpa Origins"),
      mainPanel(
       shinyWidgetOutput("originsMap")
    )
))
