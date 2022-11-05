#' Title Convert Dataframe's all char variable into factor 
#'
#' @param v dataframe
#'
#' @return dataframe
#' @export
#'
#' @examples
df.char.as.factor = function(df) {
  
  #Perform loop on all data frame's columns
  colID =1
  
  while(colID <= ncol(df) ) {
  
    if(is.character(df[,colID])) {
      df[,colID] = as.factor(df[,colID])
    }
    colID = colID + 1
  }
  
  return(df)
  
}
