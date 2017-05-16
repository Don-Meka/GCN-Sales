years <- names(summary(as.factor(GCN2$Release.Year)))
games <- data.frame(summary(as.factor(GCN2$Release.Year)))[,1]
df <- data.frame(years, games)


ggplot(df, aes(x = years, y = games)) + geom_bar(stat = "identity") + 
  geom_bar(stat = "identity") +
  labs(title = "Number of Games Released by Year") +
  labs(x = NULL, y = NULL) +
  theme(plot.title = element_text(face = "bold")) +
  geom_text(aes(label = games), size = 3, color = "black", vjust = -.5)