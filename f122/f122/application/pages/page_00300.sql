prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Empresas'
,p_alias=>'EMPRESAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Empresas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20230103160519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120884096076692860)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120884426814692863)
,p_plug_name=>'botonera'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73918329588709270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(120884426814692863)
,p_button_name=>'cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73918701763709271)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(120884426814692863)
,p_button_name=>'guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(73921255377709280)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73917668624709264)
,p_name=>'P300_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(120884096076692860)
,p_prompt=>'Empresa'
,p_source=>'P_COD_EMPRESA'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||'' - ''||cod_EMPRESA descripcion, COD_EMPRESA',
'from EMPRESAS'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73919212816709276)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P300_EMPRESA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Seleccione empresa'
,p_associated_item=>wwv_flow_imp.id(73917668624709264)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73920258769709277)
,p_name=>'da_cerrar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73918329588709270)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73920790262709279)
,p_event_id=>wwv_flow_imp.id(73920258769709277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73919494985709276)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_Asignar_empresa'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P_COD_EMPRESA := :P300_EMPRESA;',
'',
'SELECT DESCRIPCION ||'' - ''||cod_EMPRESA',
'INTO :P_DESCRIPCION_EMPRESA',
'FROM EMPRESAS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73919897149709276)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'cerrar'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
