#' To test whether a given argument is a factor or not
#'
#' @param x factor
#'
#' @return  Return nothing if it is a factor, or else a message stating "This is not a factor, please ensure the adequate data type" and also stop the function.
#' @export
#' @examples
#' factor_check(iris$Species)

factor_check <-  function (x)
  if(!is.factor(x)){
    stop("This is not a factor, please ensure the adequate data type", call.=FALSE)
  }