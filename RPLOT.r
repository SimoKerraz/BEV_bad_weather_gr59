rain <- 40020
fog <- 0
snow <- 0 
night <- 23922
population <- 204894

categories <- c("Rain", "Fog", "Snow", "Night")
frequencies <- c(rain, fog, snow, night) / population

# Calculate the maximum frequency to determine the y-axis limit
max_frequency <- max(frequencies)
ylim <- c(0, max_frequency + 0.2)  # Adjust the value (0.2) to make the y-axis taller

# Set the color palette
colors <- c("lightgray", "#55A868", "#C44E52")

# Create the histogram plot with customizations
barplot(height = frequencies,
        names.arg = categories,
        xlab = "Weather conditions",
        ylab = "Frequency",
        col = colors,
        border = "black",
        ylim = ylim,
        font.axis = 2,  # Increase font size of axis labels
        las = 1,  # Rotate x-axis labels horizontally
        cex.axis = 0.8,  # Reduce the size of the axis labels
        cex.names = 0.8,  # Reduce the size of the category labels
        cex.main = 1,  # Increase the size of the plot title
        cex.lab = 0.9,  # Increase the size of the axis labels
        cex.sub = 0.8,  # Reduce the size of the sub-title
        xpd = TRUE)  # Allow labels to extend beyond the plot area

