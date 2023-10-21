test_that("path_xdg_ functions work as expected with set values", {
  demo_values <- list(
    "XDG_CACHE_HOME" = fs::path("dir1", "dir2", "cache"),
    "XDG_CONFIG_HOME" = fs::path("dir1", "dir2", "config"),
    "XDG_DATA_HOME" = fs::path("dir1", "dir2", "share"),
    "XDG_STATE_HOME" = fs::path("dir1", "dir2", "state")
  )

  withr::local_envvar(demo_values)

  expect_equal(path_xdg_cache_home(), demo_values$XDG_CACHE_HOME)
  expect_equal(path_xdg_config_home(), demo_values$XDG_CONFIG_HOME)
  expect_equal(path_xdg_data_home(), demo_values$XDG_DATA_HOME)
  expect_equal(path_xdg_state_home(), demo_values$XDG_STATE_HOME)

  expect_equal(
    path_xdg_cache_home("somefile"),
    fs::path(demo_values$XDG_CACHE_HOME, "somefile")
  )

  expect_equal(
    path_xdg_config_home("somefile.cfg"),
    fs::path(demo_values$XDG_CONFIG_HOME, "somefile.cfg")
  )

  expect_equal(
    path_xdg_data_home("somefile.csv"),
    fs::path(demo_values$XDG_DATA_HOME, "somefile.csv")
  )

  expect_equal(
    path_xdg_state_home("somefile.xyz"),
    fs::path(demo_values$XDG_STATE_HOME, "somefile.xyz")
  )
})

test_that("path_xdg_ functions work as expected with unset values", {
  demo_values <- list(
    "XDG_CACHE_HOME" = NA,
    "XDG_CONFIG_HOME" = NA,
    "XDG_DATA_HOME" = NA,
    "XDG_STATE_HOME" = NA
  )

  withr::local_envvar(demo_values)

  expect_equal(path_xdg_cache_home(), fs::path_home(".cache"))
  expect_equal(path_xdg_config_home(), fs::path_home(".config"))
  expect_equal(path_xdg_data_home(), fs::path_home(".local", "share"))
  expect_equal(path_xdg_state_home(), fs::path_home(".local", "state"))
})
