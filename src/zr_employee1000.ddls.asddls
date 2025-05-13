@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_EMPLOYEE1000
  as select from ZEMPLOYEE1 as employee
{
  key employeeid as Employeeid,
  employeename as Employeename,
  email as Email,
  @Semantics.systemDateTime.createdAt: true
  createdon as Createdon,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  changedon as Changedon,
  @Semantics.user.localInstanceLastChangedBy: true
  changedby as Changedby
  
}
