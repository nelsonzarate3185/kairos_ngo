prompt --application/pages/page_00623
begin
--   Manifest
--     PAGE: 00623
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>623
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte Detalles - STCOCONS'
,p_alias=>'REPORTE-DETALLES-STCOCONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporte Detalles - STCOCONS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'100%'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230922102943'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210475673779603728)
,p_plug_name=>'Reporte Detalles'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 COD_EMPRESA,                             ',
'       C002 COD_ARTICULO,									',
'       c003 COSTO_PROM_ANT,',
'       c004 CANT_EXIST_ANT,',
'       c005 COSTO_COMPROBANTE,',
'       c006 CANT_COMPROBANTE,',
'       c007 COSTO_PROM_NUE,',
'       c008 CANT_EXIST_NUE,',
'       c009 COD_MONEDA_COSTO,',
'       c010 COD_MONEDA_COMP,',
'       c011 FEC_COMPROBANTE,',
'       c012 COD_USUARIO,',
'       c013 NRO_DESPACHO,',
'       c014 TICOMPROBANTE,',
'       c015 SER_COMPROBANTE,',
'       c016 NRO_COMPROBANTE,',
'       c017 COSTO_FOB,',
'       c018 COSTO_ULTIMO,',
'       c019 COSTO_EQUIPO,',
'       c020 TICAMBIO_COMP,',
'       c021 TICAMBIO_COSTO,',
'       c022 FEC_PROCESO,',
'       c023 COSTO_PROM_NUE_US,',
'       c024 COSTO_PROM_ANT_US,',
'       c025 COSTO_ULTIMO_US,',
'       c026 COSTO_PROM_LOT,',
'       c027 NRO_LOTE,',
'       c028 COSTO_PROM_LOT_ANT,',
'       c029 CANT_EXIST_LOT_ANT,',
'       c030 FEC_COMPROBANTE_OLD,',
'       c031 COD_IVA,',
'       c032 COSTO_VIEJO,',
'       c033 COD_COSTOS_ART,',
'         NULL ver_detalles,',
'         seq_id seq_id_reporte',
'',
'       ',
'  from APEX_COLLECTIONS',
'',
'  WHERE COLLECTION_NAME = ''B_DETALLE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Detalles'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(210475777417603729)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>210475777417603729
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210475897945603730)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210475994616603731)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701152677902901)
,p_db_column_name=>'FEC_PROCESO'
,p_display_order=>30
,p_column_identifier=>'V'
,p_column_label=>'Fecha Proceso'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477169118603743)
,p_db_column_name=>'TICOMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477287951603744)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477303787603745)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Numero Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476879407603740)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476394262603735)
,p_db_column_name=>'CANT_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476427965603736)
,p_db_column_name=>'COSTO_PROM_NUE'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Costo Promedio GS'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477573651603747)
,p_db_column_name=>'COSTO_ULTIMO'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'Costo Ultimo GS'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701216501902902)
,p_db_column_name=>'COSTO_PROM_NUE_US'
,p_display_order=>110
,p_column_identifier=>'W'
,p_column_label=>'Costo Promedio US'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701449311902904)
,p_db_column_name=>'COSTO_ULTIMO_US'
,p_display_order=>120
,p_column_identifier=>'Y'
,p_column_label=>'Costo Ultimo US'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477499958603746)
,p_db_column_name=>'COSTO_FOB'
,p_display_order=>130
,p_column_identifier=>'Q'
,p_column_label=>'Costo FOB'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476141370603733)
,p_db_column_name=>'CANT_EXIST_ANT'
,p_display_order=>140
,p_column_identifier=>'D'
,p_column_label=>'Stock Anterior'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476516591603737)
,p_db_column_name=>'CANT_EXIST_NUE'
,p_display_order=>150
,p_column_identifier=>'H'
,p_column_label=>'Stock Actual'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476001636603732)
,p_db_column_name=>'COSTO_PROM_ANT'
,p_display_order=>160
,p_column_identifier=>'C'
,p_column_label=>'Costo Prom Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476223955603734)
,p_db_column_name=>'COSTO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'E'
,p_column_label=>'Costo Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476666191603738)
,p_db_column_name=>'COD_MONEDA_COSTO'
,p_display_order=>180
,p_column_identifier=>'I'
,p_column_label=>'Cod Moneda Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476737523603739)
,p_db_column_name=>'COD_MONEDA_COMP'
,p_display_order=>190
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda Comp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210476964319603741)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>200
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477036748603742)
,p_db_column_name=>'NRO_DESPACHO'
,p_display_order=>210
,p_column_identifier=>'M'
,p_column_label=>'Nro Despacho'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477616029603748)
,p_db_column_name=>'COSTO_EQUIPO'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Costo Equipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477776481603749)
,p_db_column_name=>'TICAMBIO_COMP'
,p_display_order=>230
,p_column_identifier=>'T'
,p_column_label=>'Ticambio Comp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210477855958603750)
,p_db_column_name=>'TICAMBIO_COSTO'
,p_display_order=>240
,p_column_identifier=>'U'
,p_column_label=>'Ticambio Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701352176902903)
,p_db_column_name=>'COSTO_PROM_ANT_US'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Costo Prom Ant Us'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701505117902905)
,p_db_column_name=>'COSTO_PROM_LOT'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Costo Prom Lot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701671825902906)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701798568902907)
,p_db_column_name=>'COSTO_PROM_LOT_ANT'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Costo Prom Lot Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701838966902908)
,p_db_column_name=>'CANT_EXIST_LOT_ANT'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cant Exist Lot Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210701936663902909)
,p_db_column_name=>'FEC_COMPROBANTE_OLD'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Fec Comprobante Old'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210702021061902910)
,p_db_column_name=>'COD_IVA'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210702188950902911)
,p_db_column_name=>'COSTO_VIEJO'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Costo Viejo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210702249880902912)
,p_db_column_name=>'COD_COSTOS_ART'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Cod Costos Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210702375561902913)
,p_db_column_name=>'VER_DETALLES'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Ver Detalles'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210702459010902914)
,p_db_column_name=>'SEQ_ID_REPORTE'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Seq Id Reporte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(210717322261900981)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2107174'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_ARTICULO:FEC_PROCESO:TICOMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:CANT_COMPROBANTE:COSTO_PROM_NUE:COSTO_ULTIMO:COSTO_PROM_NUE_US:COSTO_ULTIMO_US:COSTO_FOB:CANT_EXIST_ANT:CANT_EXIST_NUE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210702558289902915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(210475673779603728)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:615:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
