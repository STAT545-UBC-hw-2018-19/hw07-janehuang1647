context("Checking whether it is a factor")

test_that("factor_check return a error message if it is not factor", {
  x <- c('a', 'b')

  #should return an error
  expect_error(factor_check(x))

})


test_that("factor_check return nothing when a factor inputed",{
  z <- factor(c('a', 'b', 'c', 'd'))

  #should return nothing
  expect_silent(factor_check(z))

})


