if (!require("tidyverse")) install.packages('tidyverse')
library("tidyverse")
if (!require("shiny")) install.packages('shiny')
library("shiny")
if (!require("shinydashboard")) install.packages('shinydashboard')
library("shinydashboard")

UC_admit <- readr::read_csv("UC_admit.csv")

tidy_UCadmit2 <- UC_admit %>%
  select(Academic_Yr, Campus, Ethnicity, Category, FilteredCountFR) %>%
  pivot_wider(names_from = Category,
              values_from = FilteredCountFR)

ui <- dashboardPage(
  dashboardHeader(title = "UC Admissions App"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(title = "Plot Options", width = 3,
          selectInput("x", "Select X Variable", choices = c("Academic_Yr", "Campus"), 
                      selected = "Academic_Yr"), 
          selectInput("y", "Select Y Variable", choices = c("Admits", "Applicants", "Enrollees"),
                      selected = "Admits"),# close the first box
          box(title = "Plot of UC Admissions Data", width = 7,
              plotOutput("plot", width = "600px", height = "500px")
          ) # close the second box
      ) # close the row
    ) # close the dashboard body
  )) # close the ui

server <- function(input, output, session) { 
  
  # the code to make the plot of iris data grouped by species
  output$plot <- renderPlot({
    ggplot(tidy_UCadmit2, aes_string(x = input$x, y = input$y, col = "Ethnicity"))+
      geom_bar(stat = "identity")+
      theme_light(base_size = 10)
  })
  
  # stop the app when we close it
  session$onSessionEnded(stopApp)
  
}

shinyApp(ui, server)
