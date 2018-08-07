# Code example to show how to use tidyeval within Shiny

library(shiny)
data(iris)
library(dplyr)

numericVariables <- c("Sepal.Length", "Sepal.Width",  "Petal.Length", "Petal.Width")

ui <- fluidPage(
   
   title= "Passing an input value into the select statement",
  
      # Show a plot of the generated distribution
      fluidRow(
        selectInput("numeric_var", "Select a Numeric Variable", 
                    choices = numericVariables, selected = numericVariables[1]), 
         plotOutput("histogram")
      )
   )

# Define server logic required to draw a histogram
server <- function(input, output) {
   
  selected_data <- reactive({
    ## input$numeric_var is a character, so we cast it to symbol
    var_name <- sym(input$numeric_var)

    ## Now we evaluate it with !!
    out_col <- iris %>% pull(!!var_name)

  })
  
  output$histogram <- renderPlot({

    hist(selected_data())
    
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

