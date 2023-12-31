prompt --application/pages/page_00283
begin
--   Manifest
--     PAGE: 00283
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
 p_id=>283
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVENTVAL'
,p_alias=>'FVENTVAL'
,p_step_title=>'Registo de Entrega de Vales'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230725155040'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133809555269222826)
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
 p_id=>wwv_flow_imp.id(133810733383222838)
,p_plug_name=>'Registo de Entrega de Vales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133811002042222840)
,p_plug_name=>'Aranceles'
,p_parent_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COD_EMPRESA,',
'       REG_ID,',
'       TIPO,',
'       COD_PROVEEDOR,',
'       IMPORTE,',
'       FEC_RECEPCION,',
'       FECHA_VENCIMIENTO,',
'       ESTADO,',
'       FEC_ALTA,',
'       COD_VENDEDOR_DISTRIBUIDOR,',
'       COD_USUARIO,',
'       FECHA_ENTREGA,',
'       USUARIO_ENTREGA,',
'',
'       (select   (select cc.cod_cliente||''-''||p2.nombre',
'       from cc_clientes cc, personas p2 where cc.cod_empresa=v.cod_empresa and cc.cod_cliente=v.cod_distribuidor and cc.cod_persona=p2.cod_persona)distribuidor',
'  from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
' where v.cod_empresa =  z.cod_empresa',
'   and v.cod_persona = p.cod_persona',
'   and  NVL(ACTIVO,''A'') <> ''I''',
'   and I.COD_PERSONA = P.COD_PERSONA',
'   and z.COD_VENDEDOR_DISTRIBUIDOR=v.cod_vendedor',
'   and I.COD_IDENT IN (''CI'',''RUC''))distribuidor',
'',
'',
'',
'  FROM INV.fv_REGISTRO_vales_combustibles z',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
' ',
'   AND (COD_PROVEEDOR = :P283_COD_PROVEEDOR OR :P283_COD_PROVEEDOR IS NULL)',
'   AND (TIPO = :P283_TIPO OR :P283_TIPO IS NULL )',
'   AND (FEC_RECEPCION = :P283_FEC_RECEPCION OR :P283_FEC_RECEPCION IS NULL)',
'   AND (FECHA_VENCIMIENTO = :P283_FECHA_VENCIMIENTO OR :P283_FECHA_VENCIMIENTO IS NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P283_COD_PROVEEDOR,P283_TIPO,P283_FEC_RECEPCIONP283_FECHA_VENCIMIENTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Aranceles'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68335148229433248)
,p_name=>'COD_VENDEDOR_DISTRIBUIDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_VENDEDOR_DISTRIBUIDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Vendedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>10
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(69402833638611966)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68335299578433249)
,p_name=>'FECHA_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ENTREGA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Entrega'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68335327758433250)
,p_name=>'USUARIO_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USUARIO_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Usuario Entrega'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137618774989284517)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P283_COD_EMPRESA'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137618903236284518)
,p_name=>'REG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro. Vale'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137618980524284519)
,p_name=>'TIPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Tipo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>true
,p_max_length=>200
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(68197036483176971)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Seleccione -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137619089813284520)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(68219291617250118)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Seleccione - '
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137619153200284521)
,p_name=>'IMPORTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPORTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Importe'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137619225985284522)
,p_name=>'FEC_RECEPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_RECEPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>unistr('Fecha Recepci\00F3n')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137619541912284525)
,p_name=>'FECHA_VENCIMIENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_VENCIMIENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Vencimiento'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137619717488284527)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'''N'''
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620422964284534)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620548688284535)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137621501156284544)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137621886563284548)
,p_name=>'FEC_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_ALTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Alta'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137621920915284549)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>300
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(183047714980013038)
,p_name=>'DISTRIBUIDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISTRIBUIDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Distribuidor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(137618644696284516)
,p_internal_uid=>137618644696284516
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(137634086067309077)
,p_interactive_grid_id=>wwv_flow_imp.id(137618644696284516)
,p_static_id=>'683463'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(137634257265309077)
,p_report_id=>wwv_flow_imp.id(137634086067309077)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69325774830918448)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(68335148229433248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69326661711918450)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(68335299578433249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69327552183918452)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(68335327758433250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69366361012036317)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(137621501156284544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69401982093341115)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(137621886563284548)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69403353567341117)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(137621920915284549)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137635416844309080)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(137618774989284517)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137636219736309084)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(137618903236284518)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137637206913309086)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(137618980524284519)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137638051196309088)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(137619089813284520)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137638932180309090)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(137619153200284521)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137639821761309091)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(137619225985284522)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137640721727309093)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(137619541912284525)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137641644303309094)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(137619717488284527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>217
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137696554894429034)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(137620422964284534)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185091982624054139)
,p_view_id=>wwv_flow_imp.id(137634257265309077)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(183047714980013038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133813067534222861)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COD_EMPRESA,',
'       REG_ID,',
'       OBSERVACION,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       USUARIO_ENTREGA,',
'       FECHA_ENTREGA',
'  FROM INV.fv_REGISTRO_vales_combustibles',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND (COD_PROVEEDOR = :P283_COD_PROVEEDOR OR :P283_COD_PROVEEDOR IS NULL)',
'   AND (TIPO = :P283_TIPO OR :P283_TIPO IS NULL )',
'   AND (FEC_RECEPCION = :P283_FEC_RECEPCION OR :P283_FEC_RECEPCION IS NULL)',
'   AND (FECHA_VENCIMIENTO = :P283_FECHA_VENCIMIENTO OR :P283_FECHA_VENCIMIENTO IS NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(133811002042222840)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69494307428710402)
,p_name=>'USUARIO_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USUARIO_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Usuario Entrega'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69494483992710403)
,p_name=>'FECHA_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ENTREGA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Fecha Entrega'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620003873284529)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Observaci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620049110284530)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620267166284532)
,p_name=>'REG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(137618903236284518)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620405378284533)
,p_name=>'FEC_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_ALTA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Fecha de Carga'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620808498284537)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137620838990284538)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137621025643284540)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(137618774989284517)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137621517564284545)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(137619833893284528)
,p_internal_uid=>137619833893284528
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos.'
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(137634774566309078)
,p_interactive_grid_id=>wwv_flow_imp.id(137619833893284528)
,p_static_id=>'683470'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(137635005524309078)
,p_report_id=>wwv_flow_imp.id(137634774566309078)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69574763683963006)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(69494307428710402)
,p_is_visible=>true
,p_is_frozen=>false
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69576150243963009)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(69494483992710403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137642534327309096)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(137620003873284529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137643415976309098)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(137620049110284530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137644362162309099)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(137620267166284532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137645278771309101)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(137620405378284533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137698315039429038)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(137620808498284537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137707613225436665)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(137621025643284540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138340850565574852)
,p_view_id=>wwv_flow_imp.id(137635005524309078)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(137621517564284545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69293175965851316)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69292746739851316)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69288484384851313)
,p_name=>'P283_COD_PAIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69288840678851314)
,p_name=>'P283_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69289254235851314)
,p_name=>'P283_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69289638226851314)
,p_name=>'P283_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69290095424851314)
,p_name=>'P283_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69290489331851314)
,p_name=>'P283_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69290866858851314)
,p_name=>'P283_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69291269876851315)
,p_name=>'P283_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69291628999851315)
,p_name=>'P283_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69292035438851315)
,p_name=>'P283_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133809555269222826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69293521062851316)
,p_name=>'P283_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPO'
,p_lov=>'.'||wwv_flow_imp.id(68197036483176971)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69293974095851316)
,p_name=>'P283_COD_PROVEEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_FVVALCOM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) nombre,',
'       v.cod_proveedor, ',
'       v.cod_rubro ',
'  from INV.personas p, ',
'       INV.cm_proveedores v',
' where v.cod_empresa = :P_COD_EMPRESA ',
'   and v.cod_persona = p.cod_persona',
'   and nvl(estado,''A'') = ''A'' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Buscar proveedor'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69294361924851316)
,p_name=>'P283_FEC_RECEPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_prompt=>unistr('Fecha de Recepci\00F3n')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(69294789626851317)
,p_name=>'P283_FECHA_VENCIMIENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133810733383222838)
,p_prompt=>'Fecha de Venc.'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(69494299405710401)
,p_tabular_form_region_id=>wwv_flow_imp.id(133811002042222840)
,p_validation_name=>'VA_VEND'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :COD_VENDEDOR_DISTRIBUIDOR IS NOT NULL AND NVL(:ESTADO,''N'') <> ''S'' THEN',
'    RETURN (''Debe tildar retirado para poder guardar'');',
'END IF;',
'',
'IF :COD_VENDEDOR_DISTRIBUIDOR IS NULL AND NVL(:ESTADO,''N'') = ''S'' THEN',
'    RETURN (''Debe seleccionar un vendedor para dar como retirado el vale'');',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'COD_VENDEDOR_DISTRIBUIDOR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69308099400851332)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69293175965851316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69308502171851333)
,p_event_id=>wwv_flow_imp.id(69308099400851332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133811002042222840)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69308945737851333)
,p_name=>'DA_REFRESH_MASTER'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133811002042222840)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69309467908851333)
,p_event_id=>wwv_flow_imp.id(69308945737851333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133811002042222840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69309993505851333)
,p_event_id=>wwv_flow_imp.id(69308945737851333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133813067534222861)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69307136695851332)
,p_name=>'DA_ASIGNAR_ESTADO'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133811002042222840)
,p_triggering_element=>'ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69307609891851332)
,p_event_id=>wwv_flow_imp.id(69307136695851332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :ESTADO IS NULL THEN',
'    :ESTADO := ''N'';',
'END IF;'))
,p_attribute_02=>'ESTADO'
,p_attribute_03=>'ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69310381929851333)
,p_name=>'DA_REFRESH_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133813067534222861)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69311354263851334)
,p_event_id=>wwv_flow_imp.id(69310381929851333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133811002042222840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69310872161851334)
,p_event_id=>wwv_flow_imp.id(69310381929851333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133813067534222861)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68334930512433246)
,p_name=>'DA_DATOS'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133811002042222840)
,p_triggering_element=>'ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68335031608433247)
,p_event_id=>wwv_flow_imp.id(68334930512433246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :ESTADO = ''S'' THEN',
'    :USUARIO_ENTREGA := :APP_USER;',
'    :FECHA_ENTREGA := SYSDATE;',
'ELSE',
'    :USUARIO_ENTREGA := NULL;',
'    :FECHA_ENTREGA := NULL;',
'END IF;'))
,p_attribute_02=>'ESTADO'
,p_attribute_03=>'USUARIO_ENTREGA,FECHA_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69305979800851328)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133811002042222840)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Aranceles - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C'' THEN',
'            INSERT INTO INV.FV_REGISTRO_VALES_COMBUSTIBLES(COD_EMPRESA,',
'                                                           REG_ID,',
'                                                           TIPO,',
'                                                           COD_PROVEEDOR,',
'                                                           IMPORTE,',
'                                                           FEC_RECEPCION,',
'                                                           FEC_ALTA,',
'                                                           COD_USUARIO,',
'                                                           FECHA_VENCIMIENTO,',
'                                                           ESTADO,',
'                                                           COD_VENDEDOR_DISTRIBUIDOR,',
'                                                           USUARIO_ENTREGA,',
'                                                           FECHA_ENTREGA)',
'                                                    VALUES(:P283_COD_EMPRESA,',
'                                                           :REG_ID,',
'                                                           :TIPO,',
'                                                           :COD_PROVEEDOR,',
'                                                           :IMPORTE,',
'                                                           SYSDATE,',
'                                                           SYSDATE,',
'                                                           :APP_USER,',
'                                                           :FECHA_VENCIMIENTO,',
'                                                           :ESTADO,',
'                                                           :COD_VENDEDOR_DISTRIBUIDOR,',
'                                                           :APP_USER,',
'                                                           SYSDATE)',
'        RETURNING ROWID INTO :ROWID;',
'    WHEN ''U'' THEN',
'        ',
'        UPDATE INV.FV_REGISTRO_VALES_COMBUSTIBLES',
'           SET REG_ID = :REG_ID,',
'               TIPO = :TIPO,',
'               COD_PROVEEDOR = :COD_PROVEEDOR,',
'               IMPORTE = :IMPORTE,',
'               FEC_RECEPCION = :FEC_RECEPCION,',
'               FECHA_VENCIMIENTO = :FECHA_VENCIMIENTO,',
'               ESTADO = :ESTADO,',
'               USUARIO_ENTREGA = :USUARIO_ENTREGA,',
'               FECHA_ENTREGA = :FECHA_ENTREGA,',
'               COD_VENDEDOR_DISTRIBUIDOR = :COD_VENDEDOR_DISTRIBUIDOR',
'         WHERE ROWID = :ROWID;',
'    WHEN ''D'' THEN',
'        DELETE INV.FV_REGISTRO_VALES_COMBUSTIBLES',
'         WHERE ROWID = :ROWID;',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69292746739851316)
,p_process_success_message=>'Los cambios se guardaron correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69299319610851323)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133813067534222861)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Detalle - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'    WHEN ''U'' THEN',
'        UPDATE INV.FV_REGISTRO_VALES_COMBUSTIBLES',
'           SET OBSERVACION = :OBSERVACION,',
'               COD_USUARIO = :COD_USUARIO,',
'               FEC_ALTA = :FEC_ALTA,',
'               USUARIO_ENTREGA = :USUARIO_ENTREGA,',
'               FECHA_ENTREGA = :FECHA_ENTREGA,',
'               COD_VENDEDOR_DISTRIBUIDOR = :COD_VENDEDOR_DISTRIBUIDOR',
'         WHERE ROWID = :ROWID;',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69306727214851332)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69306371661851331)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE_FORM',
':P_COD_MODULO := ''FV'';',
'--INICIALIZA GLOBALES',
':P283_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P283_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P283_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P283_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P283_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P283_COD_MODULO := :P_COD_MODULO;',
'--INIICALIZA LOCALES',
'',
'--RUTINA INICIAL',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P283_COD_MODULO,',
'                               PI_COD_FORMA  => :P283_COD_FORMA,',
'                               PI_NOM_MODULO => :P283_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P283_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P283_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P283_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
