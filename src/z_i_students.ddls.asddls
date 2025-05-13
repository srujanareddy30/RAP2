@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'iView'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_Students as select from zstudent
{
    key id as Id,
    studentname as Studentname,
    marks as Marks,
    studentage as Studentage  
}
 