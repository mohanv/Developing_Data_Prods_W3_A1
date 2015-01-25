library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Sample mean of Exponential Distribution"),
    sidebarPanel(
      h4('Displays a histogram of distribution of 40 exponentials for n simulations'),
      sliderInput('n', 'Number of Simulations: ', 10, min = 10, max = 1000, step = 10)			   
    ),
    mainPanel(
      h4("Histogram plot of the means of the n simulations of rexp(n, lambda)"),
      plotOutput("sampleMeanDiag")
    )
  ))