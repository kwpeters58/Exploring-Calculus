#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library("ggplot2")

library("ggimage")
rsconnect::setAccountInfo(name='kenpeters58', token='7E8D23C87D884C6971DE896CC50C47C2', secret='zu/6fdjm/4TzN8YU8mBLruEUA9bRckWEwbMhel6g')
library(rsconnect)

library(devtools)
source_gist(5568685)

library(shinyWidgets)
library(shiny)
library(scales)
library(gridExtra)
library(dplyr)
#rsconnect::deployApp('path/to/your/app')
Frog1 <- "Surfer_Frog.gif"
Dude1 <- "Surfer_Dude.gif"
Woman_Champ1 <- "Surfer_Woman.jpg"
Frog2 <- "Surfer_Frog.gif"
Dude2 <- "Surfer_Dude.gif"
Woman_Champ2 <- "Surfer_Woman.jpg"
Frog3 <- "Surfer_Frog.gif"
Dude3 <- "Surfer_Dude.gif"
Woman_Champ3 <- "Surfer_Woman.jpg"
Frog4 <- "Surfer_Frog.gif"
Dude4 <- "Surfer_Dude.gif"
Woman_Champ4 <- "Surfer_Woman.jpg"
Func1 <- function(x) {
  sin(x)
}

DFunc1 <- function(x) {
  cos(x)
}

Func2 <- function(x) {
  x^2
}

DFunc2 <- function(x) {
  2*x
}
Func3 <- function(x) {
  x^3 - 8*x
}

DFunc3 <- function(x) {
  3*x^2 - 8
}

Func4 <- function(x) {
  exp(x)
}

DFunc4 <- function(x) {
  exp(x)
}
Func5 <- function(x) {
  sqrt(9 - x^2)
}

DFunc4 <- function(x) {
  exp(x)
}


# Define server logic required to draw graphs for Derivatives and Integrals
shinyServer(function(input, output){

 
  

  

    output$graph1 <- renderPlot(
      ggplot(data.frame(x = c(-5,5)), aes(x = x)) + ylim(-2,2)  +
                                   stat_function(fun = Func1, colour = "deeppink") +
                                   geom_segment(aes(x = input$x1 - .4, y = Func1(input$x1) + DFunc1(input$x1)*(-.4), xend = input$x1 + .4, yend = Func1(input$x1) + DFunc1(input$x1)*(.4)), size=2, color=input$ColorSurf1) + 
                                   geom_point(aes(x = input$x1, y = Func1(input$x1)), size=4, shape=21, fill="white") +
                                   geom_hline(yintercept=0)+
                                   geom_vline(xintercept=0) +
                                   geom_image(aes(image =input$Surfer1, y= -1.5), size=.2)
    
    



)
    output$graph2 <- renderPlot(
      ggplot(data.frame(x = c(-5,5)), aes(x = x)) + ylim(-2,30)  +
        stat_function(fun = Func2, colour = "deeppink") +
        geom_segment(aes(x = input$x2 - .4, y = Func2(input$x2) + DFunc2(input$x2)*(-.4), xend = input$x2 + .4, yend = Func2(input$x2) + DFunc2(input$x2)*(.4)), size=2, color=input$ColorSurf2) + 
        geom_point(aes(x = input$x2, y = Func2(input$x2)), size=4, shape=21, fill="white") +
        geom_hline(yintercept=0)+
        geom_vline(xintercept=0) +
        geom_image(aes(image =input$Surfer2, y= -1.5), size=.2)
      
      
      
      
      
    )
    output$graph3 <- renderPlot(
      ggplot(data.frame(x = c(-3,3)), aes(x = x)) + ylim(-10,10)  +
        stat_function(fun = Func3, colour = "deeppink") +
        geom_segment(aes(x = input$x3 - .4, y = Func3(input$x3) + DFunc3(input$x3)*(-.4), xend = input$x3 + .4, yend = Func3(input$x3) + DFunc3(input$x3)*(.4)), size=2, color=input$ColorSurf3) + 
        geom_point(aes(x = input$x3, y = Func3(input$x3)), size=4, shape=21, fill="white") +
        geom_hline(yintercept=0)+
        geom_vline(xintercept=0) +
        geom_image(aes(image =input$Surfer3, y= -1.5), size=.2)
      
      
      
      
      
    )
    output$graph4 <- renderPlot(
      ggplot(data.frame(x = c(-3,3)), aes(x = x)) + ylim(-2,40)  +
        stat_function(fun = Func4, colour = "deeppink") +
        geom_segment(aes(x = input$x4 - .4, y = Func4(input$x4) + DFunc4(input$x4)*(-.4), xend = input$x4 + .4, yend = Func4(input$x4) + DFunc4(input$x4)*(.4)), size=2, color=input$ColorSurf4) + 
        geom_point(aes(x = input$x4, y = Func4(input$x4)), size=4, shape=21, fill="white") +
        geom_hline(yintercept=0)+
        geom_vline(xintercept=0) +
        geom_image(aes(image =input$Surfer4, y= -1.5), size=.2)
      
      
      
      
      
    )
    output$int1 <- renderPlot(
      column.int('sin(x)',n=input$N1,from.x=0,to.x=pi,plot.cum=F)
      
    )
    output$int2 <- renderPlot(
      column.int('x^2',n=input$N2,from.x=0,to.x=4,plot.cum=F)
      
    )
    output$int3 <- renderPlot(
      column.int('exp(x)',n=input$N3,from.x=0,to.x=4,plot.cum=F)
      
    )
    output$int4 <- renderPlot(
      column.int('sqrt(9 - x^2)',n=input$N4,from.x=-3,to.x=3,plot.cum=F)
      
    )
})
  




