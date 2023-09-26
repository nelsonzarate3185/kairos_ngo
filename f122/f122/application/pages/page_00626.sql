prompt --application/pages/page_00626
begin
--   Manifest
--     PAGE: 00626
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
 p_id=>626
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pantalla de Documentos en Custodio'
,p_alias=>'CCRCUSDO'
,p_step_title=>'Pantalla de Documentos en Custodio'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230926125144'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210703751703902927)
,p_plug_name=>'R1 - ITEMS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210705874171902948)
,p_plug_name=>'AUXILIARES-R1'
,p_parent_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210705599496902945)
,p_plug_name=>'R2 - REPORTE_APEX'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 COD_EMPRESA,',
'       C002 tip_comprobante,                             ',
'       C003 ser_comprobante,									',
'       c004 fec_comprobante,',
'       c005 nro_comprobante,',
'       c006 cod_cliente,',
'       c007 nombre,',
'       c008 cod_custodio,',
'       c009 tot_comprobante',
'',
'',
' from APEX_COLLECTIONS',
'',
'  WHERE COLLECTION_NAME = ''B_REPORTE''',
'  AND :P626_AUX = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P626_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'R2 - REPORTE_APEX'
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
 p_id=>wwv_flow_imp.id(212767858247045015)
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
,p_internal_uid=>212767858247045015
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212767915057045016)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212768025751045017)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212768100468045018)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212768261274045019)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212768368980045020)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212768472239045021)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Custodio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212768556383045022)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212770393979045040)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Numero Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212770433190045041)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(212813749657478534)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2128138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOMBRE:COD_CUSTODIO:TOT_COMPROBANTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212769296727045029)
,p_plug_name=>'R2- REPORTE_COMUN'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  vt.tip_comprobante',
'       ,vt.ser_comprobante',
'       ,vt.nro_comprobante',
'       ,vt.fec_comprobante',
'       ,vt.cod_cliente',
'       ,p.nombre',
'       ,vt.cod_custodio',
'       ,vt.tot_comprobante',
' ',
'from ',
'     VT_COMPROBANTES_CABECERA VT, ',
'     CC_CLIENTES CL,',
'     PERSONAS P',
'where vt.cod_empresa=:P_COD_EMPRESA ',
'and (vt.cod_cliente=:P626_COD_CLIENTE or :P626_COD_CLIENTE is null)',
'and (trunc(vt.fec_comprobante) >= to_date(:P626_FEC_PLANILLA_DESDE,''DD/MM/YYYY'') OR :P626_FEC_PLANILLA_DESDE IS NULL)',
'and (trunc(vt.fec_comprobante) <= to_date(:P626_FEC_PLANILLA_HASTA,''DD/MM/YYYY'') OR :P626_FEC_PLANILLA_HASTA IS NULL)',
'and (vt.cod_custodio=:P626_COD_CUSTODIO_SAL or :P626_COD_CUSTODIO_SAL is null) ',
'and (vt.cod_usuario = :P626_COD_USUARIO_ENT OR :P626_COD_USUARIO_ENT IS NULL) ',
'and vt.cod_cliente=cl.cod_cliente',
'and vt.cod_empresa=cl.cod_empresa',
'and cl.cod_persona=p.cod_persona',
'--and P626_AUX := 1;',
'and not exists ( select distinct ''1'' from CC_PLAN_CUSTODIOS_DET Pd ',
'                  where vt.cod_empresa=Pd.COD_EMPRESA',
'                  and pd.tip_comprobante=vt.tip_comprobante',
'                  and pd.ser_comprobante=vt.ser_comprobante',
'                  and pd.nro_comprobante=vt.nro_comprobante',
'                )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'R2- REPORTE_COMUN'
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
 p_id=>wwv_flow_imp.id(212769367802045030)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>212769367802045030
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212769461969045031)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212769574609045032)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212769662057045033)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212769738201045034)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212769846776045035)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212769948125045036)
,p_db_column_name=>'NOMBRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212770071696045037)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212770146383045038)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(212830159545195639)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2128302'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOMBRE:COD_CUSTODIO:TOT_COMPROBANTE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210705373828902943)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212767034722045007)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210703850131902928)
,p_name=>'P626_SER_PLANILLA_DESDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Serie Planilla Desde'
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
 p_id=>wwv_flow_imp.id(210703923941902929)
,p_name=>'P626_NRO_PLANILLA_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>unistr('N\00FAmero Planilla Desde')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210704089239902930)
,p_name=>'P626_SER_PLANILLA_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Serie Planilla Hasta'
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
 p_id=>wwv_flow_imp.id(210704191799902931)
,p_name=>'P626_NRO_PLANILLA_HASTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Numero Planilla Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210704217878902932)
,p_name=>'P626_FEC_PLANILLA_DESDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210704324291902933)
,p_name=>'P626_FEC_PLANILLA_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210704490852902934)
,p_name=>'P626_COD_CUSTODIO_SAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Retirado del custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUSTODIOS_SAL_CCRCUSDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_custodio ',
'from cc_custodios ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
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
 p_id=>wwv_flow_imp.id(210704544142902935)
,p_name=>'P626_DESC_CUSTODIO_SAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>unistr('Descripci\00F3n Custodio ')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210704698040902936)
,p_name=>'P626_COD_CUSTODIO_ENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Entregado del Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUSTODIOS_ENT_CCRCUSDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_custodio ',
'from cc_custodios ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
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
 p_id=>wwv_flow_imp.id(210704720517902937)
,p_name=>'P626_DESC_CUSTODIO_ENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>unistr('Descripci\00F3n Custodio')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210704894760902938)
,p_name=>'P626_COD_USUARIO_ENT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Usuario Entrega'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_ENT_CCRCUSDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario, p.nombre ',
'from usuarios u, personas p ',
'where u.cod_persona = p.cod_persona ',
'order by u.cod_usuario'))
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
 p_id=>wwv_flow_imp.id(210704993174902939)
,p_name=>'P626_DESC_USUARIO_ENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>unistr('Descripci\00F3n Usuario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210705099752902940)
,p_name=>'P626_COD_USUARIO_REC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>unistr('Usuario Recepci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_REC_CCRCUSDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario, p.nombre ',
'from usuarios u, personas p ',
'where u.cod_persona = p.cod_persona ',
'order by u.cod_usuario'))
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
 p_id=>wwv_flow_imp.id(210705112031902941)
,p_name=>'P626_DESC_USUARIO_REC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>unistr('Descripci\00F3n Usuario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210705224836902942)
,p_name=>'P626_IND_RECEPCION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_prompt=>'Estado Planilla'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:RECEPCIONADOS;S,NO RECEPCIONADOS x Custodio;N,NO RECEPCIONADOS x Planilla;N0,COMPROBANTES SIN TRASLADO;SNT'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210705996973902949)
,p_name=>'P626_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210705874171902948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210706078564902950)
,p_name=>'P626_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(210705874171902948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212767401024045011)
,p_name=>'P626_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(210705874171902948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212767621686045013)
,p_name=>'P626_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212767753213045014)
,p_name=>'P626_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(210703751703902927)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210705631257902946)
,p_name=>'DA_CUSTODIO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P626_COD_CUSTODIO_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210705718831902947)
,p_event_id=>wwv_flow_imp.id(210705631257902946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P626_COD_CUSTODIO_SAL is not null then',
'   if :P626_COD_CUSTODIO_SAL = :P626_COD_CUSTODIO_ENT then',
unistr('      :P626_MSG := ''El custodio de recepci\00F3n debe ser diferente al de entrega'';'),
'   end if ;',
'   begin',
'      select descripcion',
'         into :P626_DESC_CUSTODIO_SAL',
'         from cc_custodios',
'         where cod_empresa  = :P_COD_EMPRESA',
'           and cod_custodio = :P626_COD_CUSTODIO_SAL ;',
'   exception',
'      when no_data_found then',
'         :P626_DESC_CUSTODIO_SAL := null ;',
'         :P626_MSG := ''No se encuentra custodio'';',
'      when others then',
'         :P626_DESC_CUSTODIO_SAL := null ;',
'         APEX_DEBUG.ERROR( ''Error en la tabla de custodios '' || sqlerrm ) ;',
'   end ;',
'else',
'   :P626_DESC_CUSTODIO_SAL := null ;',
'end if ;'))
,p_attribute_02=>'P626_COD_CUSTODIO_SAL,P626_COD_CUSTODIO_ENT,P626_DESC_CUSTODIO_SAL,P626_MSG'
,p_attribute_03=>'P626_MSG,P626_DESC_CUSTODIO_SAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212766452144045001)
,p_name=>'DA_CUSTODIO_ENT'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P626_COD_CUSTODIO_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212766533313045002)
,p_event_id=>wwv_flow_imp.id(212766452144045001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P626_COD_CUSTODIO_ENT is not null then',
'   begin',
'      select descripcion',
'         into :P626_DESC_CUSTODIO_ENT',
'         from cc_custodios',
'         where cod_empresa  = :P_COD_EMPRESA',
'           and cod_custodio = :P626_COD_CUSTODIO_ENT ;',
'   exception',
'      when no_data_found then',
'         :P626_DESC_CUSTODIO_ENT := null ;',
'         :P626_MSG := ''No se encuentra custodio'';',
'      when others then',
'         :P626_DESC_CUSTODIO_ENT := null ;',
'         APEX_DEBUG.ERROR ( ''Error en la tabla de custodios '' || sqlerrm ) ;',
'   end ;',
'else',
'   :P626_DESC_CUSTODIO_ENT := null ;',
'end if ;'))
,p_attribute_02=>'P626_COD_CUSTODIO_ENT,P626_DESC_CUSTODIO_ENT'
,p_attribute_03=>'P626_MSG,P626_DESC_CUSTODIO_ENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212766662413045003)
,p_name=>'DA_USUARIO_ENT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P626_COD_USUARIO_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212766767894045004)
,p_event_id=>wwv_flow_imp.id(212766662413045003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P626_COD_USUARIO_ENT is not null then',
'   begin',
'      select nombre ',
'         into :P626_DESC_USUARIO_ENT',
'         from usuarios u, personas p',
'         where u.cod_usuario = :P626_COD_USUARIO_ENT',
'           and u.cod_persona = p.cod_persona ;',
'   exception',
'      when no_data_found then',
'         :P626_DESC_USUARIO_ENT := null ;',
'         :P626_MSG := ''No se encuentra usuario'';',
'      when others then',
'         :P626_DESC_USUARIO_ENT := null ;',
'         APEX_DEBUG.ERROR( '' Error en la tabla de usuarios/personas '' || sqlerrm ) ;',
'   end ;',
'else',
'   :P626_DESC_USUARIO_ENT := null ;',
'end if ;',
''))
,p_attribute_02=>'P626_COD_USUARIO_ENT'
,p_attribute_03=>'P626_DESC_USUARIO_ENT,P626_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212766826713045005)
,p_name=>'DA_USUARIO_REC'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P626_COD_USUARIO_REC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212766920368045006)
,p_event_id=>wwv_flow_imp.id(212766826713045005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P626_COD_USUARIO_REC is not null then',
'   if :P626_COD_USUARIO_REC = :P626_COD_USUARIO_ENT then',
'      :P626_MSG := ''No puede ser igual al usuario de entrega'';',
'   end if ;',
'   begin',
'      select nombre ',
'         into :P626_DESC_USUARIO_REC',
'         from usuarios u, personas p',
'         where u.cod_usuario = :P626_COD_USUARIO_REC',
'           and u.cod_persona = p.cod_persona ;',
'   exception',
'      when no_data_found then',
'         :P626_DESC_USUARIO_REC := null ;',
'         :P626_MSG := ''No se encuentra usuario'';',
'   ',
'      when others then',
'         :P626_DESC_USUARIO_REC := null ;',
'         APEX_DEBUG.ERROR( '' Error en la tabla de usuarios/personas '' || sqlerrm ) ;',
'   ',
'   end ;',
'else',
'   :P626_DESC_USUARIO_REC := null ;',
'end if ;'))
,p_attribute_02=>'P626_COD_USUARIO_REC,P626_COD_USUARIO_ENT'
,p_attribute_03=>'P626_DESC_USUARIO_REC,P626_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212767113610045008)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212767034722045007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212767256840045009)
,p_event_id=>wwv_flow_imp.id(212767113610045008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212767304730045010)
,p_event_id=>wwv_flow_imp.id(212767113610045008)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P626_SER_PLANILLA_DESDE := null;',
':P626_NRO_PLANILLA_DESDE := null;',
':P626_SER_PLANILLA_HASTA := null;',
':P626_NRO_PLANILLA_HASTA := null;',
':P626_FEC_PLANILLA_DESDE := null;',
':P626_FEC_PLANILLA_HASTA := null;',
':P626_COD_CUSTODIO_SAL := null;',
':P626_DESC_CUSTODIO_SAL := null;',
':P626_COD_CUSTODIO_ENT := null;',
':P626_DESC_CUSTODIO_ENT := null;',
':P626_COD_USUARIO_ENT := null;',
':P626_DESC_USUARIO_ENT := null;',
':P626_COD_USUARIO_REC := null;',
':P626_DESC_USUARIO_REC := null;',
':P626_IND_RECEPCION := null;',
':P626_AUX := 0;'))
,p_attribute_03=>'P626_SER_PLANILLA_DESDE,P626_NRO_PLANILLA_DESDE,P626_SER_PLANILLA_HASTA,P626_NRO_PLANILLA_HASTA,P626_FEC_PLANILLA_DESDE,P626_FEC_PLANILLA_HASTA,P626_COD_CUSTODIO_SAL,P626_DESC_CUSTODIO_SAL,P626_COD_CUSTODIO_ENT,P626_DESC_CUSTODIO_ENT,P626_COD_USUARIO'
||'_ENT,P626_DESC_USUARIO_ENT,P626_COD_USUARIO_REC,P626_DESC_USUARIO_REC,P626_IND_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212767598291045012)
,p_event_id=>wwv_flow_imp.id(212767113610045008)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210705599496902945)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212768699376045023)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210705373828902943)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212768792368045024)
,p_event_id=>wwv_flow_imp.id(212768699376045023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210705599496902945)
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
 p_id=>wwv_flow_imp.id(212768885651045025)
,p_event_id=>wwv_flow_imp.id(212768699376045023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    CCRCUSDO.PR_CARGAR_DATOS(   PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_CLIENTE => :P626_COD_CLIENTE,',
'                                PI_SER_PLANILLA_DESDE => :P626_SER_PLANILLA_DESDE,',
'                                PI_NRO_PLANILLA_DESDE => :P626_NRO_PLANILLA_DESDE,',
'                                PI_FEC_PLANILLA_DESDE => :P626_FEC_PLANILLA_DESDE,',
'                                PI_FEC_PLANILLA_HASTA => :P626_FEC_PLANILLA_HASTA,',
'                                PI_COD_CUSTODIO_SAL => :P626_COD_CUSTODIO_SAL,',
'                                PI_COD_CUSTODIO_ENT => :P626_COD_CUSTODIO_ENT,',
'                                PI_COD_USUARIO_ENT => :P626_COD_USUARIO_ENT,',
'                                PI_COD_USUARIO_REC => :P626_COD_USUARIO_REC,',
'                                PI_IND_RECEPCION => :P626_IND_RECEPCION );',
'',
'',
':P615_AUX := 1;                             ',
'EXCEPTION',
'    when others then ',
'        APEX_DEBUG.ERROR(''Error al cargar datos. '' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P626_COD_CLIENTE,P626_SER_PLANILLA_DESDE,P626_NRO_PLANILLA_DESDE,P626_FEC_PLANILLA_DESDE,P626_FEC_PLANILLA_HASTA,P626_COD_CUSTODIO_SAL,P626_COD_CUSTODIO_ENT,P626_COD_USUARIO_ENT,P626_COD_USUARIO_REC,P626_IND_RECEPCION'
,p_attribute_03=>'P626_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212768910684045026)
,p_event_id=>wwv_flow_imp.id(212768699376045023)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210705599496902945)
);
wwv_flow_imp.component_end;
end;
/
