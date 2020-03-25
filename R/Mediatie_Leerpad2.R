#' Lin_regressie_effect
#' @export

Data.mediatie <- function(seed){
  set.seed(seed)

  NN <- round(runif(1,200,400))

  x <- round(runif(NN,0,1))
  a <- rnorm(1,0.3,0.5)
  m <- rnorm(NN,a*x, 0.60)
  b <- rnorm(1, 0.4 ,0.8)
  c <- rnorm(1,1,0.5)
  y <- rnorm(NN,a*x*b*m+c*x,0.40)
  data <- as.data.frame(cbind(x, m, y))

  # generate the regression weights
  return( list( data = data.frame( levenskwaliteit = y , therapie = x,  tp_rel = m ), par_values = c(NN, a, b, c ) ))
}
