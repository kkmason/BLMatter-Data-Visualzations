library(circlize)

rownames(black_missing) <- black_missing$names
         
black_missing$names <- NULL

black_missing2 <- black_missing[1:1,]
black_missing2$total <- NULL

black_missing2 <- as.matrix(black_missing2)

class(black_missing2)
chordDiagram(black_missing2)


circos.clear()

## Adding spacing between nodes:
gap_list <- c(60,10,10,60) ## One number for each space between nodes (this is the same as the number of nodes)
circos.par(gap.degree = gap_list, start.degree = -30)
chordDiagram(black_missing2, directional = TRUE, transparency = 0.5)

color_array2 <- NULL ## create an empty variable
color_array2[rownames(black_missing2)] <- c("red", "green", "blue","orange","purple")
color_array2[colnames(ref_lim)] <- "grey"
color_array2
