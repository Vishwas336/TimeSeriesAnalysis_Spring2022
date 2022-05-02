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
library(fpp3)
library(GGally)
library(sugrrants)
library(timetk)
library(feasts)
library(forecast)
library(fable)
library(ggplot2)
library(dplyr)

dataset <- readRDS("data/dataset.rds")

Akron <- dataset %>%
  filter(RegionName == "Akron") %>%
  select(date,Price)
Albany <- dataset %>%
  filter(RegionName == "Albany") %>%
  select(date,Price)
Albuquerque <- dataset %>%
  filter(RegionName == "Albuquerque") %>%
  select(date,Price)
Allentown <- dataset %>%
  filter(RegionName == "Allentown") %>%
  select(date,Price)
Atlanta <- dataset %>%
  filter(RegionName == "Atlanta") %>%
  select(date,Price)
Austin <- dataset %>%
  filter(RegionName == "Austin") %>%
  select(date,Price)
Bakersfield <- dataset %>%
  filter(RegionName == "Bakersfield") %>%
  select(date,Price)
Baltimor <- dataset %>%
  filter(RegionName == "Baltimore") %>%
  select(date,Price)
Baton_rouge <- dataset %>%
  filter(RegionName == "Baton Rouge") %>%
  select(date,Price)
Birmingham <- dataset %>%
  filter(RegionName == "Birmingham") %>%
  select(date,Price)
Boise_City <- dataset %>%
  filter(RegionName == "Boise City") %>%
  select(date,Price)
Boston <- dataset %>%
  filter(RegionName == "Boston") %>%
  select(date,Price)
Buffalo <- dataset %>%
  filter(RegionName == "Buffalo") %>%
  select(date,Price)
Charleston <- dataset %>%
  filter(RegionName == "Charleston") %>%
  select(date,Price)
Charlotte <- dataset %>%
  filter(RegionName == "Charlotte") %>%
  select(date,Price)
Chicago <- dataset %>%
  filter(RegionName == "Chicago") %>%
  select(date,Price)
Cincinnati <- dataset %>%
  filter(RegionName == "Cincinnati") %>%
  select(date,Price)
Cleveland <- dataset %>%
  filter(RegionName == "Cleveland") %>%
  select(date,Price)
Colorado_Springs <- dataset %>%
  filter(RegionName == "Colorado Springs") %>%
  select(date,Price)
Columbia <- dataset %>%
  filter(RegionName == "Columbia") %>%
  select(date,Price)
Columbus <- dataset %>%
  filter(RegionName == "Columbus") %>%
  select(date,Price)
Dallas_Fort_Worth <- dataset %>%
  filter(RegionName == "Dallas-Fort Worth") %>%
  select(date,Price)
Dayton <- dataset %>%
  filter(RegionName == "Dayton") %>%
  select(date,Price)
Daytona_Beach <- dataset %>%
  filter(RegionName == "Daytona Beach") %>%
  select(date,Price)
Denver <- dataset %>%
  filter(RegionName == "Denver") %>%
  select(date,Price)
Des_Moines <- dataset %>%
  filter(RegionName == "Des Moines") %>%
  select(date,Price)
Detroit <- dataset %>%
  filter(RegionName == "Detroit") %>%
  select(date,Price)
Durham <- dataset %>%
  filter(RegionName == "Durham") %>%
  select(date,Price)
El_Paso <- dataset %>%
  filter(RegionName == "El Paso") %>%
  select(date,Price)
Fort_Collins <- dataset %>%
  filter(RegionName == "Fort Collins") %>%
  select(date,Price)
Fort_Myers <- dataset %>%
  filter(RegionName == "Fort Myers") %>%
  select(date,Price)
Fresno <- dataset %>%
  filter(RegionName == "Fresno") %>%
  select(date,Price)
Grand_Rapids <- dataset %>%
  filter(RegionName == "Grand Rapids") %>%
  select(date,Price)
Greensboro <- dataset %>%
  filter(RegionName == "Greensboro") %>%
  select(date,Price)
Greenville <- dataset %>%
  filter(RegionName == "Greenville") %>%
  select(date,Price)
Hartford <- dataset %>%
  filter(RegionName == "Hartford") %>%
  select(date,Price)
Houston <- dataset %>%
  filter(RegionName == "Houston") %>%
  select(date,Price)
Indianapolis <- dataset %>%
  filter(RegionName == "Indianapolis") %>%
  select(date,Price)
Jacksonville <- dataset %>%
  filter(RegionName == "Jacksonville") %>%
  select(date,Price)
Kansas_City <- dataset %>%
  filter(RegionName == "Kansas City") %>%
  select(date,Price)
Knoxville <- dataset %>%
  filter(RegionName == "Knoxville") %>%
  select(date,Price)
Lakeland <- dataset %>%
  filter(RegionName == "Lakeland") %>%
  select(date,Price)
Las_Vegas <- dataset %>%
  filter(RegionName == "Las Vegas") %>%
  select(date,Price)
Little_Rock <- dataset %>%
  filter(RegionName == "Little Rock") %>%
  select(date,Price)
Los_Angeles_Long_Beach_Anaheim <- dataset %>%
  filter(RegionName == "Los Angeles-Long Beach-Anaheim") %>%
  select(date,Price)
Louisville_Jefferson_County <- dataset %>%
  filter(RegionName == "Louisville-Jefferson County") %>%
  select(date,Price)
Madison <- dataset %>%
  filter(RegionName == "Madison") %>%
  select(date,Price)
McAllen <- dataset %>%
  filter(RegionName == "McAllen") %>%
  select(date,Price)
Memphis <- dataset %>%
  filter(RegionName == "Memphis") %>%
  select(date,Price)
Miami_Fort_Lauderdale <- dataset %>%
  filter(RegionName == "Miami-Fort Lauderdale") %>%
  select(date,Price)
Milwaukee <- dataset %>%
  filter(RegionName == "Milwaukee") %>%
  select(date,Price)
Minneapolis_St_Paul <- dataset %>%
  filter(RegionName == "Minneapolis-St Paul") %>%
  select(date,Price)
Nashville <- dataset %>%
  filter(RegionName == "Nashville") %>%
  select(date,Price)
New_Haven <- dataset %>%
  filter(RegionName == "New Haven") %>%
  select(date,Price)
New_Orleans <- dataset %>%
  filter(RegionName == "New Orleans") %>%
  select(date,Price)
New_York <- dataset %>%
  filter(RegionName == "New York") %>%
  select(date,Price)
North_Port_Sarasota_Bradenton <- dataset %>%
  filter(RegionName == "North Port-Sarasota-Bradenton") %>%
  select(date,Price)
Ogden <- dataset %>%
  filter(RegionName == "Ogden") %>%
  select(date,Price)
Oklahoma_City <- dataset %>%
  filter(RegionName == "Oklahoma City") %>%
  select(date,Price)
Omaha <- dataset %>%
  filter(RegionName == "Omaha") %>%
  select(date,Price)
Orlando <- dataset %>%
  filter(RegionName == "Orlando") %>%
  select(date,Price)
Philadelphia <- dataset %>%
  filter(RegionName == "Philadelphia") %>%
  select(date,Price)
Phoenix <- dataset %>%
  filter(RegionName == "Phoenix") %>%
  select(date,Price)
Pittsburgh <- dataset %>%
  filter(RegionName == "Pittsburgh") %>%
  select(date,Price)
Portland <- dataset %>%
  filter(RegionName == "Portland") %>%
  select(date,Price)
Providence <- dataset %>%
  filter(RegionName == "Providence") %>%
  select(date,Price)
Provo <- dataset %>%
  filter(RegionName == "Provo") %>%
  select(date,Price)
Raleigh <- dataset %>%
  filter(RegionName == "Raleigh") %>%
  select(date,Price)
Richmond <- dataset %>%
  filter(RegionName == "Richmond") %>%
  select(date,Price)
Riverside <- dataset %>%
  filter(RegionName == "Riverside") %>%
  select(date,Price)
Rochester <- dataset %>%
  filter(RegionName == "Rochester") %>%
  select(date,Price)
Sacramento <- dataset %>%
  filter(RegionName == "Sacramento") %>%
  select(date,Price)
Salt_Lake_City <- dataset %>%
  filter(RegionName == "Salt Lake City") %>%
  select(date,Price)
San_Antonio <- dataset %>%
  filter(RegionName == "San Antonio") %>%
  select(date,Price)
San_Diego <- dataset %>%
  filter(RegionName == "San Diego") %>%
  select(date,Price)
San_Francisco <- dataset %>%
  filter(RegionName == "San Francisco") %>%
  select(date,Price)
San_Jose <- dataset %>%
  filter(RegionName == "San Jose") %>%
  select(date,Price)
Seattle <- dataset %>%
  filter(RegionName == "Seattle") %>%
  select(date,Price)
Springfield <- dataset %>%
  filter(RegionName == "Springfield") %>%
  select(date,Price)
St_Louis <- dataset %>%
  filter(RegionName == "St. Louis") %>%
  select(date,Price)
Stamford <- dataset %>%
  filter(RegionName == "Stamford") %>%
  select(date,Price)
Stockton <- dataset %>%
  filter(RegionName == "Stockton") %>%
  select(date,Price)
Syracuse <- dataset %>%
  filter(RegionName == "Syracuse") %>%
  select(date,Price)
Tampa <- dataset %>%
  filter(RegionName == "Tampa") %>%
  select(date,Price)
Toledo <- dataset %>%
  filter(RegionName == "Toledo") %>%
  select(date,Price)
Tucson <- dataset %>%
  filter(RegionName == "Tucson") %>%
  select(date,Price)
Tulsa <- dataset %>%
  filter(RegionName == "Tulsa") %>%
  select(date,Price)
United_States <- dataset %>%
  filter(RegionName == "United States") %>%
  select(date,Price)
Urban_Honolulu <- dataset %>%
  filter(RegionName == "Urban Honolulu") %>%
  select(date,Price)
Ventura <- dataset %>%
  filter(RegionName == "Ventura") %>%
  select(date,Price)
Virginia_Beach <- dataset %>%
  filter(RegionName == "Virginia Beach") %>%
  select(date,Price)
Washington <- dataset %>%
  filter(RegionName == "Washington") %>%
  select(date,Price)
Wichita <- dataset %>%
  filter(RegionName == "Wichita") %>%
  select(date,Price)
Winston_Salem <- dataset %>%
  filter(RegionName == "Winston-Salem") %>%
  select(date,Price)
Worcester <- dataset %>%
  filter(RegionName == "Worcester") %>%
  select(date,Price)

# Define server logic required to draw a histogram
shinyServer(server <- function(input, output) {
  output$plot1 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    autoplot(data)
  })
  output$plot2 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    data %>%
      model(
        classical_decomposition(Price, type = "additive")
      ) %>%
      components() %>%
      autoplot() 
  })
  output$plot3 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    data %>%
      model(
        classical_decomposition(Price, type = "multiplicative")
      ) %>%
      components() %>%
      autoplot()

  })
  output$plot4 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    data %>%
      ACF(Price) %>%
      autoplot()
  })
  output$plot5 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    data %>%
      gg_tsdisplay(difference(Price, 12) %>% difference(),
                   plot_type='partial', lag=36) +
      labs(title = "Double differenced", y="")
  })
  output$plot6 <- renderPlot({
    #data2 <- switch(input$var2,
                   #"Seasonal ARIMA" = SARIMA,
                   #"Mean" = Mean,
                   #"Naive" = Naive,
                   #"Seasonal Naive" = Snaive)
    
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    
    train <- data %>%
      filter_index("2016 Jan" ~ "2021 Dec")
    # Fit the models
    fit <- train %>%
      model(
        Mean = MEAN(Price),
        `Naïve` = NAIVE(Price),
        `Seasonal naïve` = SNAIVE(Price)
      )
    # Generate forecasts for 14 quarters
    data_fc <- fit %>% forecast(h = input$var3)
    # Plot forecasts against actual values
    data_fc %>%
      autoplot(data, level = NULL) +
      autolayer(
        filter_index(data, "2022 Jan" ~ .),
        colour = "black"
      ) +
      labs(y = "Price") +
      guides(colour = guide_legend(title = "Forecast"))
  })
  
  output$plot7 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    
    fit <- data %>%
      model(
        #arima_user_selected = ARIMA(Price ~ pdq(input$p,input$d,input$q) + PDQ(input$P,input$D,input$Q)),
        auto = ARIMA(Price, stepwise = FALSE, approx = FALSE)
      )
    
    forecast(fit, h=input$var3) %>%
      filter(.model=='auto') %>%
      autoplot(data) +
      labs(y="Price")
  })
  output$plot8 <- renderPlot({
    data <- switch(input$var, 
                   "Akron" = Akron,
                   "Albany" = Albany,
                   "Albuquerque" = Albuquerque,
                   "Allentown" = Allentown,
                   "Atlanta" = Atlanta,
                   "Austin" = Austin,
                   "Bakersfield" = Bakersfield,
                   "Baltimore" = Baltimore,
                   "Baton Rouge" = Baton_Rouge,
                   "Birmingham" = Birmingham,
                   "Boise City" = Boise_City,
                   "Boston" = Boston,
                   "Buffalo" = Buffalo,
                   "Charleston" = Charleston,
                   "Charlotte" = Charlotte,
                   "Chicago" = Chicago,
                   "Cincinnati" = Cincinnati,
                   "Cleveland" = Cleveland,
                   "Colorado Springs" = Colorado_Springs,
                   "Columbia" = Columbia,
                   "Columbus" = Columbus,
                   "Dallas-Fort Worth" = Dallas_Fort_Worth,
                   "Dayton" = Dayton,
                   "Daytona Beach" = Daytona_Beach,
                   "Denver" = Denver,
                   "Des Moines" = Des_Moines,
                   "Detroit" = Detroit,
                   "Durham" = Durham,
                   "El Paso" = El_Paso,
                   "Fort Collins" = Fort_Collins,
                   "Fort Myers" = Fort_Myers,
                   "Fresno" = Fresno,
                   "Grand Rapids" = Grand_Rapids,
                   "Greensboro" = Greensboro,
                   "Greenville" = Greenville,
                   "Hartford" = Hartford,
                   "Houston" = Houston,
                   "Indianapolis" = Indianapolis,
                   "Jacksonville" = Jacksonville,
                   "Kansas City" = Kansas_City,
                   "Knoxville" = Knoxville,
                   "Lakeland" = Lakeland,
                   "Las Vegas" = Las_Vegas,
                   "Little Rock" = Little_Rock,
                   "Los Angeles-Long Beach-Anaheim" = Los_Angeles_Long_Beach_Anaheim,
                   "Louisville-Jefferson County" = Louisville_Jefferson_County,
                   "Madison" = Madison,
                   "McAllen" = McAllen,
                   "Memphis" = Memphis,
                   "Miami-Fort Lauderdale" = Miami_Fort_Lauderdale,
                   "Milwaukee" = Milwaukee,
                   "Minneapolis-St Paul" = Minneapolis_St_Paul,
                   "Nashville" = Nashville,
                   "New Haven" = New_Haven,
                   "New Orleans" = New_Orleans,
                   "New York" = New_York,
                   "North Port-Sarasota-Bradenton" = North_Port_Sarasota_Bradenton,
                   "Ogden" = Ogden,
                   "Oklahoma City" = Oklahoma_City,
                   "Omaha" = Omaha,
                   "Orlando" = Orlando,
                   "Philadelphia" = Philadelphia,
                   "Phoenix" = Phoenix,
                   "Pittsburgh" = Pittsburgh,
                   "Portland" = Portland,
                   "Providence" = Providence,
                   "Provo" = Provo,
                   "Raleigh" = Raleigh,
                   "Richmond" = Richmond,
                   "Riverside" = Riverside,
                   "Rochester" = Rochester,
                   "Sacramento" = Sacramento,
                   "Salt Lake City" = Salt_Lake_City,
                   "San Antonio" = San_Antonio,
                   "San Diego" = San_Diego,
                   "San Francisco" = San_Francisco,
                   "San Jose" = San_Jose,
                   "Seattle" = Seattle,
                   "Springfield" = Springfield,
                   "St. Louis" = St_Louis,
                   "Stamford" = Stamford,
                   "Stockton" = Stockton,
                   "Syracuse" = Syracuse,
                   "Tampa" = Tampa,
                   "Toledo" = Toledo,
                   "Tucson" = Tucson,
                   "Tulsa" = Tulsa,
                   "United States" = United_States,
                   "Urban Honolulu" = Urban_Honolulu,
                   "Ventura" = Ventura,
                   "Virginia Beach" = Virginia_Beach,
                   "Washington" = Washington,
                   "Wichita" = Wichita,
                   "Winston-Salem" = Winston_Salem,
                   "Worcester" = Worcester)
    
    fit <- data %>%
      model(
        arima_user_selected = ARIMA(Price ~ pdq(input$p,input$d,input$q) + PDQ(input$P,input$D,input$Q)),
        #auto = ARIMA(Price, stepwise = FALSE, approx = FALSE)
      )
    
    forecast(fit, h=input$var3) %>%
      filter(.model=='arima_user_selected') %>%
      autoplot(data) +
      labs(y="Price")
  })
  
})
