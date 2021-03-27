library(readr)
library(ggplot2)

DT1 <- read_csv("https://transparencia.uasd.edu.do/sites/default/files/datos_abiertos/doctores_uasd_al_31_diciembre_2020.csv")

cols(
  Sede = col_character(),
  `C<U+663C><U+3E33>digo` = col_double(),
  Nombres = col_character(),
  Apellidos = col_character(),
  Sexo = col_character(),
  Titulo = col_character(),
  Facultad = col_character(),
  Estatus = col_character()
)

View(DT1)

a<-ggplot(DT1,aes(x=Facultad)) + geom_bar(fill="Blue4") +  ggtitle ("Facultad de Doctores de la UASD, en 30 de Junio del 2020") + 
                                 theme (plot.title = element_text(family="Comic Sans MS",
                                 size=rel(5),
                                 vjust=5, 
                                 face="bold", 
                                 color="Black", 
                                 lineheight=1.5))
a + theme_classic()
