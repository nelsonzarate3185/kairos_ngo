prompt --application/pages/page_00627
begin
--   Manifest
--     PAGE: 00627
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
 p_id=>627
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Grupos de Preguntas'
,p_alias=>'GRUPOS-DE-PREGUNTAS'
,p_step_title=>'Grupos de Preguntas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230929082801'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114212900893739119)
,p_plug_name=>'Listado Grupos de Preguntas'
,p_region_css_classes=>'u-color-13-bg'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114213099938739120)
,p_plug_name=>'REPORT Grupo de Preguntas'
,p_parent_plug_id=>wwv_flow_imp.id(114212900893739119)
,p_region_css_classes=>'u-color-13-bg'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOMB,',
'       DM$ACTI,',
'       DECODE(DM$ACTI, 1, ''SI'', 2, ''NO'') AS ACTIVO,',
'       EMPR0100$ID,',
'       OBSE,',
'       NULL EDITAR,',
'       ROWID',
'  from NGO$CCLA0100'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT Grupo de Preguntas'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(114213299360739122)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>114213299360739122
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114213386256739123)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114213423616739124)
,p_db_column_name=>'NOMB'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114213509434739125)
,p_db_column_name=>'DM$ACTI'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Dm$acti'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114213610045739126)
,p_db_column_name=>'EMPR0100$ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Empr0100$id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114213734325739127)
,p_db_column_name=>'OBSE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114214053822739130)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P627_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114214177968739131)
,p_db_column_name=>'ROWID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(214212981103845721)
,p_db_column_name=>'ACTIVO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('\00BFActivo?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(214124608623876207)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2141247'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:NOMB:ACTIVO:OBSE:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(215108549761517599)
,p_report_id=>wwv_flow_imp.id(214124608623876207)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ACTIVO'
,p_operator=>'='
,p_expr=>'SI'
,p_condition_sql=>' (case when ("ACTIVO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SI''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#82b7f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114214205802739132)
,p_plug_name=>'Crear / Editar'
,p_parent_plug_id=>wwv_flow_imp.id(114212900893739119)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(214211247767845704)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(114212900893739119)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114214919385739139)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(114214205802739132)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114213881064739128)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114212900893739119)
,p_button_name=>'BT_AGREGAR_GRUPO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Grupo'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114214808025739138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(114214205802739132)
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
 p_id=>wwv_flow_imp.id(114214364996739133)
,p_name=>'P627_NOMB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(114214205802739132)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(114214479734739134)
,p_name=>'P627_DM_ACTI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(114214205802739132)
,p_prompt=>unistr('\00BFActivo?')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:SI;1,NO;2'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114214560274739135)
,p_name=>'P627_OBSE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(114214205802739132)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210021983196258544)
,p_name=>'P627_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114213099938739120)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214211300425845705)
,p_name=>'P627_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114214205802739132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214211598962845707)
,p_name=>'P627_ERR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(214211247767845704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214212646103845718)
,p_name=>'P627_EMPR0100'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(214211247767845704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114214691785739136)
,p_name=>'DA_AGREGAR_GRUPO'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114213881064739128)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114215334795739143)
,p_event_id=>wwv_flow_imp.id(114214691785739136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P627_NOMB:=NULL;',
':P627_DM_ACTI:=NULL;',
':P627_OBSE:=NULL;'))
,p_attribute_03=>'P627_NOMB,P627_DM_ACTI,P627_OBSE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214212507993845717)
,p_event_id=>wwv_flow_imp.id(114214691785739136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    begin',
'	  select nvl(max(to_number(replace(ID,''.'',''0''))),0) + 1',
'        into :P627_ID',
'        from NGO$CCLA0100;',
'      exception',
'        when others then',
'        RAISE_APPLICATION_ERROR(-20010,''Error al asignar id: ''||SQLERRM);',
'        ',
'    end;',
'',
''))
,p_attribute_03=>'P627_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114214706410739137)
,p_event_id=>wwv_flow_imp.id(114214691785739136)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114214205802739132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114215048181739140)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114214808025739138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114215119539739141)
,p_event_id=>wwv_flow_imp.id(114215048181739140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P627_ERR := null;',
'    IF :P627_NOMB is not null and :P627_DM_ACTI is not null and :P627_OBSE is not null then',
'            IF :P627_EDITAR IS NULL THEN',
'                INSERT INTO ngo$ccla0100 (',
'                       ID,',
'                       NOMB,',
'                       DM$ACTI,',
'                       EMPR0100$ID,',
'                       OBSE',
'                ) VALUES (',
'                        :P627_ID,',
'                        :P627_NOMB,',
'                        :P627_DM_ACTI,',
'                        NGO$ccla0100$seq.nextval,',
'                        :P627_OBSE',
'                );   ',
'            ELSE ',
'                UPDATE ngo$ccla0100 SET',
'                        nomb = :P627_NOMB,',
'                        DM$ACTI = :P627_DM_ACTI,',
'                        OBSE= :P627_OBSE',
'                WHERE ROWID = :P627_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P627_NOMB is null then :P627_ERR := ''Por favor: ingrese el campo "NOMBRE" '';',
unistr('            when :P627_DM_ACTI is null then :P627_ERR := ''Por favor: ingrese el campo "\00BFACTIVO?"''; '),
unistr('            when :P627_OBSE is null then :P627_ERR := ''Por favor: ingrese el campo "OBSERVACI\00D3N" '';       '),
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR ASD: ''||SQLERRM);',
'       :P627_ERR:=''Ha ocurrido el siguiente error:'' ||SQLERRM;',
'',
'END;'))
,p_attribute_02=>'P627_ID,P627_NOMB,P627_DM_ACTI,P627_OBSE,P627_EMPR0100'
,p_attribute_03=>'P627_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214212069479845712)
,p_event_id=>wwv_flow_imp.id(114215048181739140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114213099938739120)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P627_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214212102211845713)
,p_event_id=>wwv_flow_imp.id(114215048181739140)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114214205802739132)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P627_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214211692111845708)
,p_name=>'DA_ERR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P627_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214211735743845709)
,p_event_id=>wwv_flow_imp.id(214211692111845708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P627_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P627_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214211826442845710)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114214919385739139)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214211918841845711)
,p_event_id=>wwv_flow_imp.id(214211826442845710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114214205802739132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214212779891845719)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P627_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114215291161739142)
,p_event_id=>wwv_flow_imp.id(214212779891845719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P627_EDITAR is not null then',
'        select ',
'                       NOMB,',
'                       DM$ACTI,',
'                       OBSE',
'        into ',
'                :P627_NOMB,',
'                :P627_DM_ACTI,',
'                :P627_OBSE',
'        from ngo$ccla0100',
'        where rowid = :P627_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P627_EDITAR'
,p_attribute_03=>'P627_NOMB,P627_OBSE,P627_DM_ACTI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214212828062845720)
,p_event_id=>wwv_flow_imp.id(214212779891845719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114214205802739132)
);
wwv_flow_imp.component_end;
end;
/
