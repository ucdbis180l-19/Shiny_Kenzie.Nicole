#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Tomato Data"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("trait1",
                 "Choose a trait to display:",
                 c("Petal Length"="petleng",
                   "Leaf Length"="leafleng",
                   "Leaf Width"="leafwid",
                   "Leaf Number"="leafnum",
                   "NDVI"="ndvi")),
      radioButtons("trait2",
                   "Choose a trait to display:",
                   c("hyp",
                     "int1",
                     "int2",
                     "int3",
                     "int4"))),
  mainPanel(
    plotOutput("distPlot")))))
