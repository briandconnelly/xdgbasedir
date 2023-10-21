
<!-- README.md is generated from README.Rmd. Please edit that file -->

# xdgbasedir

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/xdgbasedir)](https://CRAN.R-project.org/package=xdgbasedir)
<!-- badges: end -->

xdgbasedir is R package that allows you to easily and consistently work
with paths that comply with the [XDG Base Directory
Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## Installation

You can install the development version of xdgbasedir like so:

``` r
# install.packages("remotes")
remotes::install_github("briandconnelly/xdgbasedir")
```

## Example

Let’s say we wanted to read our RStudio Desktop preferences file,
`rstudio-prefs.json`. Since RStudio
[complies](https://docs.posit.co/ide/desktop-pro/settings/settings.html)
with the XDG Base Directory Specification, we can easily find that file
no matter how the user has configured their environment.

``` r
library(xdgbasedir)

prefs_file <- path_xdg_config_home("rstudio-prefs.json")
prefs_file
#> /Users/bconnelly/Documents/config/rstudio-prefs.json
```
