shinyUI(
 pageWithSidebar(
 headerPanel("Lets Calculate Your Body Mass Index!"),
 sidebarPanel(
 numericInput('weight', 'Weight (Kg)', 0, min = 0, max = 9999, step = 5),
 numericInput('height', 'Height (Mts)', 0, min = 0, max = 9999, step = 5),
 submitButton('Submit')
 ),
 mainPanel(
 h3('Based on the information provided'),
 h4('Your heigh in Meters is'),
 verbatimTextOutput("inputValue1"),
 h4('and your weight in Kilograms is'),
 verbatimTextOutput("inputValue2"),
 h4('Which resulted in a Body Mass Index of '),
 verbatimTextOutput("prediction1"),
h2('Now find your BMI Category:'), 
h5('Underweight = <18.5'),
h5('Normal weight = 18.5–24.9'),
h5('Overweight = 25.0-–29.9 '),
h5('Obesity = BMI of 30 or greater')
 )
 )
)