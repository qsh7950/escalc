% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d_from_MSE.R
\name{d_from_MSE}
\alias{d_from_MSE}
\title{Obtain Cohen's \emph{d} from mean squared error}
\usage{
d_from_MSE(MSE, m1, m2, n1, n2, biasCorrect = FALSE)
}
\arguments{
\item{MSE}{A numerical vector with one or more mean squared error values.}

\item{m1, m2}{A numerical vector with the means of the two groups formed by
the dichotomous variable. Note that the \emph{n}th element of these vectors must
correspond to the \emph{n}th elements of the \code{MSE} vector.}

\item{n1, n2}{A numerical vector with the sample sizes of the two groups
formed by the dichotomous variable. Note that the \emph{n}th element of these
vectors must correspond to the \emph{n}th elements of the \code{MSE} vector.}

\item{biasCorrect}{Logical to indicate if the \emph{d}-values should be
bias-corrected. Can also be a vector.}
}
\value{
A data frame with in the first column, Cohen's \code{d} values, and
in the second column, the corresponding variances.
}
\description{
This function converts mean squared error from one-way F tests to Cohen's
\emph{d}.
}
\details{
The formula that is used is the following (see e.g. Thalheimer & Cook,
2002):

\deqn{d= \frac{\hat{x}_1 - \hat{x}_2}
{MSE (\frac{n_1 + n_2 - 2}{n_1 + n_2})}}
}
\examples{
escalc::d_from_MSE(MSE = 2.046,
                   m1 = .024,
                   m2 = .301,
                   n1 = 50,
                   n2 = 50);

}
\references{
Thalheimer, W., & Cook, S. (2002, August). \emph{How to calculate effect sizes from published
research articles: A simplified methodology.}
}
