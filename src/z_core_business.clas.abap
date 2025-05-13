CLASS z_core_business DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  TYPES : ty_header TYPE STANDARD TABLE OF zbusiness.
    CLASS-METHODS: create_Business IMPORTING is_Structure TYPE zbusiness ,
    update_Business IMPORTING is_Structure TYPE zbusiness,
    delete_Business IMPORTING is_Structure TYPE zbusiness,
    save_Business.
    CLASS-DATA : ls_createdata TYPE ty_header,
                 ls_updatedata TYPE ty_header,
                 ls_deletedata TYPE ty_header.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_core_business IMPLEMENTATION.
  METHOD create_business.
   APPEND is_Structure TO ls_createdata.
  ENDMETHOD.

  METHOD save_business.
*    MODIFY zbusiness from TABLE @ls_data.
    INSERT zbusiness FROM TABLE @ls_createdata.
    UPDATE zbusiness FROM TABLE @ls_updatedata.
    if  ls_deletedata is NOT INITIAL .
    LOOP AT ls_deletedata INTO DATA(ls_delete).
    DELETE FROM zbusiness WHERE guid = @ls_delete-guid AND businessid = @ls_delete-businessid.
    ENDLOOP.
    ENDIF.

  ENDMETHOD.

  METHOD update_business.
  APPEND is_structure to ls_updatedata.
  ENDMETHOD.

  METHOD delete_business.
  APPEND is_structure to ls_deletedata.
  ENDMETHOD.

ENDCLASS.
