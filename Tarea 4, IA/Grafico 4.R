library(readr)
library(dplyr)
library(ggplot2)

DT4 <- read_csv("https://coraapplata.gob.do/Files/Coraapplata-6e015397-5638-47e4-98e5-77dd92daa527.csv")

cols(
  `A<U+643C><U+3E31>O` = col_double(),
  MES = col_character(),
  `PRODUCCION GALONES POR MES` = col_double(),
  `PRODUCCION METRO CUBICO POR MES` = col_double()
)

View(DT4)

D<-ggplot(DT4,aes(x=MES)) + geom_bar(fill="Red4") + scale_y_continuous(breaks =seq(0,70,10)) + ggtitle ("Producción de agua, 2014-2021") + 
  theme (plot.title = element_text(family="Comic Sans MS",
                                   size=rel(5),
                                   vjust=5, 
                                   face="bold", 
                                   color="Black", 
                                   lineheight=1.5))
D + theme_classic()
