rm(list = ls())
library(shiny)

ui <- fluidPage(titlePanel("Using Draw.io embedded"), htmlOutput("frame"))

server <- function(input, output) {
  output$frame <- renderUI({
    tags$iframe(src="https://www.draw.io", height=400, width=640)
  })
}

shinyApp(ui, server)
