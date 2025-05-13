@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for business'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_BUSINESS provider contract transactional_query as projection on Z_R_BUSINESS
{
    @UI.facet: [{id: 'General', purpose: #STANDARD, type: #IDENTIFICATION_REFERENCE, label: 'General',
    position: 10}]
    @UI:{lineItem:[ { position:10,label:'Guid' } ] ,identification:[ { position:10,label:'Guid' } ] }
    key Guid,
    @UI:{lineItem: [{ position: 20,label: 'Business Id' }], identification: [{ position: 20,label: 'Business Id' }]}
    key Businessid,
    @UI:{lineItem: [{ position: 30,label: 'Business Name' }], identification: [{ position: 30,label: 'Business Name' }]}
    Businessname,
    @UI:{lineItem: [{ position: 40,label: 'Email' }], identification: [{ position: 40,label: 'Email' }]}
    Email,
    @UI:{lineItem: [{ position: 50,label: 'Mobile No' }], identification: [{ position: 50,label: 'Mobile No' }]}
    Mobileno,
    @UI:{lineItem: [{ position: 60,label: 'Address' }], identification: [{ position: 60,label: 'Address' }]}
    Address
}
