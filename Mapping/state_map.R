state_map <- map_data("state")

crime_state <- merge(state_map, CrimePVMap, by.x=c("region"), by.y=c("region_lower"), all.x=FALSE)

crime_state$rate = cut(crime_state$Rate.of.Police.Killings.per.Million.Population,5)


ggplot(crime_state) +
  geom_polygon(colour = NA, aes(x=long , y=lat, group=group,  order=order, fill=rate))

ggplot(crime_state) +
  geom_polygon(colour = NA , aes(x = long , y = lat , group=group, 
  			   fill=Rate.of.Police.Killings.per.Million.Population)) +
  scale_fill_gradient(low='blue', high='red') +
  expand_limits(x = crime_state$long, y = crime_state$lat) +
  labs(fill="Number Per County") + 
  coord_map("polyconic") 


  theme_clean <- function(base_size = 12) {
    require(grid)
    theme_grey(base_size) %+replace%
    theme(
        axis.title      =   element_blank(),
        axis.text       =   element_blank(),
        axis.ticks       =   element_blank(),
        panel.background    =   element_blank(),
        panel.grid      =   element_blank(),
        panel.margin    =   unit(0,"lines"),
        plot.margin     =   unit(c(0,0,0,0),"lines"),
        complete = TRUE
        )
    }




ggplot(CrimePV_map) +
  geom_polygon(colour = "grey" , aes(x = long , y = lat , group=group, fill = (Rate.of.Police.Killings.per.Million.Population)))

ggplot(CrimePV_map) +
  geom_polygon(colour = "grey" , aes(x = long , y = lat , group=group, fill = (Rate.of.Police.Killings.per.Million.Population))) +
  #scale_fill_manual(values = color_pal) +
  expand_limits(x = CrimePV_map$long, y = CrimePV_map$lat) +
  labs(fill="Number Per County") + 
  coord_map("polyconic") 