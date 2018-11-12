#'  Set Levels of Factor
#'
#' @param x factor
#' @description sets levels to the order in which they appear in the data, i.e. set the levels “as is”
#' @return  Return a factor with its level identical to the order of the data
#' @seealso \link{base::factor}
#' @export
#' @examples
#' fset_level(factor(c("banana","coconut","apple")))
#' this will return a sorted level: apple, babana, coconut in the alphabetical order.


 fset_level <-  function(x)
 {
   # The type of the vector x is not restricted; it only must have an as.character method and be sortable (by order).
   # to avoid duplicate, we need to make sure the level is unique
   xuni <-  unique(x)
   result <- factor(x, as.character(xuni))
   return(result)
 }
