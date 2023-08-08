prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de OT Terminadas por Tecnico - Comisiones'
,p_alias=>'REPORTE-DE-OT-TERMINDAS-POR-TECNICO-COMISIONES'
,p_step_title=>'Reporte de OT Terminadas por Tecnico - Comisiones'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-fht-thead{',
'  overflow: auto !important;',
'}',
'',
'.t-Region--accent1.t-Region--textContent > .t-Region-header {',
'    color: #003a85;',
'    border: 2px solid #003a85; ',
'}',
'.a-IRR-table{',
'',
'    width: max-content;',
'}',
'.a-IRR-table tr td {',
'    background-color: #96e29a;',
'    font-size: var(--jui-dialog-title-font-size,12px);',
'    color: #000000;',
'   /* font-family: cursive;*/',
'    font-weight: bold;',
'  ',
'    }',
''))
,p_step_template=>wwv_flow_imp.id(40071096862263645)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221214111732'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20086002664992233)
,p_plug_name=>'Filtros'
,p_region_name=>'FILTRO'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20087603375992249)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20087739653992250)
,p_plug_name=>'STNGO'
,p_region_name=>'STNGO'
,p_parent_plug_id=>wwv_flow_imp.id(20087603375992249)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 TECNICO,',
'       TO_NUMBER(C002) NRO_COMPROBANTE,',
'       C003 FINALIZADO_POR,',
'       TO_DATE(C004) FEC_COMPROBANTE,',
'       C005 COD_ARTICULO,',
'       C006 DESC_ARTICULO,',
'       C007 COD_MOBRA,',
'       C008 MANO_OBRA,',
'       TO_NUMBER(C009) CANTIDAD,',
'       TO_NUMBER(C010) MONTO,',
'       TO_NUMBER(C011) PRECIO,',
'       C012 ARTIC_REPUESTO,',
'       C013 DESC_REPUESTOS_ART,',
'       TO_NUMBER(C014) CANTIDAD2,',
'       TO_NUMBER(C015) COSTO,',
'       TO_NUMBER(C016) MONTO3,',
'       TO_NUMBER(C017) MONTO_LISTA,',
'       TO_NUMBER(C018) MONTO_PRESUPUESTO,',
'       C019 RETIRADO,',
'       TO_NUMBER(C020) MONTO_GARANTIA,',
'       TO_NUMBER(C021) MONTO_PARTICULAR,',
'       C022 TALLER,',
'       C023 CONDICION,',
'       C024 ES_VALIDO,',
'       C025 ORIGEN_OT,',
'       C026 ORIGEN_DETALLE,',
'       TO_NUMBER(C027) COMISION_PARTICULAR,',
'       TO_NUMBER(C028) COMISION_GARANTIA',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''STNGO''',
' ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P147_TIPO_REPORTE'
,p_plug_display_when_cond2=>'STNGO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STNGO'
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
 p_id=>wwv_flow_imp.id(20903721745597001)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>20903721745597001
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20903838696597002)
,p_db_column_name=>'TECNICO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tecnico'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20903911545597003)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'OT'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904054237597004)
,p_db_column_name=>'FINALIZADO_POR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Finalizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904144899597005)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904268761597006)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904364746597007)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Desc. Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904417308597008)
,p_db_column_name=>'COD_MOBRA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod. M. Obra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904565559597009)
,p_db_column_name=>'MANO_OBRA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Mano Obra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904645392597010)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904702822597011)
,p_db_column_name=>'MONTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904812079597012)
,p_db_column_name=>'PRECIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20904923385597013)
,p_db_column_name=>'ARTIC_REPUESTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod. Repuesto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905091254597014)
,p_db_column_name=>'DESC_REPUESTOS_ART'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Desc. Repuestos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905138535597015)
,p_db_column_name=>'CANTIDAD2'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cantidad2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905242996597016)
,p_db_column_name=>'COSTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905391890597017)
,p_db_column_name=>'MONTO3'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Monto3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905461578597018)
,p_db_column_name=>'MONTO_LISTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Monto Lista'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905565617597019)
,p_db_column_name=>'MONTO_PRESUPUESTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Monto Presupuesto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905693874597020)
,p_db_column_name=>'RETIRADO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Retirado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905752432597021)
,p_db_column_name=>'MONTO_GARANTIA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Monto Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905832223597022)
,p_db_column_name=>'MONTO_PARTICULAR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Monto Particular'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20905935793597023)
,p_db_column_name=>'TALLER'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Taller'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906072563597024)
,p_db_column_name=>'CONDICION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906117442597025)
,p_db_column_name=>'ES_VALIDO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Es Valido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906280730597026)
,p_db_column_name=>'ORIGEN_OT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Origen OT'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906390358597027)
,p_db_column_name=>'ORIGEN_DETALLE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Origen Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906461262597028)
,p_db_column_name=>'COMISION_PARTICULAR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Comision Particular'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906506342597029)
,p_db_column_name=>'COMISION_GARANTIA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Comision Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20931015628622035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'209311'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TECNICO:NRO_COMPROBANTE:FINALIZADO_POR:FEC_COMPROBANTE:COD_ARTICULO:DESC_ARTICULO:COD_MOBRA:MANO_OBRA:CANTIDAD:MONTO:PRECIO:ARTIC_REPUESTO:DESC_REPUESTOS_ART:CANTIDAD2:COSTO:MONTO3:MONTO_LISTA:MONTO_PRESUPUESTO:RETIRADO:MONTO_GARANTIA:MONTO_PARTICULA'
||'R:TALLER:CONDICION:ES_VALIDO:ORIGEN_OT:ORIGEN_DETALLE:COMISION_PARTICULAR:COMISION_GARANTIA'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20906762434597031)
,p_plug_name=>'STA'
,p_parent_plug_id=>wwv_flow_imp.id(20087603375992249)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_DATE(C001) FEC_COMPROBANTE,',
'       TO_DATE(C002) FECHA_CO_DISTRIBUIDOR,',
'       C003 COD_PROVEEDOR,',
'       C004 NOMBRE,',
'       TO_DATE(C005) FEC_CIERRE,',
'       C006 COD_ARTICULO,',
'       C007 DESCRIPCION,',
'       TO_NUMBER(C008) NRO_OT,',
'       TO_NUMBER(C009) NRO_ORDEN,',
'       C010 COD_REPUESTO,',
'       C011 MO_REPUESTO,',
'       TO_NUMBER(C012) COSTO_ULTIMO,',
'       TO_NUMBER(C013) PRECIO_BASE,',
'       C014 CONDICION,',
'       C015 COD_ORIGEN,',
'       C016 ORIGEN_DESC,',
'       C017 DESC_DIVISION,',
'       TO_NUMBER(C018) CANT_MO,',
'       C019 COLOR,',
'       C020 VAL_MO,',
'       C021 SUPERA_GARANTIA,',
'       C022 PRIN_DIST',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''STA''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P147_TIPO_REPORTE'
,p_plug_display_when_cond2=>'STA'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STA'
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
 p_id=>wwv_flow_imp.id(20906881232597032)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>20906881232597032
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20906981640597033)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907089681597034)
,p_db_column_name=>'FECHA_CO_DISTRIBUIDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Co-Distribuidor'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907198867597035)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907297359597036)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907323142597037)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907418550597038)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod. Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907528100597039)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Descripcion Art.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907671984597040)
,p_db_column_name=>'COD_REPUESTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod. MDO'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907745452597041)
,p_db_column_name=>'MO_REPUESTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Mano de Obra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20907894651597042)
,p_db_column_name=>'COSTO_ULTIMO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Costo Ultimo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20908055994597044)
,p_db_column_name=>'CONDICION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Condicion'
,p_column_html_expression=>'<span style=''width:400px;display:inline-block;''>#CONDICION#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20908129888597045)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod. Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20908279733597046)
,p_db_column_name=>'ORIGEN_DESC'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20908321724597047)
,p_db_column_name=>'DESC_DIVISION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20908519729597049)
,p_db_column_name=>'PRECIO_BASE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Precio Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22874932166981537)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24242842696646948)
,p_db_column_name=>'CANT_MO'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Cant Mo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24242904653646949)
,p_db_column_name=>'NRO_OT'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Nro. OT'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27024059433233309)
,p_db_column_name=>'COLOR'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27964110728779039)
,p_db_column_name=>'VAL_MO'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Val Mo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27964914076779047)
,p_db_column_name=>'SUPERA_GARANTIA'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Supera Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(250695121115243219)
,p_db_column_name=>'PRIN_DIST'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Prin Dist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20948788210995497)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'209488'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'SUPERA_GARANTIA:NRO_OT:FEC_COMPROBANTE:FECHA_CO_DISTRIBUIDOR:COD_PROVEEDOR:NOMBRE:FEC_CIERRE:COD_ARTICULO:DESCRIPCION:NRO_ORDEN:COD_REPUESTO:MO_REPUESTO:COSTO_ULTIMO:PRECIO_BASE:CONDICION:COD_ORIGEN:ORIGEN_DESC:DESC_DIVISION:'
,p_sort_column_1=>'FEC_CIERRE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'NRO_OT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60011891682194325)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'Duplicado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CANT_MO'
,p_operator=>'>'
,p_expr=>'1'
,p_condition_sql=>' (case when ("CANT_MO" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fffb98'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60012624909194326)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'MDo Excede limite'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COLOR'
,p_operator=>'='
,p_expr=>'V'
,p_condition_sql=>' (case when ("COLOR" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''V''  '
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_row_bg_color=>'#98bde3'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60014260343194327)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'Linea y/o Categoria sin MDO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VAL_MO'
,p_operator=>'='
,p_expr=>'NA'
,p_condition_sql=>' (case when ("VAL_MO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>30
,p_row_bg_color=>'#bdbdbd'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60013898514194327)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'No coincide MDO en OT con Maestro'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VAL_MO'
,p_operator=>'='
,p_expr=>'N'
,p_condition_sql=>' (case when ("VAL_MO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''N''  '
,p_enabled=>'Y'
,p_highlight_sequence=>40
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60013424052194326)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'Garantia'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SUPERA_GARANTIA'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("SUPERA_GARANTIA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>50
,p_column_bg_color=>'#a96e17'
,p_column_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60013010618194326)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'Sin distribuidor en OT'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PRIN_DIST'
,p_operator=>'='
,p_expr=>'PINTA'
,p_condition_sql=>' (case when ("PRIN_DIST" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PINTA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>60
,p_row_bg_color=>'#88eeeb'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(60012291933194326)
,p_report_id=>wwv_flow_imp.id(20948788210995497)
,p_name=>'OT sin MDO asignada'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_REPUESTO'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("COD_REPUESTO" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>70
,p_row_bg_color=>'#d67327'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20874290488300478)
,p_plug_name=>'Reporte de OT Terminadas por Tecnico - Comisiones'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20087259804992245)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(20086002664992233)
,p_button_name=>'EJECUTAR'
,p_button_static_id=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20087578915992248)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(20086002664992233)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20086175807992234)
,p_name=>'P147_TIPO_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20086002664992233)
,p_item_default=>'STNGO'
,p_prompt=>'Tipo de Reporte'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:STNGO;STNGO,STA;STA'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20086257620992235)
,p_name=>'P147_NRO_LOTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20086002664992233)
,p_prompt=>'Nro. Lote'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20086630495992239)
,p_name=>'P147_FEC_DESDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20086002664992233)
,p_prompt=>'Fecha '
,p_placeholder=>'Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20086746397992240)
,p_name=>'P147_FEC_HASTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20086002664992233)
,p_placeholder=>'Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20086377493992236)
,p_name=>'Cambiar_ Tipo_Reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P147_TIPO_REPORTE'
,p_condition_element=>'P147_TIPO_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'STA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20086467390992237)
,p_event_id=>wwv_flow_imp.id(20086377493992236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20086539481992238)
,p_event_id=>wwv_flow_imp.id(20086377493992236)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20086851994992241)
,p_name=>'Cambiar_Fecha_desde'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P147_FEC_DESDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20086990458992242)
,p_event_id=>wwv_flow_imp.id(20086851994992241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_FEC_DESDE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P147_FEC_DESDE IS NOT NULL THEN ',
' RETURN FUNCDB_TRAER_FECHA(:P147_FEC_DESDE);',
'END IF;'))
,p_attribute_07=>'P147_FEC_DESDE'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20087015330992243)
,p_name=>'CAmbiar_Fecha_Hasta'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P147_FEC_HASTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20087133016992244)
,p_event_id=>wwv_flow_imp.id(20087015330992243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P147_FEC_HASTA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P147_FEC_HASTA IS NOT NULL THEN ',
' RETURN FUNCDB_TRAER_FECHA(:P147_FEC_HASTA);',
'END IF;'))
,p_attribute_07=>'P147_FEC_HASTA'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36098349362119745)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20087259804992245)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36098488285119746)
,p_event_id=>wwv_flow_imp.id(36098349362119745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'EJECUTAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27964419101779042)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cagar Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTROTECOM.CARGA_REPORTE_COLLECTION(:P147_TIPO_REPORTE,',
'                                   :P_COD_EMPRESA,',
'                                   :P147_NRO_LOTE,',
'                                   :P147_FEC_DESDE,',
'                                   :P147_FEC_HASTA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20087415213992247)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Limpia Pagina'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'EJECUTAR'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
