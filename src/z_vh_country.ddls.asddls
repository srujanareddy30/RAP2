@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'standard country table i view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity Z_VH_COUNTRY as select from I_CountryVH
{
@Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Search.ranking: #HIGH
    @Consumption.filter.hidden: true
    @ObjectModel.text.element: [ 'Description' ]
    key Country,
    @Consumption.filter.hidden: true
    @Semantics.text: true
    Description
//    CountryThreeLetterISOCode,
//    CountryThreeDigitISOCode,
    
}
