library(shiny)
ui <- fluidPage(titlePanel("P-value caculator"),numericInput("q",label="A standard normal statistic",value = 0),textOutput("p"))
server <- function(input, output) {
  output$p=reactive({paste("Your p-values is",1-pnorm(input$q))})
  
}
shinyApp(ui = ui, server = server)
