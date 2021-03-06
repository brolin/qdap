% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/pronoun_type.R
\name{pronoun_type}
\alias{pronoun_type}
\title{Count Object/Subject Pronouns Per Grouping Variable}
\usage{
pronoun_type(text.var, grouping.var = NULL, pronoun.list = NULL, ...)
}
\arguments{
\item{text.var}{The text variable}

\item{grouping.var}{The grouping variables.  Default \code{NULL} generates
one word list for all text.  Also takes a single grouping variable or a list
of 1 or more grouping variables.}

\item{pronoun.list}{A named list of subject/object pronouns.  See
\strong{Details} for more.}

\item{\ldots}{Other arguments passed to \code{\link[qdap]{termco}}}
}
\value{
Returns a list, of class "pronoun_type", of data frames
regarding subject/object pronoun word counts:
\item{preprocessed}{List of uncollapsed dataframes (raw, prop, rnp) of the class "termco" that contain all searchable subject/object pronouns.}
\item{raw}{raw word counts by grouping variable}
\item{prop}{proportional word counts by grouping variable; proportional to
each individual's subject/object pronoun use}
\item{rnp}{a character combination data frame of raw and proportional subject/object pronoun use}
}
\description{
Count the number of subject/object pronouns per grouping variables.
}
\details{
The following subject/object pronoun categories are the default searched terms:
\itemize{
    \item I = c(" i'd ", " i'll ", " i'm ", " i've ", " i ")
    \item we = c(" we'd ", " we'll ", " we're ", " we've ", " we ")
    \item you = c(" you'd ",  " you'll ", " you're ", " you've ", " you ", " your ")
    \item he = c(" he'd ", " he'll ", " he's ", " he ")
    \item she = c(" she'd ", " she'll ", " she's ", " she ")
    \item they = c(" they'd ", " they'll ", " they're ", "they've ", " they ")
    \item it = c(" it'd ", " it'll ", " it's ", " it ")
    \item me = c(" me ", " my ", " mine ")
    \item us = c(" us ", " our ", " ours ")
    \item him = c(" him ", " his ")
    \item her = c(" her ", " hers ")
    \item them = c(" them ")
    \item their = c(" their ", "theirs ")
}
}
\examples{
\dontrun{
dat <- pres_debates2012
dat <- dat[dat$person \%in\% qcv(ROMNEY, OBAMA), ]
(out <- pronoun_type(dat$dialogue, dat$person))
plot(out)
plot(out, 2)
plot(out, 3)
plot(out, 3, ncol=2)

scores(out)
counts(out)
proportions(out)
preprocessed(out)

plot(scores(out))
plot(counts(out))
plot(proportions(out))

(out2 <- pronoun_type(hamlet$dialogue, hamlet$person))
plot(out2, 3, ncol=7)
}
}
\references{
Fairclough, N. (1989). Language and power. London: Longman. \cr

Fairclough, N. (2003). Analysing discourse: Textual analysis for social
research. Oxford and New York: Routledge.\cr

Okamura, A. (2009). Use of personal pronouns in two types of monologic
academic speech.  The Economic Journal of Takasaki City University of
Economics, 52(1). 17-26. \cr

Us and them: Social categorization and the process of intergroup bias.
Perdue, C. W., Dovidio, J. F., Gurtman, M. B., & Tyler, R. B. (1990). Journal
of Personality and Social Psychology, 59(3), 475-486.
doi: 10.1037/0022-3514.59.3.475
}
\seealso{
\code{\link[qdap]{object_pronoun_type}},
\code{\link[qdap]{subject_pronoun_type}}
}
\keyword{pronouns}

