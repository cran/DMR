\name{DMR-package}
\alias{DMR-package}
\docType{package}
\title{
Package for performing simultaneous deleting or merging regressors for linear model.
}
\description{
A backward selection procedure called delete or merge regressors (DMR) combines deleting continuous variables with merging levels of factors.
The method assumes greedy search among linear models with set of constraints of two types: either a parameter for a continuous variable is set
to zero or parameters corresponding to two levels of a factor are compared. DMR is a stepwise regression procedure, where in each step a new constraint
is added according to ranking of the hypotheses based on squared t-statistics. As a result a nested family of linear models is obtained and the final
decision is made according to minimization of the generalized information criterion (GIC, default BIC).
The main function of the package is DMR, which is based on hierarchical clustering. Moreover, other functions for extensions of DMR method are given,
such as stepDMR which is based on recalculation of t-statistics in each step and function DMR4glm for generalized linear models.
}
\details{
\tabular{ll}{
Package: \tab DMR\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-02-01\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
}
\author{
Aleksandra Maj, Agnieszka Prochenka, Piotr Pokarowski

Maintainer: <a.maj@phd.ipipan.waw.pl>, <a.prochenka@phd.ipipan.waw.pl>

}
\references{
CIAMPI, A., LECHEVALLIER, Y., LIMAS, M.C., MARCOS A.G. (2008). Hierarchical clustering of subpopulations with a dissimilarity based on the likelihood ratio statistic: application to clustering massive data sets. \emph{Pattern Anal Appl} 11 199-220. \\
BONDELL, H.D. and REICH, B.J. (2009). Simultaneous factor selection and collapsing levels in anova. \emph{Biometrics} 65 169-177. \\
GERTHEISS, J., TUTZ, G. (2010). Sparse modeling of categorical explanatory variables. \emph{The Annals of Applied Statistics} 4 2150-2180. \\
ZHENG, X. and LOH, W.-Y. (1995). Consistent variable selection in linear models. \emph{Journal of the American Statistical Association} 90 151-156.
}
