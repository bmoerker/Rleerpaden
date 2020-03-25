#' Lin_regressie_effect
#' @export

Data.interactie <- function(seed){
  set.seed(seed)
  n<-round(runif(1,40,80))
  ntot<-n*3

  ability<-rnorm(ntot,50,15)
  score<-vector("numeric",ntot)
  conditie<-c(rep(1,n),rep(2,n),rep(3,n))
  conditie  <- factor( conditie,
                       levels = c(1, 2, 3),
                       labels = c("1", "2", "3" ))

  score[conditie==1]<-62+0.4*ability[conditie==1]+rnorm(n,0,15)
  score[conditie==2]<-52+0.4*ability[conditie==2]+rnorm(n,0,15)
  score[conditie==3]<-38+0.4*ability[conditie==3]+rnorm(n,0,15)

  ability[ability<1]<-2
  ability[ability>100]<-99

  score[score<1]<-2
  score[score>100]<-99

  trekking<-sample(c(1,2,3),3,replace=FALSE)

  return( list( data = data.frame( score = score , ability = ability, conditie = conditie ), par_values = c(ntot, trekking[1]) ))
}
