CLASS z_test_82 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES : if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_test_82 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*    DATA : lt_table TYPE TABLE OF zstudent,
*           ls_columns TYPE zstudent.
*           ls_columns-id = 22.
*           ls_columns-marks = 25.
*           ls_columns-studentage = 17.
*           ls_columns-studentname = 'Nani'.
*           Append ls_columns to lt_table.
*           MODIFY zstudent FROM TABLE @lt_table.

*   DELETE FROM zpole WHERE guid is NOT INITIAL .
*   out->write( 'hi' ).

*DATA:lv_number TYPE I VALUE -1 .
*     IF lv_number > 0.
*     out->write( 'Positive' ).
*     ELSEIF lv_number < 0.
*     out->write( 'negative' ).
*     ELSE .
*     out->write( 'Zero' ).
*     ENDIF.
*
*
*DATA:lv_even TYPE I VALUE 25.
*     IF lv_even MOD  2 EQ 0.
*     out->write( 'Even' ).
*     ELSE.
*      out->write( 'Odd' ).
*     ENDIF.
*
*
*Do 10 TIMES.
*out->write( sy-index ).
*ENDDO.
*
*
*
*
*Do 10 TIMES.
*IF sy-index MOD 2 EQ 0 .
*out->write( sy-index ).
*ENDIF.
*ENDDO.



  DATA(lv_uuid) = cl_uuid_factory=>create_system_uuid( ).
          TRY.
              lv_uuid->create_uuid_x16( RECEIVING uuid = data(lv_nuuid) ).
            CATCH cx_uuid_error.
              "handle exception
          ENDTRY.
          out->write( lv_nuuid  ).











  ENDMETHOD.

ENDCLASS.
