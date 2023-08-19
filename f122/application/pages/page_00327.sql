prompt --application/pages/page_00327
begin
--   Manifest
--     PAGE: 00327
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
 p_id=>327
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAPEDREP'
,p_alias=>'CAPEDREP'
,p_page_mode=>'MODAL'
,p_step_title=>'CAPEDREP'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P328_ACCION'',''AGREGAR'');',
'      $s(''P328_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P328_ACCION'',''QUITAR'');',
'      $s(''P328_SEQ_ID'', cb.value,false);',
'  }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230719083711'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160562066072271781)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160562775094271788)
,p_plug_name=>'DETALLE  DE PEDIDOS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81099373091645125)
,p_plug_name=>'CABECERA_BAJA'
,p_parent_plug_id=>wwv_flow_imp.id(160562775094271788)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161001672220328559)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(160562775094271788)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161002907237328571)
,p_plug_name=>'REPORTE_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(160562775094271788)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id p_id,',
'    c001 COD_ARTICULO,',
'    C010 DESC_ARTICULO,',
'    c002 DESCRIPCION,',
'    c003 CANTIDAD,',
'    ',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'from apex_collections',
'where collection_name = ''COL_CAPEDREP''',
'AND NVL(C030,''O'')<> ''B''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE'
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
 p_id=>wwv_flow_imp.id(161002959914328572)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>161002959914328572
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81250885118539370)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81256331859539375)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>unistr('Descripci\00F3n Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81251220413539371)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n o explicaci\00F3n del repuesto')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81251612797539371)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81255181915539374)
,p_db_column_name=>'P_ID'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81255518442539374)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P327_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81255916197539374)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P327_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(161299137943723198)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'800595'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ARTICULO:DESC_ARTICULO:DESCRIPCION:CANTIDAD:ELIMINAR'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160562850325271789)
,p_plug_name=>'UBICACION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    COD_SUCURSAL,  ',
'    piso,',
'    pasillo,',
'    cuerpo,',
'    bandeja,',
'    contenedor',
'from ST_UBIC_ARTICULOS',
'where cod_articulo = :P327_SEQ_ID_UBI;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'UBICACION'
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
 p_id=>wwv_flow_imp.id(162336899565184454)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>162336899565184454
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81257387557539379)
,p_db_column_name=>'PISO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Piso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81257786794539379)
,p_db_column_name=>'PASILLO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pasillo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81258191590539379)
,p_db_column_name=>'CUERPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81258590090539379)
,p_db_column_name=>'BANDEJA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Bandeja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81258911617539380)
,p_db_column_name=>'CONTENEDOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Contenedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(81259372006539380)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(162351313777216855)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'811116'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:PISO:PASILLO:CUERPO:BANDEJA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161002713103328569)
,p_plug_name=>'CARGA DE PEDIDOS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160562715593271787)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(161002713103328569)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81248149541539365)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81247352314539365)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81247751220539365)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81246651269539364)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(160562775094271788)
,p_button_name=>'bt_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81260365279539381)
,p_button_sequence=>1040
,p_button_plug_id=>wwv_flow_imp.id(161002713103328569)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67055399486084720)
,p_name=>'P327_STOCK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_prompt=>'Cantidad Disponible'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81099411709645126)
,p_name=>'P327_FEC_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81099373091645125)
,p_prompt=>'Fecha de alta'
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
 p_id=>wwv_flow_imp.id(81099543801645127)
,p_name=>'P327_HORA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81099373091645125)
,p_prompt=>'Hora alta'
,p_format_mask=>'HH24:MI:SS'
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
 p_id=>wwv_flow_imp.id(81099601276645128)
,p_name=>'P327_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81099373091645125)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(81099749966645129)
,p_name=>'P327_ANULADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(81099373091645125)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81099890248645130)
,p_name=>'P327_COD_ARTICULO_CAB'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Producto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_VINC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.cod_articulo||'' - ''||a.descripcion d, a.cod_articulo r, nvl(sum(e.cant_dispon), 0) cantidad, a.cod_rubro',
'  from st_articulos a, st_existencia_art e, vt_ordenes_trabajo v, st_equivalencia_art s',
' where a.cod_empresa = :P327_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa(+)',
'   and a.cod_articulo = e.cod_articulo(+)',
'   and :P327_COD_SUCURSAL = e.cod_sucursal(+)',
'   and v.cod_empresa = a.cod_empresa',
'   and v.tip_comprobante = :P327_TIP_COMPROBANTE_REF',
'    and v.ser_comprobante =:P327_SER_COMPROBANTE_REF',
'   and v.nro_comprobante = :P327_NRO_COMPROBANTE_REF',
'   and v.cod_articulo    = s.cod_articulo',
'   and v.cod_empresa     = s.cod_empresa',
'   and s.cod_articulo_equi = a.cod_articulo',
' group by a.descripcion, a.cod_articulo,a.cod_rubro',
'',
' order by 4,1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81240339533539360)
,p_name=>'P327_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81240779863539361)
,p_name=>'P327_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81241571359539361)
,p_name=>'P327_COD_MODUL0'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81241990578539362)
,p_name=>'P327_ACCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81242369352539362)
,p_name=>'P327_ACCION_ANU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81242717253539362)
,p_name=>'P327_ACCION_TRAS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81243124890539362)
,p_name=>'P327_SEQ_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81244731135539363)
,p_name=>'P327_SEQ_ID_DETALLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81245186278539363)
,p_name=>'P327_SEQ_ID_EDITAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81245522756539363)
,p_name=>'P327_SEQ_ID_ELIMINAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81245987449539363)
,p_name=>'P327_AUX_MSJ_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(160562066072271781)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81248595526539365)
,p_name=>'P327_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_CAREPDET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.cod_articulo||'' - ''||A.descripcion L, ',
'         A.cod_articulo V, e.cant_dispon',
'from st_articulos A, st_equivalencia_art S,  st_existencia_art   e',
' where A.cod_empresa = :P_COD_EMPRESA',
' and ( A.estado is null or A.estado <> ''I'' )',
' AND A.COD_ARTICULO = S.COD_ARTICULO_EQUI',
' AND A.COD_EMPRESA =  S.COD_EMPRESA',
' AND S.COD_ARTICULO  = :P327_COD_ARTICULO_CAB',
'  AND a.cod_empresa = e.cod_empresa(+)',
'   AND a.cod_articulo = e.cod_articulo(+)',
'   AND e.cod_sucursal in (''101'', ''190'', ''75'')',
'  order by A.descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P327_COD_EMPRESA,P327_COD_ARTICULO_CAB,P327_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P327_COD_EMPRESA,P327_COD_ARTICULO_CAB,P327_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'CANT_DISPON:P327_STOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81248922788539366)
,p_name=>'P327_CANTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(81249373205539367)
,p_name=>'P327_CANTIDAD_CONFIRMADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81249767995539367)
,p_name=>'P327_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_prompt=>unistr('Descripcion o explicaci\00F3n del repuesto')
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
 p_id=>wwv_flow_imp.id(81250155071539368)
,p_name=>'P327_COD_MOTIVO_ANU'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(161001672220328559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81261053839539381)
,p_name=>'P327_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_item_default=>'1'
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(81261439400539382)
,p_name=>'P327_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81261808189539382)
,p_name=>'P327_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Ser Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81262285915539382)
,p_name=>'P327_TIP_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81262621218539382)
,p_name=>'P327_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Fec Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81263099578539382)
,p_name=>'P327_NRO_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81263425993539383)
,p_name=>'P327_DESC_TIPO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Desc Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81263834244539383)
,p_name=>'P327_RETIRA_DE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Retira de'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ARTIGAS;ARTIGAS,CDE;CDE,SLO;SLO'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(81264225553539383)
,p_name=>'P327_FEC_CONFIRMACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Fec Confirmacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81264618531539383)
,p_name=>'P327_HORA_CONFIRMACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Hora Confirmacion'
,p_format_mask=>'HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81265066378539384)
,p_name=>'P327_CONFIRMADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Confirmado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81265445037539384)
,p_name=>'P327_TIP_COMPROBANTE_REF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Tip Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81265836867539384)
,p_name=>'P327_SER_COMPROBANTE_REF'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Ser Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81266233280539384)
,p_name=>'P327_NRO_COMPROBANTE_REF'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'nro Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81266650879539384)
,p_name=>'P327_COD_SUCURSAL_ENV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_prompt=>'Sucursal Envio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81267088880539385)
,p_name=>'P327_DESC_SUCURSAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81267480492539385)
,p_name=>'P327_TOT_CANTIDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81267800602539385)
,p_name=>'P327_TOT_CANTIDAD_ANT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81268287307539385)
,p_name=>'P327_TRANSLADO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81268657807539386)
,p_name=>'P327_DESC_SUCURSAL_ENV'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81269043042539386)
,p_name=>'P327_COD_MOTIVO_ANULACION_DET'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125066869966854408)
,p_name=>'P327_LINEA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125066961755854409)
,p_name=>'P327_CATEGORIA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(160562715593271787)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81290216431539402)
,p_name=>'da_check'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81290704692539402)
,p_event_id=>wwv_flow_imp.id(81290216431539402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CAREPDET.PR_CHECK(P_SEQ_ID => :P327_SEQ_ID,',
'                  P_ACCION => :P327_ACCION,',
'                  P_COLECCION => ''COL_CAREPDET'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P327_SEQ_ID,P327_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81283176111539399)
,p_name=>'DA_CHECK_ANU'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_SEQ_ID_ANU'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81283670515539399)
,p_event_id=>wwv_flow_imp.id(81283176111539399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CAREPDET.PR_CHECK_ANU(P_SEQ_ID => :P327_SEQ_ID_ANU,',
'                  P_ACCION => :P327_ACCION_ANU,',
'                  P_COLECCION => ''COL_CAPEDREP'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P327_SEQ_ID_ANU,P327_ACCION_ANU'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81284035647539399)
,p_name=>'DA_CHECK_TRAS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_SEQ_ID_TRAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81284536946539399)
,p_event_id=>wwv_flow_imp.id(81284035647539399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'CAREPDET.PR_CHECK_TRAS(P_SEQ_ID => :P327_SEQ_ID_TRAS,',
'                  P_ACCION => :P327_ACCION_TRAS,',
'                  P_COLECCION => ''COL_CAREPDET'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P327_SEQ_ID_TRAS,P327_ACCION_TRAS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81284957541539400)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81246651269539364)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81285420878539400)
,p_event_id=>wwv_flow_imp.id(81284957541539400)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_COD_ARTICULO,P327_CANTIDAD,P327_CANTIDAD_CONFIRMADA,P327_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81286959405539400)
,p_event_id=>wwv_flow_imp.id(81284957541539400)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81247352314539365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81287471855539401)
,p_event_id=>wwv_flow_imp.id(81284957541539400)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81247751220539365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81287900916539401)
,p_event_id=>wwv_flow_imp.id(81284957541539400)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161001672220328559)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81286423935539400)
,p_event_id=>wwv_flow_imp.id(81284957541539400)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_CANTIDAD,P327_CANTIDAD_CONFIRMADA'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81285901989539400)
,p_event_id=>wwv_flow_imp.id(81284957541539400)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_COD_MOTIVO_ANU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81270229188539390)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81247352314539365)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81270788953539391)
,p_event_id=>wwv_flow_imp.id(81270229188539390)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P327_AUX_MSJ_CONTROL := NULL;',
'IF(:P327_COD_ARTICULO IS NULL)THEN',
'    :P327_AUX_MSJ_CONTROL := ''Ingrese un articulo'';',
'    else ',
'        begin',
'            CAPEDREP.pr_agregar_miembro_detalle(',
'                            PI_COD_EMPRESA => :P327_COD_EMPRESA,',
'                            PI_COD_ARTICULO => :P327_COD_ARTICULO,',
'                            PI_DESCRIPCION => :P327_DESCRIPCION,',
'                            PI_CANTIDAD => :P327_CANTIDAD',
'                             );',
'           ',
'         EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR (SQLERRM);',
'        end;',
'end if;',
''))
,p_attribute_02=>'P327_COD_ARTICULO,P327_CANTIDAD,P327_DESCRIPCION,P327_COD_EMPRESA'
,p_attribute_03=>'P327_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81271203472539391)
,p_event_id=>wwv_flow_imp.id(81270229188539390)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P327_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81271756794539392)
,p_event_id=>wwv_flow_imp.id(81270229188539390)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161002907237328571)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81272283922539392)
,p_event_id=>wwv_flow_imp.id(81270229188539390)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161001672220328559)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81272733144539393)
,p_event_id=>wwv_flow_imp.id(81270229188539390)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Nuevo registro agregado.'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81273106928539393)
,p_name=>'DA_CARGAR_CANTIDAD'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_COD_ARTICULO_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81273662499539393)
,p_event_id=>wwv_flow_imp.id(81273106928539393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'          Select sum( st.cant_dispon )',
'            into :P327_CANTIDAD',
'            from st_existencia_art st',
'           where cod_empresa = :P327_COD_EMPRESA and',
'                 cod_sucursal = decode(:P327_RETIRA_DE,''ARTIGAS'',''101'',''SLO'',''190'',''CDE'',''262'')',
'                  and',
'                 cod_articulo = :P327_COD_ARTICULO and',
'                               nvl( cant_dispon, 0 ) > 0;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P327_COD_EMPRESA,P327_RETIRA_DE,P327_COD_ARTICULO_CAB'
,p_attribute_03=>'P327_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81274649396539394)
,p_event_id=>wwv_flow_imp.id(81273106928539393)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81274129396539394)
,p_event_id=>wwv_flow_imp.id(81273106928539393)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_CANTIDAD_CONFIRMADA,P327_CANTIDAD'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P327_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81277982742539396)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81248149541539365)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81278430400539396)
,p_event_id=>wwv_flow_imp.id(81277982742539396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161001672220328559)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81280239480539397)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81247751220539365)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81280786352539398)
,p_event_id=>wwv_flow_imp.id(81280239480539397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P327_AUX_MSJ_CONTROL := NULL;',
'IF(:P327_COD_ARTICULO IS NULL)THEN',
'    :P327_AUX_MSJ_CONTROL := ''Ingrese un articulo'';',
'     ',
'        else ',
'            begin',
'                CAPEDREP.pr_modificar_miembro_detalle( PI_COD_EMPRESA => :P327_COD_EMPRESA,',
'                                PI_SEQ_ID_EDITAR => :P327_SEQ_ID_EDITAR,',
'                                 PI_COD_ARTICULO => :P327_COD_ARTICULO,',
'                                 PI_DESCRIPCION => :P327_DESCRIPCION,',
'                                 PI_CANTIDAD => :P327_CANTIDAD',
'                                 );',
'                                   ',
'               ',
'             EXCEPTION',
'                WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR (SQLERRM);',
'            end;',
'end if;',
''))
,p_attribute_02=>'P327_COD_ARTICULO,P327_CANTIDAD,P327_DESCRIPCION,P327_SEQ_ID_EDITAR,P327_COD_EMPRESA'
,p_attribute_03=>'P327_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81281235477539398)
,p_event_id=>wwv_flow_imp.id(81280239480539397)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P327_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81281788980539398)
,p_event_id=>wwv_flow_imp.id(81280239480539397)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161002907237328571)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81282203958539398)
,p_event_id=>wwv_flow_imp.id(81280239480539397)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161001672220328559)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81282748321539398)
,p_event_id=>wwv_flow_imp.id(81280239480539397)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro editado.'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P327_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81275026899539394)
,p_name=>'da_abrir_Editar'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81276094724539395)
,p_event_id=>wwv_flow_imp.id(81275026899539394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select  c001 COD_ARTICULO,',
'            c002 DESCRIPCION,',
'            c003 CANTIDAD',
'     into',
'        :P327_COD_ARTICULO,',
'        :P327_DESCRIPCION,',
'        :P327_CANTIDAD',
'        ',
'   FROM APEX_COLLECTIONS',
'   WHERE COLLECTION_NAME = ''COL_CAPEDREP''     ',
'   AND SEQ_ID = :P327_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P327_SEQ_ID_EDITAR'
,p_attribute_03=>'P327_COD_ARTICULO_CAB,P327_DESCRIPCION,P327_CANTIDAD,P327_CANTIDAD_CONFIRMADA,P327_COD_MOTIVO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81276534908539395)
,p_event_id=>wwv_flow_imp.id(81275026899539394)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81247751220539365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81275502422539394)
,p_event_id=>wwv_flow_imp.id(81275026899539394)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_COD_MOTIVO_ANU'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81277054893539396)
,p_event_id=>wwv_flow_imp.id(81275026899539394)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81247352314539365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81277547156539396)
,p_event_id=>wwv_flow_imp.id(81275026899539394)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161001672220328559)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81278835141539397)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81260365279539381)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81279864989539397)
,p_event_id=>wwv_flow_imp.id(81278835141539397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Continuar?')
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81279380158539397)
,p_event_id=>wwv_flow_imp.id(81278835141539397)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81288363292539401)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81289374177539402)
,p_event_id=>wwv_flow_imp.id(81288363292539401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81289817705539402)
,p_event_id=>wwv_flow_imp.id(81288363292539401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    CAPEDREP.pr_borrar_miembro_collection( PI_SEQ_ID_ELIMINAR => :P327_SEQ_ID_ELIMINAR); ',
'',
'end;'))
,p_attribute_02=>'P327_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81288848608539401)
,p_event_id=>wwv_flow_imp.id(81288363292539401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161002907237328571)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81291199922539403)
,p_name=>'DA_MOSTRAR_UBI'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_SEQ_ID_UBI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81291629041539403)
,p_event_id=>wwv_flow_imp.id(81291199922539403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(160562850325271789)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81292049070539403)
,p_name=>'da_cargar_fecha'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_CONFIRMADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81292560799539403)
,p_event_id=>wwv_flow_imp.id(81292049070539403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' ',
'    :P327_FEC_CONFIRMACION :=trunc(sysdate) ;		',
'    :P327_HORA_CONFIRMACION := to_char(SYSDATE,''HH24:MI:SS'') ;',
'',
'end;'))
,p_attribute_03=>'P327_FEC_CONFIRMACION ,P327_HORA_CONFIRMACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81269881723539390)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'     ',
'    CAPEDREP.pr_confirmar_accion (PI_TIP_COMPROBANTE => :P327_TIP_COMPROBANTE,',
'          PI_SER_COMPROBANTE => :P327_SER_COMPROBANTE,',
'          PI_NRO_COMPROBANTE => :P327_NRO_COMPROBANTE,',
'          PI_COD_SUCURSAL => :P327_COD_SUCURSAL,',
'          PI_CONFIRMADO => :P327_CONFIRMADO,',
'          PI_FEC_COMPROBANTE => :P327_FEC_COMPROBANTE,',
'          PI_FEC_ALTA => :P327_FEC_ALTA,',
'          PI_NRO_COMPROBANTE_REF => :P327_NRO_COMPROBANTE_REF,',
'          PI_ANULADO => :P327_ANULADO,',
'          PI_HORA_ALTA => :P327_HORA_ALTA,',
'          PI_TIP_COMPROBANTE_REF => :P327_TIP_COMPROBANTE_REF,',
'          PI_SER_COMPROBANTE_REF => :P327_SER_COMPROBANTE_REF,',
'          PI_FEC_CONFIMACION => :P327_FEC_COMPROBANTE,',
'          PI_HORA_CONFIRMACION => :P327_HORA_CONFIRMACION,',
'          PI_RETIRA_DE => :P327_RETIRA_DE,',
'          PI_COD_SUCURSAL_ENV => :P327_COD_SUCURSAL_ENV,',
'          PI_COD_EMPRESA => :P327_COD_EMPRESA,                        ',
'          PI_USUARIO_CREACION => :P327_COD_USUARIO);',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en procedimiento confirmar accion'');',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81099965026645131)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'pr_limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81269482065539389)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' --TIPO = ORT ; SERIE = P; NUMERO  = 1033',
'--:P327_SER_COMPROBANTE_REF := ''P'';',
'--:P327_NRO_COMPROBANTE_REF := 1033;',
'--:P327_TIP_COMPROBANTE_REF := ''ORT'';',
'',
':P327_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
':P327_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
':P327_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'');',
':P327_COD_MODUL0 := nvl(:P_COD_MODULO,''VT'');',
':P327_AUX_MSJ_CONTROL := NULL;',
':P327_FEC_ALTA := SYSDATE;',
':P327_TIP_COMPROBANTE := ''PER'';',
':P327_SER_COMPROBANTE := ''A'';',
':P327_FEC_COMPROBANTE := trae_fecha( :P_COD_EMPRESA, :P_COD_MODULO );',
':P327_RETIRA_DE:=''ARTIGAS'';',
':P327_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
' ',
'BEGIN',
'    select nvl( max( nro_comprobante), 0 ) + 1',
'    into :P327_NRO_COMPROBANTE',
'    from CA_PEDIDO_REPUESTO_CAB',
'    where cod_empresa  = :P327_COD_EMPRESA;',
' EXCEPTION',
'      when others then',
'        :P327_NRO_COMPROBANTE := NULL;',
'    END;',
'BEGIN',
'      select descripcion',
'        into :P327_DESC_TIPO',
'        from tipos_comprobantes',
'       where cod_empresa =:P327_COD_EMPRESA',
'         and tip_comprobante = :P327_TIP_COMPROBANTE_REF;',
'    EXCEPTION',
'      when others then',
'        :P327_DESC_TIPO := NULL;',
'    END;',
'',
'CAPEDREP.pr_cargar_cabecera(',
'    PI_TIP_COMPROBANTE_REF => :P327_TIP_COMPROBANTE_REF,',
'        PI_SER_COMPROBANTE_REF => :P327_SER_COMPROBANTE_REF,',
'        PI_NRO_COMPROBANTE_REF => :P327_NRO_COMPROBANTE_REF,',
'        PI_COD_EMPRESA => :P327_COD_EMPRESA,        ',
'        PO_COD_USUARIO => :P327_COD_USUARIO,',
'        PO_COD_ARTICULO => :P327_COD_ARTICULO_CAB,',
'        PO_ANULADO => :P327_ANULADO,          ',
'        PO_OBSERVACION => :P327_OBSERVACION,',
'        PO_COD_SUCURSAL_ENV => :P327_COD_SUCURSAL_ENV );',
'        ',
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CAPEDREP'');',
'',
'',
'',
'    '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
