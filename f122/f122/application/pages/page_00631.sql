prompt --application/pages/page_00631
begin
--   Manifest
--     PAGE: 00631
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
 p_id=>631
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantenimiento de Encuestas'
,p_alias=>'MANTENIMIENTO-DE-ENCUESTAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantenimiento de Encuestas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20231006104653'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215148834492095314)
,p_plug_name=>'Mantenimiento de Encuestas'
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FECH,',
'       FDES,',
'       FHAS,',
'       DM$ACTI,',
'       EMPR0100$ID,',
'       OBSE,',
'       NOMB,',
'       DM$DEST,',
'       DM$TENC',
'  from NGO$CLAB0100'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215150091678095326)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215150483947095330)
,p_plug_name=>'Colaboradores'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215150178014095327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(215150091678095326)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215150287901095328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(215150091678095326)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P631_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215150306411095329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(215150091678095326)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P631_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149007917095316)
,p_name=>'P631_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149154447095317)
,p_name=>'P631_FECH'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_source=>'FECH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149209006095318)
,p_name=>'P631_FDES'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_prompt=>'Vigente Desde'
,p_source=>'FDES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149300163095319)
,p_name=>'P631_FHAS'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_prompt=>'Vigente Hasta'
,p_source=>'FHAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149488877095320)
,p_name=>'P631_DM_ACTI'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_prompt=>unistr('\00BFActivo?')
,p_source=>'DM$ACTI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;1,NO;2'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P631_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149583477095321)
,p_name=>'P631_EMPR0100_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_source=>'EMPR0100$ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149618510095322)
,p_name=>'P631_OBSE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_prompt=>unistr('Observaci\00F3n')
,p_source=>'OBSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149744714095323)
,p_name=>'P631_NOMB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_prompt=>'Nombre'
,p_source=>'NOMB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149882003095324)
,p_name=>'P631_DM_DEST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_source=>'DM$DEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215149943610095325)
,p_name=>'P631_DM_TENC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_item_source_plug_id=>wwv_flow_imp.id(215148834492095314)
,p_prompt=>'Tipo de Encuesta'
,p_source=>'DM$TENC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPO0100'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(DESCRIPCION) D,',
'        ID R',
'FROM NGO$TIPO0100 ',
''))
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215150545858095331)
,p_name=>'P631_LISTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(215150483947095330)
,p_prompt=>'Listado'
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
 p_id=>wwv_flow_imp.id(216405885442308901)
,p_name=>'P631_EQUIPOS'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216405948724308902)
,p_name=>'P631_EMPLEADOS'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(215151139580095337)
,p_validation_name=>'VA_FECDES_NOT_NULL'
,p_validation_sequence=>10
,p_validation=>'P631_FDES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar la fecha de vigencia.'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(215151561302095341)
,p_validation_name=>'VA_FECHAS_NOT_NULL'
,p_validation_sequence=>20
,p_validation=>'P631_FHAS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar la fecha de vigencia.'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(215151295539095338)
,p_validation_name=>'VA_NOMB_NOT_NULL'
,p_validation_sequence=>30
,p_validation=>'P631_NOMB'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un nombre.'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(215151361139095339)
,p_validation_name=>'VA_TIPO_NOT_NULL'
,p_validation_sequence=>40
,p_validation=>'P631_DM_TENC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Seleccione un tipo.'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(215151407821095340)
,p_validation_name=>'VA_FECHAS'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    IF :P631_FDES > :P631_FHAS THEN',
'',
'          RETURN  FALSE;',
'    ELSE',
'           RETURN TRUE;',
'    END IF;',
'',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha de vigencia hasta debe ser mayor a la desde.'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(215150696993095332)
,p_name=>'da_cerrar_dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(215150178014095327)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215150736568095333)
,p_event_id=>wwv_flow_imp.id(215150696993095332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216406440762308907)
,p_name=>'DA_TIPO'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216406520802308908)
,p_event_id=>wwv_flow_imp.id(216406440762308907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P631_DM_TENC'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P631_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216406632487308909)
,p_event_id=>wwv_flow_imp.id(216406440762308907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P631_DM_TENC'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P631_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(215150973735095335)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(215148834492095314)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'PR_MANTENIMIENTO_ENCUESTAS'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_id number;',
'begin',
'',
'-- :P631_DM_TENC:= :P631_DM_DEST ;',
'',
'case :APEX$ROW_STATUS',
'when ''C'' then',
'    v_id := NGO$CLAB0100$SEQ.NEXTVAL;',
'    INSERT INTO NGO$CLAB0100 ',
'    (ID,',
'    FECH,',
'    FDES,',
'    FHAS,',
'    DM$ACTI,',
'    EMPR0100$ID,',
'    OBSE,',
'    NOMB,',
'    DM$DEST,',
'    DM$TENC) ',
'    VALUES ',
'    (v_id,',
'    SYSDATE,',
'    :P631_FDES,',
'    :P631_FHAS,',
'    2,',
'    :P_COD_EMPRESA,',
'    UPPER(:P631_OBSE),',
'    UPPER(:P631_NOMB),',
'    :P631_DM_DEST,',
'    :P631_DM_TENC);',
'',
'if :P631_DM_TENC <> 1 then -- RRHH',
'',
'        for cola in (select a.cod_empleado',
'            FROM rh_empleados a, cc_clientes b, ident_personas c',
'           WHERE a.COD_EMPRESA = :P_COD_EMPRESA',
'                AND a.ACTIVO = ''S''',
'                AND a.COD_EMPRESA = b.COD_EMPRESA',
'                AND a.COD_PERSONA = b.COD_PERSONA',
'                AND a.COD_PERSONA = c.COD_PERSONA )',
'            loop',
'                begin',
'                    insert into ngo$clab0130 values (v_id, cola.cod_empleado);',
'                exception when others then null;',
'                end;',
'            end loop;',
'',
'',
'    else --- :P631_DM_TENC = 1 then -- Customer experience',
'       /* for c in ( ACA IRIA LA QUERY)  ',
'        loop',
'            begin',
'                insert into ngo$clab0130 values (v_id, c.colaborador);',
'            exception when others then null;',
'            end;',
'        end loop;*/',
'        null;',
' ',
'    end if;',
'    ',
'    when ''U'' then',
'        update NGO$CLAB0100',
'        set FDES  = :P631_FDES,',
'        FHAS = :P631_FHAS,',
'        DM$ACTI = :P631_DM_ACTI,',
'        OBSE = UPPER(:P631_OBSE),',
'        NOMB = UPPER(:P631_NOMB),',
'        DM$TENC = :P631_DM_TENC',
'        where ID  = :P631_ID;     ',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(215151032619095336)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(215148986591095315)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(215148834492095314)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mantenimiento de encuestas'
);
wwv_flow_imp.component_end;
end;
/
