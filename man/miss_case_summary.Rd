% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miss-x-summary.R
\name{miss_case_summary}
\alias{miss_case_summary}
\title{Summarise the missingness in each case}
\usage{
miss_case_summary(data, order = FALSE, ...)
}
\arguments{
\item{data}{a data.frame}

\item{order}{a logical indicating whether or not to order the result by n_miss. TRUE orders from largest to smallest n_miss, and FALSE orders by order provided by the data.}

\item{...}{extra arguments}
}
\value{
a tibble of the percent of missing data in each case.
}
\description{
Return for each case the number and percent of missing values, ordered by the
most number of missings.
}
\examples{

# works with group_by from dplyr
library(dplyr)
airquality \%>\%
  group_by(Month) \%>\%
  miss_case_summary()

miss_case_summary(airquality)

}
