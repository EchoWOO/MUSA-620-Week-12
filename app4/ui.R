
library(shiny)
library(leaflet)

fluidPage(
  
  titlePanel("Leaflet and action buttons"),
  hr(),
  leafletOutput("mymap"),
  hr(),
  
  fluidRow(
    column(4,
           p("Updates automatically"),
           radioButtons("markercolor", "Radio buttons",
                        choices = list("Blue" = "blue", "Red" = "red",
                                       "Green" = "green"),selected = "blue")
    ),
    column(4, 
           p("Press button to update"),
           numericInput("numpoints","Number of points", min=0, max=100, value=40, step=5),
           numericInput("ptsize","Point radius", min=1, max=20, value=8, step=1)
    ),
    column(4,
           actionButton("recalc", "Generate new points")
           
    )
  )
)
