context("Read or Write the factor from/to file")

test_that("simple write and read",{
  # create a dataframe

  df <- data.frame(
    testing = factor(c("a","b","c","a","c","e"), levels = c("a", "b","c","e"),
                     labels = c("A", "B","C","E")))


    df_write(df, "./testthat.csv", "./testthat.txt")
    read_data <- df_read("./testthat.csv", "./testthat.txt")

    expect_equal(levels(read_data$testing), levels(df$testing))
})


test_that("return an error if it is not a dataframe",{

  v <- c(1,0,2,3)

  expect_error(df_write(df, "./test2.csv", "./test2.txt"))

})

