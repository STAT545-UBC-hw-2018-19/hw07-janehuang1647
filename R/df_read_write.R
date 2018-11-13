#' @title  Read and Write data frame
#' @description
#' \code{df_read()} functions to read data frames to plain text delimited files while retaining factor levels

#' @param x  a data frame
#' @param file_name a path to save the data frame to the directory or read data frame from the file
#' @param comp_file path to save the companion file

#' @seealso \code{readr::read_csv()}, \code{readr::write_csv()}


#' @usage
#'  df_write(x,file_name, comp_file)
#' @rdname df_read_write
#' @export


df_write <- function(x,file_name, comp_file= NA){
  # make sure the input is the data frame
  if (!is.data.frame(x)) {
    stop("This is not a data frame")
  }

  #write the data frame into the file
  readr::write_csv(x,file_name)

  # check the levels for the filename
  if (is.na(comp_file)) {
#return the path of the file
    comp_file <- paste0(dirname(file_name), "/", "file_level.txt")
  }

  # get names of the factor
  cols_name <- names(Filter(is.factor, x))

  # then write the levels to the companion file
  #lapply() returns a list of the same length as x
  dput(lapply(x[cols_name], levels), comp_file)


}



#' @usage df_read(file_name, comp_file = "file_level.txt")
#'
#' @rdname df_read_write
#'
#' @export
#' @return
#' \code{df_read()} returns a data frame read from  csv files.
#' An error is raised if the input is not a dataframe,or there exits no such file.
#'

df_read <-  function(file_name, comp_file = NA){
  # read in the data from file
  read_data <- readr::read_csv(file_name)

  # and again,  check the levels for the filename
  if (is.na(comp_file)) {
    #return the path of the file
    comp_file <- paste0(dirname(file_name), "/", "file_level.txt")
  }

  # return the levels of the companion file
  comp_level <- dget(comp_file)
  # then use the obtained level to set the level of the data frame
  # use seq_along to generate the sequence for the obtained level to convert all the column to factor.

  for (i in seq_along(comp_level)){
    read_data[[names(comp_level[i])]]<- as.factor(read_data[[names(comp_level[i])]])
  # change it to factor and then set the levels one by one
    levels(read_data[[names(comp_level[i])]]) <- comp_level[[i]]
  }

  # then return the final results

  return (read_data)



}




