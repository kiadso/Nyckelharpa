
fluidPage(
  titlePanel("Nyckelharpa Origins"),
  mainPanel(
    leafletOutput(
      outputId = "map",
      width = "100%",
      height = "100%"
    )
  )
)
