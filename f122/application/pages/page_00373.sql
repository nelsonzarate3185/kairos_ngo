prompt --application/pages/page_00373
begin
--   Manifest
--     PAGE: 00373
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
 p_id=>373
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVMRGPRO - reporte'
,p_alias=>'FVMRGPRO-REPORTE'
,p_step_title=>'FVMRGPRO - reporte'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230503112644'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103967538109984619)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107248829278898161)
,p_plug_name=>'FVMRGPRO - reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NRO_PROMO,FECHA,ESTADO,NRO_DESPACHO,NRO_EMBARQUE, COD_USUARIO creado_por, USUARIO_VERIFICACION verificado_por,USUARIO_AUT_COMERCIAL,USUARIO_CONFIRMADO_DEPOSITO,USUARIO_CONFIRMADO_COMERCIAL from inv.Fv_Margen_CAB',
'where cod_empresa = :p_cod_empresa',
'order by NRO_PROMO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'FVMRGPRO - reporte'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(107248920916898161)
,p_name=>'FVMRGPRO - reporte'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>107248920916898161
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107249305364898163)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nro Promo'
,p_column_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:59:P59_P_NRO_PROMO:#NRO_PROMO#'
,p_column_linktext=>'#NRO_PROMO#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107249772546898164)
,p_db_column_name=>'FECHA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107250166372898164)
,p_db_column_name=>'ESTADO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107250559773898164)
,p_db_column_name=>'NRO_DESPACHO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nro Despacho'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107250988207898165)
,p_db_column_name=>'NRO_EMBARQUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nro Embarque'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156803903297017211)
,p_db_column_name=>'CREADO_POR'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156804024848017212)
,p_db_column_name=>'VERIFICADO_POR'
,p_display_order=>25
,p_column_identifier=>'G'
,p_column_label=>'Verificado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156804117306017213)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>35
,p_column_identifier=>'H'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156804256898017214)
,p_db_column_name=>'USUARIO_CONFIRMADO_DEPOSITO'
,p_display_order=>45
,p_column_identifier=>'I'
,p_column_label=>'Usuario Confirmado Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156804378044017215)
,p_db_column_name=>'USUARIO_CONFIRMADO_COMERCIAL'
,p_display_order=>55
,p_column_identifier=>'J'
,p_column_label=>'Usuario Confirmado Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107251302491899133)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1072514'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NRO_PROMO:FECHA:ESTADO:NRO_DESPACHO:NRO_EMBARQUE:CREADO_POR:VERIFICADO_POR:USUARIO_AUT_COMERCIAL:USUARIO_CONFIRMADO_COMERCIAL:'
,p_sort_column_1=>'NRO_PROMO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103967295400984616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107248829278898161)
,p_button_name=>'bt_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103967601901984620)
,p_name=>'P373_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103967538109984619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103967734487984621)
,p_name=>'P373_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(103967538109984619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103967385263984617)
,p_name=>'DA_IR_PAG_59'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103967295400984616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103967455550984618)
,p_event_id=>wwv_flow_imp.id(103967385263984617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 59,',
'                            p_items  => ''P59_P_NRO_PROMO'',',
'                            p_values => (NULL)) f_url_1',
'INTO :P373_URL',
'FROM DUAL;'))
,p_attribute_03=>'P373_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103967851221984622)
,p_event_id=>wwv_flow_imp.id(103967385263984617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P373_URL").getValue();',
'',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp.component_end;
end;
/
