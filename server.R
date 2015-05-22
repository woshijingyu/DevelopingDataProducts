library(shiny)

computeBmi <- function(height, weight){
  weight/(height*height)
}


shinyServer(
  function(input, output) {
    output$weight <- renderPrint({paste(input$weight,'kg')})
    output$height <- renderPrint({paste(input$height,'m')})
    output$bmi <- renderPrint({computeBmi(input$height, input$weight)})
  }
)