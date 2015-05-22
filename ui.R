library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculation"),
    sidebarPanel(
      numericInput('height', 'Input your height: m', 1.7),
      numericInput('weight', 'Input your weight: kg', 50),
      submitButton('Submit'),
      
      h4("Documentation: this program takes in your height (in meters) and your weight 
         (in kilograms) and computes your BMI. Please input your height and weight and click 'Submit' button. 
         The result will be shown on the right side. ")
    ),
    mainPanel(
      h1('Compute your BMI'),
      h4('Your height is: '),
      verbatimTextOutput("height"),
      h4('Your weight is: '),
      verbatimTextOutput("weight"),
      h4('Your BMI is: '),
      verbatimTextOutput("bmi")
    )
  )
)