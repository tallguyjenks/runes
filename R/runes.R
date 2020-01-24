#' @title
#' Elder Futhark Runes in `R`!
#'
#' @description
#' `runes()` returns the input string argument with all 'A-Z' characters
#' replaced by Elder Futhark Runes. You can use this in console output, scripts,
#' RMarkdown documents, anything with Unicode/UTF-8 support
#'
#' @param x a character string
#'
#' @return If input is a single character string then output will be a character
#' string with unicode Elder Futhark runes replacing the 'A-Z' characters except
#' 'q' and 'x'
#'
#' @examples
#' cat(runes("Your Results Are: "), 7 * 49, "\n")
#'
#' runes("hello world")
runes <- function(x){

    base::stopifnot(base::class(x)==base::class("character"))

        input_string <- base::tolower(x)

        output_string <- base::gsub(pattern = "th", x = input_string, replacement = "\u16a6")
        output_string <- base::gsub(pattern = "ng", x = output_string, replacement = "\u16dc")
        output_string <- base::gsub(pattern = "[wv]", x = output_string, replacement = "\u16b9")
        output_string <- base::gsub(pattern = "[ck]", x = output_string, replacement = "\u16b2")
        output_string <- base::gsub(pattern = "[jy]", x = output_string, replacement = "\u16c3")
        output_string <- base::gsub(pattern = "a", x = output_string, replacement = "\u16a8")
        output_string <- base::gsub(pattern = "b", x = output_string, replacement = "\u16d2")
        output_string <- base::gsub(pattern = "d", x = output_string, replacement = "\u16de")
        output_string <- base::gsub(pattern = "e", x = output_string, replacement = "\u16d6")
        output_string <- base::gsub(pattern = "f", x = output_string, replacement = "\u16a0")
        output_string <- base::gsub(pattern = "g", x = output_string, replacement = "\u16b7")
        output_string <- base::gsub(pattern = "h", x = output_string, replacement = "\u16bb")
        output_string <- base::gsub(pattern = "i", x = output_string, replacement = "\u16c1")
        output_string <- base::gsub(pattern = "l", x = output_string, replacement = "\u16da")
        output_string <- base::gsub(pattern = "m", x = output_string, replacement = "\u16d7")
        output_string <- base::gsub(pattern = "n", x = output_string, replacement = "\u16be")
        output_string <- base::gsub(pattern = "o", x = output_string, replacement = "\u16df")
        output_string <- base::gsub(pattern = "p", x = output_string, replacement = "\u16c8")
        output_string <- base::gsub(pattern = "r", x = output_string, replacement = "\u16b1")
        output_string <- base::gsub(pattern = "s", x = output_string, replacement = "\u16cb")
        output_string <- base::gsub(pattern = "t", x = output_string, replacement = "\u16cf")
        output_string <- base::gsub(pattern = "u", x = output_string, replacement = "\u16a2")
        output_string <- base::gsub(pattern = "z", x = output_string, replacement = "\u16c9")

    return(output_string)
}
