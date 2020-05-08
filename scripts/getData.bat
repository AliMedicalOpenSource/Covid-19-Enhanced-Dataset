mkdir temp
mkdir ..\raw
mkdir ..\raw\au
mkdir ..\raw\au\nsw
mkdir ..\raw
mkdir ..\raw\ca
mkdir ..\raw\ca\ns 
mkdir ..\raw\ca\on
mkdir ..\raw\ca\qu

mkdir ..\raw
mkdir ..\raw\usa
mkdir ..\raw\usa\ga
curl https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/population.json  >  ..\raw\au\nsw\au-nsw-population.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_tests.json  >>  ..\raw\au\nsw\au-nsw-tests.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/agedata.json  >>  ..\raw\au\nsw\au-nsw-agedata.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/usecase2.json >  ..\raw\au\nsw\au-nsw-case2.json
curl https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/data_cases.json >>  ..\raw\au\nsw\au-nsw-case.json
curl  https://nswdac-np-covid-19-postcode-heatmap.azurewebsites.net/datafiles/fatalitiesdata.json  >>  ..\raw\au\nsw\au-nsw-fatalities.json
curl https://data.ontario.ca/dataset/f4f86e54-872d-43f8-8a86-3892fd3cb5e6/resource/ed270bb8-340b-41f9-a7c6-e8ef587e6d11/download/covidtesting.csv >> ..\raw\ca\on\covidtesting.csv
curl  https://novascotia.ca/coronavirus/data/COVID-19-data.csv >> ..\raw\ca\ns\ca_ns_covid.csv
curl https://data.ontario.ca/api/3/action/datastore_search?resource_id=455fd63b-603d-4608-8216-7d8647f43350&limit=100000 >> ..\raw\ca\on\covidcases.json

curl https://santesaglac.gouv.qc.ca/medias/2020/05/%C3%89tat-situation-M%C3%89DIAS-2020-05-08.pdf >> ..\raw\ca\qu\quebec-santesaglac.pdf
curl https://www.ciusss-capitalenationale.gouv.qc.ca/sites/default/files/00-CORONAVIRUS/Communique/2020-05-08_communique_bilan.pdf >> ..\raw\ca\qu\


curl https://ga-covid19.ondemand.sas.com/docs/ga_covid_data.zip >> ..\raw\usa\ga\us_ga_covid.zip
unzip ..\raw\usa\ga\us_ga_covid.zip -d ..\raw\usa\ga\
 


 
 git add  ..\.
 git commit -m "Auto Update"
 git push -u origin master