*&---------------------------------------------------------------------*
*& Include          ZOT_29_I_DIALOGPROGRAM_PAI
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

  CASE sy-ucomm.
    WHEN '&BACK'.
      SET SCREEN 0.
    WHEN '&CANCEL'.
      SET SCREEN 0.
    WHEN '&EXIT'.
      LEAVE PROGRAM.
    WHEN '&TAB1'. "function kodu veririz.
      tb_id-activetab = '&TAB1'.
    WHEN '&TAB2'.
      tb_id-activetab = '&TAB2'.
    WHEN '&TAB3'.
      tb_id-activetab = '&TAB3'.
  ENDCASE.

ENDMODULE.

*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0101  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0101 INPUT.
  CASE sy-ucomm.
    WHEN '&SAVE'.

      go_class->save( ).

  ENDCASE.
ENDMODULE.

*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0103  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0103 INPUT.
  CASE sy-ucomm.
    WHEN '&CLEAR'.
      go_class->clear( ).
  ENDCASE.
ENDMODULE.


*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0102  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0102 INPUT.

  CASE sy-ucomm.
    WHEN '&DISPLAY'.
      go_class->display( ).
    WHEN '&UPDATE'.
      go_class->update( ).
    WHEN '&UPDATESAVE'.
      go_class->updatesave( ).
  ENDCASE.
ENDMODULE.
