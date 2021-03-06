% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logic_elig.R
\name{logic_elig}
\alias{logic_elig}
\title{Create logic for eligibility criteria.}
\usage{
logic_elig(event = NULL, elin_spec = "elin_", elex_spec = "elex_",
  sex_spec = "sex")
}
\arguments{
\item{event}{NULL by default. Specify event (including square brackets), if field is used in events other than the event containing the eligibility criteria.}

\item{elin_spec}{Specifier for inclusion criterion. 'elin_' by default.}

\item{elex_spec}{Specifier for exclusion criterion. 'elex_' by default.}

\item{sex_spec}{Specifier for variable sex to adapt logic for sex-specific eligibility criteria. 'sex' by default. Assumed coding is 1 = male, 2 = female.}
}
\value{
A 2 row-table  with row 1 = header and row 2 = value is returned with the following headers and values,

* `inc` : logic which is TRUE, when all eligibility criteria are fullfilled (inclusion criteria = yes and exclusion critera = no)

* `out` : logic which is TRUE, when at least one eligibility criterion is not fullfilled (inclusion criterion = no or exclusion criterion = yes)

* `mis` : logic which is TRUE, when at least one eligibility criterion is missing AND other eligibility criteria are fullfilled (if an eligibility criterion is not fullfilled, this is not TRUE)

* `calc`: calculation which gives values: 0= not eligible, 1 = eligible, 2 = missing
}
\description{
This function gets variables (in rows) from the clipboard and outputs logic and calculation for eligibility.
}
\details{
logic_elig() creates the branching logic and calculation from the clipboard input of eligibility variables. It creates
branching logic for three cases: eligible, not eligible and eligibility criteria missing (incomplete). The calculation gives 0 =
not eligible, 1 = eligible and 2 = eligibility criteria missing (incomplete). Variables that are not detected as eligiblity criteria are ignored.
Eligibility variables are detected by the prefix, by default 'elin_' for inclusion criteria, 'elex_' for exclusion criteria.
Furthermore, sex-specific eligibility criteria are detected by the string 'fem_' in the eligibility variables, e.g. 'elin_fem_' or
'elex_fem_'. The logic is then adapted for the sex-specific variables.
}
\examples{
\dontrun{
#Run function with specified event
logic_elig(event = "[eligibility]")
}
}
\author{
Michael Stoller <mstoller84@gmail.com> <michael.stoller@ctu.unibe.ch>
}
