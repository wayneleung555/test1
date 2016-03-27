### server.r ####
library(shiny)


#calculate mileage
mileage <- function(hp, cyl , trantype) {
                       27.3  - 3.9 * (cyl=="6") - 3.5 * (cyl=="8") - 0.0044 * hp   + 4.16 * as.numeric(trantype) }



shinyServer(
        function(input, output) {
                output$hp <- renderPrint({input$hp})
                output$trantype <- renderPrint({input$trantype})
                output$cyl <- renderPrint({input$cyl})

                output$prediction <- renderPrint({mileage(input$hp, input$cyl , input$trantype)})

        }
)
