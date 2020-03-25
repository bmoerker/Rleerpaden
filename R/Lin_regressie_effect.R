#' Lin_regressie_effect
#' @export


Data.effect <- function(seed){
  set.seed(seed)

  NN <- round(runif(1,200,400))

  # generate the regression weights
  b0 <- round(runif(1, 8 , 12),2)
  b1 <- round(runif(1, .7 , 1.3),2)
  b2 <- round(runif(1, .2 , .4),2)
  b3 <- round(runif(1, .1 , .2),2)            # verschil tussen ASO en KSO
  b4 <- round(runif(1, -.5 , -.2),2)          # verschil tussen BSO en KSO
  b5 <- round(runif(1, -.4 , -.1),2)          # verschil tussen TSO en KSO

  # random generate predictors and error terms
  X1  <- sample(c(0,1), NN, replace = TRUE)
  X2  <- sample(c(12:18), NN, replace = TRUE)
  X3  <- as.factor(c( rep( c(1:3), each = round(2*NN/7) ), rep( 4,NN - 3*round(2*NN/7))))
  X3  <- factor( X3,
                 levels = c(1, 2, 3,4),
                 labels = c("ASO", "BSO", "TSO", "KSO"))
  X4  <- c( rep( c(b3, b4, b5), each = round(2*NN/7)), rep(0,NN - 3*round(2*NN/7)))
  eps <- rnorm(NN, 0,1)

  Y  <- b0  + b1 *X1 + X4 + eps

  # generate the reference level
  types <- c(1,2,3,4)               # 1= "ASO", 2= "BSO", 3= "TSO", 4="KSO")
  type1 <-sample(types,4)[1]
  a1<-which(types==type1)
  type<-c(type1,types[-a1])


  data_vb <- data.frame(Y,X1,X2,X3)
  return( list( data = data.frame( Y = Y , X1 = X1, X2 = X2, X3 = X3 ), par_values = c(NN, b0, b1, b2, b3, b4, b5), type = type ))
}

