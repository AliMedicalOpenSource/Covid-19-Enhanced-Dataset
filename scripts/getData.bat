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
del /s /q temp
git add  ..\.
git commit -m "Auto Update"
git push -u origin master