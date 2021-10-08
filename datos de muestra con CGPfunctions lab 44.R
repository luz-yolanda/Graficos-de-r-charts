# Hecho con gusto por Luz Yolanda Rivera (UAEH)
# LABORATORIO - Datos de muestra con ggplot2
#################################################
# Objetivo: hacer diversas visualizaciones de datos de muestra con ggplot2
# ------------------------------------------------

#requisitos
#install.packages("CGPfunctions")
library(CGPfunctions)
library(ggplot2)
#install.packages("hrbrthemes")
library(hrbrthemes)
#install.packages("ggthemes")
library(ggthemes)


#Considera el siguiente subconjunto del data frame newgdp de la librería 
#CGPfunctions, que también contiene la función que usaremos en este tutorial.
df <- newgdp[16:30, ]
#visualizamos nuestra data frame
head(df)
#Dado un data frame con al menos tres columna que representan el tiempo (eje X),
#la medida (eje Y) y los grupos puedes crear un gráfico de pendientes en ggplot2 
#haciendo uso de la función newggslopegraph de la librería CGPfunctions pasando 
#el data frame y especificando los nombres de las columnas:

newggslopegraph(dataframe = df,
                Times = Year,
                Measurement = GDP,
                Grouping = Country)

#La función muestra unos títulos por defecto. Si quieres cambiarlos usa 
#los siguientes argumentos. Ten en cuenta que si los estableces 
#como NULL puedes borrarlos.
newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS")

#tamaño y justificación de textos

newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                XTextSize = 18,    # Tamaño textos eje X
                YTextSize = 2,     # Tamaño grupos
                TitleTextSize = 14,    # Tamaño título
                SubTitleTextSize = 12, # Tamaño subtítulo
                CaptionTextSize = 10,  # Tamaño caption
                TitleJustify = "right",    # Justificado título
                SubTitleJustify = "right", # Justificado subtítulo
                CaptionJustify = "left",   # Justificado caption
                DataTextSize = 2.5) # Tamaño de los valores
#Invertir los ejes
newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                ReverseYAxis = TRUE,
                ReverseXAxis = FALSE) 

#cambiar grosor de líneas con linethickness

newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                LineThickness = 0.5)
#unicolor de línea
newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                LineColor = 4)
#Personalizar el color de cada línea
cols <- c("Finland" = "gray", "Canada" = "gray",
          "Italy" = "gray", "US" = "red",
          "Greece" = "gray", "Switzerland" = "gray",
          "Spain" = "green", "Japan" = "gray")

newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                LineColor = cols)

#Diferentes temas con ThemeChoice 
#gdocs
newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                ThemeChoice = "gdocs")
#tufte
newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                ThemeChoice = "tufte")
#wsj
newggslopegraph(df, Year, GDP, Country,
                Title = "Evolución del PIB",
                SubTitle = "1970-1979",
                Caption = "R CHARTS",
                ThemeChoice = "wsj")





