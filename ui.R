library(shiny)

# Define UI for application that draws a graph
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Chick Weight by Diet"),
  
  # Sidebar with
    sidebarPanel(
      radioButtons("graphType", label = h3("Select a Graph Type"),
                   choices = list("Trellis" = 1, "Line" = 2)
                                  ,selected = 1),
      
      selectInput("dietType", "Selelct a Diet", 
                  choices = c("All","1","2","3","4"),
                  selected = "All")
                ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("dietPlot")
            )
  )
  )