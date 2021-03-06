# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
  shinyUI(fluidPage(h1("header"),
                   selectInput("x_var", label = "X", choices = select_values, selected = "displ"),
                   selectInput("y_var", label = "Y", choices = select_values, selected = "cyl"),
                   sliderInput("size", label = "size", min = 1, max = 10, value = 5),
                   selectInput("color", label = "color",
                               choices = list("Red" = "red", "Blue" = "blue", "Green" = "green")),
                   plotOutput("scatter")))
  # A page header


  # Add a select input for the x variable


  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices



  # Plot the output with the name "scatter"
