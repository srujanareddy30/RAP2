@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'i View for business'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_BUSINESS as select from ZBUSINESS
{
    key guid as Guid,
    key businessid as Businessid,
    businessname as Businessname,
    email as Email,
    mobileno as Mobileno,
    address as Address
}
