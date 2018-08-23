Subset = function(Tbl, key, Cond)
{
# Author: Kyun-Seop Bae k@acr.kr
# Last modification: 2017.8.4
# Input
#  Tbl: table to be subsetted
#  key: column names for the condition
#  Cond: subsetting condition values
# Returns
#   subsetted table

  nCol = length(key)
  if (length(Cond) != nCol) stop("key and Cond should be same length!")
  nRow = nrow(Tbl)
  vRow = rep(TRUE, nRow)
  
  for (i in 1:nRow) {
    for (j in 1:nCol) {
      if (as.character(Tbl[i,key[j]]) != as.character(Cond[j])) vRow[i] = FALSE
    }
  }
  return(Tbl[vRow,])
}
