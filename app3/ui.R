

library(shiny)

fluidPage(
  titlePanel("Styling a plot based on user input"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Dynamically adjust your map's style"),
      
      sliderInput("circlesize", "How big should the points be?", 1, 100, 30),
      sliderInput("textsize", "How big should the text be?", 1, 10, 2),
      selectInput("colorpalette", label = "Select a color palette", 
                  choices = list("The Accent palette" = "Accent", "Set1 perhaps?" = "Set1", "Maybe Pastel1?" = "Pastel1", "Greens would be a bad choice"="Greens"), 
                  selected = "Set1")
    ),
    
    mainPanel(
      h3("My plot"),
      plotOutput("myggplot")
    )
  )
)
