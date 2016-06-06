library(dplyr)
library(ggplot2)
library(ggmap)



## Geocode locations USA center on map:
usa_center = as.numeric(geocode("United States"))

USAMap = ggmap(get_googlemap(center=usa_center, scale=2, zoom=4, maptype = "roadmap", color = "bw"), extent="normal")  
USAMap

USACleanMap = ggmap(get_map(location=usa_center, maptype="roadmap", source="osm", zoom = 4), extent = "normal")
USACleanMap

## Geocode columns in dataset
## 1. Combine city and state

CrimePVMap$address <- with(CrimePVMap, paste(subregion, region))

## 2. Batch process column data, add new column with lat and long


CrimePVMapCoord <- mutate_geocode(CrimePVMap, address)

all_states <- map_data("state")

p <- ggplot()

p <- p + geom_polygon(data=all_states, aes(x=long, y=lat, group = group), colour= "grey9", fill="black")
p

p + geom_text(aes(label = subregion, x=lon, y=lat), data = CrimePVMapCoord) +
  geom_point(data=CrimePVMapCoord, aes(x=longitude, y=latitude, colour=Rate.of.Police.Killings.per.Million.Population, size=3), 
             na.rm = TRUE) + scale_colour_gradient(low = "#00bfff", high = "red") 


