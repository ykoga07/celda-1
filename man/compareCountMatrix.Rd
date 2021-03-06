% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/celda_functions.R
\name{compareCountMatrix}
\alias{compareCountMatrix}
\title{Check count matrix consistency}
\usage{
compareCountMatrix(counts, celda.mod, error.on.mismatch = TRUE)
}
\arguments{
\item{counts}{Integer matrix. Rows represent features and columns represent cells.}

\item{celda.mod}{Celda model object.}

\item{error.on.mismatch}{Logical. Whether to throw an error in the event of a mismatch. Default TRUE.}
}
\value{
Returns TRUE if provided count matrix matches the one used in the celda object and/or `error.on.mismatch=FALSE`, FALSE otherwise.
}
\description{
Checks if the counts matrix is the same one used to generate the celda model object by comparing dimensions and MD5 checksum.
}
\examples{
 compareCountMatrix(celda.CG.sim$counts, celda.CG.mod, 
                    error.on.mismatch=FALSE)
}
