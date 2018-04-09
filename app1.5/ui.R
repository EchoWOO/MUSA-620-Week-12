
library(shiny)

fluidPage(
  
  titlePanel("Grid layout with control widgets"),
  hr(),
  br(),
  br(),
  h1("This upper area is a good place to put a plot"),
  br(),
  br(),
  br(),
  hr(),
  
  fluidRow(
    column(4,
           h3("Example controls 1"),
           sliderInput('sliderinput', "You can slide me, but it won't do any good", 
                       min=1, max=100, value=50, 
                       step=1),
           checkboxInput('checkboxinput', 'Check me'),
           selectInput("selectboxinput", "Choose an option", 
                       choices = c("option 1", "option 2", "option 3"))
    ),
    column(4,
           h3("Example controls 2"),
           numericInput("numberinput","Numerical input", value=40, step=5),
           radioButtons("radioinput", "Radio buttons",
                        choices = list("Choice 1" = 1, "Choice 2" = 2,
                                       "Choice 3" = 3),selected = 1)
    ),
    column(4,
           h3("Example controls 3"),
           dateInput("dateinput","Pick a date",value = "2018-05-08"),
           dateRangeInput('daterangeinput',
                          label = 'Pick a date range',
                          start = Sys.Date() - 2, end = Sys.Date() + 2
           ),
           submitButton("Submit me")
           
    )
  )
)
