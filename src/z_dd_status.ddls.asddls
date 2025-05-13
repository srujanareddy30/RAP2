@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'dropdown'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity Z_DD_STATUS as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'Z_STATUS'  )
{
  @ObjectModel.text.element: [ 'description' ]
   key  value_low as Statuss, 
   @Semantics.text: true
    text as description
}
