H <- c(12, 35, 54, 3, 41)


barplot(H,
        main = "Customized Bar Plot",
        names.arg = c("A", "B", "C", "D", "E"),  # Specify bar labels
        col = "skyblue",  # Set bar color
        ylab = "Values",  # Label for the y-axis
        xlab = "Categories"  # Label for the x-axis
)
