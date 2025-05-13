@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Country R View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_country as select from zcountrypra
//composition of target_data_source_name as _association_name
{
    key country as Country,
    key region as Region
//    _association_name // Make association public
}
