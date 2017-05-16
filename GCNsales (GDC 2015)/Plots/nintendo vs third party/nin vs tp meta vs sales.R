tp <- GCN2[which(GCN2$Publisher != "Nintendo"), ]
nin <- GCN2[which(GCN2$Publisher == "Nintendo"), ]
group <- rep("Nintendo", times = length(nin$Game))
nin <- cbind(nin, group)
tpx <- tp[which(tp$Exclusivity == "Yes"), ]
group <- rep("Third Party (Exclusive)", times = length(tpx$Game))
tpx <- cbind(tpx, group)
tpm <- tp[which(tp$Exclusivity == "No"), ]
group <- rep("Third Party (Multiplatform)", times = length(tpm$Game))
tpm <- cbind(tpm, group)
df <- rbind(nin, tpm, tpx)


ggplot(df, aes(Metacritic.Score, Sales.Total)) + 
  geom_point(aes(color = group), size = 2) +
  scale_color_manual(values = c("Nintendo" = "#FF0000", "Third Party (Exclusive)" = "#FFFF00", "Third Party (Multiplatform)" = "#0000FF")) + 
  labs(x = "Metacritic Score", y = expression('Total Sales '[Millions]*'')) +
  theme(legend.position = c(.28, .8))