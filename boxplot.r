data <- read_excel("X:/Stat Comparison/Data_All_OF_US.xlsx", na = c("NULL"))
View(data)
data$Type <- factor(data$Type, labels= c("Project A", "Project B", "Project C"))

##To change the line and fill colours of the box plot,
fill <- "#4271AE"
lines <- "#1F3552"

g1=ggplot(data, aes(x = Type, y = Totalyield)) +   geom_boxplot(colour = lines, fill = fill, size = 1) + ggtitle("Total Raw-Throughput") + theme_bw() + scale_x_discrete(name = "Sample") +   scale_y_continuous(name = "Raw Throughput (bp)" ) + theme(panel.grid.major = element_line(colour = "#d3d3d3"), panel.grid.minor = element_blank(), panel.border = element_blank(), panel.background = element_blank(), plot.title = element_text(size = 14, hjust = 0.5, family = "Tahoma", face = "bold"), text=element_text(family = "Tahoma"), axis.title = element_text(face="bold"), axis.text.x = element_text(colour="black", size = 11), axis.text.y = element_text(colour="black", size = 9), axis.line = element_line(size=0.5, colour = "black"))

g1
plot1 = g1 + geom_jitter()
plot1
