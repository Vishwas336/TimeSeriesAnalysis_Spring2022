#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinycssloaders)
library(tidyverse)
library(fpp3)
library(GGally)
library(sugrrants)
library(timetk)
library(feasts)
library(forecast)
library(fable)
library(ggplot2)
library(dplyr)

# Define UI for application 
shinyUI(fluidPage(

    # Application title
    titlePanel("Median House Price US cities"),

    # Sidebar with a dropdown menu
    
    sidebarLayout(
      sidebarPanel(selectInput("var", 
                    label = "Choose a City to display",
                    choices = list("Akron",
                                   "Albany",
                                   "Albuquerque",
                                   "Allentown",
                                   "Atlanta",
                                   "Austin",
                                   "Bakersfield",
                                   "Baltimore",
                                   "Baton Rouge",
                                   "Birmingham",
                                   "Boise City",
                                   "Boston",
                                   "Buffalo",
                                   "Charleston",
                                   "Charlotte",
                                   "Chicago",
                                   "Cincinnati",
                                   "Cleveland",
                                   "Colorado Springs",
                                   "Columbia",
                                   "Columbus",
                                   "Dallas-Fort Worth",
                                   "Dayton",
                                   "Daytona Beach",
                                   "Denver",
                                   "Des Moines",
                                   "Detroit",
                                   "Durham",
                                   "El Paso",
                                   "Fort Collins",
                                   "Fort Myers",
                                   "Fresno",
                                   "Grand Rapids",
                                   "Greensboro",
                                   "Greenville",
                                   "Hartford",
                                   "Houston",
                                   "Indianapolis",
                                   "Jacksonville",
                                   "Kansas City",
                                   "Knoxville",
                                   "Lakeland",
                                   "Las Vegas",
                                   "Little Rock",
                                   "Los Angeles-Long Beach-Anaheim",
                                   "Louisville-Jefferson County",
                                   "Madison",
                                   "McAllen",
                                   "Memphis",
                                   "Miami-Fort Lauderdale",
                                   "Milwaukee",
                                   "Minneapolis-St Paul",
                                   "Nashville",
                                   "New Haven",
                                   "New Orleans",
                                   "New York",
                                   "North Port-Sarasota-Bradenton",
                                   "Ogden",
                                   "Oklahoma City",
                                   "Omaha",
                                   "Orlando",
                                   "Philadelphia",
                                   "Phoenix",
                                   "Pittsburgh",
                                   "Portland",
                                   "Providence",
                                   "Provo",
                                   "Raleigh",
                                   "Richmond",
                                   "Riverside",
                                   "Rochester",
                                   "Sacramento",
                                   "Salt Lake City",
                                   "San Antonio",
                                   "San Diego",
                                   "San Francisco",
                                   "San Jose",
                                   "Seattle",
                                   "Springfield",
                                   "St. Louis",
                                   "Stamford",
                                   "Stockton",
                                   "Syracuse",
                                   "Tampa",
                                   "Toledo",
                                   "Tucson",
                                   "Tulsa",
                                   "United States",
                                   "Urban Honolulu",
                                   "Ventura",
                                   "Virginia Beach",
                                   "Washington",
                                   "Wichita",
                                   "Winston-Salem",
                                   "Worcester"),
                    selected = "Chicago"),
                   
                   h4("Select number of months to predict"),
                   
                   sliderInput("var3", 
                               label = "Months",
                               min = 0, max = 36, value = 12),
                   
                   h4("Model parameters"),
                   
                   helpText("Note:- it takes a few minutes to display the results once the parameters are selected"),
                   
                   sliderInput("p", 
                               label = "p(AR)",
                               min = 0, max = 3, value = 0),
                   sliderInput("d", 
                               label = "d(I)",
                               min = 0, max = 3, value = 1),
                   sliderInput("q", 
                               label = "q(MA)",
                               min = 0, max = 3, value = 2),
                   sliderInput("P", 
                               label = "P(Seasonal AR)",
                               min = 0, max = 3, value = 0),
                   sliderInput("D", 
                               label = "D (Amount of seasonal difference)",
                               min = 0, max = 3, value = 1),
                   sliderInput("Q", 
                               label = "Q (Seasonal MA)",
                               min = 0, max = 3, value = 1)),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel(type = "tabs",
                              tabPanel("Plot", 
                                       h2("Autoplot of the data"),
                                       plotOutput("plot1") %>% withSpinner(color="#0dc5c1"),
                                       h2("Classical Additive decomposition"),
                                       plotOutput("plot2") %>% withSpinner(color="#0dc5c1"),
                                       h2("Classical Multiplicative decomposition"),
                                       plotOutput("plot3") %>% withSpinner(color="#0dc5c1"),
                                       h2("ACF plot"),
                                       plotOutput("plot4") %>% withSpinner(color="#0dc5c1"),
                                       h2("Double differenced acf and pacf plot"),
                                       plotOutput("plot5") %>% withSpinner(color="#0dc5c1")),
                              tabPanel("Forecast Methods", 
                                       h2("Simple forecasting methods Mean , Naive and Seasonal Naive"),
                                       plotOutput("plot6") %>% withSpinner(color="#0dc5c1"),
                                       h2("Seasonal ARIMA model"),
                                       plotOutput("plot7") %>% withSpinner(color="#0dc5c1"),
                                       h2("Seasonal ARIMA model for the selected parameters"),
                                       plotOutput("plot8") %>% withSpinner(color="#0dc5c1")
                                       )
                      )
          )
      )
    )
    )
