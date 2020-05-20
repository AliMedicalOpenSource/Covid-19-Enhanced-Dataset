# Covid 19 Enhanced Dataset

This is a very detailed data set on current covid 19 data. The  base data is sourced from several JHU, CDC, ECDC
Data is also being sourced directly from Federal websites as well as Provincial and State health authorities. Population data is populated from Open Data Government projects.

All numbers are cumlative unless other wise stated in the field nams with cur or current. Data in the data variable may differ from this, this is raw data from systems that is worth noting but harder to classify.

Data is continued to be checked and verified on a regular basis. Please report any issues or suggestions. 

  ### Updates
  
 We are taking time until 2020-05-25 to perform major enhancements to the data set. Some inconsistencies may occur during this phase
  
 The DatSets are being made to fit the following standard format
 
DataSet{

     // Required - available on all DataSets
     
     location{

          continent:string,

          country:string,

          province:string,

          jurisdiction:string,

          population:string/number, // 0 if unknown
          
          populationEstimate:string/number  // 0 if unknown
     },
     
     // Required - available on all DataSets
     caseData{
     
          confirmed:number,
          
          deaths:number,
          
          recovered:number,
          
          active:number,
          
          hospitalized:number,
          
          icu:number,
          
          hospitalizedCurrent, // optional depending on available data
          
          icuCurrent, // optional, depending on available data
          
          ageInfo : {optional object - everal varient exist depending on available data}
          
          genderInfo : {   /*optional object - may be undefined */
              
              female:number,
              
              male: number,
              
              unknown : number/undefined
              
          },
          
          caesOvertime = Array [DataSet(simplfied)] ,// optional, populated depending on available data
          
          testedOvertime = Array [{date:string, value,number], // optional depneding on data if caseOvertime not available
          
          confirmedOvertime = Array [{date:string, value,number], // optional depneding on data if caseOvertime not available 
          
          deathsOvertime = Array [{date:string, value,number], // optional depneding on data if caseOvertime not available
          
          raceInfo : {optional Object : varies depending on data },
          
          hospitalDetails : {optional object},
          
          ageDetails : {optional object},
          
          raceDetails : {optional object},
          
          genderDetails : {optional objecy}
     }
       
     // Required - available on all DataSets
     
     data : {
          
               
          ha : {type : link , link:string },  // Health Authority -  available on **most** data sets
               
          testingCenter : [{type:link, link:string}, {type:json , json: object} ] // This is being added to ***most** data sets
               
          geodata: [{type:json, description:string, json:json},   // Optional being added to all component
               
                        {type:gejson, description:string, geojson:json}  ]  
                        
                        // map data including hospital and clinc locations, provincial county maps
               
               // Optional Items
          
          objcetName : [{type : link , link:string }],
          
          objcetName : [{type : json , json:string }],
          
          objcetName : [{type : phone , phone:string }],
          
          objcetName : [{type : link , link:string },{type : phone , phone:string },{type : json , json:string }]
          
          }
        
     // Depricated
     
     isoState : string;  // use isoProvince
      
      stateISO : string,  // use isoProvince
        
     // Required Identifiers - these fields are being made available on all Datasets
          
     isoProvince : string/undefined,
          
     iso2 : string,      // country or parent ISO codes
          
     iso2 : string ,    // country or parent ISO codes
          
     key : [string]  ,   //usefull identifiers from various apis and subsystmes
         
     lastUpdated : date
  
  }
  
  
  
  
 
