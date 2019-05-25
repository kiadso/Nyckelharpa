
fluidPage(
  titlePanel("Nyckelharpa Origins"),
  mainPanel(
    leafletOutput(
      outputId = "originsMap",
      width = "100%",
      height = "100%"
    )
  )
)
