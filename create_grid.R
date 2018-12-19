# This function creates a grid of vectors (coordinates and angle)
# using a initial vector of angles adding factor f each iteration
create_grid <- function(n, a, f) {
    require(data.table)
    lapply(seq_len(n), function (x) {a+f*(x-1)}) %>% 
    do.call("rbind", .) %>% 
    melt(varnames=c('x', 'y'), value.name="angle")
}
