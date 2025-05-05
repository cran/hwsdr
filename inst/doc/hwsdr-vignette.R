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

t_sand <- terra::rast(system.file(
  package = "hwsdr",
  "extdata/t_sand.tif"))

# extract values
values <- readRDS(system.file(
  package = "hwsdr",
  "extdata/values.rds"))


## ----eval = FALSE-------------------------------------------------------------
#   values <- ws_subset(
#     site = "HWSD",
#     location = c(34, -81),
#     param = c("T_SAND","T_SILT")
#   )

## -----------------------------------------------------------------------------
print(values)

## ----eval = FALSE-------------------------------------------------------------
#   t_sand <- ws_subset(
#     site = "HWSD",
#     location = c(32, -81, 34, -80),
#     param = "T_SAND",
#     path = tempdir(),
#     internal = TRUE
#   )

## -----------------------------------------------------------------------------
terra::plot(t_sand)

## ----eval = FALSE-------------------------------------------------------------
#   a <- sf::st_sf(a = 1:2,
#                 geom = sf::st_sfc(
#                   sf::st_point(c(34, -81)),
#                   sf::st_point(c(32, -80))),
#                 crs = 4326)
# 
#   t_sand <- a %>%
#     sf::st_bbox() %>%
#     ws_subset(param = "T_SAND")

## -----------------------------------------------------------------------------
terra::plot(t_sand)

