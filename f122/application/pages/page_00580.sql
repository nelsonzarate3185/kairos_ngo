prompt --application/pages/page_00580
begin
--   Manifest
--     PAGE: 00580
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
 p_id=>580
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Calculo de Comisiones'
,p_alias=>'CALCULO-DE-COMISIONES'
,p_step_title=>'Calculo de Comisiones'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: darkblue; }',
'.a-IRR-header {    background-color: #fff8b7;',
'background-image: linear-gradient(180deg, #fff8b7 0%, #FFFB7D 100%);',
'',
'/*background: #fff8b7 !important;*/',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
'',
'',
'#P580_VTA_TOTAL, #P580_BASE_COMISION, #P580_PORC_FACT, #P580_MONTO_FACT, #P580_PORC_CUMP, #P580_MONTO_CUMP{',
'    font-size:  20px !important;  ',
'    font-weight: bold;',
'    background: #fffded !important;',
'    }',
'',
'#P580_TOT_COMISION{',
'    font-size:  20px !important;  ',
'    font-weight: bold;',
'    background: #fffded !important;',
'    color: darkred;',
'    }',
'    '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230818091753'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187805003220448446)
,p_plug_name=>'Valores a Calcular'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188556385889494401)
,p_plug_name=>'Calculos'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188558592768494423)
,p_plug_name=>'FACTURACION '
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VTA_TOTAL',
'       ,N005 PORC_LOGRADO',
'       ,to_number(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_FACT'' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FACTURACION '
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
 p_id=>wwv_flow_imp.id(188560711469494445)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>188560711469494445
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188560898209494446)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188560946595494447)
,p_db_column_name=>'NOMBRE_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188561027159494448)
,p_db_column_name=>'BASE_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188561127619494449)
,p_db_column_name=>'PORC_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188561250634494450)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081220044831001)
,p_db_column_name=>'VTA_TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total  de Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081542868831004)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082698143831015)
,p_db_column_name=>'PORC_LOGRADO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'% Logrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190697499150286644)
,p_db_column_name=>'IMP_COMISION'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190093312063814149)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1900934'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_DESCRIPCION:BASE_COMISION:PORC_PESO:OBJETIVO:VTA_TOTAL:PORC_LOGRADO:IMP_COMISION:'
,p_sum_columns_on_break=>'IMP_COMISION:BASE_COMISION:PORC_PESO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188558645256494424)
,p_plug_name=>'CUMPLIMIENTO DE POLITICAS'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VAL_ALCANZADO',
'       ,N005 PORC_LOGRADO',
'       ,to_NUMBER(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_CUMP'' ',
'ORDER BY C001 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CUMPLIMIENTO DE POLITICAS'
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
 p_id=>wwv_flow_imp.id(190081681114831005)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>190081681114831005
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081729186831006)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081800753831007)
,p_db_column_name=>'NOMBRE_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n Pol\00EDtica')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081912558831008)
,p_db_column_name=>'BASE_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082082416831009)
,p_db_column_name=>'PORC_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082115641831010)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082242234831011)
,p_db_column_name=>'VAL_ALCANZADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Real Alcanzado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082316541831012)
,p_db_column_name=>'PORC_LOGRADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% Logrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082590711831014)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190697938345286649)
,p_db_column_name=>'IMP_COMISION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190093994863814135)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1900940'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_DESCRIPCION:BASE_COMISION:PORC_PESO:OBJETIVO:VAL_ALCANZADO:PORC_LOGRADO:IMP_COMISION:'
,p_sum_columns_on_break=>'IMP_COMISION:BASE_COMISION:PORC_PESO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(190082861136831017)
,p_name=>'DETALLE DE VENTAS'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEC_COMPROBANTE,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_ARTICULO,',
'       DESC_ARTICULO,',
'       IMPORTE, ',
'       CANTIDAD, ',
'       MONTO_TOTAL,',
'       FLETE,',
'       PERIODO',
'  from VW_COMISION_VEND_DET_NP',
'  where cod_vendedor = :P580_VENDEDOR',
'  and   periodo= :P580_MES||:P580_ANIO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P580_MES,P580_ANIO,P580_VENDEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083396881831022)
,p_query_column_id=>1
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084279732831031)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084354927831032)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083488090831023)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>'Numero'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083574522831024)
,p_query_column_id=>5
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>50
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083168393831020)
,p_query_column_id=>6
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>60
,p_column_heading=>unistr('C\00F3digo Articulo')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083230864831021)
,p_query_column_id=>7
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>70
,p_column_heading=>'Descripcion Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084113759831030)
,p_query_column_id=>8
,p_column_alias=>'IMPORTE'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083859655831027)
,p_query_column_id=>9
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>80
,p_column_heading=>'Cant'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083745039831026)
,p_query_column_id=>10
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>100
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084921474831038)
,p_query_column_id=>11
,p_column_alias=>'FLETE'
,p_column_display_sequence=>120
,p_column_heading=>'Flete'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190085075068831039)
,p_query_column_id=>12
,p_column_alias=>'PERIODO'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188556430343494402)
,p_plug_name=>'LATERAL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(188556522249494403)
,p_name=>'ESCALA DE FACTURACION'
,p_parent_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'FV_ESCALA_COMISION_PORC'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'cod_empresa= :P_COD_EMPRESA and',
'cod_grupo = :P580_COD_ESCALA_FAC'))
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P580_COD_ESCALA_FAC'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188556830230494406)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188556981012494407)
,p_query_column_id=>2
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557094010494408)
,p_query_column_id=>3
,p_column_alias=>'MARGEN_INI'
,p_column_display_sequence=>30
,p_column_heading=>'Margen Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557172667494409)
,p_query_column_id=>4
,p_column_alias=>'MARGEN_FIN'
,p_column_display_sequence=>40
,p_column_heading=>'Margen Final'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557212561494410)
,p_query_column_id=>5
,p_column_alias=>'PORC_COM'
,p_column_display_sequence=>50
,p_column_heading=>'% Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(188556665821494404)
,p_name=>'ESCALA CUMPLIMIENTO DE POLITICA'
,p_parent_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'FV_ESCALA_COMISION_PORC'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'cod_empresa= :P_COD_EMPRESA and',
'cod_grupo = :P580_COD_ESCALA_CUM'))
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P580_COD_ESCALA_CUM'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557464256494412)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557567125494413)
,p_query_column_id=>2
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557603503494414)
,p_query_column_id=>3
,p_column_alias=>'MARGEN_INI'
,p_column_display_sequence=>30
,p_column_heading=>'Margen Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557703194494415)
,p_query_column_id=>4
,p_column_alias=>'MARGEN_FIN'
,p_column_display_sequence=>40
,p_column_heading=>'Margen Final'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557808487494416)
,p_query_column_id=>5
,p_column_alias=>'PORC_COM'
,p_column_display_sequence=>50
,p_column_heading=>'% Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188558087749494418)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_button_name=>'Consultar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-filter'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187805442439448450)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187805193561448447)
,p_name=>'P580_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_VENDEDORES_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(v.descripcion, p.nombre) nombre, v.cod_vendedor, v.cod_vendedor||'' - ''||nvl(v.descripcion, p.nombre)  descri',
'  FROM fv_vendedores v, personas p',
' WHERE v.cod_empresa = ''1''',
'   AND v.cod_persona = p.cod_persona',
'   AND v.estado = ''A''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187805243577448448)
,p_name=>'P580_MES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_prompt=>'MES'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187805304277448449)
,p_name=>'P580_ANIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_prompt=>unistr('A\00D1O')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188557305244494411)
,p_name=>'P580_COD_GRUPO_COMISION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188558869592494426)
,p_name=>'P580_PORC_FACT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'% PESO'
,p_format_mask=>'999G999G999G999G999G990D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188558904100494427)
,p_name=>'P580_PORC_CUMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'% PESO'
,p_format_mask=>'999G999G999G999G999G990D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559031066494428)
,p_name=>'P580_COD_ESCALA_FAC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559141140494429)
,p_name=>'P580_COD_ESCALA_CUM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559530019494433)
,p_name=>'P580_BASE_COMISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'BASE COMISION '
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559621156494434)
,p_name=>'P580_TIPO_CALCULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188560564239494443)
,p_name=>'P580_MONTO_FACT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'FACTURACION'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188560623139494444)
,p_name=>'P580_MONTO_CUMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'CUMPLIMIENTO POL.'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190082772106831016)
,p_name=>'P580_VTA_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'TOTAL DE VENTA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190698096857286650)
,p_name=>'P580_TOT_COMISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'TOTAL COMISION'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188558188330494419)
,p_name=>'da_valida_valores'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(188558087749494418)
,p_condition_element=>'P580_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(188558355616494421)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar el Vendedor.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188558445497494422)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VERROR EXCEPTION;',
'    VMENSAJE VARCHAR2(500);',
'    VTA_TOTAL NUMBER(12,2):=0;',
'BEGIN',
'    IF :P580_MES IS NULL THEN',
'            VMENSAJE:=''Debe seleccionar el MES.'';',
'            raise verror;',
'    ELSE',
'        IF :P580_ANIO IS NULL THEN',
unistr('            VMENSAJE:=''Debe seleccionar el A\00D1O'';'),
'            raise verror;',
'        ELSE ',
'               select   NVL(sum(v.monto_total),0)',
'               INTO VTA_TOTAL',
'               from vw_comision_vend_det_np v ',
'               where v.periodo=:P580_MES||:P580_ANIO',
'               and   v.cod_vendedor = :P580_VENDEDOR ;',
'               :P580_VTA_TOTAL :=VTA_TOTAL;',
'        END IF;',
'    END IF;',
'EXCEPTION',
'    WHEN VERROR THEN',
'            raise_application_error(-20000, VMENSAJE );',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Error intentar recuperar los datos.'' || sqlerrm );',
'END;    ',
'',
''))
,p_attribute_02=>'P580_VENDEDOR,P580_MES,P580_ANIO'
,p_attribute_03=>'P580_VTA_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697000183286640)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697513922286645)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VERROR EXCEPTION;',
'    VMENSAJE VARCHAR2(500);',
'begin',
'              inv.fvcomisionp.pr_calcula_comision(p_cod_vendedor => :P580_VENDEDOR,',
'                                                  p_mes => :P580_MES,',
'                                                  p_anio => :P580_ANIO,',
'                                                  p_mensaje => VMENSAJE);',
'',
'        if VMENSAJE is not null then',
'            raise verror;',
'        end if;',
'',
'exception',
'    WHEN VERROR THEN',
'            raise_application_error(-20000, VMENSAJE );',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;',
''))
,p_attribute_02=>'P580_VENDEDOR,P580_MES,P580_ANIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697174083286641)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188558206927494420)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697712179286647)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697849820286648)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190082861136831017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188559257802494430)
,p_name=>'da_datos_vendedor'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_VENDEDOR'
,p_condition_element=>'P580_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559382543494431)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P580_VTA_TOTAL:=0;',
':P580_TOT_COMISION:=0;',
'SELECT g.cod_grupo_comision,',
'       g.porc_peso_fact,',
'       g.porc_peso_cump,',
'       g.cod_escala_fact,',
'       g.cod_escala_cump,',
'       g.importe_base_comision,',
'       g.tipo_calculo_fact ',
'into :P580_COD_GRUPO_COMISION,',
'     :P580_PORC_FACT,',
'     :P580_PORC_CUMP,',
'     :P580_COD_ESCALA_FAC,',
'     :P580_COD_ESCALA_CUM,',
'     :P580_BASE_COMISION,',
'     :P580_TIPO_CALCULO',
'FROM fv_vendedores v,',
'     fv_grupos_comision g',
'WHERE v.COD_EMPRESA= :P_COD_EMPRESA',
'and   v.cod_grupo=g.cod_grupo_comision',
'and   v.cod_empresa=g.cod_empresa',
'and   v.cod_vendedor= :P580_VENDEDOR;',
'',
'',
':P580_MONTO_CUMP:= ROUND(((:P580_BASE_COMISION*:P580_PORC_CUMP)/100));',
':P580_MONTO_FACT:= ROUND(((:P580_BASE_COMISION*:P580_PORC_FACT)/100));',
'exception',
'    when others then',
'             :P580_COD_GRUPO_COMISION:=null;',
'             :P580_PORC_FACT:=null;',
'             :P580_PORC_CUMP:=null;',
'             :P580_COD_ESCALA_FAC:=null;',
'             :P580_COD_ESCALA_CUM:=null;',
'             :P580_BASE_COMISION:=null;',
'             :P580_TIPO_CALCULO:=null;',
'        raise_application_error(-20000, ''Error al intentar recuperar los datos del Vendedor. '' || sqlerrm );',
'',
'end;'))
,p_attribute_02=>'P580_VENDEDOR'
,p_attribute_03=>'P580_COD_GRUPO_COMISION,P580_PORC_FACT,P580_PORC_CUMP,P580_COD_ESCALA_FAC,P580_COD_ESCALA_CUM,P580_TIPO_CALCULO,P580_BASE_COMISION,P580_MONTO_FACT,P580_MONTO_CUMP,P580_VTA_TOTAL,P580_TOT_COMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559776739494435)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P580_COD_GRUPO_COMISION,P580_PORC_FACT,P580_PORC_CUMP,P580_COD_ESCALA_FAC,P580_COD_ESCALA_CUM,P580_TIPO_CALCULO,P580_BASE_COMISION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559810373494436)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556522249494403)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559924818494437)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556665821494404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188560094576494438)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188560183459494439)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(192586982435827003)
,p_name=>'da_comision_tot'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(188558592768494423)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(192587018204827004)
,p_event_id=>wwv_flow_imp.id(192586982435827003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NVL(sum(to_NUMBER(C003)) ,0)',
'into :P580_TOT_COMISION',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME in (''FV_CALC_COM_CUMP'' ,''FV_CALC_COM_FACT'')',
';'))
,p_attribute_03=>'P580_TOT_COMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188560454281494442)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190697375867286643)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*     :P580_VTA_TOTAL:=0;',
'       :P580_BASE_COMISION:=''0'';',
'       :P580_PORC_FACT:=''0.0'';',
'       :P580_MONTO_FACT:=0;',
'       :P580_PORC_CUMP:=''0.0'';',
'       :P580_MONTO_CUMP:=0;',
'*/',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_FACT''); ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_CUMP''); ',
'       ',
'',
'      '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
