\name{DMR}
\alias{DMR}
\title{Delete or Merge Regressors}
\description{DMR is a stepwise backward model selection procedure which 
simultaneously deletes continuous variables and merges levels of factors. 
It is based on ranking linear hypotheses with squared t-statistics, using 
hierarchical clustering for each categorical variable. The final model
is selected by minimization of generalized information criterion in the 
nested family of models. }
\usage{ DMR(model, K = log(nrow(model$model)), clust.method = "complete") }
\arguments{
  \item{model}{ initial model of class lm. }
  \item{K}{ penalty for the number of parameters in generalized information criterion, default is log(n). }
  \item{clust.method}{ method of clustering the same as in \code{\link{hclust}}. }
}
\value{
a list including elements
  \item{Partitions }{a list of partitions of factors for the models on the nested path searched through }
  \item{Crit }{values of generalized information criterion for the models on the nested path searched through }
  \item{LogLik }{values of log-likelihood for the models on the nested path searched through }
  \item{Best }{a list containing features of the selected model: Partition, Model of class lm, Crit and Hypotheses represesnted as a matrix of lienear hypotheses imposed on the model's parameters}
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{ Piotr Pokarowski, Agnieszka Prochenka, Aleksandra Maj }
\seealso{
\code{\link{stepDMR}}, \code{\link{DMR4glm}}, \code{\link{plot_bf}}, \code{\link{roc}}
}
\examples{
k=4
v1 <- factor(rep(1:8, each = 12*k))
v2 <- factor(rep(1:4, times = 24*k))
v3 <- factor(rep(1:3, times = 32*k))
x1 <- rnorm(96*k)
x2 <- runif(96*k)
y <- rep(c(2, 2, -1, -1, -1, -1, 0, 0), each = 12*k) + rnorm(96*k)
m <- lm(y ~ v1 + v2 + v3 + x1 + x2)
(out <- DMR(m))
}
\keyword{model selection}
