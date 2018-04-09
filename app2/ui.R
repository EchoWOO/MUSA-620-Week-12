#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

fluidPage(
  titlePanel("My Slider App"),
  sidebarLayout(
    sidebarPanel(
      h3("This is a slider"),
      sliderInput("myinputdata", "Slide me", 0, 100, 0)
    ),
    mainPanel(
      h3("Slider Value:"),textOutput("myoutputdata")
    )
  )
)


