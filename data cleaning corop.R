cleaned_pollution_data<- combined_data
cleaned_pollution_data$code <- cleaned_pollution_data$`NUTS Code`
require(stringr)
#test <- test %>% filter(
#       str_detect(^NL(\\d{3}|\\d{2}[A-Z])$))
require(tidyverse)
length(cleaned_pollution_data$code)
cleaned_pollution_data <- cleaned_pollution_data %>%
  dplyr::filter(str_length(code) == 5
  )
cleaned_pollution_data <- cleaned_pollution_data %>%
  filter(
    Category                   == "Mortality",
    Outcome                    == "All causes",
    `Health Indicator`         == "Attributable deaths (AD)",
    Sex                        == "Total",
    `Description Of Age Group` == ">= 30 years of age",
    Scenario                   == "Baseline from WHO 2021 AQG"
  )