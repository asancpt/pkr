tblNCA = function(concData, key="Subject", colTime="Time", colConc="conc", dose=0, 
         adm="Extravascular", dur=0, doseUnit="mg", timeUnit="h", concUnit="ug/L", 
         down="Linear", MW=0, returnNA=FALSE)
{
# Author: Kyun-Seop Bae k@acr.kr
# Last modification: 2017.8.4
# Called by: 
# Calls: sNCA, UT
# INPUT
#   key: columns names of concData to be shown at the output table
#   colTime: column for time in concData table
#   colConc: column for concentration in concData table
#   dose: vector of dose
#   adm: administration method, "Extravascular", "Bolus", or "Infusion"
#   dur: duration of infusion
#   doseUnit: dose unit (not per kg or per m2)
#   timeUnit: time unit
#   concUnit: concentration unit
#   iAUC: data frame for interval AUC. See the example for the detail
#   down: trapezoidal downward caculation. "Linear" or "Log"
#   MW: molecular weight
#   returnNA: whether to return NAs or not
# RETURNS
#   table of NCA result

  nKey = length(key)
  IDs = as.matrix(unique(concData[,key]), ncol=nKey)
  nID = nrow(IDs)

  if (length(dose) == 1) {
    dose = rep(dose, nID)
  } else if (length(dose) != nID) {
    stop("Count of dose does not match with number of NCAs!")
  }

  Res = vector()
  for (i in 1:nID) {
    tData = Subset(concData, key, IDs[i,])
    tRes = sNCA(tData[,colTime], tData[,colConc], dose=dose[i], adm=adm, dur=dur, 
                doseUnit=doseUnit, timeUnit=timeUnit, concUnit=concUnit, 
                down=down, MW=MW, returnNA=returnNA)
    Res = rbind(Res, c(ID=IDs[i,], tRes))
  }
  rownames(Res) = NULL
  attr(Res, "units") = c("", attr(tRes, "units"))
  return(Res)
}


