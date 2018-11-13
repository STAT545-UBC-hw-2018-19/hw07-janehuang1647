context("Reorder the factor in descending order")

test_that("freorder works for different elements", {
  x <- c("banana","apple","coconut")
  fx <- factor(x)

  #should return an error
  expect_identical(levels(freorder(fx)),c("coconut","banana","apple"))

})

test_that("freorder works for identical elements", {
  x <- c("banana","banana","banana")
  fx <- factor(x)

  expect_identical(levels(freorder(fx)),c("banana"))

})


test_that("freorder works for some dupliated element", {
  x <- c("banana","banana","apple","coconut")
  fx <- factor(x)


  expect_identical(levels(freorder(fx)),c("coconut","banana","apple"))

})

test_that("if the non-factor elements inputed",{
  x <- c(10,20,30)

  #should return an error
  expect_error(freorder(x))

})

test_that("if the first character is identical",{
  x <- c("abb","acd","adb")
  fx <- factor(x)

  #should return an error
  expect_identical(levels(freorder(fx)),c("adb","acd","abb"))

})
