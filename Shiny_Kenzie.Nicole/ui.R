#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Tomato Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      radiobuttons("trait1",
                   "Choose a trait to display:",
                   c("hyp",
                     "int1",
                     "int2",
                     "int3",
                     "int4")))),
    sidebarPanel(
       radiobuttons("trait2",
                   "Choose a trait to display:", 
                   c("petleng",
                     "leafleng",
                     "leafwid",
                     "leafnum",
                     "ndvi"))),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distplot"))))
