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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230807172548'
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
,p_plug_name=>'FACTURACION &P580_PORC_FACT.%'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188558645256494424)
,p_plug_name=>'CUMPLIMIENTO DE POLITICAS &P580_PORC_CUMP.%'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188556430343494402)
,p_plug_name=>'ESCALAS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
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
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent14:t-Region--scrollBody'
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
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent14:t-Region--scrollBody'
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
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_prompt=>'%FACTURACION'
,p_format_mask=>'999G999G999G999G999G990D90'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188558904100494427)
,p_name=>'P580_PORC_CUMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_prompt=>'%CUMPLIMIENTO'
,p_format_mask=>'999G999G999G999G999G990D90'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
,p_item_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_prompt=>'BASE COMISION '
,p_format_mask=>'999G999G999G999G999G999G990'
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
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_prompt=>'MONTO FACTURACION'
,p_format_mask=>'999G999G999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(188560623139494444)
,p_name=>'P580_MONTO_CUMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_prompt=>'MONTO CUMPLIMIENTO'
,p_format_mask=>'999G999G999G999G999G999G990'
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
'BEGIN',
'    IF :P580_MES IS NULL THEN',
'            VMENSAJE:=''Debe seleccionar el MES.'';',
'            raise verror;',
'    ELSE',
'        IF :P580_ANIO IS NULL THEN',
unistr('            VMENSAJE:=''Debe seleccionar el A\00D1O'';'),
'            raise verror;',
'        ELSE',
'            ----- llamar al proceso de calculo.',
'            null;',
'',
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
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188558206927494420)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556385889494401)
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
'',
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
,p_attribute_03=>'P580_COD_GRUPO_COMISION,P580_PORC_FACT,P580_PORC_CUMP,P580_COD_ESCALA_FAC,P580_COD_ESCALA_CUM,P580_TIPO_CALCULO,P580_BASE_COMISION,P580_MONTO_FACT,P580_MONTO_CUMP'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188560454281494442)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
