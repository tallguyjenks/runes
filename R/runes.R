#' @title
#' runes()
#'
#' @description
#' `runes()` Converts alpha characters a-z/A-Z to runes. You can use this in
#' console output, scripts, RMarkdown documents, anything with Unicode/UTF-8
#' support.
#'
#' @param x a character string
#'
#' @param futhark default is "elder" for elder futhark runes, the other option
#' is "younger" futhark as a string argument
#'
#' @param branch default is "NA" but when "younger" futhark is chosen you must
#' specify a branch, either "short" or "long" as a string argument
#'
#' @param hide boolean option to hide non translated English alphabet
#' characters from output. Default option hides nothing from user
#'
#' @return If input is a single character string then output will be a character
#' string with unicode Elder Futhark runes replacing the 'A-Z' characters except
#' 'q' and 'x'
#'
#' @examples
#' cat(runes("Your Results Are: "), 7 * 49, "\n")
#'
#' runes("hello world")
#'
#' runes(x = "hello world", futhark = "elder", hide = TRUE)
#'
#' runes(x = "hello world", futhark = "younger", branch = "long", hide = TRUE)
#'
#' runes(x = "hello world", futhark = "younger", branch = "short", hide = FALSE)
#'
#' @export
runes <- function(x, futhark="elder", branch=NA, hide=FALSE) {

    # TODO add new supporting unit tests
    # TODO update changelog for all of these changes
    # TODO update DESCRIPTION with new version.
    # TODO double check all files and update necessary items

    # Make sure that argument data types are what they should be
    if (base::class(x) != base::class("character")) {
        stop("test to be converted is not a string")
    } else if (base::class(futhark) != base::class("character")) {
        stop("futhark name is not a string")
    } else if (base::class(hide) != base::class(TRUE)) {
        stop("Hide option is not a boolean TRUE or FALSE")
    } else if (base::class(branch) != class("Character") || is.na(branch)) {
        stop("Your branch option is not a string 'short' or 'long'")
    }

    input_string <- x

   # Begin Conditional Translation Sections
   if (futhark == "elder") {

       output_string <- base::gsub(pattern = "\u16a6", x = input_string, replacement = "\u16a6") # Thorisaz
       output_string <- base::gsub(pattern = "\u014b", x = output_string, replacement = "\u16dc") # Inguaz
       output_string <- base::gsub(pattern = "\u00ef", x = output_string, replacement = "\u16c7") # Eiwaz
       output_string <- base::gsub(pattern = "[aA]", x = output_string, replacement = "\u16a8")
       output_string <- base::gsub(pattern = "[bB]", x = output_string, replacement = "\u16d2")
       output_string <- base::gsub(pattern = "c", x = output_string, replacement = if (hide) {""} else {"c"})
       output_string <- base::gsub(pattern = "C", x = output_string, replacement = if (hide) {""} else {"C"})
       output_string <- base::gsub(pattern = "[dD]", x = output_string, replacement = "\u16de")
       output_string <- base::gsub(pattern = "[eE]", x = output_string, replacement = "\u16d6")
       output_string <- base::gsub(pattern = "[fF]", x = output_string, replacement = "\u16a0")
       output_string <- base::gsub(pattern = "[gG]", x = output_string, replacement = "\u16b7")
       output_string <- base::gsub(pattern = "[hH]", x = output_string, replacement = "\u16bb")
       output_string <- base::gsub(pattern = "[iI]", x = output_string, replacement = "\u16c1")
       output_string <- base::gsub(pattern = "[jJ]", x = output_string, replacement = "\u16c3")
       output_string <- base::gsub(pattern = "[kK]", x = output_string, replacement = "\u16b2")
       output_string <- base::gsub(pattern = "[lL]", x = output_string, replacement = "\u16da")
       output_string <- base::gsub(pattern = "[mM]", x = output_string, replacement = "\u16d7")
       output_string <- base::gsub(pattern = "[nN]", x = output_string, replacement = "\u16be")
       output_string <- base::gsub(pattern = "[oO]", x = output_string, replacement = "\u16df")
       output_string <- base::gsub(pattern = "[pP]", x = output_string, replacement = "\u16c8")
       output_string <- base::gsub(pattern = "q", x = output_string, replacement = if (hide) {""} else {"q"})
       output_string <- base::gsub(pattern = "Q", x = output_string, replacement = if (hide) {""} else {"Q"})
       output_string <- base::gsub(pattern = "[rR]", x = output_string, replacement = "\u16b1")
       output_string <- base::gsub(pattern = "[sS]", x = output_string, replacement = "\u16cb")
       output_string <- base::gsub(pattern = "[tT]", x = output_string, replacement = "\u16cf")
       output_string <- base::gsub(pattern = "[uU]", x = output_string, replacement = "\u16a2")
       output_string <- base::gsub(pattern = "v", x = output_string, replacement = if (hide) {""} else {"v"})
       output_string <- base::gsub(pattern = "V", x = output_string, replacement = if (hide) {""} else {"V"})
       output_string <- base::gsub(pattern = "[wW]", x = output_string, replacement = "\u16b9")
       output_string <- base::gsub(pattern = "x", x = output_string, replacement = if (hide) {""} else {"x"})
       output_string <- base::gsub(pattern = "X", x = output_string, replacement = if (hide) {""} else {"X"})
       output_string <- base::gsub(pattern = "y", x = output_string, replacement = if (hide) {""} else {"y"})
       output_string <- base::gsub(pattern = "Y", x = output_string, replacement = if (hide) {""} else {"Y"})
       output_string <- base::gsub(pattern = "[zZ]", x = output_string, replacement = "\u16c9")

   } else if (futhark == "younger" && branch == "long") {

       output_string <- base::gsub(pattern = "\u16a6", x = input_string, replacement = "\u16a6") # Thorisaz
       output_string <- base::gsub(pattern = "\u0105", x = output_string, replacement = "\u16ac") # Weird accented A character to differnt Ansuz rune
       output_string <- base::gsub(pattern = "[aA]", x = output_string, replacement = "\u16c5")
       output_string <- base::gsub(pattern = "[bB]", x = output_string, replacement = "\u16d2")
       output_string <- base::gsub(pattern = "c", x = output_string, replacement = if (hide) {""} else {"c"})
       output_string <- base::gsub(pattern = "C", x = output_string, replacement = if (hide) {""} else {"C"})
       output_string <- base::gsub(pattern = "d", x = output_string, replacement = if (hide) {""} else {"d"})
       output_string <- base::gsub(pattern = "D", x = output_string, replacement = if (hide) {""} else {"D"})
       output_string <- base::gsub(pattern = "e", x = output_string, replacement = if (hide) {""} else {"e"})
       output_string <- base::gsub(pattern = "E", x = output_string, replacement = if (hide) {""} else {"E"})
       output_string <- base::gsub(pattern = "[fF]", x = output_string, replacement = "\u16a0")
       output_string <- base::gsub(pattern = "g", x = output_string, replacement = if (hide) {""} else {"g"})
       output_string <- base::gsub(pattern = "G", x = output_string, replacement = if (hide) {""} else {"G"})
       output_string <- base::gsub(pattern = "[hH]", x = output_string, replacement = "\u16bc")
       output_string <- base::gsub(pattern = "[iI]", x = output_string, replacement = "\u16c1")
       output_string <- base::gsub(pattern = "j", x = output_string, replacement = if (hide) {""} else {"j"})
       output_string <- base::gsub(pattern = "J", x = output_string, replacement = if (hide) {""} else {"J"})
       output_string <- base::gsub(pattern = "[kK]", x =output_string, replacement = "\u16b4")
       output_string <- base::gsub(pattern = "[lL]", x = output_string, replacement = "\u16da")
       output_string <- base::gsub(pattern = "[mM]", x = output_string, replacement = "\u16d8")
       output_string <- base::gsub(pattern = "[nN]", x = output_string, replacement = "\u16be")
       output_string <- base::gsub(pattern = "o", x = output_string, replacement = if (hide) {""} else {"o"})
       output_string <- base::gsub(pattern = "O", x = output_string, replacement = if (hide) {""} else {"O"})
       output_string <- base::gsub(pattern = "p", x = output_string, replacement = if (hide) {""} else {"p"})
       output_string <- base::gsub(pattern = "P", x = output_string, replacement = if (hide) {""} else {"P"})
       output_string <- base::gsub(pattern = "q", x = output_string, replacement = if (hide) {""} else {"q"})
       output_string <- base::gsub(pattern = "Q", x = output_string, replacement = if (hide) {""} else {"Q"})
       output_string <- base::gsub(pattern = "r", x = output_string, replacement = "\u16b1")
       output_string <- base::gsub(pattern = "R", x = output_string, replacement = "\u16e6")
       output_string <- base::gsub(pattern = "[sS]", x = output_string, replacement = "\u16cb")
       output_string <- base::gsub(pattern = "[tT]", x = output_string, replacement = "\u16cf")
       output_string <- base::gsub(pattern = "[uU]", x = output_string, replacement = "\u16a2")
       output_string <- base::gsub(pattern = "v", x = output_string, replacement = if (hide) {""} else {"v"})
       output_string <- base::gsub(pattern = "V", x = output_string, replacement = if (hide) {""} else {"V"})
       output_string <- base::gsub(pattern = "w", x = output_string, replacement = if (hide) {""} else {"w"})
       output_string <- base::gsub(pattern = "W", x = output_string, replacement = if (hide) {""} else {"W"})
       output_string <- base::gsub(pattern = "x", x = output_string, replacement = if (hide) {""} else {"x"})
       output_string <- base::gsub(pattern = "X", x = output_string, replacement = if (hide) {""} else {"X"})
       output_string <- base::gsub(pattern = "y", x = output_string, replacement = if (hide) {""} else {"y"})
       output_string <- base::gsub(pattern = "Y", x = output_string, replacement = if (hide) {""} else {"y"})
       output_string <- base::gsub(pattern = "z", x = output_string, replacement = if (hide) {""} else {"z"})
       output_string <- base::gsub(pattern = "Z", x = output_string, replacement = if (hide) {""} else {"Z"})

   } else if (futhark == "younger" && branch == "short") {

       output_string <- base::gsub(pattern = "\u16a6", x = input_string, replacement = "\u16a6") # Thorisaz
       output_string <- base::gsub(pattern = "\u0105", x = output_string, replacement = "\u16ad") # Weird accented A character to differnt Ansuz rune
       output_string <- base::gsub(pattern = "[aA]", x = output_string, replacement = "\u16c6")
       output_string <- base::gsub(pattern = "[bB]", x = output_string, replacement = "\u16d3")
       output_string <- base::gsub(pattern = "c", x = output_string, replacement = if (hide) {""} else {"c"})
       output_string <- base::gsub(pattern = "C", x = output_string, replacement = if (hide) {""} else {"C"})
       output_string <- base::gsub(pattern = "d", x = output_string, replacement = if (hide) {""} else {"d"})
       output_string <- base::gsub(pattern = "D", x = output_string, replacement = if (hide) {""} else {"D"})
       output_string <- base::gsub(pattern = "e", x = output_string, replacement = if (hide) {""} else {"e"})
       output_string <- base::gsub(pattern = "E", x = output_string, replacement = if (hide) {""} else {"E"})
       output_string <- base::gsub(pattern = "[fF]", x = output_string, replacement = "\u16a0")
       output_string <- base::gsub(pattern = "g", x = output_string, replacement = if (hide) {""} else {"g"})
       output_string <- base::gsub(pattern = "G", x = output_string, replacement = if (hide) {""} else {"G"})
       output_string <- base::gsub(pattern = "[hH]", x = output_string, replacement = "\u16bd")
       output_string <- base::gsub(pattern = "[iI]", x = output_string, replacement = "\u16c1")
       output_string <- base::gsub(pattern = "j", x = output_string, replacement = if (hide) {""} else {"j"})
       output_string <- base::gsub(pattern = "J", x = output_string, replacement = if (hide) {""} else {"J"})
       output_string <- base::gsub(pattern = "[kK]", x = output_string, replacement = "\u16b4")
       output_string <- base::gsub(pattern = "[lL]", x = output_string, replacement = "\u16da")
       output_string <- base::gsub(pattern = "[mM]", x = output_string, replacement = "\u16d9")
       output_string <- base::gsub(pattern = "[nN]", x = output_string, replacement = "\u16bf")
       output_string <- base::gsub(pattern = "o", x = output_string, replacement = if (hide) {""} else {"o"})
       output_string <- base::gsub(pattern = "O", x = output_string, replacement = if (hide) {""} else {"O"})
       output_string <- base::gsub(pattern = "p", x = output_string, replacement = if (hide) {""} else {"p"})
       output_string <- base::gsub(pattern = "P", x = output_string, replacement = if (hide) {""} else {"P"})
       output_string <- base::gsub(pattern = "q", x = output_string, replacement = if (hide) {""} else {"q"})
       output_string <- base::gsub(pattern = "Q", x = output_string, replacement = if (hide) {""} else {"Q"})
       output_string <- base::gsub(pattern = "r", x = output_string, replacement = "\u16b1")
       output_string <- base::gsub(pattern = "R", x = output_string, replacement = "\u16e7")
       output_string <- base::gsub(pattern = "[sS]", x = output_string, replacement = "\u16cc")
       output_string <- base::gsub(pattern = "[tT]", x = output_string, replacement = "\u16d0")
       output_string <- base::gsub(pattern = "[uU]", x = output_string, replacement = "\u16a2")
       output_string <- base::gsub(pattern = "v", x = output_string, replacement = if (hide) {""} else {"v"})
       output_string <- base::gsub(pattern = "V", x = output_string, replacement = if (hide) {""} else {"V"})
       output_string <- base::gsub(pattern = "w", x = output_string, replacement = if (hide) {""} else {"w"})
       output_string <- base::gsub(pattern = "W", x = output_string, replacement = if (hide) {""} else {"W"})
       output_string <- base::gsub(pattern = "x", x = output_string, replacement = if (hide) {""} else {"x"})
       output_string <- base::gsub(pattern = "X", x = output_string, replacement = if (hide) {""} else {"X"})
       output_string <- base::gsub(pattern = "y", x = output_string, replacement = if (hide) {""} else {"y"})
       output_string <- base::gsub(pattern = "Y", x = output_string, replacement = if (hide) {""} else {"y"})
       output_string <- base::gsub(pattern = "z", x = output_string, replacement = if (hide) {""} else {"z"})
       output_string <- base::gsub(pattern = "Z", x = output_string, replacement = if (hide) {""} else {"Z"})

   } # End IF statement

    return(output_string)

} # End Function
