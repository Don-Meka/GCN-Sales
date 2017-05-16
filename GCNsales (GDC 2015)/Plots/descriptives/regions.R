regions <- c("North America", "Europe", "Japan", "Other")
regions <- as.factor(regions)
regions <- ordered(regions, c("North America", "Europe", "Japan", "Other"))
sales <- c(12.55, 4.44, 4.04, .71)

df <- data.frame(regions, sales)


ggplot(df, aes(y = sales, x = regions, fill = regions)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("North America" = "#0000FF", "Europe" = "#EEEA00", "Japan" = "#C20000", "Other" = "#000000"), guide = FALSE) +
  labs(title = "Regional Console Sales") +
  labs(x = NULL, y = expression('Units Sold '[Millions]*'')) +
  theme(plot.title = element_text(face = "bold")) +
  geom_text(aes(label = sales), size = 4, color = "black", vjust = -.25)