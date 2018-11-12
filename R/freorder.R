#' Reorder Levels of a Factor
#'
#' @param x a factor, an atomic vector. The vector is treated as a categorical variable whose levels will be reordered.
#'
#' @usage freorder(x)
#' @return By default, the function will return the factor in the descending order. 
#' @export
#' @examples
#' @seealso \link{reorder}
#' freorder(factor(c(1000,100,10)))\n
#' freorder(factor(c("a","z","m")))


freorder <- function (x){
  # use the factor_check to make sure we have a factor input
  factor_check(x)
  
  # then use the dplyr function to reorder the factor
  sortedfactor <- reorder(x,dplyr::desc(x))
  return(sortedfactor)
  
}