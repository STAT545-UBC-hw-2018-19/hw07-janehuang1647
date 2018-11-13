#' @title  Write data frame
#' @description
#' \code{df_read()} functions to write data frames to plain text delimited files while retaining factor levels

#'
#' @param file_name a path to write data frame to the file
#'

#' @seealso \code{write.table}
#' @examples  df_write(c(1,2,3),"numbers.txt")
#' @usage
#'  df_write(df,filename)
#' @rdname df_write
#' @export

df_write <-  function (df, filename){

  write.table(df, filename, quote = FALSE, sep = "\t", row.names = FALSE)
}
