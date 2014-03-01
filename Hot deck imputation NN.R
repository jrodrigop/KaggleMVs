##hot deck imputation package

Dataasmatrix<-data.matrix(Data,rownames.force = NA)

## Nearest neighbour
impute data<- impute.NN_HD(data = Dataasmatrix, distance = "man", weights = "range", attributes = "sim",
             comp = "rw_dist", donor_limit = Inf, optimal_donor = "no",
             list_donors_recipients = NULL)

##get cvs file with the imputed data
write.table(imputeData,file="Dataimpute.csv",sep=",")
