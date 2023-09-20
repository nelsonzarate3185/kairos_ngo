prompt --application/pages/page_00614
begin
--   Manifest
--     PAGE: 00614
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
 p_id=>614
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte - CCCLISUC'
,p_alias=>'CCCLISUC'
,p_step_title=>'Reporte - CCCLISUC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230919105951'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206306744175040115)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.COD_CLIENTE,P.NOMBRE NOMBRE_CLIENTE, B.DIRECCION, B.NOMBRE,',
'PRO.DESCRIPCION DEPARTAMENTO, C.DESCRIPCION CIUDAD, B.TELEFONO',
'FROM CC_CLIENTES CC, BS_SUCURSAL_CLIENTE B, PERSONAS P,PAISES PP ,CIUDADES C, PROVINCIAS PRO',
'WHERE CC.COD_EMPRESA = :P_COD_EMPRESA',
' AND CC.COD_PERSONA=P.COD_PERSONA',
' AND (CC.COD_CLIENTE = :P614_COD_CLIENTE)',
' AND B.COD_PERSONA=CC.COD_PERSONA',
' AND B.COD_PAIS=PP.COD_PAIS',
' AND B.COD_PAIS=PRO.COD_PAIS',
' AND B.COD_PROVINCIA=PRO.COD_PROVINCIA',
' AND B.COD_PAIS=C.COD_PAIS',
' AND B.COD_PROVINCIA=C.COD_PROVINCIA',
' AND B.COD_CIUDAD=C.COD_CIUDAD'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P614_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(206306847298040116)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>206306847298040116
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206306937187040117)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206307080098040118)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206307147544040119)
,p_db_column_name=>'DIRECCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206307298800040120)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206307320548040121)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206307484095040122)
,p_db_column_name=>'CIUDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206307558478040123)
,p_db_column_name=>'TELEFONO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(208176246902481557)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2081763'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE_CLIENTE:NOMBRE:DIRECCION:DEPARTAMENTO:CIUDAD:TELEFONO:'
,p_break_on=>'COD_CLIENTE:NOMBRE_CLIENTE:0:0:0:0'
,p_break_enabled_on=>'COD_CLIENTE:NOMBRE_CLIENTE:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(206308017533040128)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(206306744175040115)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver '
,p_button_redirect_url=>'f?p=&APP_ID.:613:&SESSION.::&DEBUG.:::'
,p_grid_column_attributes=>'style="margin-top:11px"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206307745386040125)
,p_name=>'P614_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(206306744175040115)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206308134999040129)
,p_name=>'P614_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(206306744175040115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206307865662040126)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P614_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206307970075040127)
,p_event_id=>wwv_flow_imp.id(206307865662040126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206306744175040115)
);
wwv_flow_imp.component_end;
end;
/
