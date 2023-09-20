prompt --application/pages/page_01600
begin
--   Manifest
--     PAGE: 01600
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
 p_id=>1600
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'pagina alerta'
,p_alias=>'PAGINA-ALERTA'
,p_step_title=>'pagina alerta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20230915115624'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111724324233983824)
,p_button_sequence=>1000
,p_button_name=>'bt_alerta'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Mostrar Alerta'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111724687393983827)
,p_name=>'P1600_MENSAJE'
,p_item_sequence=>940
,p_prompt=>'Mensaje'
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
 p_id=>wwv_flow_imp.id(111724747131983828)
,p_name=>'P1600_TIPO'
,p_item_sequence=>960
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:informacion;1,atencion;2,error;3'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111724874255983829)
,p_name=>'P1600_TITULO'
,p_item_sequence=>950
,p_prompt=>'Titulo'
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
 p_id=>wwv_flow_imp.id(111724961679983830)
,p_name=>'P166_AUX_TIPO_ALERT'
,p_item_sequence=>980
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111725000644983831)
,p_name=>'P1600_TITULO_DEV'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111724456500983825)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111724324233983824)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111724581247983826)
,p_event_id=>wwv_flow_imp.id(111724456500983825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_ERROR VARCHAR2(500);',
'begin',
'    CCAPLNCR.Alerta( ',
'        PI_Mensaje => :P1600_MENSAJE, ',
'        PI_Titulo => :P1600_TITULO, ',
'        PI_Icono => :P1600_TIPO, ',
'        PO_tipo_alerta => :P166_AUX_TIPO_ALERT,',
'        po_titulo => :P1600_TITULO_DEV,',
'        PO_ERROR => V_ERROR);',
'',
'exception',
'    when others then null;',
'end;'))
,p_attribute_02=>'P1600_MENSAJE,P1600_TIPO,P1600_TITULO'
,p_attribute_03=>'P166_AUX_TIPO_ALERT,P1600_TITULO_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111725162769983832)
,p_event_id=>wwv_flow_imp.id(111724456500983825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P1600_MENSAJE.'
,p_attribute_02=>'&P1600_TITULO_DEV.'
,p_attribute_03=>'information'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P166_AUX_TIPO_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111725215996983833)
,p_event_id=>wwv_flow_imp.id(111724456500983825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P1600_MENSAJE.'
,p_attribute_02=>'&P1600_TITULO_DEV.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P166_AUX_TIPO_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111725315192983834)
,p_event_id=>wwv_flow_imp.id(111724456500983825)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P1600_MENSAJE.'
,p_attribute_02=>'&P1600_TITULO_DEV.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P166_AUX_TIPO_ALERT'
,p_client_condition_expression=>'3'
);
wwv_flow_imp.component_end;
end;
/
