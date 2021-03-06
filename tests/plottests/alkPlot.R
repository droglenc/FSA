## Make an example age-length key
WR.age <- subset(WR79, !is.na(age))
WR.age$LCat <- lencat(WR.age$len,w=5)
raw <- xtabs(~LCat+age,data=WR.age)
WR.key <- prop.table(raw, margin=1)

## Various visualizations of the age-length key
alkPlot(WR.key,"barplot")
alkPlot(WR.key,"barplot",pal="gray")
alkPlot(WR.key,"barplot",showLegend=TRUE)
alkPlot(WR.key,"area")
alkPlot(WR.key,"area",showLegend=TRUE)
alkPlot(WR.key,"area",pal="gray")
alkPlot(WR.key,"lines")
alkPlot(WR.key,"lines",pal="gray")
alkPlot(WR.key,"lines",showLegend=TRUE)
alkPlot(WR.key,"splines")
alkPlot(WR.key,"splines",span=0.2)
alkPlot(WR.key,"splines",pal="gray",showLegend=TRUE)
alkPlot(WR.key,"bubble")
alkPlot(WR.key,"bubble",grid=FALSE)
alkPlot(WR.key,"bubble",grid="blue")
alkPlot(WR.key,"bubble",grid=rgb(0,0,0,0.2),col=rgb(0,0,0,0.5))
