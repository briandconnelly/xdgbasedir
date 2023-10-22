
<!-- README.md is generated from README.Rmd. Please edit that file -->

# xdgbasedir

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/xdgbasedir)](https://CRAN.R-project.org/package=xdgbasedir)
[![R-CMD-check](https://github.com/briandconnelly/xdgbasedir/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/briandconnelly/xdgbasedir/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/briandconnelly/xdgbasedir/branch/main/graph/badge.svg)](https://app.codecov.io/gh/briandconnelly/xdgbasedir?branch=main)
<!-- badges: end -->

xdgbasedir is R package that allows you to work with paths that comply
with the [XDG Base Directory
Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

These functions allow you to get the value associated with the relevant
environment variable and to build paths from them:

| XDG Variable       | xdgbasedir function      |
|--------------------|--------------------------|
| `$XDG_CACHE_HOME`  | `path_xdg_cache_home()`  |
| `$XDG_CONFIG_HOME` | `path_xdg_config_home()` |
| `$XDG_DATA_HOME`   | `path_xdg_data_home()`   |
| `$XDG_RUNTIME_DIR` | `path_xdg_runtime_dir()` |
| `$XDG_STATE_HOME`  | `path_xdg_state_home()`  |

For example, we get the path for storing our configuration file,
`myconfig.json` (on MacOS):

``` r
library(xdgbasedir)

path_xdg_config_home("myconfig.json")
#> /Users/bconnelly/.config/myconfig.json
```

These functions allow you to get an ordered list of directories:

| XDG Variable.      | xdgbasedir function      |
|--------------------|--------------------------|
| `$XDG_CONFIG_DIRS` | `path_xdg_config_dirs()` |
| `$XDG_DATA_DIRS`   | `path_xdg_data_dirs()`   |

``` r
path_xdg_data_dirs()
#> [1] "/usr/local/share/" "/usr/share/"
```

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
#> /Users/bconnelly/.config/rstudio-prefs.json
```
