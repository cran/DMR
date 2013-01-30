\name{plot_bf}
\alias{plot_bf}
\title{ Plot Approximate Bayes Factors }
\description{ plot_bf is used for plotting values of approximate Bayes 
factors for models on the nested path created by DMR, stepDMR or DMR4glm 
algorithm with respect to the best model selected by the procedure. Bayes 
factors are approximated using values of BIC calculated by the function. }
\usage{ plot_bf(m) }
\arguments{
  \item{m}{
 a list obtained from execution of DMR, stepDMR or DMR4glm. 
}
}
\value{
plot of approximate Bayes factors for the models on the path searched through
}
\author{ Piotr Pokarowski, Agnieszka Prochenka, Aleksandra Maj }
\seealso{
\code{\link{DMR}}, \code{\link{stepDMR}}, \code{\link{DMR4glm}}, \code{\link{roc}}
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
out <- DMR(m)
plot_bf(out)
}