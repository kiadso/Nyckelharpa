

navbarPage(
  "Nyckelharpa Origins",
  tabPanel("Nyckelharpa Map",
           fluidRow(
             column(
               2,
               checkboxGroupInput(
                 "centuries",
                 label = "Centuries",
                 choices = x$Century %>% unique(),
                 selected = "1900's"
               )
             ),
             column(
               10,
               HTML("<strong>Click the Centuries to see where nyckelharpas have been found to exist. <br>Click each dot for historical context.</strong><br>"),
               leafletOutput(
                 outputId = "originsMap",
                 height = 600,
                 width = 600
               )
             )
           )),
  tabPanel(
    "About",
    shinydashboard::box(
      title = "About This Site",
      HTML(
        "<p>This site was created by Genelle Denzin in service to the larger
      nyckelharpa community and is intended as a resource among many. Please
      find the code
      <a href=\"https://github.com/kiadso/Nyckelharpa\">here</a>. I attempted
      to credit each image properly, but if you see an image here that is not
      credited properly, please enter an Issue on the repository in the link
      above.

      <p>Except where otherwise noted, content on this site is licensed
      under a
      <a href=\"https://creativecommons.org/licenses/by-sa/4.0/legalcode\">
      Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license</a>."
      )
    ),
    shinydashboard::box(
      title = "Credits",
      HTML(
        "<p>R Core Team (2019). R: A language and environment for statistical
      computing. R Foundation for Statistical Computing, Vienna, Austria. URL
      <a href=\"https://www.R-project.org\">R Core Team</a>.

      <p>Winston Chang, Joe Cheng, JJ Allaire, Yihui Xie and Jonathan McPherson
      (2019). shiny: Web Application Framework for R. R package version 1.3.2.
      <a href=\"https://CRAN.R-project.org/package=shiny\">R Shiny</a>

      <p>Joe Cheng, Bhaskar Karambelkar and Yihui Xie (2018). leaflet: Create
      Interactive Web Maps with the JavaScript 'Leaflet' Library. R package
      version 2.0.2. <a href=\"https://CRAN.R-project.org/package=leaflet\">
      Leaflet</a>

      <p>Tim Appelhans, Florian Detsch, Christoph Reudenbach and Stefan Woellauer
      (2018). mapview: Interactive Viewing of Spatial Data in R. R package
      version 2.6.3. <a href=\"https://CRAN.R-project.org/package=mapview\">
                      mapview</a>"
        
      )
    )
  )
)
