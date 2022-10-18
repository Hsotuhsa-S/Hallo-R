#' Title
#'
#' @param v numerical vector
#'
#' @return sum of elements in numerical vector
#' @export
#'
#' @examples
vectorSum = function(v) {
  j = 0
  
  #if(is.vector(v, mode = "numeric")){
  
    if(is.integer(v) == TRUE)
    {
      for(i in 1:length(v))
      {
        j = j + i  
      }  
    } else
      j = NA 
    
  #} else
  #  j = NA
  
  return(j)
}
  