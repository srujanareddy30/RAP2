    @AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'C View for pole'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.textArrangement: #TEXT_LAST
define root view entity Z_C_POLE
  provider contract transactional_query
  as projection on Z_I_POLE
{
  key Guid,
  key Refno,
      Polno,
      Poles,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'Z_VH_COUNTRY', element: 'Country' } }] 
      @Search.defaultSearchElement: true
      Country,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'I_REGIONVH', element: 'Region' } ,additionalBinding: [{ localElement: 'Country',element: 'Country' , usage: #FILTER}]}] 
      Region,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'Z_C_POLE', element: 'Language' } }] 
      Language,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'Z_C_POLE', element: 'Area' } }]
      Area,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'Z_C_POLE', element: 'Name' },  additionalBinding: [         
      { element: 'Surname', usage: #RESULT }   
       ] }]
      Name,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'Z_C_POLE', element: 'Surname' } }]
      Surname,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'Z_DD_STATUS', element: 'Statuss' } }]
      Status,
      Createdon,
      Createdby,
      Changedon,
      Changedby,
      
      _item : redirected to composition child Z_C_POLECHILD
}
