\name{tblNCA}
\alias{tblNCA}
\title{Table output NCA}
\description{do multiple NCA and returns a result table.}
\usage{
tblNCA(concData, key = "Subject", colTime = "Time", colConc = "conc", dose = 0, 
       adm = "Extravascular", dur = 0, doseUnit = "mg", timeUnit = "h", 
       concUnit = "ug/L", down = "Linear", MW = 0, returnNA = FALSE)
}
\arguments{
  \item{concData}{concentration data table}
  \item{key}{column names of concData to be shown at the output table}
  \item{colTime}{column name for time}
  \item{colConc}{column name for concentration}
  \item{dose}{administered dose}
  \item{adm}{one of \code{"Bolus"} or \code{"Infusion"} or \code{"Extravascular"} to indicate drug administration mode}
  \item{dur}{duration of infusion}
  \item{doseUnit}{unit of dose}
  \item{timeUnit}{unit of time}
  \item{concUnit}{unit of concentration}
  \item{down}{method to calculate AUC, \code{"Linear"} or \code{"Log"}}
  \item{MW}{molecular weight of drug}
  \item{returnNA}{if \code{returnNA} is \code{TRUE}, it returns NA values also.}
}
\value{Basically same with \code{\link{sNCA}}}
\author{Kyun-Seop Bae <k@acr.kr>}
\seealso{
\code{\link{help}}, \code{\link{sNCA}}
}
\examples{
tblNCA(Theoph, key="Subject", dose=320, concUnit="mg/L")
tblNCA(Indometh, key="Subject", colTime="time", colConc="conc", dose=25, 
       adm="Infusion", dur=0.5, concUnit="mg/L")
}
\keyword{Output Form}
