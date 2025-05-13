@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'root view for business'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_BUSINESS as select from Z_I_BUSINESS
//composition of target_data_source_name as _association_name
{
    key Guid,
    key Businessid,
    Businessname,
    Email,
    Mobileno,
    Address
    //_association_name // Make association public
}
