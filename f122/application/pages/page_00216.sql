prompt --application/pages/page_00216
begin
--   Manifest
--     PAGE: 00216
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
 p_id=>216
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CARGAR VENDEDORES'
,p_alias=>'CARGA-VENDEDORES'
,p_page_mode=>'MODAL'
,p_step_title=>'CARGA_VENDEDORES'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function(event, ui) {apex.navigation.dialog.close(true,{dialogPageId:216});}'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231010123232'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50560404079757742)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P216_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50562409470757744)
,p_plug_name=>'Data Source'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50562863454757744)
,p_plug_name=>'Upload a File'
,p_parent_plug_id=>wwv_flow_imp.id(50562409470757744)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P216_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50564962494757753)
,p_plug_name=>'Loaded File'
,p_parent_plug_id=>wwv_flow_imp.id(50562409470757744)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P216_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(50566582123757755)
,p_name=>'Preview'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003',
'       ',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content           => f.blob_content,',
'                  p_file_name         => f.filename,',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''CARGAR_VENDEDORES2''),',
'                  p_max_rows          => 100 ) ) p',
' where f.name = :P216_FILE'))
,p_display_when_condition=>'P216_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(50566903263757768)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(50567390734757770)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(50567792067757771)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(50568121639757771)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50575558488785802)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50560929505757743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(50560404079757742)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50561243110757743)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(50560404079757742)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50576097728785807)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(50560404079757742)
,p_button_name=>'BOTON_GENERAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50563270075757745)
,p_name=>'P216_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50562863454757744)
,p_prompt=>'Upload a File'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_14=>'Supported formats CSV, TXT'
,p_attribute_15=>'5000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50563631152757752)
,p_name=>'P216_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50562863454757744)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50565331387757753)
,p_name=>'P216_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50564962494757753)
,p_item_default=>'Pasted Data'
,p_prompt=>'Loaded File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50575614730785803)
,p_name=>'P216_FEC_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50575558488785802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50575723437785804)
,p_name=>'P216_FEC_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50575558488785802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(50565834219757753)
,p_computation_sequence=>10
,p_computation_item=>'P216_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P216_FILE'))
,p_compute_when=>'P216_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(50566216341757754)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P216_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_csv )',
'then',
'    return true;',
'else',
'    :P216_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid file type. Supported file types CSV, TXT.'
,p_associated_item=>wwv_flow_imp.id(50563270075757745)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50564004901757752)
,p_name=>'Upload a File'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_FILE'
,p_condition_element=>'P216_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50564526704757753)
,p_event_id=>wwv_flow_imp.id(50564004901757752)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50662171817952005)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME =>''VENDEDOR_CONCEPTO_AUX'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50562182219757744)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P216_FILE_NAME,P216_FILE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P216_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50561709440757743)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load Data'
,p_attribute_01=>wwv_flow_imp.id(173619449020304376)
,p_attribute_02=>'FILE'
,p_attribute_03=>'P216_FILE'
,p_attribute_08=>'P216_ERROR_ROW_COUNT'
,p_process_error_message=>'SQLERRM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(50576097728785807)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50575825099785805)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GENERAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    V_DESC_VENDEDOR VARCHAR2(100);',
'',
'BEGIN',
'',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''VENDEDOR_CONCEPTO'');',
'    FOR C IN (  SELECT C001, C002 ,C003',
'                FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME = ''CARGAR_VENDEDORES2''',
'    ) LOOP',
'',
'        BEGIN',
'            SELECT  pe.nombre',
'                INTO V_DESC_VENDEDOR',
'                FROM fv_vendedores EM ,personas pe',
'                WHERE em.cod_empresa = :P_COD_EMPRESA',
'                AND  em.cod_persona = pe.cod_persona',
'                AND   em.cod_vendedor = c.c001;',
'        EXCEPTION    ',
'            WHEN OTHERS THEN',
'                V_DESC_VENDEDOR := NULL;',
'        END;',
'',
'        APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''VENDEDOR_CONCEPTO'',',
'        ',
'            P_C001 => C.C001,',
'            P_C002 => V_DESC_VENDEDOR,',
'            P_d001 => to_date(:P216_FEC_INICIO, ''DD/MM/YYYY''),',
'            P_d002 => to_date(:P216_FEC_FIN, ''DD/MM/YYYY''),',
'            P_C003 => c.C002, ',
'            P_C004 => c.C003, ',
'            P_c020 => ''A''        ',
'        );',
'',
'    END LOOP;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(50576097728785807)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50575945377785806)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CERRAR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(50576097728785807)
);
wwv_flow_imp.component_end;
end;
/