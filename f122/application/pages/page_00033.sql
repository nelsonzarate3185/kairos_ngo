prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CPSVALES'
,p_alias=>'CPSVALES'
,p_page_mode=>'MODAL'
,p_step_title=>'Solicitud de Vales/Viaticos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
' ',
'',
'solo_numeros();',
'formatMiles(''P33_MONTO'');'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'#bt_rendir{    ',
'    background: #0076df94;',
'    width: 40%;',
'    margin: 30%;',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'#bt_rendir:hover{',
'    background: rgb(17, 17, 148) ;',
'}',
'',
'#bt_aprobar,#bt_rechazar, #bt_procesar{',
'    margin-top: 15px;',
'    margin-bottom: 15px;',
'    margin-left: 15%;',
'}',
' */',
'',
' '))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240221163951'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20573569071814027)
,p_plug_name=>'VALES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7710222425151326)
,p_plug_name=>'Principal'
,p_parent_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8736797380197919)
,p_plug_name=>'Usuario'
,p_parent_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_region_attributes=>'style="background:#0076df94;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8736883982197920)
,p_plug_name=>'Fondo fijo'
,p_parent_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8737778539197929)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_APROBAR'
,p_button_static_id=>'bt_aprobar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8737863543197930)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_RECHAZAR'
,p_button_static_id=>'bt_rechazar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8738196132197933)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_RENDIR'
,p_button_static_id=>'bt_rendir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rendir'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8737970254197931)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_button_name=>'BT_PROCESAR'
,p_button_static_id=>'bt_procesar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71080466062541812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20573569071814027)
,p_button_name=>'Guardar'
,p_button_static_id=>'BTNOK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'TOP'
,p_button_condition=>'P33_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(71081430080541822)
,p_branch_name=>'ir_a_282'
,p_branch_action=>'f?p=&APP_ID.:282:&SESSION.::&DEBUG.:33:P282_ACTUALIZA,P282_NRO_SOLICITUD,P282_SER_SOLICITUD:S,&P33_NRO_COMPROBANTE.,&P33_SER_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710354079151327)
,p_name=>'P33_SER_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710423860151328)
,p_name=>'P33_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710520966151329)
,p_name=>'P33_NRO_PLANILLA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>unistr('N\00BA Planilla Reparto')
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
 p_id=>wwv_flow_imp.id(7710787888151331)
,p_name=>'P33_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Sector '
,p_source=>'LOGISTICA'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ADMIN-ARTIGAS;ADMIN-ARTIGAS,ADMIN-CDSL;ADMIN-CDSL,ADMIN-CDE;ADMIN-CDE,LOGISTICA;LOGISTICA,REPUESTOS;REPUESTOS,SERVICIO TECNICO;SERVICIO TECNICO,GENTE NGO;GENTE NGO,COMERCIAL;COMERCIAL,MARKETING;MARKETING,OPERACIONES;OPERACIONES,DIRECTORIO;DIRE'
||'CTORIO,G.G.;G.G.,PROYECTOS Y OBRAS;PROYECTOS Y OBRAS,OTROS;OTROS,AUDITORIA;AUDITORIA'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7710984488151333)
,p_name=>'P33_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SOLICITADO;SOLICITADO,APROBADO;APROBADO,RECHAZADO;RECHAZADO,ENTREGADO;ENTREGADO,RENDIDO;RENDIDO,PROCESADO;PROCESADO,FINALIZADO;FINALIZADO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711008148151334)
,p_name=>'P33_FECHA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Fecha a Disponer'
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
 p_id=>wwv_flow_imp.id(7711190999151335)
,p_name=>'P33_MONTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711242060151336)
,p_name=>'P33_COD_PERSONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'A la orden de'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_CPSVALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.COD_PERSONA R, P.NOMBRE EMPLEADO ',
'FROM  PERSONAS P ',
'WHERE   p.cod_persona in (select cod_persona',
'                            from rp_repartidores',
'                            where cod_empresa=''1''',
'                            and   activo=''S''',
'                    union all',
'                        select cod_persona',
'                        from rh_empleados',
'                        where cod_empresa=''1''',
'                        and nvl(activo,''S'')<>''N'')',
'',
''))
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
 p_id=>wwv_flow_imp.id(7711371517151337)
,p_name=>'P33_A_ORDEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7711544847151339)
,p_name=>'P33_EN_CONCEPTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>'En Concepto'
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
 p_id=>wwv_flow_imp.id(7711681800151340)
,p_name=>'P33_OBSERVACION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8736994044197921)
,p_name=>'P33_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Solicitado por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737061993197922)
,p_name=>'P33_FECHA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737164265197923)
,p_name=>'P33_USER_AUTORIZA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Autorizado por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737271428197924)
,p_name=>'P33_FECHA_AUTORIZA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Autoriza'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737326544197925)
,p_name=>'P33_USER_ENTREGA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Entregado por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737494147197926)
,p_name=>'P33_FECHA_ENTREGA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737530560197927)
,p_name=>'P33_USER_RENDICION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Rendido por: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8737619375197928)
,p_name=>'P33_FECHA_RENDICION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8736797380197919)
,p_prompt=>'Fecha Rendicion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8738037056197932)
,p_name=>'P33_NRO_CUENTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_prompt=>'Cuenta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CUENTAS_BANCARIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro_cuenta r, nro_cuenta|| '' - ''||referencia d',
'from cc_cuentas_bancarias',
'where cod_empresa = :P_COD_EMPRESA',
' and tip_cuenta  = ''4'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8738205808197934)
,p_name=>'P33_MONTO_RENDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_prompt=>'Monto Rendido'
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
 p_id=>wwv_flow_imp.id(8738319893197935)
,p_name=>'P33_FF_NRO_PLANILLA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_prompt=>unistr('N\00BA Plan. Fondo Fijo')
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
 p_id=>wwv_flow_imp.id(8738990608197941)
,p_name=>'P33_BUSCA_PERMISO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8739329576197945)
,p_name=>'P33_MENSAJE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8736883982197920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20409886145847842)
,p_name=>'P33_AUX_MSJ'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7710222425151326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(71080029494541808)
,p_validation_name=>'va_monto'
,p_validation_sequence=>20
,p_validation=>'P33_MONTO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar el monto.'
,p_associated_item=>wwv_flow_imp.id(7711190999151335)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(71080331204541811)
,p_validation_name=>'va_persona'
,p_validation_sequence=>30
,p_validation=>'P33_COD_PERSONA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar la persona a responsable del Vale.'
,p_associated_item=>wwv_flow_imp.id(7711242060151336)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8738424807197936)
,p_name=>'DA_APROBAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8737778539197929)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8738505265197937)
,p_event_id=>wwv_flow_imp.id(8738424807197936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Aprobar el Solicitud de Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8738603478197938)
,p_event_id=>wwv_flow_imp.id(8738424807197936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    :P33_MENSAJE := NULL;',
'    UPDATE CP_VALES',
'       SET ESTADO = ''APROBADO'',',
'           USER_AUTORIZA = :P_COD_USUARIO,',
'           FECHA_AUTORIZA = SYSDATE ',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'      ----- AND NRO_PLANILLA = :P33_NRO_PLANILLA',
'       AND SER_COMPROBANTE = :P33_SER_COMPROBANTE',
'       AND NRO_COMPROBANTE = :P33_NRO_COMPROBANTE',
'       AND ESTADO <> ''APROBADO'';',
unistr('    :P33_MENSAJE := ''El resgistro se actualiz\00F3 correctamente.'';   '),
'EXCEPTION',
'    WHEN OTHERS THEN',
'         :P33_MENSAJE := ''Ha ocurrido un error. ''||SQLERRM;',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_NRO_PLANILLA'
,p_attribute_03=>'P33_ESTADO,P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21769244745343303)
,p_event_id=>wwv_flow_imp.id(8738424807197936)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8739050901197942)
,p_name=>'DA_DESHABILITAR_X_USUARIO'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P33_BUSCA_PERMISO'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739177390197943)
,p_event_id=>wwv_flow_imp.id(8739050901197942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737778539197929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8739407294197946)
,p_name=>'DA_RENCHAZAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8737863543197930)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739526004197947)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Rechazar la Solicitud de Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739630305197948)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P33_MENSAJE := null;',
'    UPDATE CP_VALES',
'       SET ESTADO = ''RECHAZADO''',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'     ----  AND NRO_PLANILLA = :P33_NRO_PLANILLA',
'       AND SER_COMPROBANTE = :P33_SER_COMPROBANTE',
'       AND NRO_COMPROBANTE = :P33_NRO_COMPROBANTE;',
'       commit;',
unistr('    :P33_MENSAJE := ''El registro se actualiz\00F3 correctamente.'';   '),
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P33_MENSAJE := ''Ha ocurrido un error. ''||SQLERRM;',
'END;',
'',
''))
,p_attribute_02=>'P33_NRO_PLANILLA,P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE'
,p_attribute_03=>'P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20573270956814024)
,p_event_id=>wwv_flow_imp.id(8739407294197946)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8739729083197949)
,p_name=>'DA_PROCESAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8737970254197931)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9570271224036906)
,p_event_id=>wwv_flow_imp.id(8739729083197949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar la Rendici\00F3n del Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9570390274036907)
,p_event_id=>wwv_flow_imp.id(8739729083197949)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P33_FF_NRO_PLANILLA IS NOT NULL  THEN',
'    BEGIN',
'        :P33_MENSAJE := NULL;',
'        ',
'        UPDATE CP_VALES',
'           SET ESTADO = ''PROCESADO'',',
'               FF_NRO_PLANILLA =  :P33_FF_NRO_PLANILLA',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'        ---   AND NRO_PLANILLA = :P33_NRO_PLANILLA',
'           AND SER_COMPROBANTE = :P33_SER_COMPROBANTE',
'           AND NRO_COMPROBANTE = :P33_NRO_COMPROBANTE;',
unistr('        :P33_MENSAJE := ''El registro se actualiz\00F3 correctamente.'';   '),
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P33_MENSAJE := ''Ha ocurrido un error. ''||SQLERRM;',
'    END;',
'ELSE',
'    :P33_MENSAJE := ''Debe seleccionar el Nro de Planilla del Fondo Fijo'';',
'END IF;',
''))
,p_attribute_02=>'P33_FF_NRO_PLANILLA,P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_NRO_PLANILLA'
,p_attribute_03=>'P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21769352206343304)
,p_event_id=>wwv_flow_imp.id(8739729083197949)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569888664036902)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_MENSAJE'
,p_condition_element=>'P33_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569922064036903)
,p_event_id=>wwv_flow_imp.id(9569888664036902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P33_MENSAJE.'
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9570054569036904)
,p_name=>'DA_RENDIR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8738196132197933)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8739881755197950)
,p_event_id=>wwv_flow_imp.id(9570054569036904)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar la Rendicion del Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569794724036901)
,p_event_id=>wwv_flow_imp.id(9570054569036904)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P33_NRO_CUENTA IS NOT NULL and 	NVL(:P33_MONTO_RENDIDO,0)>0 THEN ',
'    BEGIN',
'        :P33_MENSAJE := NULL;',
'        ',
'        UPDATE CP_VALES',
'           SET ESTADO = ''RENDIDO'',',
'               FECHA_RENDICION = SYSDATE,',
'               USER_RENDICION = :P_COD_USUARIO,',
'               MONTO_RENDIDO = :P33_MONTO_RENDIDO,',
'               NRO_CUENTA = :P33_NRO_CUENTA',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'        ----   AND NRO_PLANILLA = :P33_NRO_PLANILLA',
'           AND SER_COMPROBANTE = :P33_SER_COMPROBANTE',
'           AND NRO_COMPROBANTE = :P33_NRO_COMPROBANTE;',
unistr('        :P33_MENSAJE := ''El registro se actualiz\00F3 correctamente.'';   '),
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P33_MENSAJE := ''Ha ocurrido un error. ''||SQLERRM;',
'    END;',
'ELSE',
'    :P33_MENSAJE := ''Debe cargar el monto Rendido y el Fondo Fijo'';',
'END IF;',
'',
'',
''))
,p_attribute_02=>'P33_NRO_CUENTA,P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_NRO_PLANILLA,P33_COD_USUARIO,P33_MONTO_RENDIDO,P33_NRO_CUENTA'
,p_attribute_03=>'P33_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21769477158343305)
,p_event_id=>wwv_flow_imp.id(9570054569036904)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9570452214036908)
,p_name=>'DA_FF_NRO_PLANILLA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_FF_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9570597848036909)
,p_event_id=>wwv_flow_imp.id(9570452214036908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF   :P33_FF_NRO_PLANILLA IS NOT NULL THEN',
'declare',
'	dummy char(1);',
'begin',
'        select  Distinct ''1''',
'        INTO    DUMMY',
'        FROM    cp_comprobantes_cabecera ',
'		WHERE   COD_EMPRESA= :P_COD_EMPRESA',
'		  AND   nro_planilla_ff=:P33_FF_NRO_PLANILLA',
'		  AND   NRO_CUENTA= :P33_NRO_CUENTA;  ',
'		',
'        BEGIN',
'            UPDATE CP_VALES',
'               SET ESTADO = ''FINALIZADO''',
'             WHERE COD_EMPRESA = :P_COD_EMPRESA',
'            ---   AND NRO_PLANILLA = :P33_NRO_PLANILLA',
'               AND SER_COMPROBANTE = :P33_SER_COMPROBANTE',
'               AND NRO_COMPROBANTE = :P33_NRO_COMPROBANTE;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'        END; ',
'													',
'	exception',
'		when others then',
'			:P33_MENSAJE := ''Debe cargar correctamente el Nro. de Planilla de Fondo Fijo'';			',
'end;	',
'END IF;',
''))
,p_attribute_02=>'P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_NRO_PLANILLA,P33_FF_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9633250153471641)
,p_name=>'DA_ASIGNAR_EMPLEADO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_COD_PERSONA'
,p_condition_element=>'P33_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9633392415471642)
,p_event_id=>wwv_flow_imp.id(9633250153471641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P33_AUX_MSJ := NULL;',
'    ',
'    SELECT distinct  P.NOMBRE  ',
'    into :P33_A_ORDEN',
'    FROM  PERSONAS P ',
'    WHERE p.cod_persona = :P33_COD_PERSONA;',
'				 ',
'	declare',
'	 	dummy varchar2(30);',
'	begin',
'		select nro_comprobante',
'	  	  into dummy',
'		  from cp_vales v',
'		 where v.cod_empresa= :P_COD_EMPRESA',
'		   and v.cod_persona=  :P33_COD_PERSONA',
'		   and v.fecha_autoriza is not null',
'		   and v.estado=''ENTREGADO''',
'		   and v.fecha_rendicion is null',
'		   and v.fecha_alta>=to_date(''01/03/2022'',''dd/mm/yyyy'');',
'			:P33_AUX_MSJ := ''El personal aun cuenta con una rendicion pendiente. Nro:''||dummy;  ',
'			:P33_COD_PERSONA:=NULL;',
'			:P33_A_ORDEN:=NULL;',
'	exception ',
'        when too_many_rows then            ',
'			:P33_AUX_MSJ := ''El personal cuenta con varias rendiciones pendientes.'';  ',
'			:P33_COD_PERSONA:=NULL;',
'			:P33_A_ORDEN:=NULL;',
'	 	when others then',
'	 			null;',
'	end;				 ',
'exception',
'		when others then',
'				:P33_COD_PERSONA:= null;',
'				:P33_A_ORDEN    := null;',
'end; ',
'',
''))
,p_attribute_02=>'P33_COD_PERSONA'
,p_attribute_03=>'P33_AUX_MSJ,P33_A_ORDEN,P33_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20409938045847843)
,p_event_id=>wwv_flow_imp.id(9633250153471641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P33_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P33_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9703214668340603)
,p_name=>'DA_DESHABILITAR_BOTONES'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703338204340604)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737778539197929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703459847340605)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737970254197931)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703501809340606)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737863543197930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703661807340607)
,p_event_id=>wwv_flow_imp.id(9703214668340603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8738196132197933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9703758534340608)
,p_name=>'DA_HABILIAR_ESTADO_SOLICITADO'
,p_event_sequence=>120
,p_condition_element=>'P33_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'SOLICITADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703866708340609)
,p_event_id=>wwv_flow_imp.id(9703758534340608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737778539197929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703935355340610)
,p_event_id=>wwv_flow_imp.id(9703758534340608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737863543197930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9704091219340611)
,p_name=>'DA_HABILITAR_ESTADO_ENTREGADIO'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'ENTREGADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9704190465340612)
,p_event_id=>wwv_flow_imp.id(9704091219340611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8738196132197933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9704299301340613)
,p_name=>'DA_HABILITAR_ESTADO_RENDIDO'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'RENDIDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9704360627340614)
,p_event_id=>wwv_flow_imp.id(9704299301340613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8737970254197931)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9704601989340617)
,p_name=>'DA_DESHABILITAR_ITEMS'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_when_cond=>'P33_ESTADO'
,p_display_when_cond2=>'PROCESADO,FINALIZADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9704748773340618)
,p_event_id=>wwv_flow_imp.id(9704601989340617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE,P33_TIPO,P33_ESTADO,P33_NRO_PLANILLA,P33_MONTO,P33_FECHA,P33_COD_PERSONA,P33_EN_CONCEPTO,P33_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21769579707343306)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_MONTO,P33_MONTO_RENDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21769652121343307)
,p_event_id=>wwv_flow_imp.id(21769579707343306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71079697150541804)
,p_name=>'DA_SOLO_LECTURA'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71079784790541805)
,p_event_id=>wwv_flow_imp.id(71079697150541804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P33_ESTADO").readOnly=true;',
'$(''#P33_ESTADO'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20410354632847847)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CLEAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P33_MONTO := NULL;',
':P33_MONTO_RENDIDO := NULL;',
':P33_FECHA_ALTA := NULL;',
':P33_USER_AUTORIZA := NULL; ',
':P33_FECHA_AUTORIZA := NULL; ',
':P33_USER_RENDICION := NULL; ',
':P33_FECHA_RENDICION := NULL; ',
':P33_USER_ENTREGA := NULL; ',
':P33_FECHA_ENTREGA := NULL;',
':P33_NRO_CUENTA := NULL;',
':P33_FF_NRO_PLANILLA := NULL;  ',
':P33_NRO_COMPROBANTE:=NULL;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P33_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8736682419197918)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P33_NRO_COMPROBANTE IS NULL THEN ',
'',
'        :P33_ESTADO      := ''SOLICITADO'';',
'        :P33_FECHA       := trunc(sysdate+1) ;',
'        :P33_FECHA_ALTA   := sysdate ;',
'        :P33_COD_USUARIO := :APP_USER;',
'        :P33_NRO_COMPROBANTE:=NULL;',
'',
'        declare',
'        	vsuc varchar(5); ',
'        begin',
'        		select cod_zona_suc ',
'        		 into vsuc',
'        		from sucursal_zona ',
'        		where cod_sucursal=  :P_COD_SUCURSAL;',
'',
'        	if vsuc =''AR'' then',
'        		:P33_SER_COMPROBANTE  := ''T'';',
'        	elsif vsuc =''SL''  then',
'        		:P33_SER_COMPROBANTE  :=''S'';',
'        	else',
'        		:P33_SER_COMPROBANTE  :=''C'';',
'        	end if; ',
'',
'        exception',
'        	when others then',
'        		:P33_SER_COMPROBANTE  :=''A'';',
'        end;',
'',
' ',
'',
'',
'    ',
'',
'    ELSIF :P33_NRO_COMPROBANTE IS NOT NULL THEN 	',
'        select SER_COMPROBANTE,',
'               NRO_COMPROBANTE,',
'               FECHA,',
'               A_ORDEN,',
'               EN_CONCEPTO,',
'               ESTADO,',
'               NRO_PLANILLA,',
'               OBSERVACION,',
'               TIPO,',
'               TRIM(TO_CHAR(monto,''999G999G999G990'')),',
'               COD_PERSONA,',
'               COD_USUARIO,',
'               FECHA_ALTA,',
'               USER_AUTORIZA,',
'               FECHA_AUTORIZA,',
'               USER_RENDICION,',
'               FECHA_RENDICION,',
'               USER_ENTREGA,',
'               FECHA_ENTREGA,',
'               NRO_CUENTA,',
'               FF_NRO_PLANILLA,',
'               TRIM(TO_CHAR(MONTO_RENDIDO,''999G999G999G990''))',
'      INTO  :P33_SER_COMPROBANTE,',
'            :P33_NRO_COMPROBANTE,',
'            :P33_FECHA,',
'            :P33_A_ORDEN,',
'            :P33_EN_CONCEPTO,',
'            :P33_ESTADO,',
'            :P33_NRO_PLANILLA,',
'            :P33_OBSERVACION,',
'            :P33_TIPO,',
'            :P33_MONTO,',
'            :P33_COD_PERSONA,',
'            :P33_COD_USUARIO,',
'            :P33_FECHA_ALTA,',
'            :P33_USER_AUTORIZA, --EL TRIGGER DE LA TABLA LO CAMBIA. ',
'            :P33_FECHA_AUTORIZA, ',
'            :P33_USER_RENDICION, --EL TRIGGER DE LA TABLA LO CAMBIA. ',
'            :P33_FECHA_RENDICION, ',
'            :P33_USER_ENTREGA, --EL TRIGGER DE LA TABLA LO CAMBIA. ',
'            :P33_FECHA_ENTREGA,',
'            :P33_NRO_CUENTA,',
'            :P33_FF_NRO_PLANILLA     ',
'            ,:P33_MONTO_RENDIDO   ',
'      from  CP_VALES',
'      where cod_empresa = :P_COD_EMPRESA',
'        and (:P33_NRO_PLANILLA IS NULL or NRO_PLANILLA=:P33_NRO_PLANILLA)',
'        and (:P33_NRO_COMPROBANTE IS NULL or NRO_COMPROBANTE=:P33_NRO_COMPROBANTE)',
'        and (:P33_SER_COMPROBANTE IS NULL or SER_COMPROBANTE=:P33_SER_COMPROBANTE);',
'    ELSIF  :P33_NRO_PLANILLA IS NOT NULL THEN 	',
'    	:P33_TIPO :=''LOGISTICA'';',
'		select  ''Movil:''||V.descripcion ||chr(10)|| ''Cant.Ayundates:''||(decode(COD_AYUDANTE_1,null,0,1)+decode(COD_AYUDANTE_2,null,0,1)+decode(COD_AYUDANTE_3,null,0,1)),',
'                p.cod_persona ,ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) ,',
'                ''VIATICO - Zona ''||Z.descripcion, ',
'                nvl(r.FECHA_SALIDA,trunc(sysdate+1))',
'           into :P33_OBSERVACION,',
'                :P33_COD_PERSONA,',
'                :P33_A_ORDEN,',
'                :P33_EN_CONCEPTO,',
'                :P33_FECHA',
'           from RP_REPARTO_CABECERA R,',
'                rp_zonas_reparto Z,',
'                rp_vehiculos V,',
'                rp_repartidores C, ',
'                personas p',
'          WHERE R.COD_EMPRESA= :P_COD_EMPRESA',
'     		AND r.nro_PLANILLA=:P33_NRO_PLANILLA',
'            AND Z.cod_zona_reparto = R.cod_zona_reparto',
'            AND R.cod_empresa =  V.cod_empresa',
'            and R.cod_vehiculo=  V.cod_vehiculo',
'            AND r.cod_empresa =  C.cod_empresa',
'            and r.cod_repartidor= C.cod_repartidor',
'            and C.cod_persona = p.cod_persona',
'            and nvl(r.estado,''P'')<>''R'';',
'    END IF;    ',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        :P33_OBSERVACION := null;',
'        :P33_COD_PERSONA := null;',
'        :P33_A_ORDEN     := null;',
'        :P33_EN_CONCEPTO := null;',
'        :P33_FECHA       := null;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8738846029197940)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_BUSCA_PERMISOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P33_BUSCA_PERMISO := busca_permiso (:P_COD_EMPRESA,',
'                                          ''CPSVALES'', ',
'                                          :APP_USER,--''CARMENPR''',
'                                          ''APRUEBA_VALE'' ) ; ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9632451894471633)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P33_NRO_COMPROBANTE IS NULL then',
'        begin',
'    	   Select nvl(max(NRO_COMPROBANTE),0)+1',
'    	     into :P33_NRO_COMPROBANTE',
'    	     from CP_VALES',
'    	    where cod_empresa     = :P_COD_EMPRESA',
'    	      and ser_COMPROBANTE = :P33_SER_COMPROBANTE;',
'        exception',
'            when others then',
'                :P33_NRO_COMPROBANTE := 1; ',
'        end;',
'    end if; ',
'/*',
'   CPSVALES.INSERTAR_NUEVO_REG (  PI_NRO_PLANILLA =>    :P33_NRO_PLANILLA, ',
'                                  PI_SER_COMPROBANTE => :P33_SER_COMPROBANTE, ',
'                                  PI_NRO_COMPROBANTE => :P33_NRO_COMPROBANTE, ',
'                                  PI_ESTADO =>          :P33_ESTADO,',
'                                  PI_A_ORDEN =>         :P33_A_ORDEN, ',
'                                  PI_EN_CONCEPTO =>     :P33_EN_CONCEPTO, ',
'                                  PI_OBSERVACION =>     :P33_OBSERVACION, ',
'                                  PI_TIPO =>            :P33_TIPO,',
'                                  PI_NRO_CUENTA =>      :P33_NRO_CUENTA,',
'                                  PI_MONTO =>           :P33_MONTO,',
'                                  PI_COD_PERSONA =>     :P33_COD_PERSONA); ',
'',
'      */                            ',
'   CPSVALES.INSERTAR_NUEVO_REG (  PI_NRO_PLANILLA =>    :P33_NRO_PLANILLA, ',
'                                  PI_SER_COMPROBANTE => :P33_SER_COMPROBANTE, ',
'                                  PI_NRO_COMPROBANTE => :P33_NRO_COMPROBANTE, ',
'                                  PI_ESTADO =>          :P33_ESTADO,',
'                                  PI_A_ORDEN =>         :P33_A_ORDEN, ',
'                                  PI_EN_CONCEPTO =>     :P33_EN_CONCEPTO, ',
'                                  PI_OBSERVACION =>     :P33_OBSERVACION, ',
'                                  PI_SECTOR =>          :P33_TIPO,',
'                                  PI_TIPO =>            null,',
'                                  PI_ACREDITACION =>    null,',
'                                  PI_COD_PERSONA =>     :P33_COD_PERSONA,',
'                                  PI_MONTO =>           :P33_MONTO); ',
'   ---- apex_application.g_print_success_message := ''<span class="notification">Vale generado exitosamente</span>'';',
'    ----  apex_application.g_print_success_message := ''<span style="color:white"> Vale generado exitosamente <br> Vale: ''||:P33_SER_COMPROBANTE||'' - ''||:P33_NRO_COMPROBANTE ||''</br></span>'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(71080466062541812)
,p_process_when=>'P33_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp.component_end;
end;
/
