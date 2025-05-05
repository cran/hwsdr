## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

# load the library
library(ncdf4)
library(terra)
library(sf)
library(hwsdr)

sand <- terra::rast(system.file(
  package = "hwsdr",
  "extdata/d1_sand.tif"))

# extract values
values <- readRDS(system.file(
  package = "hwsdr",
  "extdata/d1_values.rds")
)


## ----eval = FALSE-------------------------------------------------------------
# # set the ws_path variable using a FULL path name
# path <- ws_download(
#   ws_path = "/your/full/path",
#   verbose = TRUE
# )

## ----eval = FALSE-------------------------------------------------------------
# usethis::edit_r_environ()

## ----eval = FALSE-------------------------------------------------------------
# values <- ws_subset(
#   site = "HWSD_V2",
#   location = c(-81, 34),
#   param = c("SAND","SILT"),
#   layer = "D1",
#   version = "2.0",
#   ws_path = "/your/full/path"
# )

## -----------------------------------------------------------------------------
print(values)

## ----eval = FALSE-------------------------------------------------------------
# sand <- ws_subset(
#     location = c(-81, 32, -80, 34),
#     param = "SAND",
#     layer = "D1",
#     version = "2.0",
#     ws_path = Sys.getenv("WS_PATH"),
#     # ws_path = "/your/full/path",
#     internal = TRUE
#   )

## -----------------------------------------------------------------------------
terra::plot(sand)

## ----eval = FALSE-------------------------------------------------------------
#   a <- sf::st_sf(a = 1:2,
#                 geom = sf::st_sfc(
#                   sf::st_point(c(34, -81)),
#                   sf::st_point(c(32, -80))),
#                 crs = 4326)
# 
#   t_sand <- a %>%
#     sf::st_bbox() %>%
#     ws_subset(
#       version = "2.0",
#       param = "SAND",
#       layer = "D1",
#       ws_path = Sys.getenv("WS_PATH")
#       )

## -----------------------------------------------------------------------------
terra::plot(sand)

