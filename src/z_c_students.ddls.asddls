@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'C View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_STUDENTS
  provider contract transactional_query as projection on Z_I_Students
{
@UI.facet: [{id: 'Id', purpose: #STANDARD, type: #IDENTIFICATION_REFERENCE,
  position: 10}]
 
    @UI:{lineItem:[ { position:10,label:'Id' } ] ,identification:[ { position:10,label:'Id' } ] }
//    @EndUserText.label: 'ID'
    key Id,
     @UI:{lineItem:[ { position:20,label:'Student Name' } ] ,identification:[ { position:20,label:'Studentname' } ] }
       @UI.selectionField: [{position:10  }]
     @EndUserText.label: 'Student Name'
    Studentname,
      @UI:{lineItem:[ { position:30,label:'Marks' } ] ,identification:[ { position:20,label:'Marks' } ] }
       @UI.selectionField: [{position:20  }]
     @EndUserText.label: 'Marks'
    Marks,
      @UI:{lineItem:[ { position:40,label:'Student Age' } ] ,identification:[ { position:20,label:'Studentage' } ] }
      @UI.selectionField: [{position:30  }]
     @EndUserText.label: 'Student Age'
    Studentage
}
