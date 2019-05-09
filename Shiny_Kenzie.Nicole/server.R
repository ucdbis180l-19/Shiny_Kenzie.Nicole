#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
# Define server logic required to draw a histogram

tomato <- read_csv("./Tomato.csv")
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    tomato %>%
      ggplot(aes_string(x=input$trait1, y=input$trait2, color="species"))+
      scale_color_manual(values=c("firebrick1", "orange1", "olivedrab1", "blue","darkorchid"))+
      ggtitle(paste(input$trait1, "as a function of", input$trait2))+
      labs(color="Species")+
      geom_point()
  })
  
})
