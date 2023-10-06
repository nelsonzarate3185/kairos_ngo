prompt --application/pages/page_00638
begin
--   Manifest
--     PAGE: 00638
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
 p_id=>638
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Stock con Costos '
,p_alias=>'STCOSTCO'
,p_step_title=>'Consulta de Stock con Costos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MBLANCO'
,p_last_upd_yyyymmddhh24miss=>'20231006142520'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(213409951635056215)
,p_plug_name=>'Consulta de Stock con Costos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(213410033068056216)
,p_plug_name=>'ITEMS CABECERA- R1'
,p_parent_plug_id=>wwv_flow_imp.id(213409951635056215)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216970742801475815)
,p_plug_name=>'AUXILIARES - R1'
,p_parent_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216969457320475802)
,p_plug_name=>'REPORTE - R2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_ARTICULO,',
'       COD_SUCURSAL,',
'       CANT_DISPON,',
'       CANT_BLOQUEO,',
'       FEC_ULTIMO_INVENT,',
'       CANT_MINIMA,',
'       CANT_MAXIMA,',
'       COD_EMPRESA,',
'       SER_ARTICULO,',
'       NRO_LOTE,',
'       --- QUERY SUCURSAL -- ',
'       (',
'            select descripcion ',
'            from sucursales s',
'            where s.cod_empresa  = :P_COD_EMPRESA',
'            and s.cod_sucursal = art.cod_sucursal',
'       ) desc_sucursal',
'  from ST_EXISTENCIA_ART art',
' where cod_empresa = :P_COD_EMPRESA ',
' and cod_articulo =  :P638_COD_ARTICULO ',
' and cant_dispon>0',
' and :P638_AUX = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P638_AUX,P638_COD_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE - R2'
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
 p_id=>wwv_flow_imp.id(216969576791475803)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>216969576791475803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216969668159475804)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
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
 p_id=>wwv_flow_imp.id(216969713037475805)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216969802364475806)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Sucursal')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216969926877475807)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cantidad Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970067180475808)
,p_db_column_name=>'CANT_BLOQUEO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cant Bloqueo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970134002475809)
,p_db_column_name=>'FEC_ULTIMO_INVENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Ultimo Invent'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970267620475810)
,p_db_column_name=>'CANT_MINIMA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cant Minima'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970364612475811)
,p_db_column_name=>'CANT_MAXIMA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cant Maxima'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970444433475812)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970544413475813)
,p_db_column_name=>'SER_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216970646431475814)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217079218487856406)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Descripci\00F3n Sucursal ')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(217038161558192840)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2170382'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:DESC_SUCURSAL:NRO_LOTE:CANT_DISPON:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(213413191164056247)
,p_plug_name=>'ITEMS - REPORTE - R2'
,p_parent_plug_id=>wwv_flow_imp.id(216969457320475802)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216970917175475817)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216971469431475822)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213410155677056217)
,p_name=>'P638_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213410261546056218)
,p_name=>'P638_COD_ART_CORTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Art\00EDculo Corto ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_CORTOS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213410370038056219)
,p_name=>'P638_COD_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213410470626056220)
,p_name=>'P638_DESC_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('Descripci\00F3n Articulo')
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
 p_id=>wwv_flow_imp.id(213410576539056221)
,p_name=>'P638_COD_RUBRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Rubro')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_rubro ',
'from st_rubro',
'where cod_empresa = :P_COD_EMPRESA ',
'order by 1'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213410654254056222)
,p_name=>'P638_DESC_RUBRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('Descripci\00F3n Rubro')
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
 p_id=>wwv_flow_imp.id(213410747220056223)
,p_name=>'P638_COD_FAMILIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Familia')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIAS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_familia ',
'from st_familia ',
'order by descripcion'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213410843934056224)
,p_name=>'P638_COD_CATEGORIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Categor\00EDa')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213411002728056226)
,p_name=>'P638_COD_LINEA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Linea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_linea ',
'from st_linea ',
'order by 1'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213411106506056227)
,p_name=>'P638_DESC_LINEA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('Descripci\00F3n Linea')
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
 p_id=>wwv_flow_imp.id(213411273892056228)
,p_name=>'P638_COD_MARCA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo Marca')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_marca ',
'from st_marcas'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213411304904056229)
,p_name=>'P638_DESC_MARCA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('Descripci\00F3n Marca')
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
 p_id=>wwv_flow_imp.id(213411416808056230)
,p_name=>'P638_COD_PROVEEDOR_DFLT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>'Proveedor Default'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_STCOSTCO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(p.nombre) nombre, v.cod_proveedor, v.cod_rubro ',
'from personas p, cm_proveedores v ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl(estado,''A'') = ''A'' order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213411539883056231)
,p_name=>'P638_DESC_PROVEEDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('Descripci\00F3n Proveedor')
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
 p_id=>wwv_flow_imp.id(213411658984056232)
,p_name=>'P638_COD_IVA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('C\00F3digo IVA')
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
 p_id=>wwv_flow_imp.id(213411737476056233)
,p_name=>'P638_COSTO_PROM_US'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Costo Promedio US'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213411834641056234)
,p_name=>'P638_COSTO_ULTIMO_US'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Costo Ultimo Us'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213411947709056235)
,p_name=>'P638_COSTO_PROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Costo Promedio GS'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213412005091056236)
,p_name=>'P638_COSTO_ULTIMO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Costo Ultimo GS'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213412114576056237)
,p_name=>'P638_PRECIO_BASE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Precio Base'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213412298185056238)
,p_name=>'P638_PRECIO_BASE1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Precio Base'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213412397536056239)
,p_name=>'P638_PRECIO_IVA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Precio IVA'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213412448867056240)
,p_name=>'P638_PRECIO_IVA1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Precio IVA '
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213412524475056241)
,p_name=>'P638_DESC_MONEDA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>unistr('Descripci\00F3n Moneda')
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
 p_id=>wwv_flow_imp.id(213413203793056248)
,p_name=>'P638_DESC_FAMILIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_prompt=>unistr('Descripci\00F3n Familia')
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
 p_id=>wwv_flow_imp.id(216970893543475816)
,p_name=>'P638_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(216970742801475815)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216972223737475830)
,p_name=>'P638_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(216970742801475815)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216973541036475843)
,p_name=>'P638_COD_MONEDA_BASE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216973696676475844)
,p_name=>'P638_SUM_BLOQUEO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216973799452475845)
,p_name=>'P638_SUM_DISPON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_prompt=>'Suma Disponible'
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
 p_id=>wwv_flow_imp.id(216973811086475846)
,p_name=>'P638_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217078941736856403)
,p_name=>'P638_DESC_CATEGORIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(213410033068056216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217079050342856404)
,p_name=>'P638_DESC_SUCURSAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217079188881856405)
,p_name=>'P638_COD_SUCURSAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(213413191164056247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213413383431056249)
,p_name=>'DA_CORTO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213413426202056250)
,p_event_id=>wwv_flow_imp.id(213413383431056249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_ART_CORTO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion, cod_articulo',
'      into :P638_DESC_ARTICULO,:P638_COD_ARTICULO',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_art_corto = :P638_COD_ART_CORTO;',
'  exception',
'    when no_data_found then',
'      :P638_DESC_ARTICULO := null;',
'      :P638_COD_ART_CORTO := null;',
'    when others then',
'    :P638_DESC_ARTICULO := null;',
'    :P638_COD_ART_CORTO := null;',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'',
'END IF;'))
,p_attribute_02=>'P638_COD_ART_CORTO'
,p_attribute_03=>'P638_COD_ARTICULO,P638_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216969342877475801)
,p_event_id=>wwv_flow_imp.id(213413383431056249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_ART_CORTO IS NOT NULL THEN',
'  BEGIN',
'    select cod_rubro,cod_familia,cod_linea,cod_marca,cod_iva,cod_categoria,cod_proveedor_dflt',
'',
'      into :P638_COD_RUBRO,:P638_COD_FAMILIA,:P638_COD_LINEA,:P638_COD_MARCA,:P638_COD_IVA,:P638_COD_CATEGORIA,',
'            :P638_COD_PROVEEDOR_DFLT',
'      from st_articulos',
'      ',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_art_corto = :P638_COD_ART_CORTO;',
'  exception',
'    when others then',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'',
'END IF;'))
,p_attribute_02=>'P638_COD_ART_CORTO'
,p_attribute_03=>'P638_COD_RUBRO,P638_COD_FAMILIA,P638_COD_LINEA,P638_COD_MARCA,P638_COD_IVA,P638_COD_CATEGORIA, P638_COD_PROVEEDOR_DFLT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217079559391856409)
,p_event_id=>wwv_flow_imp.id(213413383431056249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_ART_CORTO IS NOT NULL THEN',
'  BEGIN',
'    select costo_prom_us,costo_prom,costo_ultimo_us,costo_ultimo,precio_base,cod_moneda_base',
'',
'      into :P638_costo_prom_us,:P638_COSTO_PROM,:P638_COSTO_ULTIMO_US,:P638_COSTO_ULTIMO,:P638_PRECIO_BASE,:P638_COD_MONEDA_BASE',
'           ',
'      from st_articulos',
'      ',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_art_corto = :P638_COD_ART_CORTO;',
'',
'  exception',
'    when others then',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'',
'END IF;'))
,p_attribute_02=>'P638_COD_ART_CORTO'
,p_attribute_03=>'P638_COSTO_PROM_US,P638_COSTO_ULTIMO_US,P638_PRECIO_BASE,P638_COD_MONEDA_BASE,P638_COSTO_PROM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216971026202475818)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216970917175475817)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971232226475820)
,p_event_id=>wwv_flow_imp.id(216971026202475818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P638_AUX := 1;',
'END;'))
,p_attribute_03=>'P638_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971114863475819)
,p_event_id=>wwv_flow_imp.id(216971026202475818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216969457320475802)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P638_AUX'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971391562475821)
,p_event_id=>wwv_flow_imp.id(216971026202475818)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216969457320475802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216971569894475823)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216971469431475822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971637206475824)
,p_event_id=>wwv_flow_imp.id(216971569894475823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971701928475825)
,p_event_id=>wwv_flow_imp.id(216971569894475823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P638_COD_ART_CORTO := null;',
':P638_COD_ARTICULO := null;',
':P638_DESC_ARTICULO := null;',
':P638_COD_RUBRO := null;',
':P638_DESC_RUBRO := null;',
':P638_COD_FAMILIA := null;',
':P638_DESC_FAMILIA := null;',
':P638_COD_CATEGORIA := null;',
':P638_DESC_CATEGORIA := null;',
':P638_COD_LINEA := null;',
':P638_DESC_LINEA := null;',
':P638_COD_MARCA := null;',
':P638_DESC_MARCA := null;',
':P638_COD_PROVEEDOR_DFLT := null;',
':P638_DESC_PROVEEDOR := null;',
':P638_COD_IVA := null;',
':P638_AUX := 0;'))
,p_attribute_03=>'P638_COD_ART_CORTO,P638_COD_ARTICULO,P638_DESC_ARTICULO,P638_COD_RUBRO,P638_DESC_RUBRO,P638_COD_FAMILIA,P638_DESC_FAMILIA,P638_COD_CATEGORIA,P638_COD_LINEA,P638_DESC_LINEA,P638_COD_MARCA,P638_DESC_MARCA,P638_COD_PROVEEDOR_DFLT,P638_DESC_PROVEEDOR,P63'
||'8_COD_IVA,P638_AUX'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971804235475826)
,p_event_id=>wwv_flow_imp.id(216971569894475823)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216969457320475802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216971954963475827)
,p_event_id=>wwv_flow_imp.id(216971569894475823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216969457320475802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216972049828475828)
,p_name=>'DA_CATEGORIA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216972134761475829)
,p_event_id=>wwv_flow_imp.id(216972049828475828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_FAMILIA IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P638_DESC_FAMILIA',
'      from st_familia',
'     where cod_familia = :P638_COD_FAMILIA',
'     AND cod_empresa = :P_COD_EMPRESA;',
'  EXCEPTION',
'    when no_data_found then',
'      :P638_DESC_FAMILIA := NULL;',
unistr('      :P638_MSG := ''No se encuentra c\00F3digo de familia.'';'),
'    when others then',
'      :P638_DESC_FAMILIA := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Familia ''||sqlerrm);',
'  END;',
'ELSE',
'  :P638_DESC_FAMILIA := NULL;',
'END IF;'))
,p_attribute_02=>'P638_COD_FAMILIA'
,p_attribute_03=>'P638_DESC_FAMILIA,P638_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216972341436475831)
,p_name=>'DA_PROVEEDOR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_PROVEEDOR_DFLT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216972428102475832)
,p_event_id=>wwv_flow_imp.id(216972341436475831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P638_COD_PROVEEDOR_DFLT is not null then',
'BEGIN',
'  select ltrim(pe.nombre)',
'    into :P638_DESC_PROVEEDOR',
'    from personas pe, cm_proveedores pr ',
'   where pr.cod_empresa   = :P_COD_EMPRESA',
'     and pr.cod_proveedor = :P638_COD_PROVEEDOR_DFLT',
'     and pr.cod_persona   = pe.cod_persona;',
'EXCEPTION',
'  when no_data_found then',
'    :P638_DESC_PROVEEDOR:= null;',
unistr('    :P638_MSG := ''No se encuentra el c\00F3digo del proveedor en la tabla de Proveedores.'';'),
'	',
'  when others then',
'    :P638_DESC_PROVEEDOR := null;	',
'    APEX_DEBUG.ERROR(''Error en la tabla Personas/Proveedores ''||sqlerrm);',
'',
'END;',
'',
'end if ;'))
,p_attribute_02=>'P638_COD_PROVEEDOR_DFLT'
,p_attribute_03=>'P638_DESC_PROVEEDOR,P638_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216972508563475833)
,p_name=>'DA_RUBRO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216972635616475834)
,p_event_id=>wwv_flow_imp.id(216972508563475833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_RUBRO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P638_DESC_RUBRO',
'      from st_rubro',
'     where cod_empresa = :P_COD_EMPRESA ',
'       and cod_rubro = :P638_COD_RUBRO;',
'  EXCEPTION',
'    when no_data_found then',
'      :P638_DESC_RUBRO := NULL;',
unistr('      :P638_MSG := ''No se encuentra c\00F3digo de rubro.'';'),
'',
'    when others then',
'      :P638_DESC_RUBRO := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Familia ''||sqlerrm);',
'',
'  END;',
'ELSE',
'  :P638_DESC_RUBRO := NULL;',
'END IF;'))
,p_attribute_02=>'P638_COD_RUBRO'
,p_attribute_03=>'P638_DESC_RUBRO,P638_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216972756217475835)
,p_name=>'DA_FAMILIA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216972853338475836)
,p_event_id=>wwv_flow_imp.id(216972756217475835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_FAMILIA IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P638_DESC_FAMILIA',
'      from st_familia',
'     where cod_familia = :P638_COD_FAMILIA',
'     and cod_empresa = :P_COD_EMPRESA;',
'  EXCEPTION',
'    when no_data_found then',
'      :P638_DESC_FAMILIA := NULL;',
unistr('      :P638_MSG := ''No se encuentra c\00F3digo de familia.'';'),
'    when others then',
'      :P638_DESC_FAMILIA := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Familia ''||sqlerrm);',
'',
'  END;',
'ELSE',
'  :P638_DESC_FAMILIA := NULL;',
'END IF;'))
,p_attribute_02=>'P638_COD_FAMILIA'
,p_attribute_03=>'P638_DESC_FAMILIA,P638_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216972911413475837)
,p_name=>'DA_COD_LINEA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_LINEA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216973015960475838)
,p_event_id=>wwv_flow_imp.id(216972911413475837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P638_COD_LINEA IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P638_DESC_LINEA',
'      from st_linea',
'     where cod_linea = :P638_COD_LINEA',
'     and cod_empresa = :P_COD_EMPRESA;',
'  EXCEPTION',
'    when no_data_found then',
'      :P638_DESC_LINEA := NULL;',
unistr('      :P638_MSG := ''No se encuentra c\00F3digo de linea.'';'),
'    when others then',
'      :p638_DESC_LINEA := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de linea ''||sqlerrm);',
'  END;',
'END IF;'))
,p_attribute_02=>'P638_COD_LINEA'
,p_attribute_03=>'P638_DESC_LINEA,P638_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216973160013475839)
,p_name=>'DA_MARCA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216973298831475840)
,p_event_id=>wwv_flow_imp.id(216973160013475839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select descripcion',
'      into :P638_DESC_MARCA',
'      from st_marcas',
'     where cod_marca = :P638_COD_MARCA;',
'exception',
'    when others then',
'      :P638_DESC_MARCA := NULL;',
'end ;'))
,p_attribute_02=>'P638_COD_MARCA'
,p_attribute_03=>'P638_DESC_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216973346727475841)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216973462577475842)
,p_event_id=>wwv_flow_imp.id(216973346727475841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P615_COD_ARTICULO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P615_DESC_ARTICULO',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_articulo = :P615_COD_ARTICULO;',
'  exception',
'    when no_data_found then',
'      :P615_DESC_ARTICULO := null;',
'    when others then',
'      :P615_DESC_ARTICULO := null;',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'ELSE',
'  :P615_DESC_ARTICULO := NULL ;',
'END IF;',
''))
,p_attribute_02=>'P638_COD_ARTICULO'
,p_attribute_03=>'P638_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217078827073856402)
,p_event_id=>wwv_flow_imp.id(216973346727475841)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select sum( nvl( cant_bloqueo, 0 ) ), sum( nvl( cant_dispon, 0 ) )',
'      into :P638_SUM_BLOQUEO, :P638_SUM_DISPON',
'      from st_existencia_art',
'      where cod_empresa  = :P_COD_EMPRESA',
'        and cod_articulo = :P638_COD_ARTICULO ;',
'exception',
'   when others then',
'      :P638_SUM_BLOQUEO := 0 ;',
'      :P638_SUM_DISPON  := 0 ;',
'end ;'))
,p_attribute_02=>'P638_COD_ARTICULO'
,p_attribute_03=>'P638_SUM_BLOQUEO,P638_SUM_DISPON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216973936851475847)
,p_name=>'DA_COD_MONEDA'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_MONEDA_BASE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216974082934475848)
,p_event_id=>wwv_flow_imp.id(216973936851475847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select descripcion',
'    into :P638_DESC_MONEDA',
'    from monedas',
'   where cod_moneda = :P638_COD_MONEDA_BASE ;',
'exception',
'  when others then',
'    :P638_DESC_MONEDA := NULL;',
'end ;'))
,p_attribute_02=>'P638_COD_MONEDA_BASE'
,p_attribute_03=>'P638_DESC_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217078756915856401)
,p_event_id=>wwv_flow_imp.id(216973936851475847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	vtip_cam number(6,2);',
'begin',
'	begin',
'	 select Tipo_cambio_credito ',
'	 into vtip_cam',
'	 from monedas',
'	 where cod_moneda = ''2'';',
'',
'	exception',
'	 when others then',
'	  vtip_cam := 0;',
'	end;',
' IF  :P638_COD_MONEDA_BASE is not null then',
'	IF :P638_COD_MONEDA_BASE = ''1'' then',
'		:P638_PRECIO_BASE1 := nvl( :P638_PRECIO_BASE,0);',
'		:P638_PRECIO_IVA1 := nvl(:P638_PRECIO_IVA,0);',
'	else',
'	:P638_PRECIO_BASE1 := nvl((:P638_PRECIO_BASE * vtip_cam ),0);',
'	:P638_PRECIO_IVA1 := nvl((:P638_PRECIO_IVA * vtip_cam ),0);',
'',
'	--	 mensaje_ex(	:b_cabecera.precio_iva||''*''||vtip_cam);',
'		---CAMBIADO 23/10/2008 SALIA MAL EN GUARANIES',
'		---:P638_PRECIO_BASE1 := round((:P638_PRECIO_BASE * vtip_cam / 100),2);',
'----	:P638_PRECIO_IVA1 := round ((:b_cabecera.precio_iva * vtip_cam / 100),2);',
'	end if;',
' ELSE',
'   :P638_PRECIO_BASE1 := 0;',
'   	:P638_PRECIO_IVA1 := 0;',
' end if ;',
'end;',
''))
,p_attribute_02=>'P638_COD_MONEDA_BASE,P638_PRECIO_BASE,P638_PRECIO_IVA'
,p_attribute_03=>'P638_PRECIO_BASE1,P638_PRECIO_IVA1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216974123199475849)
,p_name=>'DA_COD_IVA'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216974287474475850)
,p_event_id=>wwv_flow_imp.id(216974123199475849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  vporc_iva number(6,2);',
'begin',
'  begin',
'    select porc_iva_compra',
'    into vporc_iva',
'    from st_iva',
'    where cod_iva = :P638_COD_IVA;',
'  exception',
'    when others then',
'      vporc_iva := 0;',
'  end;',
'  --:b_cabecera.precio_iva :=nvl (nvl((:P638_PRECIO_BASE + :P638_PRECIO_BASE * vporc_iva / 100),2),0);',
'  :P638_PRECIO_IVA := round((:P638_PRECIO_BASE + :P638_PRECIO_BASE * vporc_iva / 100),2);',
'  ',
'end;'))
,p_attribute_02=>'P638_COD_IVA,P638_PRECIO_BASE'
,p_attribute_03=>'P638_PRECIO_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217079324754856407)
,p_name=>'DA_COD_SUCURSAL'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217079446116856408)
,p_event_id=>wwv_flow_imp.id(217079324754856407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select descripcion ',
'      into :P638_DESC_SUCURSAL',
'      from sucursales',
'      where cod_empresa  = :P_COD_EMPRESA',
'        and cod_sucursal = :P638_COD_SUCURSAL ;',
'end;'))
,p_attribute_02=>'P638_COD_SUCURSAL'
,p_attribute_03=>'P638_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217079872018856412)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217079943495856413)
,p_event_id=>wwv_flow_imp.id(217079872018856412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216969457320475802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217080292345856416)
,p_name=>'DA_DETALLE'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P638_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217080338228856417)
,p_event_id=>wwv_flow_imp.id(217080292345856416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' --- QUERY DESCRIPCION SUCURSAL -- ',
'begin',
'   select descripcion ',
'      into :P638_DESC_SUCURSAL',
'      from sucursales',
'      where cod_empresa  = :P_COD_EMPRESA',
'        and cod_sucursal = :P638_AUX_SUCURSAL ;',
'end;'))
,p_attribute_02=>'P638_AUX_SUCURSAL'
,p_attribute_03=>'P638_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(217079665855856410)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P638_COD_ART_CORTO := NULL;',
':P638_COD_ARTICULO := NULL;',
':P638_DESC_ARTICULO := NULL;',
':P638_COD_RUBRO := NULL;',
':P638_DESC_RUBRO := NULL;',
':P638_COD_FAMILIA := NULL;',
':P638_COD_CATEGORIA := NULL;',
':P638_DESC_CATEGORIA := NULL;',
':P638_DESC_FAMILIA := NULL;',
':P638_COD_LINEA := NULL;',
':P638_DESC_LINEA := NULL;',
':P638_COD_MARCA := NULL;',
':P638_DESC_MARCA := NULL;',
':P638_COD_PROVEEDOR_DFLT := NULL;',
':P638_DESC_PROVEEDOR := NULL;',
':P638_COD_IVA := NULL;',
'',
'---- ITEMS REPORTE --- ',
':P638_COSTO_PROM_US := NULL;',
':P638_COSTO_PROM := NULL;',
':P638_COSTO_ULTIMO_US := NULL;',
':P638_COSTO_ULTIMO := NULL;',
':P638_PRECIO_BASE := NULL;',
':P638_PRECIO_BASE1 := NULL;',
':P638_PRECIO_IVA := NULL;',
':P638_PRECIO_IVA1 := NULL;',
':P638_DESC_MONEDA := NULL;',
':P638_SUM_DISPON := NULL;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(217079707297856411)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT1'
,p_process_sql_clob=>':P638_AUX := 0;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
