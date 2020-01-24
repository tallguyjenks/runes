\name{runes}
\alias{runes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
runes()
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The runes function will convert a string of English characters a-z to Elder Futhark Runes.

The only characters not represented are 'x' and 'q'.

Numerical and Special characters and anything else that is not English a-z is ignored.
}
\usage{
runes(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a quoted string of text
}
}
\examples{
runes("hello world")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{runes}% use one of  RShowDoc("KEYWORDS")
\keyword{language}% __ONLY ONE__ keyword per line
