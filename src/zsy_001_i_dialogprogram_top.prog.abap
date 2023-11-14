*&---------------------------------------------------------------------*
*& Include          ZOT_29_I_DIALOGPROGRAM_TOP
*&---------------------------------------------------------------------*
TABLES: zot_29_t_teslimt.

CONTROLS tb_id TYPE TABSTRIP.    "tabstip kullanmak için

DATA: gt_teslimat TYPE TABLE OF zot_29_t_teslimt,
      gs_teslimat TYPE zot_29_t_teslimt.

DATA: gt_stok  TYPE TABLE OF zot_29_t_stok,
      gs_stok  TYPE zot_29_t_stok,
      gs_stok2 TYPE zot_29_t_stok.

DATA ls TYPE zot_29_t_teslimt. "layoutda tanımladığım name alanlarını tabloya verdim

TYPES: BEGIN OF gty_sil,
         teslimat     TYPE vbeln_vl,
         kalem        TYPE posnr_vl,
         malzeme      TYPE matnr,
         miktar       TYPE lfimg,
         birim        TYPE meins,
         tutar        TYPE wavwr,
         tutar_birimi TYPE waerk,
       END OF gty_sil.

DATA: gt_sil TYPE TABLE OF gty_sil.

CLASS lcl_main_dialogp DEFINITION DEFERRED.
DATA: go_class TYPE REF TO lcl_main_dialogp. "classı refere alan obje

*&SPWIZARD: TYPE FOR THE DATA OF TABLECONTROL 'TB_CONTROL'
TYPES: BEGIN OF t_tb_control,
         teslimat     LIKE zot_29_t_teslimt-teslimat,
         kalem        LIKE zot_29_t_teslimt-kalem,
         malzeme      LIKE zot_29_t_teslimt-malzeme,
         miktar       LIKE zot_29_t_teslimt-miktar,
         birim        LIKE zot_29_t_teslimt-birim,
         tutar        LIKE zot_29_t_teslimt-tutar,
         tutar_birimi LIKE zot_29_t_teslimt-tutar_birimi,
       END OF t_tb_control.

*&SPWIZARD: INTERNAL TABLE FOR TABLECONTROL 'TB_CONTROL'
DATA: g_tb_control_itab TYPE t_tb_control OCCURS 0,
      g_tb_control_wa   TYPE t_tb_control. "work area
DATA:     g_tb_control_copied.             "copy flag

*&SPWIZARD: DECLARATION OF TABLECONTROL 'TB_CONTROL' ITSELF
CONTROLS: tb_control TYPE TABLEVIEW USING SCREEN 0103.

*&SPWIZARD: LINES OF TABLECONTROL 'TB_CONTROL'
DATA:     g_tb_control_lines  LIKE sy-loopc.

DATA:     ok_code LIKE sy-ucomm.
