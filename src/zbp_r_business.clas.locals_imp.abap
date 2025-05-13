CLASS lhc_Z_R_BUSINESS DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR z_r_business RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE z_r_business.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE z_r_business.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE z_r_business.

    METHODS read FOR READ
      IMPORTING keys FOR READ z_r_business RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK z_r_business.

ENDCLASS.

CLASS lhc_Z_R_BUSINESS IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
    DATA : ls_structure TYPE zbusiness.
      DATA(lv_uuid) = cl_uuid_factory=>create_system_uuid( ).
          TRY.
              lv_uuid->create_uuid_x16( RECEIVING uuid =  ls_structure-guid ).
            CATCH cx_uuid_error.
              "handle exception
          ENDTRY.

             LOOP AT entities into DATA(ls_data).
             ls_structure-businessid = ls_data-Businessid.
             ls_structure-businessname = ls_data-Businessname.
             ls_structure-email = ls_data-Email.
             ls_structure-address = ls_data-Address.
             ls_structure-mobileno = ls_data-Mobileno.
             ENDLOOP.
             z_core_business=>create_business( is_structure = ls_structure ).

  ENDMETHOD.

  METHOD update.
  DATA : lt_table TYPE TABLE OF zbusiness,
                 ls_structure TYPE zbusiness.
  LOOP AT entities INTO DATA(ls_data).
  SELECT SINGLE * FROM zbusiness WHERE guid = @ls_data-guid AND businessid = @ls_data-businessid INTO @DATA(ls_single).
   ls_structure-guid = ls_data-%key-Guid.
   ls_structure-businessid = ls_data-Businessid.
   ls_structure-businessname = COND #( when ls_data-%control-Businessname = if_abap_behv=>mk-on then ls_data-Businessname else ls_single-businessname ).
   ls_structure-email = COND #( when ls_data-%control-Email = if_abap_behv=>mk-on THEN ls_data-Email ELSE ls_single-email ).

  ENDLOOP.
  z_core_business=>update_business( is_structure = ls_structure ).
  ENDMETHOD.

  METHOD delete.
  DATA:ls_struct TYPE zbusiness.
  LOOP AT keys INTO DATA(ls_delete).
  ls_struct-guid = ls_delete-%key-Guid.
  ls_struct-businessid = ls_delete-%key-Businessid.
  z_core_business=>delete_business( is_structure = ls_struct ).
  ENDLOOP.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_Z_R_BUSINESS DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z_R_BUSINESS IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  z_core_business=>save_business( ).
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
