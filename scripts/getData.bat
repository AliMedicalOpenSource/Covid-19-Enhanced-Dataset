mkdir temp

mkdir ..\raw
mkdir ..\raw\au
mkdir ..\raw\au\nsw
mkdir ..\raw
mkdir ..\raw\ca
mkdir ..\raw\ca\ns 
mkdir ..\raw\ca\on
mkdir ..\raw\ca\qu
mkdir ..\raw\ca\bc 
mkdir ..\raw
mkdir ..\raw\usa
mkdir ..\raw\usa\ga
mkdir ..\raw\usa\ak
del ..\raw\au\nsw\au-nsw-population.json
curl https://nswdac-covid-19-postcode-heatmap.azurewebsites.net/datafiles/population.json  >>  ..\raw\au\nsw\au-nsw-population.json
del ..\raw\au\nsw\au-nsw-tests.json
curl https://nswdac-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_tests.json  >>  ..\raw\au\nsw\au-nsw-tests.json
del   ..\raw\au\nsw\au-nsw-agedata.json
curl https://nswdac-covid-19-postcode-heatmap.azurewebsites.net/datafiles/agedata.json  >>  ..\raw\au\nsw\au-nsw-agedata.json
del ..\raw\au\nsw\au-nsw-case2.json
curl https://nswdac-covid-19-postcode-heatmap.azurewebsites.net/datafiles/usecase2.json >>  ..\raw\au\nsw\au-nsw-case2.json
del ..\raw\au\nsw\au-nsw-case.json
curl https://nswdac-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_cases.json >>  ..\raw\au\nsw\au-nsw-case.json
del  ..\raw\au\nsw\covid-19-cases-by-notification-date-location-and-likely-source-of-infection.csv
curl https://data.nsw.gov.au/data/dataset/97ea2424-abaf-4f3e-a9f2-b5c883f42b6a/resource/2776dbb8-f807-4fb2-b1ed-184a6fc2c8aa/download/covid-19-cases-by-notification-date-location-and-likely-source-of-infection.csv >> ..\raw\au\nsw\covid-19-cases-by-notification-date-location-and-likely-source-of-infection.csv
del  ..\raw\au\nsw\au-nsw-fatalities.json
curl https://nswdac-covid-19-postcode-heatmap.azurewebsites.net/datafiles/fatalitiesdata.json  >>  ..\raw\au\nsw\au-nsw-fatalities.json
del  ..\raw\ca\on\covidtesting.csv
curl https://data.ontario.ca/dataset/f4f86e54-872d-43f8-8a86-3892fd3cb5e6/resource/ed270bb8-340b-41f9-a7c6-e8ef587e6d11/download/covidtesting.csv >> ..\raw\ca\on\covidtesting.csv
del  ..\raw\ca\ns\ca_ns_covid.csv
curl https://novascotia.ca/coronavirus/data/COVID-19-data.csv >> ..\raw\ca\ns\ca_ns_covid.csv
del   ..\raw\ca\on\covidcases.json
curl 'https://data.ontario.ca/api/3/action/datastore_search?resource_id=455fd63b-603d-4608-8216-7d8647f43350&limit=100000'  >>  ..\raw\ca\on\covidcases.json
del ..\raw\ca\on\conposcovidloc.csv
curl https://data.ontario.ca/dataset/f4112442-bdc8-45d2-be3c-12efae72fb27/resource/455fd63b-603d-4608-8216-7d8647f43350/download/conposcovidloc.csv >> ..\raw\ca\on\conposcovidloc.csv
del   ..\raw\ca\bc\BCCDC_COVID19_Dashboard_Case_Details.csv
curl http://www.bccdc.ca/Health-Info-Site/Documents/BCCDC_COVID19_Dashboard_Case_Details.csv >> ..\raw\ca\bc\BCCDC_COVID19_Dashboard_Case_Details.csv
del ..\raw\au\nsw\covid19.csv
curl https://www.health.nsw.gov.au/Infectious/covid-19/Pages/lhd-recovery.csv >> ..\raw\au\nsw\covid19.csv
curl https://www.health.nsw.gov.au/Infectious/covid-19/Pages/lhd-recovery.csv >> ..\raw\au\nsw\covid19.%date%%.csv
rem curl https://services1.arcgis.com/WzFsmainVTuD5KML/arcgis/rest/services/Geographical_Distribution_of_Tests/FeatureServer/0/query?where=1%3D1&objectIds=&time=&resultType=none&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token=  >> ../raw/usa/ak/Geographical_Distribution_of_Tests.json
rem curl https://services1.arcgis.com/WzFsmainVTuD5KML/arcgis/rest/services/Geographic_Distribution_of_Confirmed_Cases/FeatureServer/0/query?where=1%3D1&objectIds=&time=&resultType=none&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjson&token >> ../raw/usa/ak/Geographic_Distribution_of_Confirmed_Cases.json
rem curl https://services1.arcgis.com/WzFsmainVTuD5KML/arcgis/rest/services/Demographic_Distribution_of_Confirmed_Cases/FeatureServer/0/query?where=1%3D1&objectIds=&time=&resultType=none&outFields=*&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&sqlFormat=none&f=pjon&token= >> ../raw/usa/ak/Demographic_Distribution_of_Confirmed_Cases.json
curl https://ga-covid19.ondemand.sas.com/docs/ga_covid_data.zip >> ..\raw\usa\ga\us_ga_covid.zip
unzip ..\raw\usa\ga\us_ga_covid.zip -d ..\raw\usa\ga\
 


 
 git add  ..\.
   git commit -m "Auto Update"
   git push -u origin master