# Create for #emergenzehack

# install.packages("rvest")
# install.packages("RCurl")
# install.packages("XML")

library(rvest)
library(RCurl)
library(XML)

PWS_italian_station=html(getURL("http://www.wunderground.com/weatherstation/ListStations.asp?selectedCountry=Italy"))
stations=readHTMLTable(PWS_italian_station)$pwsTable
write.csv(stations,"WU_stations.csv",row.names=FALSE)



