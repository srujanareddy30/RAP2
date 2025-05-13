@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Country C View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity Z_C_COUNTRY
  provider contract transactional_query as projection on Z_R_country
{
    key Country,
    key Region
}
