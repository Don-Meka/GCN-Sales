console <- c("Playstation 2", "Gamecube", "Xbox")
console <- as.factor(console)
console <- ordered(console, c("Playstation 2", "Gamecube", "Xbox"))
sales <- c(157.68, 21.74, 24.65)
df <- data.frame(console, sales)


ggplot(df, aes(y = sales, x = console, fill = console)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Playstation 2" = "#000000", "Gamecube" = "#4200C0", "Xbox" = "#00B800"), guide = FALSE) +
  labs(title = "Gamecube V.S. Competition") +
  labs(x = NULL, y = expression('Units Sold '[Millions]*'')) +
  theme(plot.title = element_text(face = "bold")) + 
  geom_text(aes(label = sales), size = 4, color = "black", vjust = -.25)
