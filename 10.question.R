# a. Grouped Bar Chart for Question 1
library(ggplot2)
survey_responses <- data.frame(
  "Survey ID" = c(1, 2, 3),
  "Question_1" = c("A", "B", "C"),
  "Question_2" = c("B", "A", "A"),
  "Question_3" = c("C", "D", "B")
)

# Create and print the grouped bar chart
p <- ggplot(survey_responses, aes(x = factor(`Survey ID`), fill = Question_1)) +
  geom_bar(position = "dodge") +
  labs(title = "Distribution of Answers for Question 1",
       x = "Survey ID",
       y = "Count",
       fill = "Answer")

# b. Stacked Bar Chart for Overall Distribution
library(tidyr)
library(ggplot2)
survey_responses <- data.frame(
  "Survey ID" = c(1, 2, 3),
  "Question_1" = c("A", "B", "C"),
  "Question_2" = c("B", "A", "A"),
  "Question_3" = c("C", "D", "B")
)

survey_responses_long <- pivot_longer(survey_responses, cols = starts_with("Question"), names_to = "Question", values_to = "Response")

ggplot(survey_responses_long, aes(x = factor(`Survey ID`), fill = Response)) +
  geom_bar() +
  labs(title = "Overall Distribution of Survey Responses",
       x = "Survey ID",
       y = "Count",
       fill = "Response")


# c. Table
library(DT)

datatable(survey_responses, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
