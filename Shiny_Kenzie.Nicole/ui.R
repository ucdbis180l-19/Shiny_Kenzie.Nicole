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
                   c("Hypocotal Length"="hyp",
                     "Internode Length 1"="int1",
                     "Internode Length 2"="int2",
                     "Internode Length 3"="int3",
                     "Internode Length 4"="int4"))),
  mainPanel(
    plotOutput("distPlot")))))
