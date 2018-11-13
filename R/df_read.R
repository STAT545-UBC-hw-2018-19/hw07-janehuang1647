#' @title  Read data frame
#' @description
#' \code{df_read()} functions to read data frames from plain text delimited files while retaining factor levels

#'
#' @param file_name a path to read data frame from the file
#' @param comp_file path to save the companion file

#' @seealso \code{readr::read.delim())}


#' @usage
#'  df_read(x)
#' @rdname df_read
#' @export
#' @example df_read("number.txt")

df_read <-  function(file_name){
  read.delim(file_name)
}
