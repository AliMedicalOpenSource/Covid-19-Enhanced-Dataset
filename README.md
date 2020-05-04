# Covid 19 Enhanced Dataset

This is a very detailed data set on current covid 19 data. The  base data is sourced from several JHU, CDC, ECDC
Data is also being sourced directly from Federal websites as well as Provincial and State health authorities. Population data is populated from Open Data Government projects.

All numbers are cumlative unless other wise stated in the field nams with cur or current. Data in the data variable may differ from this, this is raw data from systems that is worth noting but harder to classify.

Data is continued to be checked and verified on a regular basis. Please report any issues or suggestions. 


DataSet{

     location{

          continent:string,

          country:string,

          province:string,

          jurisdiction:string,

          population:string/number,
          
          populationEstimate:string/number
     },
     
     caseData{
     
          confirmed:number,
          
          deaths:number,
          
          recovered:number,
          
          active:number,
          
          hospitalized:number,
          
          icu:number,
          
          ageInfo : {optional object - everal varient exist depending on available data}
          
          genderInfo : {   /*optional object - may be undefined */
              
              female:number,
              
              male: number,
              
              unknown : number/undefined
              
          },
          
          raceInfo : {optional Object : varies depending on data }
          
          hospitalDetails : {optional object},
          
          ageDetails : {optional object},
          
          raceDetails : {optional object}
          
          data : {
          
               
               ha : {type : link , link:string },  // Health Authority -  available on **most** data sets
               
               testingCenter : [{type:link, link:string}, {type:json , json: object} ] // This is being added to ***most** data sets
               
               // Optional Items
          
               objcetName : [{type : link , link:string }],
          
               objcetName : [{type : json , json:string }],
          
               objcetName : [{type : phone , phone:string }],
          
               objcetName : [{type : link , link:string },{type : phone , phone:string },{type : json , json:string }]
          
          }
          
          // identifiers
          
          isoState : string/undefined,
          
          iso2 : string,      // country or parent ISO codes
          
          iso2 : string ,    // country or parent ISO codes
          
          key : [string]  ,   //usefull identifiers from various apis and subsystmes
          
          lastUpdated : date
  
  }
