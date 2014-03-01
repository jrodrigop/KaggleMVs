
##Principal component Analysis

pca<-prcomp(DATA,retx=TRUE,center=TRUE,scale=TRUE)
dataframe<-pca$x
## weight of the variables
pca$rotation
##variance explanation
pca$sdev

## lo unico que no me queda claro de esste paquete es como identificar las etiquetas
##a la hora de graficar. hay un ejemplo con las iris de fisher en internet.

##plot
