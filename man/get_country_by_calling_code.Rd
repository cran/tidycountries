% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core.R
\name{get_country_by_calling_code}
\alias{get_country_by_calling_code}
\title{get_country_by_calling_code}
\usage{
get_country_by_calling_code(call_code, geometry = FALSE)
}
\arguments{
\item{call_code}{A character string representing the calling code, root calling code, or suffix. The input is case-insensitive.}

\item{geometry}{A logical value indicating whether to include geographic boundary data. Defaults to \code{FALSE}.
If \code{TRUE}, the function performs a left join with boundary data and returns a spatial \code{sf} data frame.}
}
\value{
A data frame containing the information of countries corresponding to the specified calling code, root, or suffixes.
If \code{geometry = TRUE}, the result will include an additional column for geographic boundaries (as spatial features).
}
\description{
This function retrieves information about countries based on a specified calling code or part of it.
The input can be a root calling code, suffix, or a full calling code, and the function is case-insensitive.
}
\note{
The function utilizes the pre-loaded \code{restcountries_data} dataset. Ensure that this dataset is loaded before invoking the function.
If \code{geometry = TRUE}, the function joins with the \code{world_administrative_boundaries} dataset, which must also be pre-loaded.
}
\examples{
\donttest{
# Example usage: Find country information by root calling code
us_info <- get_country_by_calling_code("+1")
print(us_info)

# Example usage: Find country information by calling code suffix and include geometry
uk_info <- get_country_by_calling_code("44", geometry = TRUE)
print(uk_info)

# Example usage: Find country information by full calling code
india_info <- get_country_by_calling_code("+91")
print(india_info)
}
}
