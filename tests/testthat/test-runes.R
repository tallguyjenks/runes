testthat::test_that("Grouped Character Combinations Function Correctly", {
    testthat::expect_equal(runes::runes("th"),"\u16a6")
    testthat::expect_equal(runes::runes("tth"),"\u16cf\u16a6")
    testthat::expect_identical(runes::runes("th"),"\u16a6")
    testthat::expect_identical(runes::runes("tth"),"\u16cf\u16a6")
    testthat::expect_equal(runes::runes("ng"), "\u16dc")
    testthat::expect_identical(runes::runes("ng"), "\u16dc")
})
testthat::test_that("Character Pairs Linked To Single Rune Are Both Replaced",{
    testthat::expect_equal(runes::runes("w v"),"\u16b9 \u16b9")
    testthat::expect_identical(runes::runes("w v"),"\u16b9 \u16b9")
})

    # output_string <- base::gsub(pattern = "[wv]", x = output_string, replacement = "\u16b9")
    # output_string <- base::gsub(pattern = "[ck]", x = output_string, replacement = "\u16b2")
    # output_string <- base::gsub(pattern = "[jy]", x = output_string, replacement = "\u16c3")
