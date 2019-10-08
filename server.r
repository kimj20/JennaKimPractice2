library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate grads based on input$grads from ui.R
    x    <- major[, 2] 
    grads <- seq(min(x), max(x), length.out = input$grads + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = grads, col = 'darkgray', border = 'white')
    
  })
  
}
