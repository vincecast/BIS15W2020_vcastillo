if (!require("tidyverse")) install.packages('tidyverse')
library("tidyverse")
if (!require("shiny")) install.packages('shiny')
library("shiny")
if (!require("shinydashboard")) install.packages('shinydashboard')
library("shinydashboard")

UC_admit <- readr::read_csv("UC_admit.csv")

enroll_UC <- UC_admit %>%
  select(Category, Campus, Ethnicity, Academic_Yr, FilteredCountFR) %>%
  filter(Category == "Enrollees") %>%
  mutate(Actual_count = log10(FilteredCountFR)) %>%
  pivot_wider(
    names_from = Category,
    values_from = Actual_count) 

ui <- dashboardPage(
  dashboardHeader(title = "UC Enrollment App"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(title = "Plot Options", width = 3,
          selectInput("x", "Select X Variable", choices = c("Academic_Yr", "Campus", "Ethnicity"), 
                      selected = "Academic_Yr"), 
       
          box(title = "Plot of UC Admissions Data", width = 7,
              plotOutput("plot", width = "600px", height = "500px")
          ) 
      ) 
    ) 
  )) 

server <- function(input, output, session) { 
  

  output$plot <- renderPlot({
    ggplot(enroll_UC, aes_string(x = input$x, y = enroll_UC$Enrollees))+
      geom_bar(stat = "identity")+
      theme_light(base_size = 18)
  })
  

  session$onSessionEnded(stopApp)
  
}

shinyApp(ui, server)
