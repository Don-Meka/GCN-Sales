regions <- c("North America", "Europe", "Japan", "Other")
regions <- as.factor(regions)
regions <- ordered(regions, c("North America", "Europe", "Japan", "Other"))
salesC <- c(12.55, 4.44, 4.04, .71)
salesG <- c(133.53, 38.71, 22.03, 5.18)
attach <- c(10.64, 9.72, 5.45, 7.3)
df <- data.frame(regions, salesC, salesG, attach)


ggplot(df, aes(y = attach, x = regions, fill = regions)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("North America" = "#0000FF", "Europe" = "#EEEA00", "Japan" = "#C20000", "Other" = "#000000"), guide = FALSE) +
  labs(title = "Regional Console Sales") +
  labs(x = NULL, y = expression('Units Sold'[Millions]*' ')) +
  theme(plot.title = element_text(face = "bold"))

