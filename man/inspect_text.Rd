% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/inspect_text.R
\name{inspect_text}
\alias{inspect_text}
\alias{inspect_text.Corpus}
\alias{inspect_text.default}
\title{Inspect Text Vectors}
\usage{
inspect_text(text.var, grouping.var = NULL, ...)

\method{inspect_text}{default}(text.var, grouping.var = NULL, ...)

\method{inspect_text}{Corpus}(text.var, ...)
}
\arguments{
\item{text.var}{The text variable or a \code{\link[qdap]{wfm}} object.}

\item{grouping.var}{The grouping variables.  Default \code{NULL} generates
one word list for all text.  Also takes a single grouping variable or a list
of 1 or more grouping variables.}

\item{\ldots}{ignored.}
}
\value{
Returns a named list (prints pretty).
}
\description{
\code{inspect_text} - Inspect a text vector with adjustable string wrapping;
created a pretty printed named list.

\code{inspect_text.default} - Default method for \code{inspect_text} used to
convert to a vector to a pretty printed named list.

\code{inspect_text.Corpus} - Corpus method for \code{inspect_text} used to
convert to a \code{\link[tm]{Corpus}}.
}
\examples{
\dontrun{
with(raj, inspect_text(dialogue))
with(raj, inspect_text(dialogue, person))
with(raj, inspect_text(dialogue, list(paste("Act", act), person)))

## With a tm Corpus object
library(tm)
data(crude)
inspect_text(crude)
}
}
\keyword{print}

