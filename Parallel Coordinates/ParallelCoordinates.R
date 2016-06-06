#VIOLENT CRIME
MVP_IE_VC <- c()

for (i in 1:length(MPVIncomeEducation2$Violent.Crime.per.1.000.residents)) {
  if (MPVIncomeEducation2$Violent.Crime.per.1.000.residents[i] > 6.295) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_VC <- c(MVP_IE_VC, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_VC)

#PERCENT BLACK VICTIMS
MVP_IE_PBV <- c()

for (i in 1:length(MPVIncomeEducation2$Percent.victims.black)) {
  if (MPVIncomeEducation2$Percent.victims.black[i] > 0.4722) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_PBV <- c(MVP_IE_PBV, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_PBV)

#DISPARITY
MVP_IE_DISP <- c()

for (i in 1:length(MPVIncomeEducation2$Disparity)) {
  if (MPVIncomeEducation2$Disparity[i] > 0.21342) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_DISP <- c(MVP_IE_DISP, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_DISP)



#EDUCATION
MVP_IE_EDU <- c()

for (i in 1:length(MPVIncomeEducation2$Bachelor.s.degree.or.higher..percent.of.persons.age.25.years...2010.2014)) {
  if (MPVIncomeEducation2$Bachelor.s.degree.or.higher..percent.of.persons.age.25.years...2010.2014[i] < 29.75) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_EDU <- c(MVP_IE_EDU, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_EDU)

#POVERTY
MVP_IE_POV <- c()

for (i in 1:length(MPVIncomeEducation2$Persons.in.poverty..percent)) {
  if (MPVIncomeEducation2$Persons.in.poverty..percent[i] < 20.05) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_POV <- c(MVP_IE_POV, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_POV)


#PERCENT POP BLACK
MVP_IE_PB <- c()

for (i in 1:length(MPVIncomeEducation2$Percent.population.black)) {
  if (MPVIncomeEducation2$Percent.population.black[i] > 0.263040) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_PB <- c(MVP_IE_PB, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_PB)


#INCOME
MVP_IE_INC <- c()

for (i in 1:length(MPVIncomeEducation2$Median.household.income..in.2014.dollars...2010.2014)) {
  if (MPVIncomeEducation2$Median.household.income..in.2014.dollars...2010.2014[i] > 53241) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_INC <- c(MVP_IE_INC, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_INC)

#POLICE KILLINGS
MPV_IE_PK <- c()

for (i in 1:length(MPVIncomeEducation2$Rate.of.Police.Killings.per.Million.Population)) {
  if (MPVIncomeEducation2$Rate.of.Police.Killings.per.Million.Population[i] > 6.614) {
    col <- "#000000"
  } else {
    col <- "#cccccc"
  }
  MVP_IE_PK <- c(MVP_IE_PK, col)
}

parallel(MPVIncomeEducation2, horizontal.axis=TRUE, col=MVP_IE_PK)