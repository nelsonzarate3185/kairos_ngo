prompt --application/pages/page_00633
begin
--   Manifest
--     PAGE: 00633
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
 p_id=>633
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantenimiento de Preguntas de Clima'
,p_alias=>'MANTENIMIENTO-DE-PREGUNTAS-DE-CLIMA'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantenimiento de Preguntas de Clima'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20231006104921'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216424433333078301)
,p_plug_name=>'Mantenimiento de Preguntas de Clima'
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216426151910078318)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216425345800078310)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216425231522078309)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216424553231078302)
,p_name=>'P633_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216424696695078303)
,p_name=>'P633_CLAB0100_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216424739500078304)
,p_name=>'P633_ITEM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216424877855078305)
,p_name=>'P633_CLAB_0110_ITEM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_prompt=>'Grupo de Preguntas'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select nomb from ngo$ccla0100 where id = c110.ccla0100$id) d,',
'       c110.item r ',
'from ngo$clab0110 c110',
'where c110.clab0100$id = :P633_CLAB0100_ID',
'AND DM$ACTI = 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216424907916078306)
,p_name=>'P633_UMED0100_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_prompt=>'Unidad de Medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'NGO$UMED0100_ACT'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216425067163078307)
,p_name=>'P633_PREG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_prompt=>'Pregunta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216425115998078308)
,p_name=>'P633_DM_ACTI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_prompt=>unistr('\00BFActivo?')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;1,NO;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216425896267078315)
,p_name=>'P633_EDITAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216426230749078319)
,p_name=>'P633_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(216426151910078318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216570176037393805)
,p_name=>'P633_RECARGAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(216426151910078318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216571085326393814)
,p_name=>'P633_CLAB0100_ITEM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(216424433333078301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216425410537078311)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216425231522078309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216425733571078314)
,p_event_id=>wwv_flow_imp.id(216425410537078311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_item number;',
'BEGIN',
':P633_ERR := null;',
'    IF :P633_CLAB0100_ID is not null and :P633_DM_ACTI is not null  then',
'            IF :P633_EDITAR IS NULL THEN',
'',
'            select nvl(max(item)+1,1) ',
'            into v_item',
'             from NGO$clab0120',
'              where clab0100$id = :P633_CLAB0100_ID;',
'',
'',
'                INSERT INTO NGO$CLAB0120 (',
'                        ID,',
'                        clab0100$id, ',
'                        clab0110$item,',
'                        item, ',
'                        UMED0100$id, ',
'                        dm$acti,',
'                        preg    ',
'                ) VALUES (',
'                    NGO$CLAB0120$SEQ.NEXTVAL,--:P633_CCLA0100_ID,',
'                    :P633_CLAB0100_ID,',
'                    :P633_CLAB_0110_ITEM ,',
'                    v_item, ',
'                    :P633_UMED0100_ID,',
'                    :P633_DM_ACTI,',
'                    UPPER(:P633_PREG)',
'                );   ',
'            ELSE ',
'                UPDATE NGO$CLAB0120 SET',
'                   umed0100$id = :P633_UMED0100_ID,',
'                       dm$acti = :P633_DM_ACTI,',
'                       preg =:P633_PREG',
'                 where ID  = :P633_ID',
'                 and clab0110$ITEM = :P633_CLAB_0110_item;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P633_CLAB0100_ID is null then :P633_ERR := ''Por favor seleccione una categoria '';',
unistr('            when :P633_DM_ACTI is null then :P633_ERR := ''Por favor: ingrese el campo "\00BFACTIVO?"''; '),
'            else ',
'                null;     ',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR ASD: ''||SQLERRM);',
'       :P633_ERR:=''Ha ocurrido el siguiente error:'' ||SQLERRM || ''id: ''||:P633_CLAB0100_ID;',
'END;'))
,p_attribute_02=>'P633_CLAB0100_ID,P633_CLAB_0110_ITEM ,P633_UMED0100_ID,P633_DM_ACTI,P633_PREG'
,p_attribute_03=>'P633_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214215724764845749)
,p_event_id=>wwv_flow_imp.id(216425410537078311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P633_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216569909563393803)
,p_event_id=>wwv_flow_imp.id(216425410537078311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P633_EDITAR:=NULL;',
':P633_RECARGAR:=''1'';'))
,p_attribute_03=>'P633_EDITAR,P633_RECARGAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216426325062078320)
,p_name=>'DA_ERR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P633_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216426461047078321)
,p_event_id=>wwv_flow_imp.id(216426325062078320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P633_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P633_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214215860845845750)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216425345800078310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216569775141393801)
,p_event_id=>wwv_flow_imp.id(214215860845845750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216570671922393810)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216570873398393812)
,p_event_id=>wwv_flow_imp.id(216570671922393810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P633_EDITAR is not null then',
'        select ',
'               ID,',
'               ITEM,',
'               CLAB0110$ITEM,',
'               UMED0100$ID,',
'               DM$ACTI,',
'               PREG',
'        into ',
'                :P633_ID,',
'               :P633_ITEM,',
'               :P633_CLAB0100_ITEM,',
'               :P633_UMED0100_ID,',
'               :P633_DM_ACTI,',
'               :P633_PREG',
'',
'        from NGO$CLAB0120',
'        where ROWID = :P633_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_03=>'P633_ID,P633_ITEM,P633_CLAB0100_ITEM,P633_UMED0100_ID,P633_DM_ACTI,P633_PREG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P633_EDITAR'
);
wwv_flow_imp.component_end;
end;
/
