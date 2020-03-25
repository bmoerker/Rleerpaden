#' Lin_regressie_leerpad1
#' @export
Data.lin.regressie <- function(seed){
  set.seed(seed)
  NN <- round(runif(1,31,100))
  b0<-1
  b1<- rnorm(1,-0.9,0.7)
  b2 <- rnorm(1,1.9,0.3)
  med <-round(runif(NN,0,10))
  netw <- round(runif(NN,0,10))
  depr<-rnorm(NN,b0+b1*med+b2*netw,0.60)
  data <- as.data.frame(cbind(med, netw, depr))

  return( list( data = data.frame( depressie = depr , antidepressivum = med, netw = netw ), par_values = c(NN, b0, b1, b2) ))
}
