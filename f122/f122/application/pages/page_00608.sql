prompt --application/pages/page_00608
begin
--   Manifest
--     PAGE: 00608
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
 p_id=>608
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Aplicaci\00F3n de Notas de Cr\00E9dito')
,p_alias=>'CCAPLNCR'
,p_step_title=>unistr('Aplicaci\00F3n de Notas de Cr\00E9dito')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230915121855'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204736642667960745)
,p_plug_name=>'Notas de Credito '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(206305738045040105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_button_name=>'BT_PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204736781741960746)
,p_name=>'P608_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204736817683960747)
,p_name=>'P608_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>unistr('C\00F3digo Cliente')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CCAPLNCR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(p.nombre))||'' (''||ltrim(rtrim(p.nomb_fantasia))||'')'' nombre, cc.cod_cliente,0 codigo_area, 0 num_telefono, pi.cod_ident, pi.numero ',
'from cc_clientes cc, personas p, ident_personas pi ',
'where cc.cod_empresa = :P_COD_EMPRESA ',
'and cc.cod_persona = p.cod_persona ',
'and p.cod_persona = pi.cod_persona(+) ',
'order by ltrim(p.nombre), ltrim(p.nomb_fantasia)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204736970361960748)
,p_name=>'P608_DESC_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>unistr('Descripci\00F3n Cliente')
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
 p_id=>wwv_flow_imp.id(204737086948960749)
,p_name=>'P608_FECHA_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
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
 p_id=>wwv_flow_imp.id(204737142095960750)
,p_name=>'P608_FECHA_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
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
 p_id=>wwv_flow_imp.id(206305308722040101)
,p_name=>'P608_FECHA_DESDE_NCR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>'Fecha Desde Ncr'
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
 p_id=>wwv_flow_imp.id(206305425912040102)
,p_name=>'P608_FECHA_HASTA_NCR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>'Fecha Hasta Ncr'
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
 p_id=>wwv_flow_imp.id(206305548460040103)
,p_name=>'P608_FEC_FACT_EMI_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>unistr('Fecha Emisi\00F3n Inicial')
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
 p_id=>wwv_flow_imp.id(206305693613040104)
,p_name=>'P608_FEC_FACT_EMI_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>unistr('Fecha Emisi\00F3n Final')
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
 p_id=>wwv_flow_imp.id(206306493370040112)
,p_name=>'P608_FEC_NCR_EMI_INI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>unistr('Fecha Ncr Emisi\00F3n Inicial')
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
 p_id=>wwv_flow_imp.id(206306531458040113)
,p_name=>'P608_FEC_NCR_EMI_FIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_prompt=>unistr('Fecha Ncr Emisi\00F3n Final')
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
 p_id=>wwv_flow_imp.id(206306655049040114)
,p_name=>'P608_ERR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(204736642667960745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206305824746040106)
,p_name=>'DA_CLIENTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P608_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206305920119040107)
,p_event_id=>wwv_flow_imp.id(206305824746040106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P608_COD_CLIENTE IS NOT NULL THEN',
'  begin',
'   select ltrim(rtrim(nombre))||'' (''||ltrim(rtrim(nomb_fantasia))||'')'' nombre ',
'   into :P608_DESC_CLIENTE',
'   from cc_clientes, personas ',
'   where cc_clientes.cod_empresa = :P_COD_EMPRESA ',
'     and cc_clientes.cod_persona = personas.cod_persona  ',
'     and cc_clientes.cod_cliente = :P608_COD_CLIENTE;',
'',
'  EXCEPTION',
'    when others then',
'       :P608_DESC_CLIENTE := NULL;',
'  END;',
'ELSE',
'  :P608_DESC_CLIENTE := NULL;',
'END IF;'))
,p_attribute_02=>'P608_COD_CLIENTE'
,p_attribute_03=>'P608_DESC_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206306225039040110)
,p_name=>'DA_PROCESAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(206305738045040105)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206306338496040111)
,p_event_id=>wwv_flow_imp.id(206306225039040110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    if :P608_FECHA_DESDE_NCR is null then',
'       :P608_FECHA_DESDE_NCR:=to_date(''01/01/2000'',''DD/MM/YYYY'');',
'    end if;',
'',
'    if :P608_FEC_FACT_EMI_INI is null then',
'        :P608_FEC_FACT_EMI_INI:=to_date(''01/01/2000'',''DD/MM/YYYY'');',
'    end if;',
'',
'    if :P608_FEC_NCR_EMI_INI is null then',
'    	:P608_FEC_NCR_EMI_INI:=to_date(''01/01/2000'',''DD/MM/YYYY'');',
'    end if;',
'',
'    if :P608_FECHA_DESDE is null then',
'    	:P608_FECHA_DESDE:=to_date(''01/01/2000'',''DD/MM/YYYY'');',
'    end if;',
'',
'',
'    ---------/FECHA FIN/-------------',
'',
'    if :P608_FECHA_HASTA is null then',
'    	:P608_FECHA_HASTA:=to_date(''01/01/2099'',''DD/MM/YYYY'');',
'    end if;',
'',
'    if :P608_FECHA_HASTA_NCR is null then',
'    	:P608_FECHA_HASTA_NCR:=to_date(''01/01/2099'',''DD/MM/YYYY'');',
'    end if;',
'',
'    if :P608_FEC_FACT_EMI_FIN is null then',
'    	:P608_FEC_FACT_EMI_FIN:=to_date(''01/01/2099'',''DD/MM/YYYY'');',
'    end if;',
'',
'    if :P608_FEC_NCR_EMI_FIN is null then',
'    	:P608_FEC_NCR_EMI_FIN:=to_date(''01/01/2000'',''DD/MM/YYYY'');',
'    	end if;',
'',
'DECLARE',
'  valerta NUMBER;',
'  vcount number:=0;',
'BEGIN',
'  --SET_APPLICATION_PROPERTY(CURSOR_STYLE, ''BUSY'');',
'  loop ',
'  vcount:=vcount+1;',
'  CCAPLNCR.APLICACION_FCR_NCR (PI_COD_CLIENTE => :P608_COD_CLIENTE,',
'                                  PI_FECHA_DESDE => :P608_FECHA_DESDE,',
'                                  PI_FECHA_HASTA => :P608_FECHA_HASTA,',
'                                  PI_FECHA_DESDE_NCR => :P608_FECHA_DESDE_NCR,',
'                                  PI_FECHA_HASTA_NCR => :P608_FECHA_HASTA_NCR,',
'                                  PI_FEC_FACT_EMI_INI => :P608_FEC_FACT_EMI_INI,',
'                                  PI_FEC_FACT_EMI_FIN => :P608_FEC_FACT_EMI_FIN,',
'                                  PI_FEC_NCR_EMI_INI => :P608_FEC_NCR_EMI_INI,',
'                                  PI_FEC_NCR_EMI_fin => :P608_FEC_NCR_EMI_FIN,',
'                                  PO_ERROR => :P608_ERR);',
'  commit ;',
'  if vcount>30 then',
'  	exit;',
'  	end if;',
'  end loop;',
'  commit ;',
'  ',
unistr(' -- CCAPLNCR.ALERTA(''Fin del proceso de compensaci\00F3n de saldos negativos y positivos'','''',1,valerta);'),
'END; ',
'',
'END;',
''))
,p_attribute_02=>'P608_FECHA_DESDE,P608_FECHA_HASTA,P608_FECHA_HASTA_NCR,P608_FEC_FACT_EMI_FIN,P608_FEC_NCR_EMI_FIN,P608_FECHA_DESDE_NCR,P608_FEC_NCR_EMI_INI,P608_FEC_FACT_EMI_INI'
,p_attribute_03=>'P608_FECHA_DESDE,P608_FECHA_HASTA,P608_FECHA_HASTA_NCR,P608_FEC_FACT_EMI_FIN,P608_FEC_NCR_EMI_FIN,P608_FECHA_DESDE_NCR,P608_FEC_NCR_EMI_INI,P608_FEC_FACT_EMI_INI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111724242076983823)
,p_event_id=>wwv_flow_imp.id(206306225039040110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Fin del proceso de compensaci\00F3n de saldos negativos y positivos')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(206306125353040109)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_INIT'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
