@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_EMPLOYEE1
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_EMPLOYEE1000
{
  key Employeeid,
  Employeename,
  Email,
  Createdon,
  Createdby,
  Changedon,
  Changedby
  
}
