testthat::test_that("Numbers and Special Characters Are Unaffected", {
    testthat::expect_equal(runes::runes("0123456789-_=+\\|`~,./<>?;:\'\"[]{}!@#$%^&*()"),
                           c("0123456789-_=+\\|`~,./<>?;:\'\"[]{}!@#$%^&*()"))
})

testthat::test_that("Hide options functions as intended", {
    testthat::expect_equal(runes::runes("x", hide = FALSE), "x")
    testthat::expect_equal(runes::runes("x", hide = TRUE), "")
    testthat::expect_equal(runes::runes("X", hide = FALSE), "X")
    testthat::expect_equal(runes::runes("X", hide = TRUE), "")
    testthat::expect_equal(runes::runes("q", hide = FALSE), "q")
    testthat::expect_equal(runes::runes("q", hide = TRUE), "")
})

testthat::test_that("Test phrase passes through correctly", {
    testthat::expect_equal(runes::runes("Hello!", hide = FALSE), "\u16bb\u16d6\u16da\u16da\u16df!")
})

testthat::test_that("function options operate correctly", {
    testthat::expect_equal(runes::runes(x = "Hello!"), "\u16bb\u16d6\u16da\u16da\u16df!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "elder"), "\u16bb\u16d6\u16da\u16da\u16df!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "elder", hide = T), "\u16bb\u16d6\u16da\u16da\u16df!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "elder", hide = F), "\u16bb\u16d6\u16da\u16da\u16df!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "younger", branch = "short", hide = F), "\u16bde\u16da\u16dao!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "younger", branch = "short", hide = T), "\u16bd\u16da\u16da!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "younger", branch = "long", hide = F), "\u16bce\u16da\u16dao!")
    testthat::expect_equal(runes::runes(x = "Hello!", futhark = "younger", branch = "long", hide = T), "\u16bc\u16da\u16da!")
})
