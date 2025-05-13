@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'iView for child table'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_I_POLECHILD as select from zpolechild
association to parent Z_I_POLE as _parent on $projection.Refno = _parent.Refno and $projection.Guid = _parent.Guid
//composition of target_data_source_name as _association_name
{
    key guid  as Guid,
    key refno as Refno,
    key refid as RefId,
    polhei as Polhei,
    heiunit as Heiunit,
    polewid as Polewid,
    widunit as Widunit,
    @Semantics.systemDateTime.createdAt: true
    createdon  as Createdon,
    @Semantics.user.createdBy: true
    createdby  as Createdby,
    @Semantics.systemDateTime.lastChangedAt: true
    changedon  as Changedon,
    @Semantics.user.lastChangedBy: true
    changedby  as Changedby,
    

   _parent
}
