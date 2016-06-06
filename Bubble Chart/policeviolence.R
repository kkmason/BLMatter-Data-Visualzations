PoliceViolence <- `MPVDatasetDownload`
PoliceViolence2 <- PoliceViolence[PoliceViolence$Police.Department != "Cities Total",]
PoliceViolence2 <- PoliceViolence2[PoliceViolence2$Police.Department != "U.S. Average",]
PoliceViolence2 <- PoliceViolence2[PoliceViolence2$Police.Department != "Detroit",]

#Set radius
radius <- sqrt(PoliceViolence2$Rate.of.Police.Killings.per.Million.Population/ pi )

#Percent pop black vs Violent Crime
#Chart
symbols(PoliceViolence2$Violent.Crime.per.1.000.residents, PoliceViolence2$Percent.population.black, circles = radius, inches = 0.25, fg="white", bg="red", xlab = "Violent Crime", ylab = "Percent Population Black")

#Text
text(PoliceViolence2$Violent.Crime.per.1.000.residents, PoliceViolence2$Percent.population.black, PoliceViolence2$Police.Department, cex = 0.5)

#Police Killings vs Violent Crim
#Set radius
radius <- sqrt(PoliceViolence2$Percent.population.black/ pi )

#Chart
symbols(PoliceViolence2$Violent.Crime.per.1.000.residents, PoliceViolence2$Rate.of.Police.Killings.per.Million.Population, circles = radius, inches = 0.25, fg="white", bg="red", xlab = "Violent Crime", ylab = "Rate of Police Killings")

#Text
text(PoliceViolence2$Violent.Crime.per.1.000.residents, PoliceViolence2$Rate.of.Police.Killings.per.Million.Population, PoliceViolence2$Police.Department, cex = 0.5)
