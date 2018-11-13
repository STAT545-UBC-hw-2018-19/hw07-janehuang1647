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




