#nota a la base de datos genersagignificativas hay que quitarle la variable loss
#y la variable id
#falta agregar el predictor as factor
generaSignificativasCSV$loss<-NULL
generaSignificativasCSV$id<-NULL

gbm.2 <- function(n.trees, shrinkage, interaction.depth, bag.fraction){
  fit.boost <- gbm(Debe~.,
                   data=generaSignificativasCSV,
                   n.trees=n.trees,
                   distribution = "bernoulli",
                   shrinkage=shrinkage,
                   interaction.depth = interaction.depth,
                   bag.fraction = bag.fraction,
                   train.fraction=0.8,
                   n.minobsinnode = 10,
                   cv.folds=0,
                   keep.data=TRUE,
                   verbose=TRUE
  )
  fit.boost
}
#Nota1: cuando hacemos shrinkage mÃ¡s chico, hay que aumentar n.trees

mod1 <- gbm.2(n.trees=100, shrinkage=0.07, interaction.depth=6, bag.fraction=0.2)


#error de validacion cruzada
mod1$valid.error
# prediccion con el test
#pred.test <- predict(fit.boost, data.f.test, n.trees=1500)
