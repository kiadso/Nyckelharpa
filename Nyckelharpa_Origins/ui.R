
fluidPage(
  titlePanel("Nyckelharpa Origins"),
  mainPanel(
    shinyWidgetOutput(
      outputId = "map",
      name = "originsMap",
      width = "300px",
      height = "400px"
    )
  )
)
