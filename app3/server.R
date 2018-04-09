
library(shiny)
library(ggplot2)
agegdp <- read.csv("agegdp.csv")

function(input, output) {
  output$myggplot <- renderPlot({
    
    ggplot(agegdp, aes(x = age, y = debt, label=name)) +
      geom_point(aes(size = pop, colour = regionname, alpha=0.5)) + 
      geom_text(hjust = 1, size = input$textsize) +
      scale_size(range = c(1,input$circlesize)) +
      scale_colour_brewer(palette=input$colorpalette) +
      theme_bw()
  })
  
}
