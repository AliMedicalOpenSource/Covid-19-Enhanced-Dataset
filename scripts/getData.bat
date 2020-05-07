mkdir temp
curl https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/population.json  > temp/au-nsw-population.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_tests.json  >> temp/au-nsw-tests.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/agedata.json  >> temp/au-nsw-agedata.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/usecase2.json > temp/au-nsw-case2.json
curl https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_cases.json >> temp/au-nsw-case.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/fatalitiesdata.json  >> temp/au-nsw-fatalities.json
mkdir ..\raw
mkdir ..\raw\au
mkdir ..\raw\au\nsw
copy temp\ ..\raw\au\nsw
del /s /q temp\

mkdir ..\raw
mkdir ..\raw\usa
mkdir ..\raw\usa\ga
curl https://ga-covid19.ondemand.sas.com/docs/ga_covid_data.zip >> temp\us_ga_covid.zip
unzip ..\temp\us_ga_covid.zip 
copy *.csv ..\raw\usa\ga
del /s /q ..\temp\us_ga_covid.zip
del /s /q *.csv
curl  https://novascotia.ca/coronavirus/data/COVID-19-data.csv >> temp\ca_ns_covid.csv

mkdir ..\raw
mkdir ..\raw\ca
mkdir ..\raw\ca\ns
copy temp\ ..\raw\ca\ns
del /s /q temp\
git add  ..\.
git commit -m "Auto Update"
git push -u origin master