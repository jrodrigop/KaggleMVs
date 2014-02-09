#Multiple imputation technique 
#import packages MI
#Las guias de uso del metodo, el cran y el paper las subí al drive de aprendizaje de máquina


## S4 method for signature ’data.frame’
imp<-mi(train_v2, info, n.imp = 3, n.iter = 30,
     R.hat = 1.1, max.minutes = 20, rand.imp.method = "bootstrap",
     run.past.convergence = FALSE,
     seed = NA, check.coef.convergence = FALSE,
     add.noise = noise.control())
## S4 method for signature ’mi.preprocessed’
## este algoritmo es para datos preprocesados es decir, transforma las variables
##  las que no se les peude asignar un modelo sencillo con ln y cosas como esas.
train_v2pre <- mi.preprocess(train_v2)
imp2<-mi(train_v2pre, n.imp = 3, n.iter = 30,
   R.hat = 1.1, max.minutes = 20, rand.imp.method = "bootstrap",
   run.past.convergence = FALSE,
   seed = NA, check.coef.convergence = FALSE,
   add.noise = noise.control())
