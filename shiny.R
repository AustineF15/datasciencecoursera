# server.R

library(shiny)

# Load the breast cancer data
breast_cancer <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidyverse-book/master/data/breast_cancer.csv")

# Create a reactive function to predict the survival rate
predict_survival <- reactive({
  # Extract the relevant variables from the data
  age <- breast_cancer$age
  grade <- breast_cancer$grade
  size <- breast_cancer$size

  # Fit a logistic regression model to predict the survival rate
  model <- glm(survival ~ age + grade + size, data = breast_cancer)

  # Predict the survival rate for the given patient characteristics
  predictions <- predict(model, newdata = data.frame(age = age, grade = grade, size = size), type = "response")

  # Return the predicted survival rate
  predictions
})

# ui.R

library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Breast Cancer Survival Rate Prediction"),

    # Create an input panel for the patient characteristics
    sidebarLayout(
      sidebarPanel(
        textInput("age", "Age"),
        selectInput("grade", "Grade", choices = c(1, 2, 3)),
        selectInput("size", "Size", choices = c(T, F))
      ),

      # Display the predicted survival rate in the main panel
      mainPanel(
        textOutput("prediction")
      )
    )
  )
)
