library(shiny)
library(ggplot2)
library(dplyr)
library(tidyverse)


health <- filter(recent_grads, Major_category == "Health")

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Recent Health Grads Data"),
  
  # Sidebar with a slider input for number of grads 
  sidebarLayout(
    sidebarPanel(
      sliderInput("grads",
                  "Number of grads:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)
