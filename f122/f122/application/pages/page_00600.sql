prompt --application/pages/page_00600
begin
--   Manifest
--     PAGE: 00600
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
 p_id=>600
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Novedades de Repartos'
,p_alias=>'RPMOTREP'
,p_step_title=>'Novedades de Repartos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ver_datos(p_desc_vehiculo,p_desc_motivo_ent,p_desc_nov_cliente) {',
'    apex.item("P600_DESC_VEHICULO").setValue(p_desc_vehiculo);',
'    apex.item("P600_DESC_MOTIVO_ENT").setValue(p_desc_motivo_ent);',
'    apex.item("P600_DESC_NOV_CLIENTE").setValue(p_desc_nov_cliente);',
'}',
'',
'function mostrar(accion){',
'    if (accion == 1){',
'       $("#CREAR").show();',
'       $("#GUARDAR").hide();',
'    }',
'    if (accion == 2){',
'       $("#CREAR").hide();',
'       $("#GUARDAR").show();',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230913104337'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203136973655361804)
,p_plug_name=>'Novedades de Repartos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203137035612361805)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(203136973655361804)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       NRO_ENTREGA,',
'       TIP_NOVEDAD,',
'       COD_NOV_CLIENTE,',
'       IND_ENT_SAL,',
'       KM,',
'       FEC_HOR_NOVEDAD,',
'       COD_MOTIVO_ENT,',
'        (select cod_vehiculo',
'        from rp_reparto_cabecera',
'        where cod_empresa  = :P_COD_EMPRESA',
'        and nro_planilla = v.nro_entrega) cod_vehiculo,',
'       NULL ver_datos,',
'       NULL eliminar,',
'       NULL editar,',
'       rowid ',
'  from RP_NOVEDADES_REPARTO v',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'  order by nro_entrega, fec_hor_novedad'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(203137142259361806)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_sort=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>203137142259361806
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137227401361807)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo Empresa')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137320489361808)
,p_db_column_name=>'NRO_ENTREGA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00FAmero Planilla')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137421547361809)
,p_db_column_name=>'TIP_NOVEDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Novedad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137501112361810)
,p_db_column_name=>'COD_NOV_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Novedad / Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137667130361811)
,p_db_column_name=>'IND_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entrada / Salida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137732291361812)
,p_db_column_name=>'KM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Kilometraje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137839312361813)
,p_db_column_name=>'FEC_HOR_NOVEDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203137982140361814)
,p_db_column_name=>'COD_MOTIVO_ENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204083967644516003)
,p_db_column_name=>'VER_DATOS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ver Datos'
,p_column_link=>'javascript:$s(''P600_DETALLES'',''#ROWID#''),$s(''P600_AUX'',''#NRO_ENTREGA#''),$s(''P600_AUX_VEHICULO'',''#COD_VEHICULO#''),$s(''P600_AUX_MOTIVO'',''#COD_MOTIVO_ENT#''),$s(''P600_AUX_NOVEDAD'',''#COD_NOV_CLIENTE#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204084445890516008)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P600_EDITAR'',''#ROWID#''),$s(''P600_AUX_VEHICULO'',''#COD_VEHICULO#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
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
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
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
 p_id=>wwv_flow_imp.id(204084326526516007)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P600_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
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
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
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
 p_id=>wwv_flow_imp.id(204735948967960738)
,p_db_column_name=>'ROWID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204736108953960740)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('Veh\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(204030753550939796)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2040308'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:NRO_ENTREGA:COD_VEHICULO:TIP_NOVEDAD:COD_NOV_CLIENTE:IND_ENT_SAL:KM:FEC_HOR_NOVEDAD:COD_MOTIVO_ENT:VER_DATOS:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204084089923516004)
,p_plug_name=>'Items Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(203137035612361805)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204084909935516013)
,p_plug_name=>'Editar / Crear'
,p_parent_plug_id=>wwv_flow_imp.id(203136973655361804)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204088115414516045)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204088562713516049)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_button_name=>'BT_CREAR'
,p_button_static_id=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204733156780960710)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_button_name=>'BT_GUARDAR'
,p_button_static_id=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204084203226516006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(203136973655361804)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
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
 p_id=>wwv_flow_imp.id(203138371778361818)
,p_name=>'P600_DESC_VEHICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204084089923516004)
,p_prompt=>unistr('Descripci\00F3n Veh\00EDculo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203138469468361819)
,p_name=>'P600_DESC_MOTIVO_ENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204084089923516004)
,p_prompt=>unistr('Descripci\00F3n Motivo ')
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
 p_id=>wwv_flow_imp.id(203138549701361820)
,p_name=>'P600_DESC_NOV_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204084089923516004)
,p_prompt=>unistr('Descripci\00F3n Novedad / Cliente')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203140169596361836)
,p_name=>'P600_ERR'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204084679897516010)
,p_name=>'P600_EDITAR'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204084702566516011)
,p_name=>'P600_ELIMINAR'
,p_item_sequence=>960
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204085138357516015)
,p_name=>'P600_COD_VEHICULO_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>unistr('C\00F3digo / Descripci\00F3n Veh\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_RPMOTREP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (cod_vehiculo ||'' - ''|| descripcion) cod_vehiculo ',
'from rp_vehiculos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(204085335511516017)
,p_name=>'P600_NRO_ENTREGA_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Numero Planilla'
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
 p_id=>wwv_flow_imp.id(204085413866516018)
,p_name=>'P600_TIP_NOVEDAD_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Tipo / Novedad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:REPARTIDOR;R,CLIENTE;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204085579449516019)
,p_name=>'P600_ENT_SAL_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Entrada / Salida '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Entrada;E,Salida;S'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204085694293516020)
,p_name=>'P600_KM_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Kilometraje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204085780347516021)
,p_name=>'P600_FEC_HOR_EDITAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Fecha / Hora'
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
 p_id=>wwv_flow_imp.id(204085842166516022)
,p_name=>'P600_COD_MOTIVO_ENT_EDITAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204086696544516030)
,p_name=>'P600_MSG'
,p_item_sequence=>970
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204733760305960716)
,p_name=>'P600_COD_NOV_CLIENTE_EDITAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204084909935516013)
,p_prompt=>'Novedad / Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204734006578960719)
,p_name=>'P600_DETALLES'
,p_item_sequence=>980
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204734375158960722)
,p_name=>'P600_AUX'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204736032680960739)
,p_name=>'P600_AUX_VEHICULO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204736266577960741)
,p_name=>'P600_AUX_MOTIVO'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204736350429960742)
,p_name=>'P600_AUX_NOVEDAD'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(203141237426361847)
,p_name=>'DA_DESC_VEHICULO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_DESC_VEHICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(203141358156361848)
,p_event_id=>wwv_flow_imp.id(203141237426361847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select descripcion',
'      into :P600_DESC_VEHICULO',
'      from rp_vehiculos',
'      where cod_empresa  = :P_COD_EMPRESA',
'        and cod_vehiculo = :P600_COD_VEHICULO ;',
'exception',
'   when others then',
'      :P600_DESC_VEHICULO := null ;',
unistr('      APEX_DEBUG.ERROR(''No se encuentra c\00F3digo vehiculo 2.'');'),
'end ;'))
,p_attribute_03=>'P600_DESC_VEHICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204083768030516001)
,p_name=>'DA_DESC_MOTIVO_ENT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_DESC_MOTIVO_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204083873923516002)
,p_event_id=>wwv_flow_imp.id(204083768030516001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select descripcion',
'      into :P600_DESC_MOTIVO_ENT',
'      from rp_motivos_entrega',
'      where cod_empresa    = :P_COD_EMPRESA',
'        and cod_motivo_ent = :P600_COD_MOTIVO_ENT;',
'exception',
'   when others then',
'      :P600_DESC_MOTIVO_ENT := null ;',
'      APEX_DEBUG.ERROR(''No se encuentra codigo motivo.'');',
'end ;'))
,p_attribute_02=>'P600_COD_MOTIVO_ENT_EDITAR'
,p_attribute_03=>'P600_DESC_MOTIVO_ENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204085970187516023)
,p_name=>'DA_EDITAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_EDITAR'
,p_condition_element=>'P600_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204086051556516024)
,p_event_id=>wwv_flow_imp.id(204085970187516023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(2);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204086231478516026)
,p_event_id=>wwv_flow_imp.id(204085970187516023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select NRO_ENTREGA,',
'           TIP_NOVEDAD,',
'           COD_NOV_CLIENTE,',
'           IND_ENT_SAL,',
'           KM,  ',
'           FEC_HOR_NOVEDAD,',
'           COD_MOTIVO_ENT',
'',
'    into   :P600_NRO_ENTREGA_EDITAR,',
'           :P600_TIP_NOVEDAD_EDITAR,',
'           :P600_COD_NOV_CLIENTE_EDITAR,',
'           :P600_ENT_SAL_EDITAR,',
'           :P600_KM_EDITAR,',
'           :P600_FEC_HOR_EDITAR,',
'           :P600_COD_MOTIVO_ENT_EDITAR',
'',
'    from RP_NOVEDADES_REPARTO',
'',
'',
'    where ROWID = :P600_EDITAR;',
'    -- APEX_DEBUG.ERROR(''NRO ENTREGA'' ||:P600_NRO_ENTREGA_EDITAR );',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P600_EDITAR'
,p_attribute_03=>'P600_NRO_ENTREGA_EDITAR,P600_TIP_NOVEDAD_EDITAR,P600_COD_NOV_CLIENTE_EDITAR,P600_ENT_SAL_EDITAR,P600_KM_EDITAR,P600_FEC_HOR_EDITAR,P600_COD_MOTIVO_ENT_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204086132157516025)
,p_event_id=>wwv_flow_imp.id(204085970187516023)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204084909935516013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204086331190516027)
,p_name=>'DA_NRO_ENTREGA'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_NRO_ENTREGA_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204086427178516028)
,p_event_id=>wwv_flow_imp.id(204086331190516027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select c.cod_vehiculo, v.descripcion, c.fec_planilla',
'      into :P600_COD_VEHICULO_EDITAR, :P600_DESC_VEHICULO, :P600_FEC_HOR_EDITAR',
'      from rp_reparto_cabecera c, rp_vehiculos v',
'      where c.cod_empresa  = :P_COD_EMPRESA',
'        and c.nro_planilla = :P600_NRO_ENTREGA_EDITAR',
'        and c.cod_empresa  = v.cod_empresa',
'        and c.cod_vehiculo = v.cod_vehiculo ;',
'exception',
'   when no_data_found then',
'      :P600_COD_VEHICULO_EDITAR  := null ;',
'      :P600_MSG := ''El nro de planilla no existe'';',
'   when others then',
'      :P600_COD_VEHICULO_EDITAR  := null ;',
'      APEX_DEBUG.ERROR( ''Error en la tabla de repartos cabecera '' || sqlerrm) ;',
'',
'end ;'))
,p_attribute_02=>'P600_NRO_ENTREGA_EDITAR'
,p_attribute_03=>'P600_DESC_VEHICULO,P600_COD_VEHICULO_EDITAR,P600_FEC_HOR_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204086717520516031)
,p_name=>'DA_MSG'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MSG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204086825346516032)
,p_event_id=>wwv_flow_imp.id(204086717520516031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P600_MSG.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204086997581516033)
,p_name=>'DA_COD_VEHICULO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_COD_VEHICULO_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204087054510516034)
,p_event_id=>wwv_flow_imp.id(204086997581516033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select cod_vehiculo',
'      into :P600_COD_VEHICULO_EDITAR',
'      from rp_reparto_cabecera',
'      where cod_empresa  = :P_COD_EMPRESA',
'        and nro_planilla = :P600_NRO_ENTREGA_EDITAR;',
'   exception',
'      when others then',
'         :P600_COD_VEHICULO_EDITAR := null ;',
'end ;',
''))
,p_attribute_02=>'P600_NRO_ENTREGA_EDITAR'
,p_attribute_03=>'P600_COD_VEHICULO_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204087187274516035)
,p_name=>'DA_TIP'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_TIP_NOVEDAD_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204087215471516036)
,p_event_id=>wwv_flow_imp.id(204087187274516035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P600_TIP_NOVEDAD_EDITAR = ''R'' then',
'   begin',
'      select descripcion',
'         into :P600_DESC_NOV_CLIENTE ',
'         from rp_novedades',
'         where cod_empresa = :P_COD_EMPRESA',
'           and cod_novedad = :P600_COD_NOV_CLIENTE_EDITAR ;',
'   exception',
'      when others then',
'         :P600_DESC_NOV_CLIENTE:= null ;',
'   end ;',
'end if ;',
'',
'',
'if :P600_TIP_NOVEDAD_EDITAR = ''C'' then',
'   begin',
'      select nvl( p.nombre, p.nomb_fantasia )',
'         into :P600_DESC_NOV_CLIENTE',
'         from cc_clientes c, personas p ',
'         where c.cod_empresa = :P_COD_EMPRESA ',
'           and c.cod_cliente = :P600_COD_NOV_CLIENTE_EDITAR',
'           and c.cod_persona = p.cod_persona ;',
'  exception',
'     when others then',
'        :P600_DESC_NOV_CLIENTE:= null ;',
'  end ;',
'end if ;'))
,p_attribute_02=>'P600_TIP_NOVEDAD_EDITAR,P600_COD_NOV_CLIENTE_EDITAR'
,p_attribute_03=>'P600_DESC_NOV_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204087377018516037)
,p_name=>'DA_ENT_SAL'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_ENT_SAL_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204087418215516038)
,p_event_id=>wwv_flow_imp.id(204087377018516037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl( :P600_TIP_NOVEDAD_EDITAR, ''C'' ) = ''C'' then',
'      declare ',
'         vind_ent_sal   varchar2( 1 ) ;',
'         vnoencontro    exception ;',
'      begin',
'         select r.ind_ent_sal',
'            into vind_ent_sal',
'            from rp_novedades_reparto r',
'            where r.cod_empresa     = :P_COD_EMPRESA',
'              and r.nro_entrega     = :P600_NRO_ENTREGA_EDITAR',
'              and r.tip_novedad     = :P600_TIP_NOVEDAD_EDITAR',
'              and r.cod_nov_cliente = :P600_COD_NOV_CLIENTE_EDITAR',
'              and r.fec_hor_novedad = ( select max(rn.fec_hor_novedad)',
'                                           from rp_novedades_reparto rn',
'                                           where rn.cod_empresa     = r.cod_empresa ',
'                                             and rn.nro_entrega     = r.nro_entrega ',
'                                             and rn.cod_nov_cliente = r.cod_nov_cliente ) ;',
'         if vind_ent_sal = ''E'' then',
'            :P600_ENT_SAL_EDITAR := ''S'' ;',
'         elsif vind_ent_sal = ''S'' then',
'            :P600_ENT_SAL_EDITAR := ''E'' ;',
'         else',
'            raise vnoencontro ;',
'         end if ;',
'      exception',
'         when vnoencontro then',
'            :P600_ENT_SAL_EDITAR := ''E'' ;',
'      end ;',
'   end if ;'))
,p_attribute_02=>'P600_TIP_NOVEDAD_EDITAR,P600_NRO_ENTREGA_EDITAR'
,p_attribute_03=>'P600_ENT_SAL_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204087550888516039)
,p_name=>'DA_KM'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_KM_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204087609698516040)
,p_event_id=>wwv_flow_imp.id(204087550888516039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P600_TIP_NOVEDAD_EDITAR = ''C'' and ',
'   :P600_ENT_SAL_EDITAR = ''E'' and ',
'   :P600_KM_EDITAR is null then',
'      :P600_MSG := ''Por favor ingrese el kilometraje'';',
'end if ;'))
,p_attribute_02=>'P600_TIP_NOVEDAD_EDITAR,P600_ENT_SAL_EDITAR,P600_KM_EDITAR'
,p_attribute_03=>'P600_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204087728636516041)
,p_name=>'DA_FEC_HOR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_FEC_HOR_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204087804693516042)
,p_event_id=>wwv_flow_imp.id(204087728636516041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P600_FEC_HOR_EDITAR is null then',
'   :P600_FEC_HOR_EDITAR := sysdate ;',
'end if ;'))
,p_attribute_02=>'P600_FEC_HOR_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204087958243516043)
,p_name=>'DA_MOTIVO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_COD_MOTIVO_ENT_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204088023485516044)
,p_event_id=>wwv_flow_imp.id(204087958243516043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P600_COD_MOTIVO_ENT_EDITAR is not null then',
'   begin',
'      select descripcion',
'         into :P600_DESC_MOTIVO_ENT',
'         from rp_motivos_entrega',
'         where cod_empresa    = :P_COD_EMPRESA',
'           and cod_motivo_ent = :P600_COD_MOTIVO_ENT_EDITAR ;',
'   exception',
'      when no_data_found then',
'         :P600_DESC_MOTIVO_ENT := null ;',
'         :P600_MSG := ''No existe el codigo de motivo de entrega'';',
'    when others then',
'       :P600_DESC_MOTIVO_ENT := null ;',
'       APEX_DEBUG.ERROR( ''Error en la tabla de motivos de entrega '' || sqlerrm);',
'  end;',
'end if ;'))
,p_attribute_02=>'P600_COD_MOTIVO_ENT_EDITAR'
,p_attribute_03=>'P600_DESC_MOTIVO_ENT,P600_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204088207675516046)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204088115414516045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204088371499516047)
,p_event_id=>wwv_flow_imp.id(204088207675516046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204084909935516013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204088681795516050)
,p_name=>'DA_INSERTAR'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204088562713516049)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204732281912960701)
,p_event_id=>wwv_flow_imp.id(204088681795516050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que deseas crear los datos?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204732509433960704)
,p_event_id=>wwv_flow_imp.id(204088681795516050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_existe number;',
'BEGIN',
'    begin',
'    select 1',
'    into v_existe',
'    from RP_NOVEDADES_REPARTO',
'    WHERE cod_empresa = :P_COD_EMPRESA',
'    and NRO_ENTREGA = :P600_NRO_ENTREGA_EDITAR',
'    and TIP_NOVEDAD = :P600_TIP_NOVEDAD_EDITAR',
'    and COD_NOV_CLIENTE = :P600_COD_NOV_CLIENTE_EDITAR',
'    and IND_ENT_SAL = :P600_ENT_SAL_EDITAR',
'    and KM = :P600_KM_EDITAR',
'    and FEC_HOR_NOVEDAD = :P600_FEC_HOR_EDITAR',
'    and COD_MOTIVO_ENT = :P600_COD_MOTIVO_ENT_EDITAR;',
'    ',
'    EXCEPTION',
'        when no_data_found then',
'',
'    --insertar en tabla rp_novedades_reparto',
'    IF :P600_NRO_ENTREGA_EDITAR IS NOT NULL AND :P600_TIP_NOVEDAD_EDITAR IS NOT NULL AND :P600_COD_NOV_CLIENTE_EDITAR IS NOT NULL',
'    AND :P600_ENT_SAL_EDITAR IS NOT NULL AND :P600_KM_EDITAR IS NOT NULL AND :P600_FEC_HOR_EDITAR IS NOT NULL ',
'    AND :P600_COD_MOTIVO_ENT_EDITAR IS NOT NULL THEN',
'',
'       INSERT INTO RP_NOVEDADES_REPARTO (COD_EMPRESA,',
'                                        NRO_ENTREGA,',
'                                        TIP_NOVEDAD,',
'                                        COD_NOV_CLIENTE,',
'                                        IND_ENT_SAL,',
'                                        KM,',
'                                        FEC_HOR_NOVEDAD,',
'                                        COD_MOTIVO_ENT',
'                                        )',
'                                VALUES (',
'                                        :P_COD_EMPRESA,',
'                                        :P600_NRO_ENTREGA_EDITAR,',
'                                        :P600_TIP_NOVEDAD_EDITAR,',
'                                        :P600_COD_NOV_CLIENTE_EDITAR,',
'                                        :P600_ENT_SAL_EDITAR,',
'                                        :P600_KM_EDITAR,',
'                                        :P600_FEC_HOR_EDITAR,',
'                                        :P600_COD_MOTIVO_ENT_EDITAR',
'                                         );',
'        :P600_MSG := ''Se crearon los datos'';',
'        :P600_ERR := ''N'';',
'    ELSE ',
'        :P600_MSG := ''Debe completar todos los datos.'';',
'        :P600_ERR := ''S'';',
'    END IF;                                        ',
'',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR AL GUARDAR: ''||SQLERRM);',
'        :P600_ERR := ''S'';',
'        END;',
'END;'))
,p_attribute_02=>'P600_NRO_ENTREGA_EDITAR,P600_TIP_NOVEDAD_EDITAR,P600_COD_NOV_CLIENTE_EDITAR,P600_ENT_SAL_EDITAR,P600_KM_EDITAR,P600_FEC_HOR_EDITAR,P600_COD_MOTIVO_ENT_EDITAR'
,p_attribute_03=>'P600_MSG,P600_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204732876574960707)
,p_event_id=>wwv_flow_imp.id(204088681795516050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203137035612361805)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204732930108960708)
,p_event_id=>wwv_flow_imp.id(204088681795516050)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204084909935516013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204733292950960711)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204733156780960710)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204733385709960712)
,p_event_id=>wwv_flow_imp.id(204733292950960711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que desea guardar los cambios?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204733498720960713)
,p_event_id=>wwv_flow_imp.id(204733292950960711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P600_DESC_MOTIVO_ENT IS NOT NULL THEN',
'        UPDATE RP_NOVEDADES_REPARTO',
'        SET    NRO_ENTREGA = :P600_NRO_ENTREGA_EDITAR,',
'               TIP_NOVEDAD = :P600_TIP_NOVEDAD_EDITAR,',
'               COD_NOV_CLIENTE = :P600_COD_NOV_CLIENTE_EDITAR,',
'               IND_ENT_SAL = :P600_ENT_SAL_EDITAR,',
'               KM = :P600_KM_EDITAR,',
'               FEC_HOR_NOVEDAD = :P600_FEC_HOR_EDITAR,',
'               COD_MOTIVO_ENT = :P600_COD_MOTIVO_ENT_EDITAR',
'',
'        WHERE  ROWID = :P600_EDITAR;',
'',
unistr('        :P600_MSG := ''Se edit\00F3 el registro correctamente.'';'),
'        :P600_ERR := ''N'';',
'    ELSE ',
'        :P600_MSG := ''El codigo motivo no debe ser nulo.'';',
'        :P600_ERR := ''S'';',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''ERROR AL GUARDAR: ''||SQLERRM);',
'        :P600_ERR := ''S'';',
'END;'))
,p_attribute_02=>'P600_DESC_MOTIVO_ENT,P600_NRO_ENTREGA_EDITAR,P600_TIP_NOVEDAD_EDITAR,P600_COD_MOTIVO_ENT_EDITAR,P600_ENT_SAL_EDITAR,P600_KM_EDITAR,P600_FEC_HOR_EDITAR,P600_COD_NOV_CLIENTE_EDITAR'
,p_attribute_03=>'P600_MSG,P600_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204733510219960714)
,p_event_id=>wwv_flow_imp.id(204733292950960711)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204084909935516013)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204733686837960715)
,p_event_id=>wwv_flow_imp.id(204733292950960711)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203137035612361805)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204733810189960717)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_COD_NOV_CLIENTE_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204733900942960718)
,p_event_id=>wwv_flow_imp.id(204733810189960717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P600_COD_NOV_CLIENTE_EDITAR is not null then',
'         if :P600_TIP_NOVEDAD_EDITAR = ''R'' then',
'            begin',
'               select descripcion',
'                  into :P600_DESC_NOV_CLIENTE',
'                  from rp_novedades ',
'                  where cod_empresa = :P_COD_EMPRESA',
'                    and cod_novedad = :P600_COD_NOV_CLIENTE_EDITAR ;',
'            exception',
'               when no_data_found then',
'                  :P600_DESC_NOV_CLIENTE := null ;',
'                  :P600_MSG := ''No existe el codigo de novedad'' ;',
'               when others then',
'                  :P600_DESC_NOV_CLIENTE := null ;',
'                  APEX_DEBUG.ERROR(''Error en la tabla de novedades '' || sqlerrm) ;',
'            end ;',
'         end if ;',
' ',
'         if :P600_TIP_NOVEDAD_EDITAR = ''C'' then',
'            begin',
'               select distinct nvl( p.nombre, p.nomb_fantasia )',
'                  into :P600_DESC_NOV_CLIENTE',
'                  from rp_reparto_cabecera c, rp_reparto_detalle d,',
'                       vt_comprobantes_cabecera vt, cc_clientes ccl, personas p ',
'                  where c.cod_empresa      = :P_COD_EMPRESA',
'                    and c.nro_planilla     = :P600_NRO_ENTREGA_EDITAR',
'                    and c.cod_empresa      = d.cod_empresa',
'                    and c.nro_planilla     = d.nro_planilla',
'                    and d.cod_empresa      = vt.cod_empresa',
'                    and d.tip_comprobante  = vt.tip_comprobante',
'                    and d.ser_comprobante  = vt.ser_comprobante',
'                    and d.nro_comprobante  = vt.nro_comprobante',
'                    and vt.cod_empresa     = ccl.cod_empresa',
'                    and vt.cod_cliente     = ccl.cod_cliente',
'                    and ccl.cod_cliente    = :P600_COD_NOV_CLIENTE_EDITAR',
'                    and ccl.cod_persona    = p.cod_persona ;',
'            exception',
'               when no_data_found then',
'                  :P600_DESC_NOV_CLIENTE := null ;',
'                  :P600_MSG := ''No existe el codigo de cliente o no corresponde a la planilla'';',
'               when others then',
'                  :P600_DESC_NOV_CLIENTE := null ;',
'                  APEX_DEBUG.ERROR(''Error en la base de datos '' || sqlerrm) ;',
'            end ;',
'         end if ;',
'else',
unistr('   :P600_MSG := ''Ingrese el c\00F3digo de cliente o repartidor'' ;'),
'end if ;'))
,p_attribute_02=>'P600_COD_NOV_CLIENTE_EDITAR,P600_TIP_NOVEDAD_EDITAR,P600_NRO_ENTREGA_EDITAR'
,p_attribute_03=>'P600_DESC_NOV_CLIENTE,P600_MSG,P600_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204734117477960720)
,p_name=>'DA_DETALLE'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204734252963960721)
,p_event_id=>wwv_flow_imp.id(204734117477960720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select COD_NOV_CLIENTE,',
'           COD_MOTIVO_ENT',
'',
'    --- query cod vehiculo --',
'',
'    /*(select cod_vehiculo',
'    from rp_reparto_cabecera',
'    where cod_empresa  = :P_COD_EMPRESA',
'    and nro_planilla = :P600_AUX) vehiculo */',
'',
'    into   :P600_DESC_NOV_CLIENTE,',
'           :P600_DESC_MOTIVO_ENT',
'           ',
'',
'    from RP_NOVEDADES_REPARTO',
'    where rowid = :P600_DETALLES;',
'    -- APEX_DEBUG.ERROR(''NRO ENTREGA'' ||:P600_NRO_ENTREGA_EDITAR );',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P600_DESC_MOTIVO_ENT := null;',
'        :P600_DESC_NOV_CLIENTE := null;',
'',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
'',
'-- QUERY VEHICULO --',
'begin',
'   select descripcion',
'      into :P600_DESC_VEHICULO',
'      from rp_vehiculos',
'      where cod_empresa  = :P_COD_EMPRESA',
'        and cod_vehiculo = :P600_AUX_VEHICULO ;',
'exception',
'   when others then',
'      :P600_DESC_VEHICULO := null ;',
'end ;',
'',
'--- QUERY MOTIVO ---',
'begin',
'   select descripcion',
'      into :P600_DESC_MOTIVO_ENT',
'      from rp_motivos_entrega',
'      where cod_empresa    = :P_COD_EMPRESA',
'      and cod_motivo_ent = :P600_AUX_MOTIVO;',
' ',
'exception',
'   when others then',
'      :P600_DESC_MOTIVO_ENT := null ;',
'end ;',
'',
'--- QUERY NOVEDAD/CLIENTE --- ',
'',
'if :P600_TIP_NOVEDAD_EDITAR = ''R'' then',
'   begin',
'      select descripcion',
'         into :P600_DESC_NOV_CLIENTE  ',
'         from rp_novedades',
'         where cod_empresa = :P_COD_EMPRESA',
'           and cod_novedad = :P600_AUX_NOVEDAD ;',
'   exception',
'      when others then',
'         :P600_DESC_NOV_CLIENTE := null ;',
'   end ;',
'end if ;',
'',
'',
'if :P600_TIP_NOVEDAD_EDITAR = ''C'' then',
'   begin',
'      select nvl( p.nombre, p.nomb_fantasia )',
'         into :P600_DESC_NOV_CLIENTE',
'         from cc_clientes c, personas p ',
'         where c.cod_empresa = :P_COD_EMPRESA ',
'           and c.cod_cliente = :P600_AUX_NOVEDAD',
'           and c.cod_persona = p.cod_persona ;',
'  exception',
'     when others then',
'        :P600_DESC_NOV_CLIENTE := null ;',
'  end ;',
'end if ;'))
,p_attribute_02=>'P600_DETALLES,P600_AUX,P600_AUX_VEHICULO,P600_AUX_MOTIVO,P600_AUX_NOVEDAD,P600_TIP_NOVEDAD_EDITAR'
,p_attribute_03=>'P600_DESC_VEHICULO,P600_DESC_MOTIVO_ENT,P600_DESC_NOV_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204734794503960726)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204084203226516006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204734836750960727)
,p_event_id=>wwv_flow_imp.id(204734794503960726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(1);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204734922800960728)
,p_event_id=>wwv_flow_imp.id(204734794503960726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_NRO_ENTREGA_EDITAR,P600_COD_VEHICULO_EDITAR,P600_TIP_NOVEDAD_EDITAR,P600_COD_NOV_CLIENTE_EDITAR,P600_ENT_SAL_EDITAR,P600_KM_EDITAR,P600_FEC_HOR_EDITAR,P600_COD_MOTIVO_ENT_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204735008321960729)
,p_event_id=>wwv_flow_imp.id(204734794503960726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P600_EDITAR := NULL;',
'    :P600_ELIMINAR := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P600_EDITAR,P600_ELIMINAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204735157657960730)
,p_event_id=>wwv_flow_imp.id(204734794503960726)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204084909935516013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204735382092960732)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_ELIMINAR'
,p_condition_element=>'P600_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204735473592960733)
,p_event_id=>wwv_flow_imp.id(204735382092960732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que deseas eliminar los datos?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204735716786960736)
,p_event_id=>wwv_flow_imp.id(204735382092960732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --eliminar un registro',
'    DELETE RP_NOVEDADES_REPARTO WHERE ROWID = :P600_ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P600_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204736414075960743)
,p_event_id=>wwv_flow_imp.id(204735382092960732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203137035612361805)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(204735217374960731)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
