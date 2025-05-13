CLASS lsc_z_i_pole DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_z_i_pole IMPLEMENTATION.

  METHOD save_modified.

  DATA: ls_struct TYPE zpole.
        LOOP AT update-_parent INTO DATA(ls_update).
        ls_struct = VALUE #( guid = ls_update-guid poles = ls_update-Poles polno = ls_update-Polno refno = ls_update-refno status = ls_update-Status ).
        MODIFY zpole FROM @ls_struct.
        ENDLOOP.


*    DATA(lv_uuid) = cl_uuid_factory=>create_system_uuid( ).
*
*    TRY.
*        DO 5 TIMES.
*          lv_uuid->create_uuid_x16( RECEIVING uuid = DATA(lv_nuuid) ).
*
*
*
*          DATA : lt_table TYPE TABLE OF zpole,
*                 ls_tablecolumns TYPE zpole.
*          ls_tablecolumns-guid = lv_nuuid.
*          ls_tablecolumns-Refno = 1897650 + sy-tabix.
*          ls_tablecolumns-Polno = 45.
*          ls_tablecolumns-Poles = 567.
*          ls_tablecolumns-region = |hyderabad { sy-index } |.
*          APPEND ls_tablecolumns TO lt_table.
*          MODIFY zpole FROM TABLE @lt_table.
*        ENDDO.
*      CATCH cx_uuid_error.
*        "handle exception
*    ENDTRY.
*
*    DATA : ls_table   TYPE zpole,
*           lt_tableup TYPE TABLE OF zpole.
**           ls_existing TYPE zpole.
*    LOOP AT create-_parent INTO DATA(ls_create).
*      ls_table = VALUE #( guid = ls_create-Guid refno = ls_create-Refno poles = ls_create-Poles polno = ls_create-Polno area = ls_create-Area country = ls_create-Country region = ls_create-Region ).
*      MODIFY zpole FROM @ls_table.
*    ENDLOOP.
*
*
*      LOOP AT update-_parent INTO DATA(ls_update).
*      SELECT SINGLE * FROM zpole  WHERE guid = @ls_update-Guid INTO  @DATA(ls_existing).
*      ls_existing-poles = ls_update-Poles.
*      ls_existing-polno = ls_update-Polno.
*      ls_existing-country = ls_update-Country.
*      MODIFY zpole FROM  @ls_existing.
*      ENDLOOP.
*
*      LOOP AT delete-_parent INTO DATA(ls_delete).
*      DELETE FROM zpole WHERE guid = @ls_delete-Guid.
*      ENDLOOP.
*

  ENDMETHOD.

ENDCLASS.

CLASS lhc__item DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _item RESULT result.

ENDCLASS.

CLASS lhc__item IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Z_I_POLE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _Parent RESULT result.

ENDCLASS.

CLASS lhc_Z_I_POLE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
