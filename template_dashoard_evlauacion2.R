rm(list = ls())
#setwd("")

gpklink="seattle_zoomed_map.gpkg"


library(sf)

map1=read_sf(gpklink)

library(ggplot2)
map1gg = ggplot() + 
  theme_bw() + 
  geom_sf(data = map1, aes(fill = radius_500), color = "#CCCCCC", size = 0.1) +
  scale_fill_viridis_c(option = "viridis", na.value = "lightgrey", name = "Precio")
map1gg

saveRDS(map1gg,file='map1oficial.rds')

