#' @title
#' runes_table()
#'
#' @description
#' `runes_table()` returns a data.frame with 3 variable text columns.AX
#'
#' @param futhark which futhark set you'd like, defualts to "elder" and the
#' argument must be a string
#'
#' @param branch if futhark is "younger" then you must also choose wether you
#' would like short or long branch younger futhark
#'
#' @details
#' The data.frame returned by this function returns 3 columns
#' 1. The unicode sequence that represents the rune character.
#' 2. The English a-z characters of the alphabet
#' 3. The rune itself showing how it would also be displayed.
#'
#' @examples
#' runes_table()
#'
#' @export
runes_table <- function(futhark="elder", branch=NA) {

  # Make sure that argument data types are what they should be
  if (base::class(futhark) != base::class("character")) {
    stop("futhark name is not a string")
  }
  if (futhark == "younger") {
    if (base::class(branch) != class("Character") || is.na(branch)) {
      stop("Your branch option is not a string 'short' or 'long'")
    }
  }

if (futhark == "elder") {
Unicode <- c(
"\u16a6" # Thorisaz
,"\u16dc" # Inguaz
,"\u16c7" # Eiwaz
,"\\u16a8" # Ansuz
,"\\u16d2" # Berkano
,NA # C
,"\\u16de" # Dagaz
,"\\u16d6" # Ehwaz
,"\\u16a0" # Fehu
,"\\u16b7" # Gebo
,"\\u16bb" # Hagalaz
,"\\u16c1" # Isa
,"\\u16c3" # Jara
,"\\u16b2" # Kanaz
,"\\u16da" # Laguz
,"\\u16d7" # Manaz
,"\\u16be" # Nautiz
,"\\u16df" # Oathala
,"\\u16c8" # Perthro
,NA # Q
,"\\u16b1" # Raido
,"\\u16cb" # Sowilo
,"\\u16cf" # Tiwaz
,"\\u16a2" # Uruz
,NA # V
,"\\u16b9" # Wunjo
,NA # X
,NA # Y
,"\\u16c9") # Algiz

Transcription <- c(
  "\u16a6" # Thorisaz
  ,"\u014b" # Inguaz
  ,"\u00ef" # Eiwaz
  ,"a"
  ,"b"
  ,"c"
  ,"d"
  ,"e"
  ,"f"
  ,"g"
  ,"h"
  ,"i"
  ,"j"
  ,"k"
  ,"l"
  ,"m"
  ,"n"
  ,"o"
  ,"p"
  ,"q"
  ,"r"
  ,"s"
  ,"t"
  ,"u"
  ,"v"
  ,"w"
  ,"x"
  ,"y"
  ,"z"
)
Character <- c(
  "\u16a6" # Thorisaz
  ,"\u16dc" # Inguaz
  ,"\u16c7" # Eiwaz
  ,"\u16a8" # Ansuz
  ,"\u16d2" # Berkano
  ,NA # C
  ,"\u16de" # Dagaz
  ,"\u16d6" # Ehwaz
  ,"\u16a0" # Fehu
  ,"\u16b7" # Gebo
  ,"\u16bb" # Hagalaz
  ,"\u16c1" # Isa
  ,"\u16c3" # Jara
  ,"\u16b2" # Kanaz
  ,"\u16da" # Laguz
  ,"\u16d7" # Manaz
  ,"\u16be" # Nautiz
  ,"\u16df" # Oathala
  ,"\u16c8" # Perthro
  ,NA # Q
  ,"\u16b1" # Raido
  ,"\u16cb" # Sowilo
  ,"\u16cf" # Tiwaz
  ,"\u16a2" # Uruz
  ,NA # V
  ,"\u16b9" # Wunjo
  ,NA # X
  ,NA # Y
  ,"\u16c9") # Algiz
} else if (futhark == "yonuger" && branch == "short") {

Character <- c(
"\u16a6" # Thorisaz
,"\u16ad" # Weird acce
,"\u16c6" # Ansuz
,"\u16d3" # Berkano
,NA # C
,NA # D
,NA # E
,"\u16a0" # Fehu
,NA # G
,"\u16bd" # Hagalaz
,"\u16c1" # Isa
,NA # J
,"\u16b4" # Kanaz
,"\u16da" # Laguz
,"\u16d9" # Manaz
,"\u16bf" # Nautiz
,NA # O
,NA # P
,NA # Q
,"\u16b1" # r
,"\u16e7" # R
,"\u16cc" # Sowilo
,"\u16d0" # Tiwaz
,"\u16a2" # Uruz
,NA # V
,NA # W
,NA # X
,NA # Y
,NA # Z
)
Unicode <- c(
   "\\u16a6" # Thorisaz
  ,"\\u16ad" # Weird acce
  ,"\\u16c6" # Ansuz
  ,"\\u16d3" # Berkano
  ,NA # C
  ,NA # D
  ,NA # E
  ,"\\u16a0" # Fehu
  ,NA # G
  ,"\\u16bd" # Hagalaz
  ,"\\u16c1" # Isa
  ,NA # J
  ,"\\u16b4" # Kanaz
  ,"\\u16da" # Laguz
  ,"\\u16d9" # Manaz
  ,"\\u16bf" # Nautiz
  ,NA # O
  ,NA # P
  ,NA # Q
  ,"\\u16b1" # r
  ,"\\u16e7" # R
  ,"\\u16cc" # Sowilo
  ,"\\u16d0" # Tiwaz
  ,"\\u16a2" # Uruz
  ,NA # V
  ,NA # W
  ,NA # X
  ,NA # Y
  ,NA # Z
)
Transcription <- c(
  "\u16a6" # Thorisaz
  ,"\u0105" # Weird acce
  ,"a"
  ,"b"
  ,"c"
  ,"d"
  ,"e"
  ,"f"
  ,"g"
  ,"h"
  ,"i"
  ,"j"
  ,"k"
  ,"l"
  ,"m"
  ,"n"
  ,"o"
  ,"p"
  ,"q"
  ,"r"
  ,"R"
  ,"s"
  ,"t"
  ,"u"
  ,"v"
  ,"w"
  ,"x"
  ,"y"
  ,"z"
)
} else if (futhark == "younger" && branch == "long") {

Character <- c(
 "\u16a6" # Thorisaz
,"\u16ac" # Weird accented A character to differnt Ansuz rune
,"\u16c5" # Ansuz
,"\u16d2" # Berkano
,NA # C
,NA # D
,NA # E
,"\u16a0" # Fehu
,NA # G
,"\u16bc" # Hagalaz
,"\u16c1" # Isa
,NA # J
,"\u16b4" # Kanaz
,"\u16da" # Laguz
,"\u16d8" # Manaz
,"\u16be" # Nautiz
,NA # O
,NA # P
,NA # Q
,"\u16b1" # r
,"\u16e6" # R
,"\u16cb" # Sowilo
,"\u16cf" # Tiwaz
,"\u16a2" # Uruz
,NA # V
,NA # W
,NA # X
,NA # Y
,NA # Z
)

Unicode <- c(
   "\\u16a6" # Thorisaz
  ,"\\u16ac" # Weird accented A character to differnt Ansuz rune
  ,"\\u16c5" # Ansuz
  ,"\\u16d2" # Berkano
  ,NA # C
  ,NA # D
  ,NA # E
  ,"\\u16a0" # Fehu
  ,NA # G
  ,"\\u16bc" # Hagalaz
  ,"\\u16c1" # Isa
  ,NA # J
  ,"\\u16b4" # Kanaz
  ,"\\u16da" # Laguz
  ,"\\u16d8" # Manaz
  ,"\\u16be" # Nautiz
  ,NA # O
  ,NA # P
  ,NA # Q
  ,"\\u16b1" # r
  ,"\\u16e6" # R
  ,"\\u16cb" # Sowilo
  ,"\\u16cf" # Tiwaz
  ,"\\u16a2" # Uruz
  ,NA # V
  ,NA # W
  ,NA # X
  ,NA # Y
  ,NA # Z
)

Transcription <- c(
"\u16a6" # Thorisaz
,"\u0105" # Weird acce
,"a"
,"b"
,"c"
,"d"
,"e"
,"f"
,"g"
,"h"
,"i"
,"j"
,"k"
,"l"
,"m"
,"n"
,"o"
,"p"
,"q"
,"r"
,"R"
,"s"
,"t"
,"u"
,"v"
,"w"
,"x"
,"y"
,"z"
)
} # End of IF function

df <- base::data.frame(
  Unicode, Transcription, Character
)
    return(df)
} # End Function
