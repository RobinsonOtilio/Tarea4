library(readr)
library(ggplot2)

DT2 <- read_delim("http://www.inm.gob.do/transparencia/index.php/datos-abiertos/category/335-historica-nomina-de-empleados-inmrd-2019-2021?download=893:historica-nomina-de-empleados-inmrd-2019-2021-csv", 
                                                                                                                                ";", escape_double = FALSE, trim_ws = TRUE)
View(DT2)

a<-ggplot(DT2,aes(x=Estatus)) + geom_bar(fill="Green4") +  ggtitle ("Estatus de servicios de Escuela Nacional de Migración ENM, 2018-2020") + 
                                                           theme (plot.title = element_text(family="Comic Sans MS",
                                                           size=rel(5),
                                                           vjust=5, 
                                                           face="bold", 
                                                           color="Black", 
                                                           lineheight=1.5))
a + theme_classic()