

function(input, output) {
  output$originsMap <- shinyRenderWidget(origins,
                                         env = 0,
                                         outputFunction = "map",
                                         quoted = FALSE)
}
