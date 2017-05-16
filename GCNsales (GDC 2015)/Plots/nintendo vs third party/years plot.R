a <- c(as.vector(prop.table(table(GCN2[which(GCN2$Publisher == "Nintendo"), "Release.Year"]))), 0)
b <- c(as.vector(prop.table(table(GCN2[which(GCN2$Publisher != "Nintendo" & GCN2$Exclusivity == "Yes"), "Release.Year" ]))), 0)
c <- as.vector(prop.table(table(GCN2[which(GCN2$Publisher != "Nintendo" & GCN2$Exclusivity == "No"), "Release.Year" ])))
props <- c(a, b, c)
years <- (2001:2007)
groups <- rep("Nintendo", times = 7)
groups <- c(groups, rep("Third Party (Ex)", times = 7))
groups <- c(groups, rep("Third Party (MP)", times = 7))
df <- data.frame(cbind(years, (as.numeric(as.character(props))), groups))

ggplot(df, aes(as.factor(years), props, fill = groups)) +
  geom_bar(stat = "identity") +
  facet_grid(. ~ groups) +
  theme(axis.text.x  = element_text(angle= -90, vjust=0.5, size=10)) +
  labs(x = "Year", y = "Proportion of Games") + 
  guides(fill = FALSE)
