*&---------------------------------------------------------------------*
*& Report ZOT_29_P_DIALOGPROGRAM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsy_001_p_dialogprogram MESSAGE-ID zot_29.

INCLUDE zsy_001_i_dialogprogram_top.
INCLUDE zsy_001_i_lcl_class.
INCLUDE zsy_001_i_dialogprogram_pai.
INCLUDE zsy_001_i_dialogprogram_pbo.

INITIALIZATION.
  CREATE OBJECT go_class.

START-OF-SELECTION.

  CALL SCREEN 100.
