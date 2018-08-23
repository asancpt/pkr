readPC = function(folders)
{
  PC = combXPT(folders, "PC")

# Numeric type column will be set
  colNum = intersect(c("PCSTRESN", "VISITNUM", "PCTPTNUM"), colnames(PC))
  nCol = length(colNum)
  for (i in 1:nCol) {
    PC[,colNum[i]] = as.double(PC[,colNum[i]])
  }

  if (!("PCSPEC" %in% colnames(PC))) PC[,"PCSPEC"] == "PLASMA"
  if (!("PCLLOQ" %in% colnames(PC))) PC[,"PCLLOQ"] == "0"

  PC = PC[UT(PC[,"PCSPEC"]) == "PLASMA",] # currently PLASMA only
  PC = PC[UT(PC[,"PCSTAT"]) != "NOT DONE",] # remove not done
  PC[PC[,"PCORRES"]=="BLQ","PCSTRESN"] = 0 # treat BLQ as 0

  return(PC)
}
