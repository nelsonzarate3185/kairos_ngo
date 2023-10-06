prompt --application/pages/page_00634
begin
--   Manifest
--     PAGE: 00634
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
 p_id=>634
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RH BENEFICIO LINEA CREDITO'
,p_alias=>'RH-BENEFICIO-LINEA-CREDITO'
,p_step_title=>'BENEFICIO LINEA CREDITO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar (cod_empleado, nombre, empleado_activo) {',
'    apex.message.clearErrors();',
unistr('    var htmldb_delete_messag_agregar =''\00BFSeguro que quieres asignar l\00EDnea de cr\00E9dito al empleado  ''+cod_empleado+'' - ''+nombre+'' ?'';  '),
'                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                    if( okPressed ) {',
'                        if(empleado_activo != ''S''){',
'                            apex.message.showErrors([{type: "error", ',
unistr('                                                                message: ''No es posible asignar l\00EDnea de cr\00E9dito a empleados inactivos'', '),
'                                                                location: "page", ',
'                                                                unsafe: false}]); ',
'                                    apex.region("listado_empleados").refresh();',
'                        }else{',
'                            apex.server.process(',
'                            ''ASIGNAR_CREDITO'', ',
'                            { x01: cod_empleado,',
'                            x02: nombre}, ',
'                            {',
'                            success: function (pData) { ',
'                                if (pData.p_mensaje ===  "OK" || pData.p_mensaje === null) {',
'                                        apex.region("listado_empleados").refresh();',
'                                        apex.region("asignacion_linea_credito").refresh();',
'                                }else {',
'                                    apex.message.showErrors([{type: "error", ',
'                                                                message: pData.p_mensaje, ',
'                                                                location: "page", ',
'                                                                unsafe: false}]);',
'                                    apex.region("listado_empleados").refresh();',
'                                    apex.region("asignacion_linea_credito").refresh();',
'                                }',
'                            }, ',
'                            });',
'                        }',
'                    } else {',
'                        apex.region("listado_empleados").refresh();',
'                    }',
'                });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20231004161602'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105126960906658943)
,p_plug_name=>unistr('L\00EDneas de Cr\00E9ditos al personal')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105127048722658944)
,p_plug_name=>'Listado de empleados'
,p_region_name=>'listado_empleados'
,p_parent_plug_id=>wwv_flow_imp.id(105126960906658943)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id,',
'        c001 empresa,',
'        c002 empleado,',
'        c003 fec_ingreso,',
'        c004 estado,',
'        APEX_ITEM.CHECKBOX(1,seq_id, decode(nvl(c004,''N''),''S'',''CHECKED disabled'',''UNCHECKED disabled'' ),'' disabled'') AS ACTIVO,',
'        c005 nombre,',
'        APEX_ITEM.CHECKBOX(1,seq_id, decode(nvl(c006,''I''),''A'',''CHECKED disabled'',''UNCHECKED'' )||'' onclick="seleccionar(''''''||c002||'''''',''''''||c005||'''''',''''''||c004||'''''')"'','' disabled'')   AS ASIGNAR',
'    from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''RH_LINEA_CREDITO_EMPLEADOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de empleados'
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
 p_id=>wwv_flow_imp.id(105127162534658945)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>105127162534658945
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105127200572658946)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_static_id=>'LINEA_SELECCIONADA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105127376363658947)
,p_db_column_name=>'EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105127452907658948)
,p_db_column_name=>'EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105127552424658949)
,p_db_column_name=>'FEC_INGRESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Ingreso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105127674741658950)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216945051216799901)
,p_db_column_name=>'NOMBRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216945284467799903)
,p_db_column_name=>'ASIGNAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Asignar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216947419842799925)
,p_db_column_name=>'ACTIVO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(216953100354782970)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2169532'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLEADO:FEC_INGRESO:ESTADO:NOMBRE:ASIGNAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216945943405799910)
,p_plug_name=>unistr('Asignaciones de l\00EDneas de cr\00E9ditos')
,p_region_name=>'asignacion_linea_credito'
,p_parent_plug_id=>wwv_flow_imp.id(105126960906658943)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'RH_BENEFICIO_LINEA_CREDITO'
,p_query_where=>'ESTADO = ''A'''
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'fecha_carga desc'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Asignaciones de l\00EDneas de cr\00E9ditos')
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
 p_id=>wwv_flow_imp.id(216946005907799911)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>216946005907799911
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946169837799912)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946287467799913)
,p_db_column_name=>'COD_BENEFICIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Beneficio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(217624622026878467)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946326763799914)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946428244799915)
,p_db_column_name=>'FECHA_CARGA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946589647799916)
,p_db_column_name=>'MONTO_LINEA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Monto Linea'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946622430799917)
,p_db_column_name=>'FECHA_BAJA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Baja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946755756799918)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216946811297799919)
,p_db_column_name=>'FECHA_MODIF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Modif'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(217182447780315140)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2171825'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPLEADO:COD_BENEFICIO:FECHA_CARGA:MONTO_LINEA:FECHA_BAJA:ESTADO:FECHA_MODIF:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216947097791799921)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(105126960906658943)
,p_button_name=>'BTN_BUSCAR_EMPL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216945728146799908)
,p_name=>'P634_SELECCIONADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(105126960906658943)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216946939914799920)
,p_name=>'P634_EMPLEADOS_ACTIVOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105126960906658943)
,p_item_default=>'S'
,p_prompt=>'Empleados Activos'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'S'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216947149108799922)
,p_name=>'DA_BUSCAR_EMPL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216947097791799921)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216947297837799923)
,p_event_id=>wwv_flow_imp.id(216947149108799922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    PKG_RH_LINEA_CREDITO.rh_obtener_empleados(:P_COD_EMPRESA, NVL(:P634_EMPLEADOS_ACTIVOS,''S''));',
'END;'))
,p_attribute_02=>'P634_EMPLEADOS_ACTIVOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216947311417799924)
,p_event_id=>wwv_flow_imp.id(216947149108799922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(105127048722658944)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(216945153719799902)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    PKG_RH_LINEA_CREDITO.rh_obtener_empleados(:P_COD_EMPRESA, ''S'');',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(216945847204799909)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ASIGNAR_CREDITO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cod_empleado varchar2(20);',
'    v_nombre_empleado varchar2(400);',
'    p_mensaje  VARCHAR2(4000);',
'begin',
'    p_mensaje := null;',
'    v_cod_empleado := apex_application.g_x01;',
'    v_nombre_empleado := apex_application.g_x02;',
'    --:P634_SELECCIONADO := v_cod_empleado||v_nombre_empleado;',
'    ',
'    begin',
'        insert into rh_beneficio_linea_credito (cod_empresa, cod_empleado, cod_beneficio, fecha_carga, monto_linea, estado,',
'        usuario_carga)',
'        values (:P_COD_EMPRESA, v_cod_empleado, 1, sysdate, 500, ''A'',:P_COD_USUARIO);',
'        commit;',
'    end;',
'    PKG_RH_LINEA_CREDITO.rh_obtener_empleados(:P_COD_EMPRESA, ''S'');',
'    ',
'    apex_json.open_object;',
'    apex_json.write(''success'', TRUE);',
'    apex_json.write(''p_mensaje'', nvl(p_mensaje, ''OK''));',
'    apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_mensaje'', p_mensaje);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
