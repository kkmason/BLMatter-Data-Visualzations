#Misreported Assaults

names(CrimeDistribution.Table.1.csv...CrimeDistribution.IncludingMisreportedAssaults) <- c("Types", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")

#Remove Arson
MisReportedCrimeNoArson <- CrimeDistribution.Table.1.csv...CrimeDistribution.IncludingMisreportedAssaults[1:8,]

#Matrix
CrimeDistributionMatrix <- as.matrix(MisReportedCrimeNoArson)



barplot(CrimeDistributionMatrix, border = NA, space = 0.25, ylim = c(0,250000),
        xlab = "Year", ylab = "Total Crime Rates", main = "LAPD Misreport Crime Rates From 2008-2014")

