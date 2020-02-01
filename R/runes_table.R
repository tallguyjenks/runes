#' @title
#' runes_table()
#'
#' @description
#' `runes_table()` returns a data.frame with 3 variable text columns.AX
#'
#' @details
#' The data.frame returned by this funtion returns 3 columns
#' 1. The unicode characer that represents the rune character.
#' 2. The English a-z characters of the alhpabet
#' 3. The rune itself showing how it would also be displayed.
#'
#' @examples
#' runes_table()
#'
#' @export
runes_table <- function() {
df <- base::data.frame(
    Unicode = c("\\u16a8", "\\u16d2", "\\u16b2", "\\u16de", "\\u16d6",
                "\\u16a0", "\\u16b7", "\\u16bb", "\\u16c1", "\\u16c3",
                "\\u16b2", "\\u16da", "\\u16d7", "\\u16be", "\\u16dc",
                "\\u16df", "\\u16c8", NA, "\\u16b1", "\\u16cb", "\\u16cf",
                "\\u16a6", "\\u16a2", "\\u16b9", "\\u16b9", NA, "\\u16c3",
                "\\u16c9"),
    Transcription = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
                      "l", "m", "n", "ng", "o", "p", "q", "r", "s", "t", "th",
                      "u", "v", "w", "x", "y", "z"),
    Character = c("\u16a8", "\u16d2", "\u16b2", "\u16de", "\u16d6", "\u16a0",
      "\u16b7", "\u16bb", "\u16c1", "\u16c3", "\u16b2", "\u16da", "\u16d7",
      "\u16be", "\u16dc", "\u16df", "\u16c8", NA, "\u16b1", "\u16cb", "\u16cf",
      "\u16a6", "\u16a2", "\u16b9", "\u16b9", NA, "\u16c3", "\u16c9")
    )

    return(df)
}

# let is float to the top this need unit test documentation
