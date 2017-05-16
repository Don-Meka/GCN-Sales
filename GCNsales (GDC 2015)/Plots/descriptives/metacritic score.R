ggplot(GCN2, aes(Metacritic.Score)) +
  geom_histogram(binwidth = 2, color = "white", fill = "black") +
  labs(x = "Metacritic Score", y = "Count") 