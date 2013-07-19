\name{returns}
\alias{returns}
\alias{print.preturns}
\title{
  Compute Returns
}
\description{
  Compute returns of price series.
}
\usage{
returns(x, t = NULL, period = "month", complete.first = TRUE,
        pad = NULL,  position)

\method{print}{preturns}(x, \dots, year.rows)

}
\arguments{
  \item{x}{
    a \code{numeric} vector (possibly with a \code{dim} attribute; ie, a
    matrix) of prices
  }
  \item{t}{
        timestamps. See argument \code{"period"}.
  }
  \item{period}{
       typically character: predefined are "month" and "day". Only
       used if \code{t} is not \code{NULL}.
  }
  \item{complete.first}{
    logical. 
  }
  \item{pad}{
    either \code{NULL} (no padding of initial lost observation) or a value used
    for padding (reasonable values might be \link{NA} or 0)
  }
  \item{position}{
    numeric; the same length/dimension as \code{x}. \strong{Experimental.}
  }
  \item{\dots}{
    further arguments
  }
  \item{year.rows}{
    logical. If \code{TRUE} (the default), print monthly returns with
    one row per year.
  }  
}
\details{

  The function calculates simple returns (ie, current prices divided by
  prior price minus one).
  
}
\value{

  If called as \code{returns(x)}: a numeric vector or matrix.

  If called with a time argument, an object of class "preturns" (period
  returns), which is a list of the dates, the returns and the period. 
  
}
\author{
  Enrico Schumann
}
\seealso{
%  \code{\link{backtest}}
backtest
}
\examples{

x <- 101:112
returns(x)
returns(x, pad = NA)

t <- seq(as.Date("2012-01-01"), as.Date("2012-12-31"), by = "1 day")
x <- seq_along(t) + 1000
returns(x, t = t, period = "month")
returns(x, t = t, period = "month", complete.first = FALSE)

}