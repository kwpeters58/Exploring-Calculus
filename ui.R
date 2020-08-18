#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(dplyr)
library("ggimage")
library("ggplot2")

library("ggimage")

library(devtools)
library(scales)
library(gridExtra)
library(shinyWidgets)
source_gist(5568685)

library(shinyWidgets)
rsconnect::setAccountInfo(name='kenpeters58', token='7E8D23C87D884C6971DE896CC50C47C2', secret='zu/6fdjm/4TzN8YU8mBLruEUA9bRckWEwbMhel6g')
library(rsconnect)
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



# Define UI for 
# Slider bars for Surfing the Derivative and Creating Rectangles for estimating the Integral
shinyUI(fluidPage(
    
    tags$style(HTML(".js-irs-0 .irs-single, .js-irs-0 .irs-bar-edge, .js-irs-0 .irs-bar {background: purple}")),
    titlePanel("Surfing the Derivative and Rectangles for the Integral"),
    sidebarLayout(
        position = "left",
     
        sidebarPanel(h3("Inputs for curve"), 
                     selectInput("ColorSurf1", "1. Select Surf Board Color for sin(x)", choices = c(Blue = "blue3", Black = "gray0", Green = "green3", Orange = "orangered1", Magenta = "magenta3"), selected = "Blue"),
                     br(),
                     selectInput("Surfer1", "2. Select Surfer", choices = c(Frog = Frog1, Dude = Dude1, Woman_Champ = Woman_Champ1), selected = "Frog"),
        sliderInput("x1", "x values",
                    min = -5, max = 5,
                    value = 1, step = .2
                    ),  
        br(),
          selectInput("ColorSurf2", "1. Select Surf Board Color for x^2", choices = c(Blue = "blue3", Black = "gray0", Green = "green3", Orange = "orangered1", Magenta = "magenta3"), selected = "Blue"),
                     br(),
                     selectInput("Surfer2", "2. Select Surfer", choices = c(Frog = Frog1, Dude = Dude1, Woman_Champ = Woman_Champ1), selected = "Frog"),
                     sliderInput("x2", "x values",
                                 min = -5, max = 5,
                                 value = 1, step = .2
                     ), 
        br(),
        br(),
        br(),
        br(),
        br(),
        selectInput("ColorSurf3", "1. Select Surf Board Color for x^3-8*x", choices = c(Blue = "blue3", Black = "gray0", Green = "green3", Orange = "orangered1", Magenta = "magenta3"), selected = "Blue"),
        br(),
        selectInput("Surfer3", "2. Select Surfer", choices = c(Frog = Frog1, Dude = Dude1, Woman_Champ = Woman_Champ1), selected = "Frog"),
        sliderInput("x3", "x values",
                    min = -3, max = 3,
                    value = 1, step = .2
        ),
        br(),
        br(),
        br(),
        br(),
        br(),
        selectInput("ColorSurf4", "1. Select Surf Board Color for e^x", choices = c(Blue = "blue3", Black = "gray0", Green = "green3", Orange = "orangered1", Magenta = "magenta3"), selected = "Blue"),
        br(),
        selectInput("Surfer4", "2. Select Surfer", choices = c(Frog = Frog1, Dude = Dude1, Woman_Champ = Woman_Champ1), selected = "Frog"),
        sliderInput("x4", "x values",min = -3, max = 3,value = 1, step = .2),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
        setSliderColor(c("DeepPink ", "#FF4500","Teal", "Crimson", "Chocolate", "Indigo", "LawnGreen", "Yellow"), c(1:8)),
        sliderInput("N1", "Select n for sin(x)", min = 5, max = 50, value = 5, step = 5),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        sliderInput("N2", "Select n for x^2", min = 5, max = 50, value = 5, step = 5),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        sliderInput("N3", "Select n for e^x", min = 5, max = 50, value = 5, step = 5),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        br(),
        sliderInput("N4", "Select n for Semi_circle of radiu3:sqrt(9 - x^2)", min = 5, max = 50, value = 5, step = 5),
        ),
        
        
        mainPanel(plotOutput("graph1"), plotOutput("graph2"), plotOutput("graph3"), plotOutput("graph4"), plotOutput("int1"), plotOutput("int2"), plotOutput("int3"),plotOutput("int4")),
        )
        
  
))
