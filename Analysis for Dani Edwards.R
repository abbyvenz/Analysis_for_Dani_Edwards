# Preliminary Set-Up...

## Reading in data & naming it:
data <- read.csv("https://raw.githubusercontent.com/abbyvenz/Analysis_for_Dani_Edwards/main/Dani%20Edwards%20Pre%20%26%20Post%20Combined%20Data%20.csv")

## Loading necessary packages:
library(tidyverse)
install.packages('rstatix'); library(rstatix)


## Cleaning the data: 
## *removing participants w/ blank responses & those who didn't participate in the intervention
clean.data = data %>% drop_na()
clean.data = clean.data[clean.data$Participated.in.Intervention.=='Yes',]



# Analyzing the Data...

## Summary Statistics of Pre- and Post-Intervention Questions:
get_summary_stats(clean.data[,-c(1,6)], type = "mean_sd")

## Two-Sample Paired t-Tests for Differences in Means:
### Q1-
t.test(clean.data$A.clinical.ladder.opportunity.1, clean.data$A.clinical.ladder.opportunity, paired = TRUE)

### Q2-
t.test(clean.data$Career.development.continuing.education.opportunities.1, clean.data$Career.development.continuing.education.opportunities, paired = TRUE)

### Q3-
t.test(clean.data$Support.for.pursuing.nursing.degrees.1, clean.data$Support.for.pursuing.nursing.degrees, paired = TRUE)

### Q4-
t.test(clean.data$Regular.in.service.programs.1, clean.data$Regular.in.service.programs, paired = TRUE)

