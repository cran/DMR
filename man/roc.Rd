\name{roc}
\alias{roc}
\title{ Measures of Performance }
\description{
roc is used for calculating measures of performance such as sensitivity and
specificity when the true and predicted models can be 
described using linear hypotheses. 
}
\usage{ roc(Y0, X0) }
\arguments{
  \item{Y0}{ matrix of linear constraints for the true model's parameters}
  \item{X0}{ matrix of linear constraints for the predicted model's parameters}
}
\value{
a list including elements
  \item{sensitivity }{proportion of the dimension of intersection of linear spaces of parameters for the true and predicted models to the dimension of linear space of parameters for the true model}
  \item{specificity }{proportion of the dimension of intersection of linear spaces that are complements of linear spaces of parameters for the true and predicted models to the dimension of linear space which is a complement of the linaer space of parameters for the true model}
}
\author{ Piotr Pokarowski, Agnieszka Prochenka, Aleksandra Maj }
\seealso{
\code{\link{DMR}}, \code{\link{stepDMR}}, \code{\link{DMR4glm}}, \code{\link{plot_bf}}
}
\examples{
v1 <- factor(rep(1:3, times = 16))
set.seed(1)
x1 <- rnorm(48)
set.seed(2)
y <- x1 + rnorm(48, 0, 3)
m <- lm(y ~ v1 + x1)
out <- DMR(m) 
x0 <- out$Best$Hypotheses
y0 <- matrix(c(0, 0, -1, 1, 1, 0, 0, 0), 2, 4)
measures <- roc(y0, x0)
sen <- measures$sensitivity 
spe <- measures$specificity
}