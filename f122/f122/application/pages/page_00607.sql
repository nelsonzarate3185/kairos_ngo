prompt --application/pages/page_00607
begin
--   Manifest
--     PAGE: 00607
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
 p_id=>607
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reparto de Terciario'
,p_alias=>'REPARTO-DE-TERCIARIO'
,p_step_title=>'Reparto de Terciario'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230914150139'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(205856229531548903)
,p_plug_name=>'Reparto de Terciario'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       FEC_RENDICION,',
'       FEC_RENDICION_ORIG,',
'       COD_ZONA_REPARTO,',
'       COD_REPARTIDOR,',
'       COD_VEHICULO,',
'       COD_USUARIO,',
'       ESTADO,',
'       KM_SALIDA,',
'       KM_ESTIMADO,',
'       KM_LLEGADA,',
'       COMENTARIO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'  from RP_REPARTO_CABECERA_TERCIARIO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reparto de Terciario'
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
 p_id=>wwv_flow_imp.id(205856302491548904)
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
,p_internal_uid=>205856302491548904
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205856473738548905)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205856539731548906)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205856607739548907)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205856719539548908)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205856821623548909)
,p_db_column_name=>'FEC_RENDICION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205856946874548910)
,p_db_column_name=>'FEC_RENDICION_ORIG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Rendicion Orig'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857013907548911)
,p_db_column_name=>'COD_ZONA_REPARTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Zona Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857120907548912)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857220550548913)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857379900548914)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857447803548915)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857563686548916)
,p_db_column_name=>'KM_SALIDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Km Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857680711548917)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Km Estimado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857795415548918)
,p_db_column_name=>'KM_LLEGADA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Km Llegada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205857866118548919)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205858062332548921)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:602:&SESSION.::&DEBUG.:RP,602:P602_NRO_PLANILLA,P602_ACCION_CONSULTA:#NRO_PLANILLA#,1'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205858188906548922)
,p_db_column_name=>'ROWID'
,p_display_order=>170
,p_column_identifier=>'Q'
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
 p_id=>wwv_flow_imp.id(205858319177548924)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P607_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205924138843853099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2059242'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_PLANILLA:FEC_PLANILLA:FEC_RENDICION:FEC_RENDICION_ORIG:COD_ZONA_REPARTO:COD_REPARTIDOR:COD_VEHICULO:COD_USUARIO:ESTADO:COMENTARIO:ELIMINAR:'
,p_sort_column_1=>'NRO_PLANILLA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(205857924795548920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(205856229531548903)
,p_button_name=>'BT_AGREGAR_PLANILLA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Planilla'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:602:&SESSION.::&DEBUG.:RP,602:P602_ACCION_CONSULTA:3'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205858405756548925)
,p_name=>'P607_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(205856229531548903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205858823774548929)
,p_name=>'P607_ERR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(205856229531548903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(205858543082548926)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P607_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205859119211548932)
,p_event_id=>wwv_flow_imp.id(205858543082548926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea continuar?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205858776860548928)
,p_event_id=>wwv_flow_imp.id(205858543082548926)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P607_ERR:=NULL;',
'BEGIN',
'    DELETE RP_REPARTO_CABECERA_TERCIARIO',
'      WHERE ROWID = :P607_ELIMINAR;',
'',
'EXCEPTION ',
'WHEN OTHERS THEN',
' :P607_ERR:=''Error al eliminar el registro seleccionado. Por favor: verifique el registro que desea eliminar e intente nuevamente '';',
'END;'))
,p_attribute_02=>'P607_ELIMINAR'
,p_attribute_03=>'P607_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205859244695548933)
,p_event_id=>wwv_flow_imp.id(205858543082548926)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se elimina el registro correctamente'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P607_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205859364468548934)
,p_event_id=>wwv_flow_imp.id(205858543082548926)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(205856229531548903)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P607_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(205858903156548930)
,p_name=>'DA_ERR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P607_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205859064710548931)
,p_event_id=>wwv_flow_imp.id(205858903156548930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P607_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P607_ERR'
);
wwv_flow_imp.component_end;
end;
/
