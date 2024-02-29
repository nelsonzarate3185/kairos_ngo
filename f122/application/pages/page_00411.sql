prompt --application/pages/page_00411
begin
--   Manifest
--     PAGE: 00411
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>411
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte Reparto por Planillas'
,p_alias=>'REPORTE-REPARTO-POR-PLANILLAS'
,p_step_title=>'Reporte Reparto por Planillas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230403095612'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121293317405956222)
,p_plug_name=>'Reparto por Planillas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select cod_sucursal||'' - ''||descripcion',
'from inv.sucursales',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_sucursal=c.COD_SUCURSAL) Sucursal,',
'c.NRO_PLANILLA,',
'TO_CHAR(c.FEC_PLANILLA,''DD/MM/YYYY'') Fecha_Planilla,',
'TO_CHAR(c.FEC_RENDICION,''DD/MM/YYYY'') Fecha_Rendicion,',
'c.COD_USUARIO Usuario,',
'(case when c.ESTADO =''P'' THEN ''PENDIENTE''',
' WHEN c.ESTADO=''F'' THEN ''FIRMA BOLETA''',
' WHEN c.ESTADO=''A'' THEN ''ANULADO''',
' WHEN c.ESTADO=''R'' THEN ''CON RECIBO''',
' WHEN c.ESTADO=''N'' THEN ''DEVUELTO''',
'END) Estado',
'from inv.RP_REPARTO_CABECERA c',
'where cod_empresa = :P_COD_EMPRESA',
'and fec_planilla>sysdate-4000',
'order by fec_planilla desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reparto por Planillas'
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
 p_id=>wwv_flow_imp.id(121293440842956223)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FPONCE'
,p_internal_uid=>121293440842956223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121293768934956226)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,31:P31_NRO_PLANILLA:#NRO_PLANILLA#'
,p_column_linktext=>'#NRO_PLANILLA#'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121294424579956233)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121294517484956234)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Sucursal'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121295320086956242)
,p_db_column_name=>'FECHA_PLANILLA'
,p_display_order=>150
,p_column_identifier=>'S'
,p_column_label=>'Fecha Planilla'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121295449073956243)
,p_db_column_name=>'FECHA_RENDICION'
,p_display_order=>160
,p_column_identifier=>'T'
,p_column_label=>'Fecha Rendicion'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121295513506956244)
,p_db_column_name=>'USUARIO'
,p_display_order=>170
,p_column_identifier=>'U'
,p_column_label=>'Usuario'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(123862708197608791)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1238628'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NRO_PLANILLA:FECHA_PLANILLA:FECHA_RENDICION:SUCURSAL:ESTADO:USUARIO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121295936768956248)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(121293317405956222)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,31::'
);
wwv_flow_imp.component_end;
end;
/
