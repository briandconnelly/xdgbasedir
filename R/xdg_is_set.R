#' @rdname xdg_is_set
#' @title Check whether an XDG Base Directory environment variable is set
#'
#' @return A logical value
#' @export
xdg_cache_home_is_set <- function() {
  envvar_is_set("XDG_CACHE_HOME")
}


#' @rdname xdg_is_set
#' @export
xdg_config_home_is_set <- function() {
  envvar_is_set("XDG_CONFIG_HOME")
}


#' @rdname xdg_is_set
#' @export
xdg_data_home_is_set <- function() {
  envvar_is_set("XDG_DATA_HOME")
}


#' @rdname xdg_is_set
#' @export
xdg_state_home_is_set <- function() {
  envvar_is_set("XDG_STATE_HOME")
}


#' @noRd
envvar_is_set <- function(x) {
  !is.na(Sys.getenv(x, unset = NA_character_))
}
