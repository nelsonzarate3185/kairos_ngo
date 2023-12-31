prompt --application/pages/page_00413
begin
--   Manifest
--     PAGE: 00413
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
 p_id=>413
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TEST'
,p_alias=>'TEST'
,p_step_title=>'TEST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20230302125442'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107241101299845221)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'',
'  FROM table(inv.seguridad.retorna_menu_apex (pAPP_ID      => 122,',
'                                          pUSUA0100_ID => 149, ',
'                                          pPAGE_ID     => 1,',
'                                          pSESSION_ID  => NULL,',
'                                          pParam       => '''',',
'                                          pdm$tamb     => 1));'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(120712733533056511)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'no hay datos'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ANDRESDI'
,p_internal_uid=>120712733533056511
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120716324829056547)
,p_db_column_name=>'LEVE'
,p_display_order=>10
,p_column_identifier=>'T'
,p_column_label=>'Leve'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120716491534056548)
,p_db_column_name=>'LABE'
,p_display_order=>20
,p_column_identifier=>'U'
,p_column_label=>'Labe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120716572550056549)
,p_db_column_name=>'TARG'
,p_display_order=>30
,p_column_identifier=>'V'
,p_column_label=>'Targ'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120939656809636401)
,p_db_column_name=>'ICON'
,p_display_order=>50
,p_column_identifier=>'X'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120939785913636402)
,p_db_column_name=>'AYUD'
,p_display_order=>60
,p_column_identifier=>'Y'
,p_column_label=>'Ayud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120939897569636403)
,p_db_column_name=>'CSSC'
,p_display_order=>70
,p_column_identifier=>'Z'
,p_column_label=>'Cssc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120939949641636404)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'AA'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120940186616636406)
,p_db_column_name=>'ES_CURR'
,p_display_order=>90
,p_column_identifier=>'AB'
,p_column_label=>'Es Curr'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120940252869636407)
,p_db_column_name=>'CONT'
,p_display_order=>100
,p_column_identifier=>'AC'
,p_column_label=>'Cont'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(120908554604565669)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1209086'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
);
wwv_flow_imp.component_end;
end;
/
