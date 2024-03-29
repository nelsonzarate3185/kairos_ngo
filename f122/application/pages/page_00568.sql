prompt --application/pages/page_00568
begin
--   Manifest
--     PAGE: 00568
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
 p_id=>568
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAMOVOT'
,p_alias=>'CAMOVOT'
,p_page_mode=>'MODAL'
,p_step_title=>'CAMOVOT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230906161101'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182766155017206917)
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
 p_id=>wwv_flow_imp.id(183071304443522771)
,p_plug_name=>'CAMOVOT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CA_LLAMADAS_SALIENTES'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183093669969522756)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183092680809522757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183094003664522756)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183093296535522756)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182765637230206912)
,p_name=>'P568_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182765773224206913)
,p_name=>'P568_NOM_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(182765864337206914)
,p_name=>'P568_DESC_MOTIVO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766250374206918)
,p_name=>'P568_MODIFICA_SEGUIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766345643206919)
,p_name=>'P568_DERECHOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766402484206920)
,p_name=>'P568_IMPORTE_ANT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766673892206922)
,p_name=>'P568_COD_MODULO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_item_default=>'CA'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766730247206923)
,p_name=>'P568_NOM_MODULO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766830679206924)
,p_name=>'P568_COD_FORMA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182766947605206925)
,p_name=>'P568_NOM_FORMA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767015133206926)
,p_name=>'P568_COD_MONEDA_BASE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767191826206927)
,p_name=>'P568_COD_SUCURSAL'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767231707206928)
,p_name=>'P568_COD_IDIOMA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767304075206929)
,p_name=>'P568_CODSISMENU'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767411746206930)
,p_name=>'P568_TIPO_TRANS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767585788206931)
,p_name=>'P568_SER_RECIBO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767623970206932)
,p_name=>'P568_FEC_ACTUAL'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767728016206933)
,p_name=>'P568_MODIFICA_FECHA'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182767864940206934)
,p_name=>'P568_DIAS_ATRASO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183071637168522770)
,p_name=>'P568_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183072074455522769)
,p_name=>'P568_TIP_MOVIMIENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'INF'
,p_source=>'TIP_MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183072403348522769)
,p_name=>'P568_NRO_MOVIMIENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'NRO_MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183072842824522768)
,p_name=>'P568_FEC_MOVIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'trae_fecha( :P568_COD_EMPRESA, :P568_COD_MODULO )'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_source=>'FEC_MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183073202693522768)
,p_name=>'P568_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183073656411522768)
,p_name=>'P568_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Tip Comprobante'
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183074085927522768)
,p_name=>'P568_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Ser Comprobante'
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183074449759522767)
,p_name=>'P568_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Nro Comprobante'
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183074869042522767)
,p_name=>'P568_NRO_CUOTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'NRO_CUOTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183075216080522767)
,p_name=>'P568_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'COD_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183075642440522767)
,p_name=>'P568_SALDO_RECLAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'SALDO_RECLAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183076020077522766)
,p_name=>'P568_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Observacion'
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183076406914522766)
,p_name=>'P568_COD_SECTOR_ANT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'COD_SECTOR_ANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183076801863522766)
,p_name=>'P568_COD_SECTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'COD_SECTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183077277329522766)
,p_name=>'P568_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Usuario'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183077668018522765)
,p_name=>'P568_NRO_ORDEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(182766155017206917)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'NRO_ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183078005157522765)
,p_name=>'P568_CALIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'1'
,p_prompt=>'Calificacion'
,p_source=>'CALIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;6'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183078444351522765)
,p_name=>'P568_COD_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'59'
,p_prompt=>'Motivo'
,p_source=>'COD_MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion , cod_motivo from ca_motivo_lla',
'where cod_motivo = ''59''',
'order by descripcion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183078861904522765)
,p_name=>'P568_NRO_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Nro Telefono'
,p_source=>'NRO_TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>400
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183079275543522764)
,p_name=>'P568_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>400
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183079601884522764)
,p_name=>'P568_NRO_LLAMADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'NRO_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183080045088522764)
,p_name=>'P568_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_prompt=>'Empresa'
,p_source=>'EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183080435795522764)
,p_name=>'P568_HORA_LLAMADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'to_char(sysdate,''HH24:MI:SS'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Hora'
,p_source=>'HORA_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183080807246522764)
,p_name=>'P568_MOVIMIENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_default=>'S'
,p_prompt=>'Movimiento'
,p_source=>'MOVIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183081277042522763)
,p_name=>'P568_FECHA_REAGENDADA'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'FECHA_REAGENDADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183081654346522763)
,p_name=>'P568_HORA_REAGENDADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'HORA_REAGENDADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183082018638522763)
,p_name=>'P568_HORA_FIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'HORA_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183082487248522763)
,p_name=>'P568_MOTIVO_SECUNDARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'MOTIVO_SECUNDARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183082810215522763)
,p_name=>'P568_MOTIVO_PRINCIPAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'MOTIVO_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183083270523522763)
,p_name=>'P568_COD_VENDEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_item_source_plug_id=>wwv_flow_imp.id(183071304443522771)
,p_source=>'COD_VENDEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182767915860206935)
,p_name=>'PRE FORM'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182768078631206936)
,p_event_id=>wwv_flow_imp.id(182767915860206935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   DECLARE',
'    i NUMBER;',
'    e EXCEPTION;',
'  BEGIN',
'    select to_number( nvl( valor, 0 ) )',
'      into :P568_DIAS_ATRASO',
'      from parametros_generales',
'     where cod_modulo = :P568_COD_MODULO',
'       and parametro = ''DIAS_ATRASO_INF'';',
'',
'    IF :P568_DIAS_ATRASO < 1 THEN',
'      raise e;',
'    END IF;',
'  EXCEPTION',
'    when e then',
'    :P568_DIAS_ATRASO := 30;',
unistr('      RAISE_APPLICATION_ERROR(-20001, ''El valor del par\00E1metro "DIAS_ATRASO_INF" es menor o igual a 0 (cero).''||chr(13)||'),
'             ''Consulte con el administrador del sistema para corregir el error.'');',
'        ',
'    when others then',
'      IF substr( sqlerrm, 1, 9 ) = ''ORA-01722'' THEN',
'       :P568_DIAS_ATRASO := 30;',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''El par\00E1metro "DIAS_ATRASO_INF" no es un n\00FAmero.''||chr(13)||'),
'               ''Consulte con el administrador del sistema para corregir el error.'');',
'      ELSE',
'         :P568_DIAS_ATRASO := 30;',
'      END IF;',
'  END;'))
,p_attribute_02=>'P568_COD_MODULO'
,p_attribute_03=>'P568_DIAS_ATRASO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182768296257206938)
,p_name=>'Post query'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182768346028206939)
,p_event_id=>wwv_flow_imp.id(182768296257206938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'        select descripcion',
'          into :P568_DESC_MOTIVO',
'        from ca_motivo_lla',
'      where cod_motivo = :P568_COD_MOTIVO;',
'     exception',
'    when others then',
'        :P568_DESC_MOTIVO:= null; ',
'     end;',
'     ',
'     ',
'     BEGIN',
'  Select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'    into :P568_NOM_CLIENTE',
'    from cc_clientes c, personas p',
'   where c.cod_empresa = :P568_COD_EMPRESA',
'     and c.cod_cliente = :P568_COD_CLIENTE',
'     and c.cod_persona = p.cod_persona;',
'EXCEPTION',
'  when others then',
'    :P568_NOM_CLIENTE := NULL;',
'    ',
'   ',
'END;'))
,p_attribute_02=>'P568_COD_MOTIVO,P568_COD_EMPRESA,P568_COD_CLIENTE'
,p_attribute_03=>'P568_DESC_MOTIVO,P568_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182768530024206941)
,p_name=>'Cerrar region'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(183092680809522757)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182768628710206942)
,p_event_id=>wwv_flow_imp.id(182768530024206941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(182768110665206937)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vnumero NUMBER(8);',
'BEGIN',
'  Select max( nro_movimiento )',
'    into vnumero',
'    from CA_LLAMADAS_SALIENTES',
'   where cod_empresa = :P568_COD_EMPRESA;',
'',
'   vnumero := nvl( vnumero, 0 ) + 1;',
'   :P568_NRO_MOVIMIENTO := vnumero ; ',
'EXCEPTION',
'  when no_data_found then  ',
'    vnumero := 1;',
'    :P568_NRO_MOVIMIENTO := vnumero ; ',
'  when others then',
'    raise_application_error(-20001, ''Error en tabla de cabecera ''||sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(183094003664522756)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183095224912522755)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(183071304443522771)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla CAMOVOT'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(182769105929206947)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Cierra modal'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183094873705522755)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(183071304443522771)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla CAMOVOT'
);
wwv_flow_imp.component_end;
end;
/
