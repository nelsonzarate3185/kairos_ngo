prompt --application/pages/page_00704
begin
--   Manifest
--     PAGE: 00704
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
 p_id=>704
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REP - Reporte de Venta Perdida'
,p_alias=>'REP-REPORTE-DE-VENTA-PERDIDA'
,p_step_title=>'REP - Reporte de Venta Perdida'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img',
'{width: 40px;',
'height:40px',
'}',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM, #FILTROS{    ',
'  background-color: #487ab8  !important;',
'}',
'',
'',
'',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240209164954'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263331296192507414)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(263330062602507402)
,p_name=>'RESUMEN'
,p_region_name=>'res_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(263331296192507414)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_REPUESTO,',
'       DESCRIPCION_REPUESTO,',
'       SUM(NVL(CANTIDAD ,0))CANTIDAD,',
'       COUNT(*)SOLICITUD,',
'       null inf',
'  from ST_REPUESTOS_VENTA_PERDIDA',
'  WHERE COD_REPUESTO IS NOT NULL',
'  GROUP BY COD_REPUESTO,',
'       DESCRIPCION_REPUESTO',
'  ORDER BY 3 DESC, 4 DESC',
'       '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Descargar'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263331044302507412)
,p_query_column_id=>1
,p_column_alias=>'COD_REPUESTO'
,p_column_display_sequence=>50
,p_column_heading=>'Codigo Repuesto'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:264:&SESSION.::&DEBUG.::P264_COD_ARTICULO:#COD_REPUESTO#'
,p_column_linktext=>'#COD_REPUESTO#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263331139196507413)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION_REPUESTO'
,p_column_display_sequence=>60
,p_column_heading=>'Descripcion Repuesto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263330445671507406)
,p_query_column_id=>3
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>70
,p_column_heading=>'Cant.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263334712501507449)
,p_query_column_id=>4
,p_column_alias=>'SOLICITUD'
,p_column_display_sequence=>80
,p_column_heading=>'Solicitud'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263331448607507416)
,p_query_column_id=>5
,p_column_alias=>'INF'
,p_column_display_sequence=>90
,p_column_heading=>'&nbsp'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P704_CODIGO_OBS'',''#COD_REPUESTO#'');'
,p_column_linktext=>'<span aria-label="Comentario"><span class="fa fa-edit" aria-hidden="true" title="Comentario"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(263331367903507415)
,p_name=>'Seguimiento Repuesto'
,p_parent_plug_id=>wwv_flow_imp.id(263331296192507414)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMENTARIO,  ',
'       FECHA_ALTA FECHA,',
'       cod_usuario usuario',
'  from ST_REPUESTOS_VENTA_PERDIDA_SEG',
'  WHERE COD_REPUESTO = :P704_CODIGO_FILTRO',
'  order by FECHA_ALTA desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P704_CODIGO_FILTRO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263331792432507419)
,p_query_column_id=>1
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>20
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263332062734507422)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263333319010507435)
,p_query_column_id=>3
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263332246465507424)
,p_plug_name=>'Agregar seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(263331296192507414)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272323256595069921)
,p_plug_name=>'Reporte de Venta Perdida'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_REGISTRO,',
'       COD_REPUESTO,',
'       DESCRIPCION_REPUESTO,',
'       CODIGO_CLIENTE,',
'       NOMBRE_CLIENTE,',
'       TELEFONO_CLIENTE,',
'       DIRECCION_CLIENTE,',
'       CODIGO_PRODUCTO,',
'       DESCRIPCION_PRODUCTO,',
'       MODELO_PRODUCTO,',
'       COMENTARIO,',
'       COD_USUARIO,',
'       FECHA_REGISTRO,',
'	   CANTIDAD,',
'       nvl(dbms_lob.getlength(IMAGEN),'''')IMAGEN',
'  from ST_REPUESTOS_VENTA_PERDIDA',
'  WHERE COD_REPUESTO = :P704_CODIGO_FILTRO',
'  ORDER BY FECHA_REGISTRO DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P704_CODIGO_FILTRO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(272323311643069921)
,p_name=>'Reporte de Venta Perdida'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>272323311643069921
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248690355215551332)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248690790194551332)
,p_db_column_name=>'COD_REPUESTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248691141528551333)
,p_db_column_name=>'DESCRIPCION_REPUESTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248691574954551333)
,p_db_column_name=>'CODIGO_CLIENTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248691998965551333)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248692377642551333)
,p_db_column_name=>'TELEFONO_CLIENTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Telefono Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248692744588551333)
,p_db_column_name=>'DIRECCION_CLIENTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Direccion Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248693199143551333)
,p_db_column_name=>'CODIGO_PRODUCTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Codigo Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248693511270551334)
,p_db_column_name=>'DESCRIPCION_PRODUCTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Descripcion Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248693990558551334)
,p_db_column_name=>'MODELO_PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Modelo Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248694323674551334)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248694783126551334)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248695117148551334)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248689926971551331)
,p_db_column_name=>'IMAGEN'
,p_display_order=>23
,p_column_identifier=>'O'
,p_column_label=>'Imagen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:ST_REPUESTOS_VENTA_PERDIDA:IMAGEN:ID_REGISTRO::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185087447827060742)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>33
,p_column_identifier=>'P'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(272329170394064868)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'236398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_REPUESTO:DESCRIPCION_REPUESTO:CODIGO_CLIENTE:NOMBRE_CLIENTE:TELEFONO_CLIENTE:DIRECCION_CLIENTE:CODIGO_PRODUCTO:DESCRIPCION_PRODUCTO:COMENTARIO:FECHA_REGISTRO:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(251346120124000726)
,p_report_id=>wwv_flow_imp.id(272329170394064868)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'COD_REPUESTO'
,p_operator=>'='
,p_expr=>'LAVAR/001'
,p_condition_sql=>'"COD_REPUESTO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''LAVAR/001''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(263332451120507426)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263330564437507407)
,p_name=>'P704_CODIGO_FILTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(263330062602507402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263331522307507417)
,p_name=>'P704_CODIGO_OBS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263332360286507425)
,p_name=>'P704_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_prompt=>'Observacion'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263330637247507408)
,p_name=>'DA_SELECT_REG'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#res_reporte table.t-Report-report tr'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263330742837507409)
,p_event_id=>wwv_flow_imp.id(263330637247507408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   var codtar = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_REPUESTO"]'').text(); ',
'    $s(''P704_CODIGO_FILTRO'',codtar);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263330897392507410)
,p_name=>'DA_CHNG'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_CODIGO_FILTRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263330934040507411)
,p_event_id=>wwv_flow_imp.id(263330897392507410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263331367903507415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332163539507423)
,p_event_id=>wwv_flow_imp.id(263330897392507410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(272323256595069921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263332521655507427)
,p_name=>'DA_CHNG_OBS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_CODIGO_OBS'
,p_condition_element=>'P704_CODIGO_OBS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263333287838507434)
,p_event_id=>wwv_flow_imp.id(263332521655507427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_OBSERVACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332611594507428)
,p_event_id=>wwv_flow_imp.id(263332521655507427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263332246465507424)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263332789502507429)
,p_name=>'DA_OK'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(263332451120507426)
,p_condition_element=>'P704_OBSERVACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332869646507430)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P704_CODIGO_OBS IS NOT NULL AND :P704_OBSERVACION IS NOT NULL THEN ',
'        BEGIN',
'                 insert into inv.st_repuestos_venta_perdida_seg',
'                   (cod_repuesto, comentario, cod_usuario, fecha_alta)',
'                 values',
'                   (:P704_CODIGO_OBS, :P704_OBSERVACION, :APP_USER, SYSDATE);                 ',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                raise_application_error(-20000, sqlerrm );',
'        END;',
'END IF;'))
,p_attribute_02=>'P704_CODIGO_OBS,P704_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332960261507431)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar un comentario.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263333089554507432)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263331367903507415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263333129982507433)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263332246465507424)
);
wwv_flow_imp.component_end;
end;
/
