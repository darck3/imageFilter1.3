% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filters.R
\name{cutoff_filter}
\alias{cutoff_filter}
\title{Cutoff filter}
\usage{
cutoff_filter(rgb_vec, cutoff = 127)
}
\arguments{
\item{rgb_vec}{A vector of 3 raw values representing Red, Green, and Blue.}

\item{cutoff}{A numeric value (default = 127). Pixels with greyscale value below the cutoff become black; others become magenta.}
}
\value{
A transformed RGB vector as a raw vector of length 3.
}
\description{
Applies a binary cutoff transformation to a single RGB vector.
}
