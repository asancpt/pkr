\name{NCA0}
\alias{NCA0}
\title{NCA of SDTM data for single subject}
\description{
This performs Noncompartmental Analysis(NCA) for only one subject from the CDISC EX and PC domain.
}
\usage{NCA0(EX0, PC0, fit="Linear")}
\arguments{
  \item{EX0}{Data of one subject from EX domain}
  \item{PC0}{Data of one subject from PC domain}
  \item{fit}{either of \code{"Linear"} or \code{"Log"} to indicate the way to calculate AUC and AUMC}
}
\details{
This calls IndiNCA function.
This is called by rNCA function.
}
\value{
This returns NCA results vector.
}
\author{Kyun-Seop Bae <k@acr.kr>}

\seealso{
\code{\link{help}}, \code{\link{rNCA}}, \code{\link{sNCA}}
}
\keyword{ NCA }
