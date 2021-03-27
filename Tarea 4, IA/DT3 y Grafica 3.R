library(readr)
library(ggplot2)

DT3 <- read_csv("http://marina.mil.do/transparencia/personas-detenidas-en-viajes-ilegales?task=callelement&format=raw&item_id=5836&element=257c85fb-4079-48a8-aa9b-88bed5f48db5&method=download")


cols(
  NACIONALIDAD = col_character(),
  CANTIDAD = col_double(),
  MES = col_character(),
  `A<U+613C><U+3E35>O` = col_double()
)

View(DT3)

a<-ggplot(DT3,aes(x=MES)) + geom_bar(fill="Yellow4") + coord_flip() + scale_y_continuous(breaks =seq(0,300,50)) +  ggtitle ("Cantidad de personas detenidas en viajes ilegales, ARD, entre 2018-2021") + 
  theme (plot.title = element_text(family="Comic Sans MS",
                                   size=rel(5),
                                   vjust=5, 
                                   face="bold", 
                                   color="Black", 
                                   lineheight=1.5))
labs(x="MES",y="CANTIDAD")
a + theme_classic()


