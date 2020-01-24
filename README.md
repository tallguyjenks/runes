<h1 align="center">
runes - ᚱᚢᚾᛖᛋ
</h1>

> Ever wanted elder futhark runes in your R Documents? Of course you did! so here's a package that gives you that!

[![Build Status](https://travis-ci.org/tallguyjenks/runes.svg?branch=master)](https://travis-ci.org/tallguyjenks/runes)

## What Does It Look Like?

![](./img/rstudio.gif)

## Dependencies

- <u>None:</u> Relies only on **base** functions.

## Installation

```r
devtools::install_github("tallguyjenks/runes")
```

## Usage

```r
library(runes)

runes("hello world!")

#> [1] "ᚻᛖᛚᛚᛟ ᚹᛟᚱᛚᛞ!"
```

- `runes` can work with the pipe `%>%` to take a single string output as a piped input
- You can feed `runes` a string to format the output for any other function such as a console `cli::cli_h1(runes("This is a level 1 heading in runes"))`
- Let me know some of the uses YOU have made with it!

## How to Contribute

1. Read <a target="_blank" href="./CONTRIBUTING.md">CONTRIBUTING.md</a>
2. Clone repo and create a new branch.
3. Make changes and test
4. Submit Pull Request with comprehensive description of changes

## Acknowledgements

## Donations

This is free, open-source software. If you'd like to support the development of future projects, or say thanks for this one, you can donate to me through [paypal](https://www.paypal.me/tallguyjenks)

<!-- Paypal -->
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick" />
<input type="hidden" name="hosted_button_id" value="FDTVYZD3VS4DY" />
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" /><img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" />
</form>

<!-- Buy me a coffee -->
<a href="https://www.buymeacoffee.com/tallguyjenks" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>


## License

MIT
