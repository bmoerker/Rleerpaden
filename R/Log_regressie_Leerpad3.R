#' Lin_regressie_effect
#' @export

Data.logistic <- function(seed){
  set.seed(seed*3.14)

  NN <- round(runif(1,400,600))

  a <- runif(1, .1, .15)
  b <- runif(1, .1 , .3)
  c <- runif(1, -.2, -.1)

  X1 = rnorm(NN, 5,1)           # some continuous variables
  X2 = rnorm(NN)

  educlev <- as.integer(cut(X2, breaks=c(-Inf,qnorm(.35), qnorm(.65),Inf)))

  HV_X21 <- HV_X22 <- rep(NA,NN)

  HV_X21[educlev ==1] <- 1
  HV_X21[educlev ==2] <- 0
  HV_X21[educlev ==3] <- 0

  HV_X22[educlev ==1] <- 0
  HV_X22[educlev ==2] <- 1
  HV_X22[educlev ==3] <- 0

  z = 1 + a*X1 + b*HV_X21 + c*HV_X22   # linear combination with a bias
  pr = 1/(1+exp(-z))         # pass through an inv-logit function
  Y = rbinom( NN ,1, pr)      # bernoulli response variable

  data <- as.data.frame(cbind(X1,X2,Y))
  educlev <- factor(educlev,
                    levels = c( 1,2,3),
                    labels = c( "ASO", "BSO", "TSO" ))

  # generate the regression weights
  return( list( data = data.frame( Geslaagd = Y , Uren_studie = X1, Opleidingsniveau = educlev), par_values = c(NN, a, b, c ) ))

}
