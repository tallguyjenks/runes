<h1 align="center">
runes - ᚱᚢᚾᛖᛋ
</h1>
---

> Ever wanted elder futhark runes in your R Documents? Of course you did! so here's a package that gives you that!

[![Build Status](https://travis-ci.org/tallguyjenks/runes.svg?branch=master)](https://travis-ci.org/tallguyjenks/runes)

## What Does It Look Like?

![](./img/rstudio.gif)

## Dependencies

---

- <u>None:</u> Relies only on **base** functions.

## Installation

---

```r
devtools::install_github("tallguyjenks/runes")
```

## Usage

---

```r
library(runes)

runes("hello world!")

#> [1] "ᚻᛖᛚᛚᛟ ᚹᛟᚱᛚᛞ!"
```

- `runes` can work with the pipe `%>%` to take a single string output as a piped input
- You can feed `runes` a string to format the output for any other function such as a console `cli::cli_h1(runes("This is a level 1 heading in runes"))`
- Let me know some of the uses YOU have made with it!

## How to Contribute

---

1. Clone repo and create a new branch.
2. Make changes and test
3. Submit Pull Request with comprehensive description of changes

## Acknowledgements

---

## Donations

---

This is free, open-source software. If you'd like to support the development of future projects, or say thanks for this one, you can donate to me through [paypal](https://www.paypal.me/tallguyjenks)

## License

---

MIT
