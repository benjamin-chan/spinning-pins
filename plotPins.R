plotPins <- function() {
  require(tidyverse)
  require(data.table)
  require(gganimate)
  require(gifski)
  require(png)
  # This is what makes to spin the pins 
  lapply(1:(n_points+1), function(x) {
    create_grid(n_points, 
                v_angles+(x-1)*speed,
                closeness)}) %>% 
    as.list(.) %>% 
    rbindlist(idcol="frame") -> df
  # Plot pins using frame as transition time
  ggplot(df) +
    geom_spoke(aes(x=x, y=y, angle = angle), radius = 1) +
    geom_point(aes(x+cos(angle), y+sin(angle)), size=4) +
    theme_void() + 
    coord_fixed() +
    transition_time(time=frame)
}