@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'i View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_POLE as select from zpole
composition [0..*] of Z_I_POLECHILD as _item
//composition of target_data_source_name as _association_name
{
    key guid as Guid, 
    key refno as Refno,
    polno as Polno,
    poles as Poles,
    country as Country,
    region as Region,
    language as Language,
    area as Area,
    name as Name,
    surname as Surname,
    status  as Status,
     @Semantics.systemDateTime.createdAt: true
    createdon  as Createdon,
    @Semantics.user.createdBy: true
    createdby  as Createdby,
     @Semantics.systemDateTime.lastChangedAt : true
    changedon  as Changedon,
     @Semantics.user.lastChangedBy : true
    changedby  as Changedby,
    
    _item
//    _association_name // Make association public
}
