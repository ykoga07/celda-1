% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_dr.R
\name{celdaTsne}
\alias{celdaTsne}
\title{Runs tSNE via Rtsne based on the CELDA model and specified cell states.}
\usage{
celdaTsne(counts, celda.mod, states = NULL, perplexity = 20,
  max.iter = 1000)
}
\arguments{
\item{counts}{Counts matrix, will have cell name for column name and gene name for row name.}

\item{celda.mod}{Celda model to use for tsne.}

\item{states}{Vector; determines which cell states to use for tsne. If not defined, all states will be used.}

\item{perplexity}{Numeric vector; determines perplexity for tsne. Default 20.}

\item{max.iter}{Numeric vector; determines iterations for tsne. Default 1000.}
}
\description{
Runs tSNE via Rtsne based on the CELDA model and specified cell states.
}