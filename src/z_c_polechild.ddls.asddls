@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cView for pole child'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define  view entity Z_C_POLECHILD 
  as projection on Z_I_POLECHILD
{ 
  key Guid,
  key Refno,
  key RefId,
      Polhei,
      Heiunit,
      Polewid,
      Widunit,
      Createdon,
      Createdby,
      Changedon,
      Changedby,
      
      _parent : redirected to parent Z_C_POLE
}
