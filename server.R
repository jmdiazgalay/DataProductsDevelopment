BodyMassIndex <- function(weight, height) weight / (height)^2
shinyServer(
 function(input, output) {
  output$inputValue1 <- renderPrint({input$weight})
  output$inputValue2 <- renderPrint({input$height})
 output$prediction1 <- renderPrint({BodyMassIndex(input$weight, input$height)})

 }
)