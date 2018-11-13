context("Read or Write the factor from/to file")

test_that("simple write and read",{
  # create a dataframe

  df <- data.frame(
    testing = factor(c("a","b","c","a","c","e"), levels = c("a", "b","c","e"),
                     labels = c("A", "B","C","E")))


    df_write(df,"test1.txt")
    read_data <- df_read("test1.txt")

    expect_equal(levels(read_data$testing), levels(df$testing))
})



test_that("test whether it returns a factor",{
  df <- data.frame(
    testing = factor(c("a","b","c","a","c","e"), levels = c("a", "b","c","e"),
                     labels = c("A", "B","C","E")))


  df_write(df,"test1.txt")
  read_data <- df_read("test1.txt")

  expect_equal(is.factor(df$testing),is.factor(read_data$testing))

})


test_that("test if an file doesn't exist, it will raise error",{

  expect_error(read_data("no_such_file.txt"))

})
