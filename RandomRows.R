

#sampling Rows on a DataFrame
randomRows = function(DATA,n)
{
  
  return(DATA[sample(nrow(DATA),n),])
}