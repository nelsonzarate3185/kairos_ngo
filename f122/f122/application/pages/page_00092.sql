prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Crear Clientes'
,p_alias=>'CREAR-CLIENTES'
,p_page_mode=>'MODAL'
,p_step_title=>'Crear Clientes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateText(event) {',
'  var keyCode = event.keyCode;',
'  var excludedKeys = [8, 37, 39, 46, 32];',
'',
'  if (!((keyCode >= 65 && keyCode <= 90) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'} '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-label{',
'    ',
'    color: yellow  !important;',
'    font-weight: bold !important;',
'    border-color: yellow; ',
'    }',
'',
'',
'#P92_NECESARIO_LABEL {',
'    color: yellow  !important;',
'    font-weight: bold !important;',
'    border-color: yellow; ',
'}',
'#REG , #P92_DATOS{',
'     background: #003a85;',
'}',
'',
'',
'#btn{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'/*'))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230713074145'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69662198697953159)
,p_plug_name=>'Clientes'
,p_region_name=>'REG'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23488469981910223)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_button_name=>'CERRAR'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23299859152411592)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_button_name=>'CrearCliente'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_button_css_classes=>'u-color-21 u-color-43-text'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(147541417258413025)
,p_branch_name=>unistr('Ir a P\00E1gina 486')
,p_branch_action=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.::P486_ID_TICKET,P486_COD_CLIENTE,P486_CLIENTE:&P92_NRO_TICKET.,&P92_COD_CLIENTE.,&P92_NOMBRE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P92_NRO_TICKET'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23300209316411592)
,p_name=>'P92_ES_FISICA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'S'
,p_prompt=>'Es Fisica'
,p_source=>'S'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT  ''F\00EDsica'' D, ''S'' C'),
'FROM DUAL',
'UNION ALL',
unistr('SELECT ''Jur\00EDdica''D,  ''N''C'),
'FROM DUAL'))
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23300631253411593)
,p_name=>'P92_CI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'C.I.:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23301002628411593)
,p_name=>'P92_RUC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Ruc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23301465478411593)
,p_name=>'P92_NOMBRE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>110
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23301845423411593)
,p_name=>'P92_DIRECCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>110
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23302266618411593)
,p_name=>'P92_TELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>unistr('L\00EDnea Baja')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23302670428411593)
,p_name=>'P92_CORREO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Email'
,p_placeholder=>'correo@gmail.com'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23303043287411594)
,p_name=>'P92_CELULAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Celular'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23303449216411594)
,p_name=>'P92_EMAIL_ST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Email ST'
,p_placeholder=>'correo@gmail.com'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23303869062411594)
,p_name=>'P92_COD_TIP_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'9'
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_tip_cliente',
'			    from cc_tipo_cliente',
'                            order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Tipo Cliente'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23304220897411594)
,p_name=>'P92_COD_LISTA_PRECIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'5'
,p_prompt=>'Lista Precios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Lista  de Precios'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23304633772411594)
,p_name=>'P92_COD_CONDICION_VENTA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'36'
,p_prompt=>'Cond. Venta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICIONES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta||'' - ''||c.descripcion D, ',
'       c.cod_condicion_venta R',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l ',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_empresa = c.cod_empresa ',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>unistr('Condici\00F3n Venta')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23305068512411595)
,p_name=>'P92_COD_VENDEDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR',
'FROM FV_VENDEDORES F, PERSONAS P, USUARIOS U',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'AND U.COD_PERSONA=P.COD_PERSONA',
'AND COD_USUARIO = :APP_USER',
'AND ROWNUM = 1;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Vendedores'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23305412327411595)
,p_name=>'P92_COD_SECTOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_sector as r',
'  from sectores_econ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Sector'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23305816112411595)
,p_name=>'P92_NACIONALIDAD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'PAR'
,p_prompt=>'Nacionalidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_NACIONALIDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nacionalidad',
'			    ,cod_pais',
'			    from paises',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Nacionalidad'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23306270809411595)
,p_name=>'P92_COD_PAIS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'PAR'
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>unistr('Pa\00EDs')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23306636525411595)
,p_name=>'P92_COD_PROVINCIA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'18'
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION, P.COD_PROVINCIA',
'FROM PROVINCIAS P',
'WHERE COD_PAIS = :P92_COD_PAIS'))
,p_lov_cascade_parent_items=>'P92_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Departamento'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23307050759411596)
,p_name=>'P92_COD_CIUDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_item_default=>'1'
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = :P92_COD_PAIS',
'AND COD_PROVINCIA = :P92_COD_PROVINCIA'))
,p_lov_cascade_parent_items=>'P92_COD_PAIS,P92_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Ciudades'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23307459724411596)
,p_name=>'P92_DATOS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Datos'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23307869148411596)
,p_name=>'P92_COD_CLIENTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23308278931411596)
,p_name=>'P92_COD_USUARIO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73913383789687143)
,p_name=>'P92_INDICADOR_PAG_298'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76728798783030034)
,p_name=>'P92_TIP_OPERACION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99286366563806447)
,p_name=>'P92_ESTADO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110477743551213444)
,p_name=>'P92_NECESARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_prompt=>'Ingresa Correo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147541139541413022)
,p_name=>'P92_NRO_TICKET'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(69662198697953159)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(96865771802522124)
,p_validation_name=>'Valida RUC'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P92_CI IS NULL AND :P92_RUC IS NULL THEN ',
unistr('    RETURN ''Debe ingresar C\00E9dula o Ruc'';'),
'END IF;',
'',
'IF :P92_NOMBRE IS NULL THEN ',
'    RETURN ''Debe ingresar el Nombre'';',
'END IF;',
'',
'IF :P92_DIRECCION IS NULL THEN ',
unistr('    RETURN ''Debe ingresar la Direcci\00F3n'';'),
'END IF;',
'',
'IF :P92_RUC IS NOT NULL THEN ',
'    IF :P92_CORREO IS NULL AND :P92_NECESARIO = ''S'' THEN ',
'        RETURN ''El cliente posee correo, por lo tanto es obligatorio ingresar'';',
'    END IF;',
'END IF;',
'',
'DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P92_CORREO is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P92_CORREO,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN ',
'            RETURN v_mensaje;',
'        END IF;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(99286400416806448)
,p_validation_name=>unistr('Verificaci\00F3n de RUC')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vdatos varchar2(32000);',
'    vdirec varchar2(32000);',
'    v_detalle varchar2(10000);',
'    v_cabecera varchar2 (10000);',
'    vdatos_retorno varchar2(32000);',
'    p_json VARCHAR2(4000);',
'    p_datos VARCHAR2(4000);',
'     l_msj            VARCHAR2(4000);',
'    l_path           VARCHAR2(200);',
'    l_estado   VARCHAR2(200);',
'    nombre varchar2(1);',
'    vdatos2 varchar2(5000);',
'    v_descripcion_estado VARCHAR2(500);',
'  begin',
'  if :P92_RUC is not null then ',
'    declare',
'      t_http_req     utl_http.req;',
'      t_http_resp    utl_http.resp;',
'      t_request_body varchar2(30000); ',
'    begin',
'      begin',
'        vdirec := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      end;',
'      vdatos := ''{"ruc":["''||:P92_RUC||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      p_json := ''{"ruc":["''||:P92_RUC||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'     ',
'     t_request_body:=VDATOS;  ',
'      t_http_req := utl_http.begin_request(vdirec, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.set_header (t_http_req, ''Content-Type'', ''application/json'');',
'      ',
'      utl_http.set_header(t_http_req,',
'                          ''Content-Length'',',
'                          length(vdatos));',
'',
'     ',
'      utl_http.write_text(t_http_req, t_request_body);',
'      p_json:=t_request_body;',
'      dbms_output.put_line(''t_request_body: ''|| t_request_body );',
'      ',
'      t_http_resp := utl_http.get_response(t_http_req);',
'      utl_http.read_text(t_http_resp, p_datos);',
'      utl_http.end_response(t_http_resp);',
'    begin',
unistr('        vdatos2:=replace(p_datos,''\00D1'',''\005Cu00D1'');'),
unistr('         vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('         vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');   '),
'        ',
'      apex_json.parse(vdatos2);',
'      :P92_ESTADO := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].codigoRespuesta'',  p0 => 1);',
'      :P92_NOMBRE := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].razonSocial'',  p0 => 1);',
'      :P0_MENSAJE_VALIDACION := convert(replace(apex_json.get_varchar2(p_path => ''resultadoRuc[%d].mensajeError'',  p0 => 1),''"'',''''), ''WE8MSWIN1252'', ''UTF8'');',
'      v_descripcion_estado := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].descripcionEstadoRuc'',  p0 => 1);',
'         IF :P92_ESTADO = ''EXISTE'' and v_descripcion_estado <> ''ACTIVO'' THEN ',
unistr('                RETURN ''El n\00FAmero de Ruc est\00E1 ''|| v_descripcion_estado;'),
'        ELSIF :P92_ESTADO  <> ''EXISTE'' OR  :P0_MENSAJE_VALIDACION IS NOT NULL then ',
unistr('            RETURN ''El n\00FAmero de Ruc ingresado no existe'';'),
'       END IF;',
'    end;',
'',
'    end;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(174250811091975417)
,p_validation_name=>'Valida caracteres especiales'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    valor BOOLEAN;',
'    valen number;',
'BEGIN ',
'',
unistr('    SELECT nvl(LENGTH(TRIM(TRANSLATE(:P92_NOMBRE, ''abcdefghijklmnopqrstuvwxyz\00F1\00D1ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'', '' ''))),0)'),
'    into valen',
'    FROM DUAL;',
'    ',
'   IF valen <>0  THEN ',
'    RETURN '' No se puede guardar nombre con caracteres especiales'';',
'   END IF;',
'',
'',
'',
'',
'   /* ',
'   valor :=  REGEXP_LIKE(:P92_NOMBRE, ''^[a-zA-Z0-9]*$'');',
'',
'   IF valor = FALSE  THEN ',
'    RETURN '' No se puede guardar nombre con caracteres especiales'';',
'',
'   END IF;*/',
'exception',
'    when others then    ',
'            null;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(23301465478411593)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23309024242411597)
,p_name=>'obtiene_nombre'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_CI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23309594735411598)
,p_event_id=>wwv_flow_imp.id(23309024242411597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		select  ',
'							 nombres ||'' ''||apellidoS nombre',
'                                                       ',
'				  from cedulas_per',
'				 where numero =:P92_ci '))
,p_attribute_07=>'P92_NOMBRE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23309994742411598)
,p_name=>'OBTIENE_EXISTENCIA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_CI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23310429668411598)
,p_event_id=>wwv_flow_imp.id(23309994742411598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare ',
' vnombre varchar2(600); ',
' ',
' BEGIN begin select nombre|| ''. Cliente: ''|| c.cod_cliente||''. '' NOMBRE, C.COD_CLIENTE',
' into ',
'			  :P92_DATOS,:P92_COD_CLIENTE',
'			   from personas p, ',
'			   			cc_clientes c, IDENT_PERSONAS I',
'			  where I.numero = :P92_CI',
'			    and c.cod_empresa = ''1''',
'			    and p.cod_persona = c.cod_persona',
'                            AND C.COD_PERSONA=I.COD_PERSONA',
'                            AND ROWNUM=''1'';',
'                           exception when others then',
'                            :P92_DATOS:=NULL;',
'                            :P92_COD_CLIENTE:=NULL;',
'                            end;',
'                            ',
'                            ',
'                            ',
'',
'                    ',
'                            END;'))
,p_attribute_02=>'P92_CI'
,p_attribute_03=>'P92_DATOS,P92_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23310930774411598)
,p_event_id=>wwv_flow_imp.id(23309994742411598)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_DATOS'
,p_attribute_01=>'color'
,p_attribute_02=>'#E95B54'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23311344222411599)
,p_name=>'obtiene_nombre_ruc'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23311888477411599)
,p_event_id=>wwv_flow_imp.id(23311344222411599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare ',
' vnombre varchar2(600); ',
' ',
' BEGIN begin select nombre|| ''. Cliente: ''|| c.cod_cliente||''. '' NOMBRE, C.COD_CLIENTE',
' into ',
'			  :P92_DATOS,:P92_COD_CLIENTE',
'			   from personas p, ',
'			   			cc_clientes c, IDENT_PERSONAS I',
'			  where I.numero = :P92_ruc',
'			    and c.cod_empresa = ''1''',
'			    and p.cod_persona = c.cod_persona',
'                            AND C.COD_PERSONA=I.COD_PERSONA',
'                            AND ROWNUM=''1'';',
'                           exception when others then',
'                            :P92_DATOS:=NULL;',
'                            :P92_COD_CLIENTE:=NULL;',
'                            end;',
'                            ',
'                            ',
'                            ',
'',
'                    ',
'                            END;'))
,p_attribute_02=>'P92_RUC'
,p_attribute_03=>'P92_DATOS,P92_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23312337563411599)
,p_event_id=>wwv_flow_imp.id(23311344222411599)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_DATOS'
,p_attribute_01=>'color'
,p_attribute_02=>'#E95B54'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23428991319756724)
,p_name=>'da_cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23488469981910223)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23429002773756725)
,p_event_id=>wwv_flow_imp.id(23428991319756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99286176692806445)
,p_name=>'Verifica RUC'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99286234161806446)
,p_event_id=>wwv_flow_imp.id(99286176692806445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  VDIREC               VARCHAR2(32000);',
'  V_DETALLE            VARCHAR2(10000);',
'  V_CABECERA           VARCHAR2(10000);',
'  VDATOS_RETORNO       VARCHAR2(32000);',
'  P_JSON               VARCHAR2(4000);',
'  P_DATOS              VARCHAR2(4000);',
'  L_MSJ                VARCHAR2(4000);',
'  L_PATH               VARCHAR2(200);',
'  L_ESTADO             VARCHAR2(200);',
'  NOMBRE               VARCHAR2(1);',
'  VDATOS2              VARCHAR2(5000);',
'  V_DESCRIPCION_ESTADO VARCHAR2(500);',
'BEGIN',
'  :P0_MENSAJE_VALIDACION := NULL;',
'  IF :P92_RUC IS NOT NULL THEN',
'    DECLARE',
'      T_HTTP_REQ     UTL_HTTP.REQ;',
'      T_HTTP_RESP    UTL_HTTP.RESP;',
'      T_REQUEST_BODY VARCHAR2(30000);',
'    BEGIN',
'      BEGIN',
'        VDIREC := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      END;',
'      VDATOS := ''{"ruc":["'' || :P92_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      P_JSON := ''{"ruc":["'' || :P92_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'    ',
'      T_REQUEST_BODY := VDATOS;',
'      T_HTTP_REQ     := UTL_HTTP.BEGIN_REQUEST(VDIREC, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Type'', ''application/json'');',
'    ',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Length'', LENGTH(VDATOS));',
'    ',
'      UTL_HTTP.WRITE_TEXT(T_HTTP_REQ, T_REQUEST_BODY);',
'      P_JSON := T_REQUEST_BODY;',
'      DBMS_OUTPUT.PUT_LINE(''t_request_body: '' || T_REQUEST_BODY);',
'    ',
'      T_HTTP_RESP := UTL_HTTP.GET_RESPONSE(T_HTTP_REQ);',
'      UTL_HTTP.READ_TEXT(T_HTTP_RESP, P_DATOS);',
'      UTL_HTTP.END_RESPONSE(T_HTTP_RESP);',
'      BEGIN',
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00D1'', ''\005Cu00D1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
'      ',
'        APEX_JSON.PARSE(VDATOS2);',
'        :P92_ESTADO            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].codigoRespuesta'',',
'                                                         P0     => 1);',
'        :P92_NOMBRE            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].razonSocial'',',
'                                                         P0     => 1);',
'        :P0_MENSAJE_VALIDACION := CONVERT(REPLACE(APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].mensajeError'',',
'                                                                         P0     => 1),',
'                                                  ''"'',',
'                                                  ''''),',
'                                          ''WE8MSWIN1252'',',
'                                          ''UTF8'');',
'        V_DESCRIPCION_ESTADO   := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].descripcionEstadoRuc'',',
'                                                         P0     => 1);',
'        IF :P92_ESTADO = ''EXISTE'' AND V_DESCRIPCION_ESTADO <> ''ACTIVO'' THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 '' ||'),
'                                    V_DESCRIPCION_ESTADO;',
'          :P92_NOMBRE            := NULL;',
'        ELSIF :P92_ESTADO <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc ingresado no existe'';'),
'        END IF;',
'      END;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P92_RUC'
,p_attribute_03=>'P92_ESTADO,P92_NOMBRE,P0_MENSAJE_VALIDACION'
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
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76728924139030036)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    :P92_ES_FISICA := ''S'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23308691406411597)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_cliente'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P92_cod_cliente is null then',
'begin',
'  declare',
'    vruc varchar2(30);',
'    vnom varchar2(100);',
'    vcod_persona varchar2(500);',
'  begin',
'    select max(cod_persona)',
'      into vruc',
'      from ident_personas',
'     where numero = :P92_ruc;',
'  ',
'    select nombre into vnom from personas where cod_persona = vruc;',
'  ',
'    if vnom is not null then',
'                apex_application.g_print_success_message := ''<span style="color:red">',
unistr('               El n\00FAmero de RUC ingresado ya se encuentra registrado a la persona cod. '' || vruc ||'),
'              '' - '' || vnom || ''. ',
'               .</span>'';',
'      ROLLBACK;',
'    end if;',
'  exception',
'    when others then',
'      if vnom is null then',
'        DECLARE',
'          vdoc VARCHAR2(15);',
'          vcli VARCHAR2(15);',
'          vper VARCHAR2(15);',
'          vnom VARCHAR2(80);',
'          vfan VARCHAR2(80);',
'          vcod VARCHAR2(15);',
'          vcob VARCHAR2(15);',
'          verr EXCEPTION;',
'          FUNCTION existe_doc(p_tip_documento VARCHAR2,',
'                              p_nro_documento VARCHAR2) RETURN BOOLEAN IS',
'          BEGIN',
'            BEGIN',
'              select id.numero, p.nombre, p.nomb_fantasia, id.cod_persona',
'                into vdoc, vnom, vfan, vper',
'                from ident_personas id, personas p',
'               where id.cod_ident = p_tip_documento',
'                 and numero = p_nro_documento',
'                 and id.cod_persona = p.cod_persona',
'                 and rownum = 1;',
'              --',
'              IF vdoc IS NOT NULL THEN',
'                BEGIN',
'                  select cod_cliente',
'                    into vcli',
'                    from cc_clientes',
'                   where cod_empresa = ''1''',
'                     and cod_persona = vper;',
'                  --',
'                  IF vcli IS NOT NULL THEN',
'                     ',
'                        apex_application.g_print_success_message := ''<span style="color:red">',
unistr('              El n\00FAmero de documento seleccionado ya fue definido en el cliente: '' ||'),
'                               chr(13) || nvl(vnom, vfan) || '' ('' || vcli ||',
'                               ''). ',
'               .</span>'';         ',
'                    return TRUE;',
'                  END IF;',
'                EXCEPTION',
'                  when no_data_found then',
'                                ',
'                               ',
'                             apex_application.g_print_success_message := ''<span style="color:red">',
unistr('              El n\00FAmero de documento seleccionado ya fue definido en la persona: '' ||'),
'                               chr(13) || nvl(vnom, vfan) || '' ('' || vper ||',
'                               '').          .</span>'';        ',
'                    return TRUE;',
'                END;',
'              END IF;',
'            EXCEPTION',
'              when no_data_found then',
'                NULL;',
'            END;',
'          ',
'            RETURN FALSE;',
'            RETURN NULL;',
'          EXCEPTION',
'            when others then',
'          ',
'                 apex_application.g_print_success_message := ''<span style="color:red">   No se puede verificar el numero de documento .</span>'';',
'              RETURN FALSE;',
'          END;',
'        ',
'          FUNCTION inserta_doc(p_tip_documento VARCHAR2,',
'                               p_nro_documento VARCHAR2) RETURN BOOLEAN IS',
'          BEGIN',
'            insert into ident_personas',
'              (cod_persona, cod_ident, numero, fec_vencimiento)',
'            values',
'              (vcod_persona,',
'               p_tip_documento,',
'               p_nro_documento,',
'               to_date(''31/12/'' || to_char(add_months(sysdate, 60), ''YYYY''),',
'                       ''DD/MM/YYYY''));',
'            return TRUE;',
'            RETURN NULL;',
'          EXCEPTION',
'            when others then',
'                          ',
'apex_application.g_print_success_message := ''<span style="color:red">   No se puede insertar el documento de pa persona .</span>'';                         ',
'              return FALSE;',
'          END;',
'        ',
'        BEGIN',
'          --break;',
'          IF :P92_COD_TIP_CLIENTE IS NULL THEN',
'         ',
'            apex_application.g_print_success_message := ''<span style="color:red">Debe completar el Tipo de cliente.</span>'';',
'             ',
'            raise verr;',
'          END IF;',
'        ',
'          IF :P92_COD_LISTA_PRECIO IS NULL THEN',
'             apex_application.g_print_success_message := ''<span style="color:red">Debe completar la lista de precios.</span>'';',
'            raise verr;',
'          END IF;',
'        ',
'          IF :P92_cod_provincia IS NULL THEN',
'          ',
'           apex_application.g_print_success_message := ''<span style="color:red">Debe completar el departamento del cliente.</span>'';',
'            raise verr;',
'          END IF;',
'        ',
'          IF :P92_cod_ciudad IS NULL THEN',
'            apex_application.g_print_success_message := ''<span style="color:red">Debe completar la ciudad del cliente.</span>'';',
'            raise verr;',
'          END IF;',
'        ',
'         ',
'        ',
'          IF :P92_es_fisica = ''N'' THEN',
'            -- persona juridica',
'             ',
'          ',
'            IF :P92_ruc IS NULL THEN',
'               apex_application.g_print_success_message := ''<span style="color:red">Debe ingresar el RUC del cliente.</span>'';',
'          ',
'          ',
'              raise verr;',
'            END IF;',
'          END IF;',
'        ',
'          ',
'        ',
'          IF :P92_ci IS NOT NULL THEN',
'            IF existe_doc(''CI'', :P92_ci) THEN',
'              raise verr;',
'            END IF;',
'          END IF;',
'        ',
'          IF :P92_ruc IS NOT NULL THEN',
'            IF existe_doc(''RUC'', :P92_RUC) THEN',
'              raise verr;',
'            END IF;',
'          END IF;',
'        ',
'          BEGIN',
'            select nvl(max(to_number(cod_persona)), 0) + 1',
'              into vcod',
'              from personas;',
'          ',
'            Vcod_persona := vcod;',
'          EXCEPTION',
'            when verr then',
'              raise verr;',
'            when others then',
'              apex_application.g_print_success_message := ''<span style="color:red">Error en la generacion del codigo de persona.</span>'';',
'              raise verr;',
'          END;',
'        ',
'          IF :P92_cod_cliente IS NULL THEN',
'            BEGIN',
'              select nvl(max(to_number(cod_cliente)), 0) + 1',
'                into vcli',
'                from cc_clientes',
'               where cod_empresa = ''1'';',
'              :P92_cod_cliente := vcli;',
'            EXCEPTION',
'              when verr then',
'                raise verr;',
'              when others then',
unistr('               apex_application.g_print_success_message := ''<span style="color:red">Error en la generaci\00F3n del c\00F3digo de cliente .</span>'';'),
'               ROLLBACK;',
'            END;',
'          END IF;        ',
'          BEGIN',
'            BEGIN',
'              insert into personas',
'                (cod_persona,',
'                 es_fisica,',
'                 nombre,',
'                 apenombre,',
'                 cod_pais,',
'                 nacionalidad,',
'                 nomb_fantasia,',
'                 cod_sector,',
'                 alta_por,',
'                 fec_alta,',
'                 direc_electronica,',
'                 direc_electronica_st)',
'              values',
'                (Vcod_persona,',
'                 :p92_es_fisica,',
'                 :p92_nombre,',
'                 :p92_nombre,',
'                 :p92_cod_pais,',
'                 :p92_nacionalidad,',
'                 :p92_nombre,',
'                 :p92_cod_sector,',
'                 :p92_cod_usuario,',
'                 sysdate,',
'                 :p92_correo,',
'                 :p92_email_st);',
'            EXCEPTION',
'              when verr then',
'                raise verr;',
'              when others then',
unistr('              apex_application.g_print_success_message := ''<span style="color:red">Error en la generaci\00F3n del c\00F3digo de persona .</span>''; '),
'                raise verr;',
'            END;',
'           IF :P92_CORREO IS NOT NULL THEN',
'											      BEGIN',
'												        insert into cc_contactos_clientes(cod_empresa, cod_contacto, cod_cliente, email , fec_alta, alta_por)',
'												                            values( :P_COD_EMPRESA,''FA'',:P92_COD_CLIENTE, :P92_CORREO,SYSDATE,:P_COD_USUARIO);',
'											      EXCEPTION',
'																when verr then',
'																		raise verr;',
'																when others then',
'													 ',
'                                     apex_application.g_print_success_message := ''<span style="color:red">No se pudo insertar el email de la persona .</span>''; ',
'																		raise verr;',
'											      END;',
'										    END IF;',
'',
'            IF :p92_direccion IS NOT NULL OR',
'               :p92_cod_pais IS NOT NULL OR',
'               :p92_cod_provincia IS NOT NULL OR',
'               :p92_cod_ciudad IS NOT NULL THEN',
'              BEGIN',
'                insert into direc_personas',
'                  (cod_persona,',
'                   cod_direccion,',
'                   detalle,',
'                   cod_pais,',
'                   cod_provincia,',
'                   cod_ciudad,',
'                   por_defecto,',
'                   tip_direccion)',
'                values',
'                  (vcod_persona,',
'                   ''0'',',
'                   :p92_direccion,',
'                   :p92_cod_pais,',
'                   :p92_cod_provincia,',
'                   :p92_cod_ciudad,',
'                   ''S'',',
'                   ''C'');',
'                COMMIT;',
'              EXCEPTION',
'                when verr then',
'                  raise verr;',
'                when others then',
unistr('                 apex_application.g_print_success_message := ''<span style="color:red">Error en la generaci\00F3n de la direccion de cliente .</span>'';'),
'                  raise verr;',
'              END;',
'            END IF;',
'          ',
'            BEGIN',
'              IF :P92_coD_tip_cliente = ''9'' THEN',
'                vcob := ''71'';',
'              ELSIF :P92_cod_tip_cliente = ''23'' THEN',
'                vcob := ''30'';',
'              ELSIF :P92_cod_tip_cliente = ''18'' THEN',
'                vcob := ''74'';',
'              ELSE',
'                vcob := NULL;',
'              END IF;',
'            ',
'              insert into cc_clientes',
'                (cod_empresa,',
'                 cod_cliente,',
'                 cod_persona,',
'                 estado,',
'                 plazo,',
'                 cod_condicion_venta,',
'                 nro_jerarquia,',
'                 tip_documento,',
'                 tip_cliente,',
'                 cod_vendedor,',
'                 cod_moneda_limite,',
'                 limite_credito,',
'                 cod_zona,',
'                 fec_alta,',
'                 cod_usuario,',
'                 cod_lista_precio,',
'                 nro_llamada,',
'                 TIP_OPERACION,',
'                 cod_cobrador)',
'              values',
'                (''1'',',
'                 :P92_cod_cliente,',
'                 Vcod_persona,',
'                 ''A'',',
'                 ''0'',',
'                 :P92_cod_condicion_venta,',
'                 ''600'',',
'                 NULL,',
'                 :P92_cod_tip_cliente,',
'                 :P92_cod_vendedor,',
'                 ''1'',',
'                 1,',
'                 NULL,',
'                 sysdate,',
'                 :P92_cod_usuario,',
'                 :P92_cod_lista_precio,',
'                 NULL,',
'                 NULL,',
'                 vcob);',
'                 ',
'                 ',
unistr('                   :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;'),
'            EXCEPTION',
'              when verr then',
'                raise verr;',
'              when others then',
'     apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del cliente.''||sqlerrm||''</span>'';  ',
'                raise verr;',
'            END;',
'          ',
'            IF :P92_ci IS NOT NULL THEN',
'              IF NOT inserta_doc(''CI'', :P92_ci) THEN',
'                raise verr;',
'              END IF;',
'            END IF;',
'          ',
'            IF :P92_ruc IS NOT NULL THEN',
'              IF NOT inserta_doc(''RUC'', :P92_ruc) THEN',
'                raise verr;',
'              END IF;',
'            END IF;',
'          ',
'            IF :P92_telefono IS NOT NULL THEN',
'              BEGIN',
'                insert into telef_personas',
'                  (cod_persona,',
'                   codigo_area,',
'                   num_telefono,',
'                   por_defecto,',
'                   tip_telefono,',
'                   tel_ubicacion)',
'                values',
'                  (Vcod_persona,',
'                   ''NOD'',',
'                   :P92_telefono,',
'                   ''S'',',
'                   ''D'',',
'                   ''C'');',
'              EXCEPTION',
'                when verr then',
'                  raise verr;',
'                when others then',
'                           ',
'                 apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del telefono</span>'';              ',
'                  raise verr;',
'              END;',
'            END IF;',
'          ',
'            IF :P92_CELULAR IS NOT NULL AND',
'               :P92_CELULAR<> :P92_TELEFONO THEN ',
'              BEGIN',
'                insert into telef_personas',
'                  (cod_persona,',
'                   codigo_area,',
'                   num_telefono,',
'                   por_defecto,',
'                   tip_telefono,',
'                   tel_ubicacion)',
'                values',
'                  (vcod_persona,',
'                   ''NOD'',',
'                   :P92_CELULAR,',
'                   decode(:P92_TELEFONO, NULL, ''S'', ''N''),',
'                   ''C'',',
'                   ''O'');',
'              EXCEPTION',
'                when verr then',
'                  raise verr;',
'                when others then',
'             apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del celular.</span>'';  ',
'             raise verr;',
'              END;',
'            END IF;',
'            COMMIT;',
'          EXCEPTION',
'            when verr then',
'              raise verr;',
'            when others then',
'         ',
'              ROLLBACK;',
'          END;',
'        ',
'         COMMIT;',
'            if :P92_cod_cliente is not null then',
unistr('                     :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;           '),
unistr('                    apex_application.g_print_success_message := ''<span style="color:red">      El cliente ha sido creado con \00E9xito. '' || :P92_cod_cliente  || ''.          .</span>''; '),
'           end if;   ',
'        EXCEPTION',
'          when verr then          ',
'            ROLLBACK;',
'             apex_application.g_print_success_message := ''<span style="color:red">Error al intentar crear el Cliente.''||chr(10)||sqlerrm||''</span>'';   ',
'        END; ',
'        /*',
unistr('        :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;'),
unistr('               apex_application.g_print_success_message := ''<span style="color:red">      El cliente ha sido creado con \00E9xito. '' || :P92_cod_cliente  || ''.          .</span>''; '),
'        */',
'      end if;',
'',
'      if :P92_cod_cliente is not null then',
unistr('       :P92_DATOS :=''El cliente ha sido creado con \00E9xito.'' ||''   C\00F3digo de cliente: '' || :P92_cod_cliente   ;'),
unistr('         apex_application.g_print_success_message := ''<span style="color:red">      El cliente ha sido creado con \00E9xito. '' || :P92_cod_cliente  || ''.          .</span>''; '),
'      else     ',
'             apex_application.g_print_success_message := ''<span style="color:red">No se ha podido crear el Cliente.</span>''; ',
'      end if;      ',
'  end;',
'end;',
'end if;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23299859152411592)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73913464195687144)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CERRAR_MODAL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_INDICADOR_PAG_298'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'CREACION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147541372006413024)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Actualiza ticket'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update ca_ticket_atencion set cod_cliente = :P92_COD_CLIENTE',
'where id_ticket = :P92_NRO_TICKET;',
'',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_NRO_TICKET'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp.component_end;
end;
/
