# Understanding testing with testthat
library(testthat)

# This is how the function should work
library(PatentPackage)
patents <- read_patents("~/Box/d-rug/data_small")

# Test that will evaluate an assertion
## Basic idea
expect_equal(2+5, 7)
expect_equal(2+5, 9)
## Package multiple assertion -- this is a true test
## Passed test:
test_that("addition works", {
  a = 4
  expect_equal(2+5, 7)
  expect_equal(2+0, 2)
  expect_equal(2+-2, 0)
  expect_gt(a+1, a)
})
## Failed test:
test_that("addition works", {
  expect_equal(2+5, 7)
  expect_equal(2+0, 2)
  expect_equal(2+-2, 1)
})

# So let's use this on a package
library(usethis)
#use_mit_license()
#creates a test script -- screates a generic test template
use_test("read_patents")
