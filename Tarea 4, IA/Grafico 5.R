library(readr)
library(dplyr)
library(ggplot2)

DT5 <- read_delim("http://www.sipen.gob.do/dataset/cantidad_total_de_afiliado.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)


View(DT5)

D<-ggplot(DT5,aes(x=Afiliados)) + geom_bar(fill="purple4") + scale_y_continuous(breaks =seq(0,70,10)) + ggtitle ("Producción de agua, 2014-2021") + 
  theme (plot.title = element_text(family="Comic Sans MS",
                                   size=rel(5),
                                   vjust=5, 
                                   face="bold", 
                                   color="Black", 
                                   lineheight=1.5))
D + theme_classic()
