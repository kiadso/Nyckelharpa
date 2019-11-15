tagList(
  fluidPage(
    titlePanel("Nyckelharpa Origins"),
    fluidRow(
      column(2, checkboxGroupInput(
        "centuries",
        label = h3("Centuries"),
        choices = x$Century %>% unique(),
        selected = "1900's"
      )),
      column(10, leafletOutput(
        outputId = "originsMap",
        height = 600,
        width = 600
      ))
    )), 
  tags$footer(
    HTML(
      "<p>Except where otherwise noted, content on this site is licensed
      under a
      <a href=\"https://creativecommons.org/licenses/by-sa/4.0/legalcode\">
      Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license</a>.

      <p>R Core Team (2019). R: A language and environment for statistical
      computing. R Foundation for Statistical Computing, Vienna, Austria. URL
      https://www.R-project.org/.

      <p>Winston Chang, Joe Cheng, JJ Allaire, Yihui Xie and Jonathan McPherson
      (2019). shiny: Web Application Framework for R. R package version 1.3.2.
      https://CRAN.R-project.org/package=shiny

      <p>Joe Cheng, Bhaskar Karambelkar and Yihui Xie (2018). leaflet: Create
      Interactive Web Maps with the JavaScript 'Leaflet' Library. R package
      version 2.0.2. https://CRAN.R-project.org/package=leaflet

      <p>Tim Appelhans, Florian Detsch, Christoph Reudenbach and Stefan Woellauer
      (2018). mapview: Interactive Viewing of Spatial Data in R. R package
      version 2.6.3. https://CRAN.R-project.org/package=mapview"
      
    ),
    style = "width:100%; color: white; padding: 10px; background-color: black"
  )
)
