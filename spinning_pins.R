library(checkpoint)
checkpoint("2018-10-01")

library(tidyverse)
library(data.table)
library(gganimate)
library(gifski)
library(png)
source("create_grid.R")
source("plotPins.R")


# 1st pattern
n_points  <- 20
closeness <- 2*pi/n_points
speed     <- 2*pi/n_points
v_angles <- seq(0, 2*pi, length.out = n_points)
plotPins()

# 2nd pattern
n_points  <- 20
closeness <- 0
speed     <- 2*pi/n_points
v_angles <- seq(0, by=pi/2, length.out = n_points)
plotPins()

# 3rd pattern
n_points  <- 20
closeness <- 2*pi/n_points
speed     <- 2*pi/n_points
v_angles <- seq(0, 0, length.out = n_points)
plotPins()

# 4th pattern
n_points  <- 20
closeness <- pi/4
speed     <- 2*pi/n_points
v_angles <- seq(0, by=pi/4, length.out = n_points)
plotPins()

# Do you want to save it?
anim_save("choose_a_name.gif")

