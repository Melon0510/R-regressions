# Example 3.1 in Woodridge "Introductory Econometrics: A Modern Approach"

data(gpa1, package='wooldridge')

# Just obtain parameter estimates:
lm(colGPA ~ hsGPA+ACT, data=gpa1)

# Store results under "GPAres" and display full table:
GPAres <- lm(colGPA ~ hsGPA+ACT, data=gpa1)
summary(GPAres)
