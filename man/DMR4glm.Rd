\name{DMR4glm}
\alias{DMR4glm}
\title{Delete or Merge Regressors for Generalized Linear Models}
\description{DMR4glm is a backward model selection procedure which 
simultaneously deletes continuous variables and merges levels of factors. 
It is a generalization of DMR onto generalized linear models, where instead
of squared t-statistics, squared Wald statistics are used.  The final 
model is selected by minimization of generalized information criterion in 
the nested family of models. }
\usage{ DMR4glm(model, K = log(nrow(model$model)), clust.method = 'complete') }
\arguments{
  \item{model}{ initial model of class glm. }
  \item{K}{ penalty for the number of parameters in generalized information criterion, default is log(n). }
  \item{clust.method}{ method of clustering, the same as in \code{\link{hclust}}. }
  }
\value{
a list including elements
  \item{Partitions}{ a list of partitions of factors for the models on the nested path searched through }
  \item{Crit}{ values of generalized information criterion for the models on the nested path searched through }
  \item{LogLik }{values of log-likelihood for the models on the nested path searched through }
  \item{Models}{ a list of models of class glm on the nested path searched through}
  \item{Best}{ a list containing features of the selected model: Partition, Model of class glm, Crit and Hypotheses represesnted as a matrix of lienear hypotheses imposed on the model's parameters}
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{ Piotr Pokarowski, Agnieszka Prochenka, Aleksandra Maj }
\seealso{
\code{\link{DMR}}, \code{\link{stepDMR}}, \code{\link{plot_bf}}, \code{\link{roc}}
}
\examples{
k <- 4
v1 <- factor(rep(1:8, each=12*k))
v2 <- factor(rep(1:4, times = 24*k))
v3 <- factor(rep(1:3, times = 32*k))
x1 <- rnorm(96*k)
x2 <- runif(96*k)
mi <- rep(c(2 , 2, -1, -1, -1, -1, 0, 0), each = 12*k)
y <- rbinom(96*k, 1, exp(mi)/(1+exp(mi)) )
m <- glm(y ~ x1 + x2 + v1 + v2 + v3, family = binomial)
(out <- DMR4glm(m))
}
\keyword{model selection}
