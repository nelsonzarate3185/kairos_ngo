prompt --application/pages/page_00617
begin
--   Manifest
--     PAGE: 00617
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
 p_id=>617
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Aengo'
,p_alias=>'AENGO'
,p_step_title=>'Aengo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ver_detalle(p_tipo,p_num){',
'    apex.item("P610_TIPO").setValue(p_tipo);',
'    apex.item("P610_NUMERO").setValue(p_num);',
'}',
'',
'function recibo(p_num_cuota){',
'    apex.item("P610_NRO_CUOTA").setValue(p_num_cuota);',
'    apex.item("P610_RECIBO").setValue(p_num_cuota);',
'}',
'',
'function doDescarga(p_ruc, p_cod_cliente, p_tipo, p_ser_recibo, p_cod_empleado, p_nro_recibo, p_cod_persona){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RECIBO_DINERO.pdf?''',
'            + ''P_RUC='' + p_ruc + ''&P_COD_CLIENTE='' + p_cod_cliente  + ''&P_TIPO=''+ p_tipo ',
'            + ''&P_SER_RECIBO=''+ p_ser_recibo + ''&P_COD_EMPLEADO=''+ p_cod_empleado + ''&P_NRO_RECIBO=''+ p_nro_recibo',
'            + ''&P_COD_PERSONA=''+ p_cod_persona +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#COL_FACT .a-IRR-table td {',
'    background-color:#dd5600; ',
'    color:#ffffff; ',
'    font-weight: bolder; ',
'}',
'',
'.a-IRR-controlsContainer{',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230920112134'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416086068825022895)
,p_plug_name=>'Cuenta Corriente'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416086588519022900)
,p_plug_name=>'Facturas'
,p_parent_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    nvl(a.numero_canje,a.numero) AS numero,',
'    a.factura,',
'    a.tipo,',
'    a.numero_canje AS canje,',
'    a.cod_cliente',
'FROM',
'    view_saldos_empleados a',
'WHERE',
'    a.cod_cliente = :P617_COD_CLIENTE -- 102362 ------------------- TEST',
'GROUP BY',
'    nvl(a.numero_canje,a.numero),',
'    a.factura,',
'    a.tipo,',
'    a.numero_canje,a.cod_cliente'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P617_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Facturas'
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
 p_id=>wwv_flow_imp.id(416255497071343680)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Actualmente no posee deudas.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MBLANCO'
,p_internal_uid=>416255497071343680
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209719763228267241)
,p_db_column_name=>'NUMERO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Numero'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209720101183267240)
,p_db_column_name=>'FACTURA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Facturas'
,p_column_link=>'javascript:ver_detalle(''#TIPO#'',''#NUMERO#'');'
,p_column_linktext=>'#FACTURA#'
,p_column_link_attr=>'style="color:#b94a48; font-weight:bold;"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'COL_FACT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209720548554267240)
,p_db_column_name=>'TIPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209720962795267239)
,p_db_column_name=>'CANJE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Canje'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209721375220267239)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(416315186477089523)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2065992'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NUMERO:FACTURA:TIPO:CANJE:COD_CLIENTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416253806037343663)
,p_plug_name=>'Detalle por factura'
,p_parent_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.NRO_CUOTA,',
'       NUMERO, ',
'       TO_CHAR(a.VTO,''DD-MM-YYYY'') AS VTO, ',
'       a.MONTO_CUOTA,',
'       a.SALDO_CUOTA,',
'       CASE ',
'        WHEN a.SALDO_CUOTA <= 0 AND :P617_TIPO = ''PG'' THEN ''<button type="button" onClick="javascript:recibo(''''''||a.NRO_CUOTA||'''''');" class="t-Button t-Button--icon t-Button--hot t-Button--link t-Button--iconLeft"><span aria-hidden="true" class="t-Ic'
||'on t-Icon--left fa fa-print"></span>Recibo</button>''',
'        ELSE NULL ',
'       END recibo',
'       ',
'FROM view_saldos_empleados a ',
'WHERE a.cod_cliente =  :P617_COD_CLIENTE --102362 ------------------- TEST ',
'AND ((:P617_TIPO = ''PG'' AND a.numero_canje = :P617_NUMERO)',
'      or (a.numero = :P617_NUMERO))',
'ORDER BY a.NRO_CUOTA',
'         '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P617_NUMERO,P617_TIPO,P617_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle por factura'
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
 p_id=>wwv_flow_imp.id(416254535841343670)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Seleccione una factura para ver su detalle.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MBLANCO'
,p_internal_uid=>416254535841343670
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209722394262267236)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00B0 Cuota')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209722722247267235)
,p_db_column_name=>'NUMERO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00B0 Pagar\00E9')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209723172108267235)
,p_db_column_name=>'VTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Vto.-'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209723578307267235)
,p_db_column_name=>'MONTO_CUOTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Monto Cuota'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209723939957267235)
,p_db_column_name=>'SALDO_CUOTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Saldo Cuota'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209724349693267235)
,p_db_column_name=>'RECIBO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Recibo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(416303975551129296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2065880'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NRO_CUOTA:NUMERO:VTO:MONTO_CUOTA:SALDO_CUOTA:RECIBO:'
,p_sum_columns_on_break=>'MONTO_CUOTA:SALDO_CUOTA'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(209725054116267234)
,p_report_id=>wwv_flow_imp.id(416303975551129296)
,p_name=>'Monto Cuota'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MONTO_CUOTA'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("MONTO_CUOTA" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_font_color=>'#2069a9'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(209725498536267233)
,p_report_id=>wwv_flow_imp.id(416303975551129296)
,p_name=>'Saldo Abonado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SALDO_CUOTA'
,p_operator=>'='
,p_expr=>'0'
,p_condition_sql=>' (case when ("SALDO_CUOTA" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_font_color=>'#467a3f'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(209725899954267233)
,p_report_id=>wwv_flow_imp.id(416303975551129296)
,p_name=>'Saldo Cuota'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SALDO_CUOTA'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("SALDO_CUOTA" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_font_color=>'#bb4840'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209716657078267247)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_button_name=>'BT_CONSIDERACIONES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'&P617_CREDITO_ACTUAL.'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="color:white; font-weight:bold;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209717008921267246)
,p_name=>'P617_CREDITO_ACTUAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209717434088267245)
,p_name=>'P617_AVISO_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_prompt=>'Credito Actual'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="border-color: #eed3d7; background-color:#FFC628; color:#b94a48; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209717852187267244)
,p_name=>'P617_AVISO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_item_default=>unistr('IMPORTANTE! si necesitas tus recibos impresos con firma y sello, favor contact\00E1 con la persona responsable de la AENGO.')
,p_prompt=>'Credito Actual'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="border-color: #eed3d7; background-color:#f2dede; color:#b94a48; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209718278227267243)
,p_name=>'P617_LIMITE_CREDITO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209718627518267243)
,p_name=>'P617_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209719048557267243)
,p_name=>'P617_NUMERO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(416086068825022895)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209726285650267233)
,p_name=>'P617_RECIBO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209726645584267232)
,p_name=>'P617_NRO_CUOTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209727022770267232)
,p_name=>'P617_SER_RECIBO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209727425927267232)
,p_name=>'P617_NRO_RECIBO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209727812760267232)
,p_name=>'P617_TIPO_RECIBO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209728204285267232)
,p_name=>'P617_COD_PERSONA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209728609861267231)
,p_name=>'P617_COD_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209729036845267231)
,p_name=>'P617_RUC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209729445742267231)
,p_name=>'P617_MENSAJE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(416253806037343663)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209732501836267226)
,p_name=>'DA_CONSIDERACIONES'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209716657078267247)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209733021662267226)
,p_event_id=>wwv_flow_imp.id(209732501836267226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('La l\00EDnea de cr\00E9dito es de acuerdo a tu \00FAltima liquidaci\00F3n de sueldos.'),
'Se actualiza el 01 de cada mes.',
unistr('El valor mencionado es el valor cuota tope que puedes utilizar seg\00FAn tu \00FAltima liquidaci\00F3n.')))
,p_attribute_02=>'Consideraciones especiales:'
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209733421629267226)
,p_name=>'DA_REFRESH'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P617_NUMERO'
,p_condition_element=>'P617_NUMERO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209733914919267226)
,p_event_id=>wwv_flow_imp.id(209733421629267226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(416253806037343663)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209730646357267228)
,p_name=>'DA_IMPRIME_RECIBO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P617_RECIBO'
,p_condition_element=>'P617_RECIBO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209731685469267227)
,p_event_id=>wwv_flow_imp.id(209730646357267228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT a.cod_persona ',
'    INTO :P617_COD_PERSONA',
'    FROM CC_CLIENTES a ',
'    WHERE a.cod_cliente = :P617_COD_CLIENTE',
'    AND a.cod_empresa = ''1'';',
'    :P617_MENSAJE := null;',
'    APEX_DEBUG.ERROR(''cod_persona: ''||:P617_COD_PERSONA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error al generar buscar el cod_persona para el recibo: ''||SQLERRM);',
unistr('        :P617_MENSAJE := ''Ocurri\00F3 un error al generar el recibo. Contacte al administrador.'';    '),
'END;        '))
,p_attribute_02=>'P617_COD_CLIENTE'
,p_attribute_03=>'P617_COD_PERSONA,P617_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209732178728267226)
,p_event_id=>wwv_flow_imp.id(209730646357267228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT a.nro_recibo, a.ser_recibo ',
'    INTO :P617_NRO_RECIBO, :P617_SER_RECIBO',
'    FROM cc_detalle_recibos a ',
'    WHERE a.nro_factura_ref = :P617_NUMERO',
'    AND a.nro_cuota = :P617_NRO_CUOTA;',
'',
'    IF :P617_NRO_RECIBO IS NOT NULL AND :P617_SER_RECIBO IS NOT NULL THEN',
'        :P617_TIPO_RECIBO := 1;',
'    ELSE',
'        SELECT d.ser_comprobante AS SER_RECIBO,',
'               d.nro_comprobante AS NRO_RECIBO',
'        INTO :P617_SER_RECIBO, :P617_NRO_RECIBO    ',
'        FROM cc_cancela_cuotas a,',
'             cc_cancela_cuotas_det d',
'        WHERE a.nro_comprobante =  :P617_NUMERO',
'          AND a.nro_cuota = :P617_NRO_CUOTA',
'          AND d.cod_empresa = a.cod_empresa',
'          AND d.nro_cancelacion = a.nro_cancelacion;',
'        :P617_TIPO_RECIBO := 2;      ',
'    END IF;',
'    :P617_MENSAJE := null;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN    ',
'         SELECT d.ser_comprobante AS SER_RECIBO,',
'               d.nro_comprobante AS NRO_RECIBO',
'        INTO :P617_SER_RECIBO, :P617_NRO_RECIBO    ',
'        FROM cc_cancela_cuotas a,',
'             cc_cancela_cuotas_det d',
'        WHERE a.nro_comprobante =  :P617_NUMERO',
'          AND a.nro_cuota = :P617_NRO_CUOTA',
'          AND d.cod_empresa = a.cod_empresa',
'          AND d.nro_cancelacion = a.nro_cancelacion;',
'        :P617_TIPO_RECIBO := 2; ',
'        :P617_MENSAJE := null;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error al generar datos para el recibo: ''||SQLERRM);',
unistr('        :P617_MENSAJE := ''Ocurri\00F3 un error al generar el recibo. Contacte al administrador.'';    '),
'END;    ',
'',
'',
'    APEX_DEBUG.ERROR(''P617_SER_RECIBO: ''||:P617_SER_RECIBO);',
'    ',
'    APEX_DEBUG.ERROR(''P617_NRO_RECIBO: ''||:P617_NRO_RECIBO);',
'    ',
'    APEX_DEBUG.ERROR(''P617_TIPO_RECIBO: ''||:P617_TIPO_RECIBO);'))
,p_attribute_02=>'P617_NUMERO,P617_NRO_CUOTA'
,p_attribute_03=>'P617_MENSAJE,P617_NRO_RECIBO,P617_SER_RECIBO,P617_TIPO_RECIBO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P617_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209731111774267227)
,p_event_id=>wwv_flow_imp.id(209730646357267228)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item("P617_RUC").getValue(),  apex.item("P617_COD_CLIENTE").getValue(), apex.item("P617_TIPO_RECIBO").getValue(), apex.item("P617_SER_RECIBO").getValue(), ',
'           apex.item("P_COD_EMPLEADO").getValue(), apex.item("P617_NRO_RECIBO").getValue(),  apex.item("P617_COD_PERSONA").getValue()); '))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P617_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209735721757267225)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P617_MENSAJE'
,p_condition_element=>'P617_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209736226261267225)
,p_event_id=>wwv_flow_imp.id(209735721757267225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P617_MENSAJE.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209734351219267225)
,p_name=>'DA_LOAD'
,p_event_sequence=>50
,p_condition_element=>'P617_AVISO_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209734846135267225)
,p_event_id=>wwv_flow_imp.id(209734351219267225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P617_AVISO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209735321564267225)
,p_event_id=>wwv_flow_imp.id(209734351219267225)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P617_AVISO_1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209729821079267228)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT TO_CHAR(fnc_busca_limite_credito_rh(:P_COD_EMPRESA, :P_COD_EMPLEADO),''999G990D00'') ',
'    INTO :P617_LIMITE_CREDITO',
'    FROM dual;',
unistr('    :P617_CREDITO_ACTUAL := ''Tu l\00EDnea de cr\00E9dito actual es de:  Gs. ''||:P617_LIMITE_CREDITO;'),
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        :P617_CREDITO_ACTUAL := ''Tu l\00EDnea de cr\00E9dito actual es de:  Gs. (sin datos)'';'),
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''Error al buscar el l\00EDmite de cr\00E9dito PR_INIT: ''||SQLERRM);    '),
'END;        ',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209730212457267228)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_DATOS_USUARIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        --a.cod_empleado,',
'        b.COD_CLIENTE,',
'        c.numero ',
'    INTO :P617_COD_CLIENTE, :P617_RUC    ',
'    FROM',
'    rh_empleados a,',
'    cc_clientes b,',
'    ident_personas c',
'    WHERE',
'    a.COD_EMPRESA = 1',
'    AND a.COD_EMPLEADO = :P_COD_EMPLEADO',
'    AND a.ACTIVO = ''S''',
'    AND a.COD_EMPRESA = b.COD_EMPRESA',
'    AND a.COD_PERSONA = b.COD_PERSONA',
'    AND a.COD_PERSONA = c.COD_PERSONA ',
'    AND rownum = 1',
'    ORDER BY numero asc;',
'    :P617_AVISO_1 := null;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P617_AVISO_1 := ''No se han encontrado datos ocultos para este usuario. Consulte al administrador.'';',
'        APEX_DEBUG.ERROR(''No se encontraron datos ocultos PR_INIT_DATOS_USUARIO: ''||SQLERRM);   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error al buscar el datos ocultos PR_INIT_DATOS_USUARIO: ''||SQLERRM);    ',
'END;        ',
'--:P617_COD_CLIENTE := 102362;  -- para test',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
