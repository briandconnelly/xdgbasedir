#' @rdname path_xdg
#' @title XDG Base Directory Paths
#'
#' @description These functions allow you to construct paths that adhere to the
#' [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).?
#'
#' @param ... Additional paths appended to the directory by [fs::path]
#'
#' @return A string containing a path

#' @description `path_xdg_cache_home()` constructs a path beginning at the
#' directory in which user-specific non-essential data files should be stored.
#' @export
#' @examples
#' path_xdg_cache_home()
path_xdg_cache_home <- function(...) {
  path_xdg("XDG_CACHE_HOME", fs::path_home(".cache"), ...)
}

#' @rdname path_xdg
#' @description `path_xdg_config_home()` constructs a path beginning at the
#' directory in which user-specific configuration files should be stored.
#' @export
#' @examples
#' path_xdg_config_home()
path_xdg_config_home <- function(...) {
  path_xdg("XDG_CONFIG_HOME", fs::path_home(".config"), ...)
}

#' @rdname path_xdg
#' @description `path_xdg_data_home()` constructs a path beginning at the
#' directory in which user-specific data files should be stored.
#' @export
#' @examples
#' path_xdg_data_home()
path_xdg_data_home <- function(...) {
  path_xdg("XDG_DATA_HOME", fs::path_home(".local", "share"), ...)
}

#' @rdname path_xdg
#' @description `path_xdg_state_home()` constructs a path beginning at the
#' directory in which user-specific state files should be stored.
#' @export
#' @examples
#' path_xdg_state_home()
path_xdg_state_home <- function(...) {
  path_xdg("XDG_STATE_HOME", fs::path_home(".local", "state"), ...)
}


#' @noRd
path_xdg <- function(envvar, default, ...) {
  fs::path(Sys.getenv(x = envvar, unset = default), ...)
}
