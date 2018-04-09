
library(shiny)
library(leaflet)

function(input, output) {

  
  points <- eventReactive(input$recalc, {
    cbind(rnorm(input$numpoints, mean = -100, sd = 10), rnorm(input$numpoints, mean = 38, sd = 3))
  }, ignoreNULL = FALSE)
  

  ptsize <- eventReactive(input$recalc, {
    input$ptsize
  }, ignoreNULL = FALSE)
  
  
  output$mymap <- renderLeaflet({
    leaflet() %>%
      addProviderTiles(providers$Stamen.TonerLite,
                       options = providerTileOptions(noWrap = TRUE)
      ) %>%
      #addMarkers()
    addCircleMarkers(
      data = points(),
      radius = ptsize(),
      color = input$markercolor,
      stroke = FALSE,
      fillOpacity = 0.5
    )
  })
}
