testthat::test_that("Runes Table produces a data frame", {
    testthat::expect_s3_class(runes::runes_table(), class = "data.frame")
})

testthat::test_that("Runes Table produces a data frame", {
    testthat::expect_equal(base::length(runes::runes_table()), 3)
})

testthat::test_that("Runes Table produces a data frame", {
    testthat::expect_equal(base::max(base::as.integer(base::row.names(runes_table()))), 28)
})
