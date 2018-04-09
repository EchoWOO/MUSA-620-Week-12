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
  titlePanel("Experimenting with HTML tags"),
  sidebarLayout(
    sidebarPanel(
      h3("This is the side panel"),
      em("Emphasized text (italics)")
    ),
    mainPanel(
      h3("This is the main panel"),
      h1("Header 1 text (most prominent)"),
      h3("Header 3 text (slightly less prominent)"),
      p("Paragraph text (basic text element)"),
      p("You can also ",em("embed tags")," inside of ", strong("other tags"))
    )
  )
)
