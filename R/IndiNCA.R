IndiNCA = function(x, y, dose=0, fit="Linear", adm="Extravascular", dur=0, report="Table", iAUC="", uTime="h", uConc="ug/L", uDose="mg")
{
# For backward compatibility
  Result = sNCA(x, y, dose=dose, adm=adm, dur=dur, doseUnit=uDose, timeUnit=uTime, concUnit=uConc, iAUC=iAUC, down=fit, MW=0, returnNA=TRUE)
  return(Result)
}
