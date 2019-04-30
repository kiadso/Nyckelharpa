

function(input, output) {
  output$originsMap <- renderLeaflet(origins)
}
