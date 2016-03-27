library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Estimate Mileage of Cars from Horse Power, Number of Cylinders and Transmission Type"),
        sidebarPanel(
                h4("Please enter parameters :"),




                sliderInput("hp", 'Horse Power',
                            min = 50, max = 300, value = 100),



                radioButtons("cyl", "Number of Cylinders",
                           c("4" = "4",
                             "6" = "6",
                             "8" = "8")),

                radioButtons("trantype", "Transmission Type",
                           c("Automatic" = 0,
                             "Manual" = 1)),

                submitButton('Submit')



        ),
        mainPanel(
                h3('Result of Estimation'),
                h4('You entered'),
                h4('Horse Power'),
                verbatimTextOutput("hp"),

                h4('Number of Cylinder'),
                verbatimTextOutput("cyl"),

                h4('Tranmission Type (0 = Auto ; 1 = Manual)'),
                verbatimTextOutput("trantype"),

                h4('Which results in an estimated milage of'),
                verbatimTextOutput("prediction")
        )
))


?mtcars
