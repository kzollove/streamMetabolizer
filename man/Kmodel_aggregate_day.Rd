% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metab_Kmodel.R
\name{Kmodel_aggregate_day}
\alias{Kmodel_aggregate_day}
\title{Aggregate unit values to daily values}
\usage{
Kmodel_aggregate_day(
  data_ply,
  ply_validity,
  ...,
  columns = c("discharge", "velocity")
)
}
\arguments{
\item{data_ply}{a data.frame containing all relevant, validated modeling data
for a single ply of data. (1 ply ~= 1 date, although the day length has 
been specified by day_start and day_end and may not be exactly 24 hours)}

\item{ply_validity}{the output of \code{mm_is_valid_day} as applied to this 
data_ply for those tests specified in \code{day_tests}. Those tests will 
have been run before this function is called. The result is TRUE if the ply
is entirely valid, or a character vector containing one or more error 
messages if any tests failed.}

\item{...}{other args that were passed untouched from the function calling 
mm_model_by_ply, through mm_model_by_ply, and finally to this function.}

\item{columns}{character vector of names of columns to aggregate}
}
\description{
For use in predicting K
}
\keyword{internal}
