mkdir temp
mkdir ..\raw
mkdir ..\raw\au
mkdir ..\raw\au\nsw
mkdir ..\raw
mkdir ..\raw\ca
mkdir ..\raw\ca\ns 

mkdir ..\raw
mkdir ..\raw\usa
mkdir ..\raw\usa\ga
curl https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/population.json  >  ..\raw\au\nsw\au-nsw-population.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_tests.json  >>  ..\raw\au\nsw\au-nsw-tests.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/agedata.json  >>  ..\raw\au\nsw\au-nsw-agedata.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/usecase2.json >  ..\raw\au\nsw\au-nsw-case2.json
curl https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_cases.json >>  ..\raw\au\nsw\au-nsw-case.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/fatalitiesdata.json  >>  ..\raw\au\nsw\au-nsw-fatalities.json




curl https://ga-covid19.ondemand.sas.com/docs/ga_covid_data.zip >> ..\raw\usa\ga\us_ga_covid.zip
unzip ..\raw\usa\ga\us_ga_covid.zip -d ..\raw\usa\ga\
 

curl  https://novascotia.ca/coronavirus/data/COVID-19-data.csv >> ..\raw\ca\ns\ca_ns_covid.csv

 
rem git add  ..\.
rem git commit -m "Auto Update"
rem git push -u origin master