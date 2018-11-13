context("Set the level order as the appearance order of the elements")

test_that("set_level works for different elements", {
  x <- c("banana","apple","coconut")
  fx <- factor(x)


  expect_identical(levels(fset_level(fx)),c("banana","apple","coconut"))

})

test_that("fset_level works for identical elements", {
  x <- c("banana","banana","banana")
  fx <- factor(x)


  expect_identical(levels(fset_level(fx)),c("banana"))

})

test_that("fset_level works for some dupliated element", {
  x <- c("banana","apple","banana","coconut")
  fx <- factor(x)


  expect_identical(levels(fset_level(fx)),c("banana","apple","coconut"))

})


