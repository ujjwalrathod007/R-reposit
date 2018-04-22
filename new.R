library(shiny)
library(shinydashboard)

data <- readRDS('C:\\users\\UJJVAL\\Desktop\\european_soccer.rds');
ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(
        title = "League",
        selectInput("league","selectleague", c(data$home_team, data$away_team)),
        
        box(
          title = "Controls",
          sliderInput("slider", "Number of observations:", 1, 100, 50))
        
        
        
      ))
  ),
  mainPanel()
)

server <- function(input, output) { 
}

shinyApp(ui, server)
