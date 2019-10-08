library(shiny)
library(ggplot2)
library(dplyr)
library(tidyverse)



ui = fluidPage(    
  
  titlePanel("Grad Salary by Major"),
  
  sidebarLayout(      
    
    sidebarPanel(
      selectInput(inputId = "grads.by.major",
                  label = "Majors", 
                  choices = "Majors"))
  )
  mainPanel())