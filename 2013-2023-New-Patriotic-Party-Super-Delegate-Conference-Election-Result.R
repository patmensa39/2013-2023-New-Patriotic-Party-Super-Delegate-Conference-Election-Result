# Load the ggplot2 library
library(ggplot2)

# Create a data frame with the results
data <- data.frame(
  Candidate = c("Dr Mahamudu Bawumia", "Kennedy Agyapong", "Alan Kwadwo Kyerematen", "Dr Owusu Afriyie Akoto",
                "Francis Addai-Nimo", "Joe Ghartey", "Kwadwo Nsafoa Poku", "Kwabena Agyapong",
                "Boakye Agyarko", "Dr Kofi Konadu Apraku"),
  Votes = c(629, 132, 95, 40, 9, 3, 3, 6, 9, 0)
)

# Create a custom color palette
colors <- c("skyblue", "salmon", "lightgreen", "gold", "royalblue",
            "darkorange", "limegreen", "tomato", "dodgerblue", "gray")

# Create the bar chart with labels
gg <- ggplot(data, aes(x = reorder(Candidate, -Votes), y = Votes, fill = Candidate)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = Votes), vjust = -0.5, color = "black", size = 4) +
  labs(title = "2023 NPP Super Delegate Congress Results",
       x = "Candidate",
       y = "Votes",
       caption = "Prepared by Kwabena Philant") +
  scale_fill_manual(values = colors) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        plot.title = element_text(hjust = 0.5, size = 14, face = "bold", margin = margin(b = 20)))

# Create a density plot of the votes
gg_density <- ggplot(data, aes(x = Votes)) +
  geom_density(color = "blue", size = 1) +
  theme_minimal()

# Combine the bar chart and the density plot
library(gridExtra)
grid.arrange(gg, gg_density, heights = c(3, 1))



# Load the ggplot2 library
library(ggplot2)

# Create a data frame with the 2013 results
data_2013 <- data.frame(
  Candidate = c("Nana Akufo-Addo", "Konadu Appraku", "Addai Nimo", "Alan Kyeramten", "Joe Ghartey", "Asamoah Boateng", "Osei Ameyaw"),
  Votes = c(351, 3, 17, 40, 12, 3, 17)
)

# Create a custom color palette
colors <- c("skyblue", "salmon", "lightgreen", "gold", "royalblue", "darkorange", "limegreen")

# Create the bar chart with labels
ggplot(data_2013, aes(x = reorder(Candidate, -Votes), y = Votes, fill = Candidate)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = Votes), vjust = -0.5, color = "black", size = 4) +
  labs(title = "2013 NPP Super Delegate Congress Results",
       x = "Candidate",
       y = "Votes",
       caption = "Prepared by Kwabena Philant") +
  scale_fill_manual(values = colors) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        plot.title = element_text(hjust = 0.5, size = 14, face = "bold", margin = margin(b = 20)))

