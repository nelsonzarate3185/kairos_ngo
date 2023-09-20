prompt --application/pages/page_00611
begin
--   Manifest
--     PAGE: 00611
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
 p_id=>611
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Resultado de la Evaluacion de desempe\00F1o')
,p_alias=>unistr('RESULTADO-DE-LA-EVALUACION-DE-DESEMPE\00D1O')
,p_step_title=>unistr('Resultado de la Evaluacion de desempe\00F1o')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230920114520'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208527582572438026)
,p_plug_name=>unistr('Resultado de la Evaluacion de desempe\00F1o')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208527733352438028)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208528773718438038)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208529615323438047)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(208527582572438026)
,p_button_name=>'BT_ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208529796143438048)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(208527582572438026)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208527808123438029)
,p_name=>'P611_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208527952222438030)
,p_name=>'P611_P_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528077655438031)
,p_name=>'P611_P_REVISADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528146408438032)
,p_name=>'P611_P_OBS_REVISADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528268416438033)
,p_name=>'P611_P_RETORNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528300825438034)
,p_name=>'P611_P_COD_EMPLEADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528447825438035)
,p_name=>'P611_P_IND_REVISADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528528753438036)
,p_name=>'P611_P_TIPO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(208528773718438038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528674925438037)
,p_name=>'P611_VCALIFICACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(208527733352438028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528846353438039)
,p_name=>'P611_VPORC_TOTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(208527733352438028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208528963079438040)
,p_name=>'P611_VNOM_EMPLEADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(208527733352438028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208529025669438041)
,p_name=>'P611_VANIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(208527733352438028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208529127018438042)
,p_name=>'P611_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(208527582572438026)
,p_prompt=>'Dejanos tu comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208529273073438043)
,p_name=>'P611_CONFORMIDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(208527582572438026)
,p_prompt=>'Indicanos tu conformidad'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:PENDIENTE;P,CONFORME;C,NO CONFORME;N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208529836906438049)
,p_name=>'P611_INFORMACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208527582572438026)
,p_prompt=>'Informacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209170270601799108)
,p_name=>'P611_MENSAJE_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(208527582572438026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209169645101799102)
,p_name=>'DA_MOSTRAR_BT_ENVIAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209169737817799103)
,p_event_id=>wwv_flow_imp.id(209169645101799102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(208529615323438047)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P611_P_REVISADO'
,p_client_condition_expression=>'S'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209169846979799104)
,p_event_id=>wwv_flow_imp.id(209169645101799102)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(208529615323438047)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P611_P_REVISADO'
,p_client_condition_expression=>'S'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209170048108799106)
,p_name=>'DA_ENVIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208529615323438047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209170379113799109)
,p_event_id=>wwv_flow_imp.id(209170048108799106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para continuar.'
,p_attribute_02=>unistr('\00BFDesea enviar los datos?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209170106947799107)
,p_event_id=>wwv_flow_imp.id(209170048108799106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
':P611_MENSAJE_ERROR := NULL;',
' ',
'IF :P611_CONFORMIDAD = ''N'' THEN',
'    IF LENGTH(:P611_COMENTARIO ) <= 15 or LENGTH(trim(:P611_COMENTARIO)) = 0 then',
'        :P611_MENSAJE_ERROR := ''Tu comentario tiene menos de 15 caracteres, por favor revisa esto antes de volver a guardar.'';',
'        --apex_debug.error(''Tu comentario tiene menos de 15 caracteres, por favor revisa esto antes de volver a guardar.'');',
'    END IF;',
'  ',
'',
'END IF;'))
,p_attribute_02=>'P611_CONFORMIDAD,P611_COMENTARIO'
,p_attribute_03=>'P611_MENSAJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209170781296799113)
,p_event_id=>wwv_flow_imp.id(209170048108799106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Actualizar datos:',
':P611_MENSAJE_ERROR := null;',
'begin',
'    prc_revision_emp_edd (pcod_empresa => :P611_P_COD_EMPRESA,',
'                          panio =>to_date(to_char(sysdate,''DD/MM/YYYY''),''YYYY''),',
'                          pcod_empleado =>:P611_P_COD_EMPLEADO,',
'                          pobs_revisado =>:P611_COMENTARIO,',
'                          pind_revisado =>:P611_CONFORMIDAD,',
'                          ptipo => :P611_P_TIPO,',
'                          previsado => :P611_P_REVISADO,',
'                          pretorno => :P611_P_RETORNO) ;',
'exception',
'    when others then',
'        :P611_MENSAJE_ERROR := ''Ocurrio un error al procesar su solicitud.'';',
'end;'))
,p_attribute_02=>'P611_P_COD_EMPRESA,P611_P_ANIO,P611_P_COD_EMPLEADO,P611_P_TIPO,P611_P_REVISADO,P611_P_RETORNO,P611_COMENTARIO,P611_CONFORMIDAD'
,p_attribute_03=>'P611_MENSAJE_ERROR,P611_P_RETORNO,P611_P_REVISADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P611_MENSAJE_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209170514080799111)
,p_name=>'DA_MENSAJE_ERROR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P611_MENSAJE_ERROR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209170417908799110)
,p_event_id=>wwv_flow_imp.id(209170514080799111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P611_MENSAJE_ERROR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P611_MENSAJE_ERROR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(208527644933438027)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P611_P_COD_EMPRESA := :P_COD_EMPRESA;',
'    --:P611_P_COD_EMPLEADO := :P_COD_EMPLEADO;',
'    :P611_P_COD_EMPLEADO := ''863'';',
'    :P611_P_TIPO := ''S'';',
'    :P611_CONFORMIDAD:=''P'';',
'end;',
'declare',
'mensaje varchar(1000);',
'largoAnio number;',
'largoNom number;',
'largoPorc_total number;',
'largoCalificacion number;',
'BEGIN ',
'    -- Crear COL:',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_MENSAJE'');     ',
'    --Insertar datos:',
'    prc_revision_emp_edd (pcod_empresa => :P611_P_COD_EMPRESA,',
'                          panio =>:P611_P_ANIO,',
'                          pcod_empleado =>:P611_P_COD_EMPLEADO,',
'                          pobs_revisado =>:P611_P_OBS_REVISADO,',
'                          pind_revisado =>:P611_P_IND_REVISADO,',
'                          ptipo => :P611_P_TIPO,',
'                          previsado => :P611_P_REVISADO,',
'                          pretorno => :P611_P_RETORNO) ;',
'        --recorrer array obteniendo el largo de cada elemento',
'        for c in ((SELECT LENGTH(Column_value) respuesta',
'                          FROM TABLE(UTILS.ARRAY_VARCHARS(:P611_P_RETORNO,'';''))))',
'        loop',
'            APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''COL_MENSAJE'',',
'                                        P_C001 => c.respuesta);',
'        end loop;',
'        -- recorrer array para obtener el contenido de cada elemento',
'        for c in ((SELECT (Column_value) respuesta',
'                          FROM TABLE(UTILS.ARRAY_VARCHARS(:P611_P_RETORNO,'';''))))',
'        loop',
'            mensaje := mensaje || c.respuesta;',
'        end loop;',
'-- asiganar largo de los elementos a variables',
'    select c001',
'    into largoAnio',
'    from apex_collections',
'    where collection_name = ''COL_MENSAJE''',
'    AND SEQ_ID = 1;',
'    ',
'    select c001',
'    into largoNom',
'    from apex_collections',
'    where collection_name = ''COL_MENSAJE''',
'    AND SEQ_ID = 2;',
'    ',
'    select c001',
'    into largoPorc_total',
'    from apex_collections',
'    where collection_name = ''COL_MENSAJE''',
'    AND SEQ_ID = 3;',
'    ',
'    Select c001',
'    into largoCalificacion',
'    from apex_collections',
'    where collection_name = ''COL_MENSAJE''',
'    AND SEQ_ID = 4;',
'',
'---- asignar el contenido del array correspondiente a cada Item',
'        :P611_VANIO := SUBSTR( mensaje,1 ,largoAnio );',
'        :P611_VNOM_EMPLEADO := SUBSTR( mensaje,5 ,largoNom );',
'        :P611_VPORC_TOTAL := SUBSTR( mensaje,largoNom +largoAnio +1,largoPorc_total );',
'        :P611_VCALIFICACION := SUBSTR( mensaje,largoPorc_total+ largoNom +largoAnio +1,largoCalificacion );',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            raise_application_error(-20201,''Ocurrio un error al procesar su solicitud.''||sqlerrm);  ',
'END;',
'',
unistr(':P611_INFORMACION :=  :P611_VNOM_EMPLEADO ||'', usted obtuvo un total de ''||:P611_VPORC_TOTAL||'' puntos en el proceso de evaluaci\00F3n de desempe\00F1o '' ||:P611_VANIO ||'', con lo cual obtuvo la siguiente calificaci\00F3n: ''||:P611_VCALIFICACION||''.'),
unistr('Favor indique su conformidad o no conformidad y en caso de que lo desee, a\00F1ada comentarios u observaciones sobre el proceso realizado y la calificaci\00F3n recibida.'' ;'),
'                                        '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
