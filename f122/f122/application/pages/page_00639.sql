prompt --application/pages/page_00639
begin
--   Manifest
--     PAGE: 00639
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
 p_id=>639
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Encuesta '
,p_alias=>'ENCUESTA-CLIMA-LABORAL'
,p_step_title=>'Encuesta Clima Laboral'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function obtenerRegistrosSeleccionados(){',
'  var gridView = apex.region("PREGU").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'    records = gridView.getSelectedRecords(); // te deja todos los items seleccionados en un arreglo',
'    console.log(''records'', records);',
'    var id_umed = "";',
'   ',
'',
'',
'    // La variable acum guarda todos los items seleccionados separados por ":"',
'    for (let index = 0; index < records.length; index++) {',
'        if (index == 0) {',
'            id_umed += records[index][4];',
'           ',
'        }else{',
'           ',
'            id_umed += ":" + records[index][4];',
'           ',
'        }',
'    }',
'    apex.item(''P639_UMED0100_ID'').setValue(id_umed);',
'    apex.item(''P639_UMED0100_ID'').refresh();',
'    ',
'  } catch (e) {',
'    apex.item(''P639_UMED0100_ID'').setValue('''');',
'',
'  } finally{',
'    apex.server.process(''DUMMY'', { pageItems: ''#P639_UMED0100_ID''}, { dataType: "text" });  ',
'  }',
'}',
'',
'var arreglo     = [];',
'function validar_respuestas(){',
'    ',
'var widget      = apex.region(''PREGU'').widget();',
'var grid        = widget.interactiveGrid(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'arreglo     = [];',
'var i = 0;',
'var v_existe = ''NO'';',
' console.log("entre al js 1"); ',
'    ',
'model.forEach(function(r) {',
'    var record = r;',
'    arreglo[i] = record;',
'    i++;',
'',
'})',
'    ',
'    console.log(arreglo);    ',
'   ',
'    for (let index = 0; index < arreglo.length; index++) {',
'        if (arreglo[index][3].v == ""){',
'            v_existe = ''SI'';',
'        }             ',
'        console.log(v_existe);',
'        console.log("indice 0: "+arreglo[index][0]);',
'        console.log("indice 1: "+arreglo[index][1]);',
'    }',
'    if (v_existe == ''SI''){',
'        apex.item("P639_VALIDAR_RESP").setValue(''NO'');',
'    }else{',
'        apex.item("P639_VALIDAR_RESP").setValue(''SI'');',
'    }',
'        console.log(apex.item("P639_VALIDAR_RESP").getValue()); ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20231006085135'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217165562795637231)
,p_plug_name=>'Encuesta &P639_NOMBRE.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216426642684078323)
,p_plug_name=>'Encuesta Clima Laboral'
,p_region_name=>'PREGU'
,p_parent_plug_id=>wwv_flow_imp.id(217165562795637231)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:20px;    background: none;     border: none;     box-shadow: none;"'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c100.id id_encuesta,',
'       c120.clab0110$item grupo,',
'       c120.preg pregunta,',
'       c120.umed0100$id unidad_medida,',
'       c120.id id_pregunta,',
'       null list_value',
'from ngo$clab0120 c120,',
'     ngo$clab0100 c100',
'where c120.clab0100$id = c100.id',
'and c100.id = :P639_CLAB0100_ID',
'and c120.dm$acti = 1',
'and c100.dm$acti = 1',
'and ((c100.fhas is null and trunc(sysdate) >= c100.fdes) or trunc(sysdate) between c100.fdes and c100.fhas+1)',
'and c100.empr0100$id = :P_COD_EMPRESA',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P639_CLAB0100_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Encuesta Clima Laboral'
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
 p_id=>wwv_flow_imp.id(217164955684637225)
,p_name=>'ID_ENCUESTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ENCUESTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ID ENCUESTA'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(217165013632637226)
,p_name=>'GRUPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRUPO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GRUPO'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(217165151286637227)
,p_name=>'PREGUNTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREGUNTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Pregunta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(217165262115637228)
,p_name=>'UNIDAD_MEDIDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIDAD_MEDIDA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UNIDAD MEDIDA'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(217165361553637229)
,p_name=>'ID_PREGUNTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PREGUNTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ID PREGUNTA'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(217165431268637230)
,p_name=>'LIST_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIST_VALUE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'&nbsp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nomb,',
'       item ',
'from ngo$umed0110',
'where umed0100$id = :UNIDAD_MEDIDA'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'UNIDAD_MEDIDA'
,p_ajax_items_to_submit=>'UNIDAD_MEDIDA'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(217165650434637232)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(217165719209637233)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>90
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(217164868397637224)
,p_internal_uid=>217164868397637224
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(218000551246331658)
,p_interactive_grid_id=>wwv_flow_imp.id(217164868397637224)
,p_static_id=>'2180006'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(218000788399331657)
,p_report_id=>wwv_flow_imp.id(218000551246331658)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4223649980583)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(217165719209637233)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(218001273144331653)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(217164955684637225)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(218002124086331649)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(217165013632637226)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(218003098604331647)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(217165151286637227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(218003972769331645)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(217165262115637228)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(218004824727331643)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(217165361553637229)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(218005705897331642)
,p_view_id=>wwv_flow_imp.id(218000788399331657)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(217165431268637230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217162615626637202)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(217165562795637231)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217162707964637203)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(217165562795637231)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:640:&SESSION.::&DEBUG.:RP,640::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(217974415988966515)
,p_branch_name=>'DESPUES_DE_RESPONDER'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P639_AUX'
,p_branch_condition_text=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216426713988078324)
,p_name=>'P639_EXPERIENCIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216426853169078325)
,p_name=>'P639_EXPE_INGRESO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216426978804078326)
,p_name=>'P639_RECOMENDACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427074524078327)
,p_name=>'P639_DM_RECO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427100515078328)
,p_name=>'P639_RECO_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427222677078329)
,p_name=>'P639_CLAB0100_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427379305078330)
,p_name=>'P639_VALIDAR_RESP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427474363078331)
,p_name=>'P639_CLAB0200_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427528780078332)
,p_name=>'P639_UMED0100_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427615903078333)
,p_name=>'P639_NOMF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216427784042078334)
,p_name=>'P639_DM_TENC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217163576031637211)
,p_name=>'P639_ESTADO_ANIMO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217163642823637212)
,p_name=>'P639_PERTENENCIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217163774269637213)
,p_name=>'P639_TDES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217163989284637215)
,p_name=>'P639_ERR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217165927993637235)
,p_name=>'P639_NOMBRE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217166708261637243)
,p_name=>'P639_AUX'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(216426642684078323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(217166077918637236)
,p_tabular_form_region_id=>wwv_flow_imp.id(216426642684078323)
,p_validation_name=>'RESPUESTA NO NULA'
,p_validation_sequence=>10
,p_validation=>'LIST_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe responder esta pregunta'
,p_always_execute=>'Y'
,p_associated_column=>'LIST_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(217166199620637237)
,p_validation_name=>'VA_VALIDAR_RESPUESTAS'
,p_validation_sequence=>20
,p_validation=>'P639_VALIDAR_RESP'
,p_validation2=>'SI'
,p_validation_type=>'ITEM_IN_VALIDATION_EQ_STRING2'
,p_error_message=>unistr('\00A1A\00FAn hay preguntas sin responder!')
,p_associated_item=>wwv_flow_imp.id(216427379305078330)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217162931356637205)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(217162615626637202)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217163258334637208)
,p_event_id=>wwv_flow_imp.id(217162931356637205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validar_respuestas();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217166597366637241)
,p_event_id=>wwv_flow_imp.id(217162931356637205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00A1A\00FAn hay preguntas sin responder!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P639_VALIDAR_RESP'
,p_client_condition_expression=>'NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217166662313637242)
,p_event_id=>wwv_flow_imp.id(217162931356637205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_debug.error(''CLAB 200''||:P639_CLAB0200_ID);',
'apex_debug.error(''CLAB 100''||:P639_CLAB0100_ID);',
'apex_debug.error(''EMPLEADO''||:P_COD_EMPLEADO);',
'apex_debug.error(''DM TENC''||:P639_DM_TENC);'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217163364602637209)
,p_event_id=>wwv_flow_imp.id(217162931356637205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'bt_guardar'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P639_VALIDAR_RESP'
,p_client_condition_expression=>'SI'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217164063334637216)
,p_name=>'DA_ERR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P639_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217164125748637217)
,p_event_id=>wwv_flow_imp.id(217164063334637216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P639_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P639_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217164414924637220)
,p_name=>'DA_CAMBIO_SELECCION'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217164574352637221)
,p_event_id=>wwv_flow_imp.id(217164414924637220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionados();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217166240746637238)
,p_name=>'DA_GUARDAR_SESION'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P639_VALIDAR_RESP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217166388754637239)
,p_event_id=>wwv_flow_imp.id(217166240746637238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P639_VALIDAR_RESP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(217164633015637222)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P639_ESTADO_ANIMO := null;',
':P639_VALIDAR_RESP := null;',
':P639_PERTENENCIA := null;',
':P639_AUX:=null;',
'',
':P_COD_EMPLEADO := 752;',
'',
'/*begin',
'    select w100.nomf ',
'    into :P639_NOMF ',
'    from NGO$wsid0100 w100,',
'       --  NGO$empr0100 e100 ',
'    where w100.id = e100.wsid0100$id',
'    and   e100.id = :P_EMPR0100_ID;',
'exception',
'    when others then',
'        apex_debug.error(sqlerrm);',
'end;',
'*/',
'--obtener tipo encuesta',
'begin',
'    select dm$tenc ',
'    into  :P639_DM_TENC',
'    from   NGO$clab0100 ',
'    where id = :P639_CLAB0100_ID;',
'exception',
'    when others then',
'        apex_debug.error(sqlerrm);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(217974319666966514)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_ITEM_CLAB0300 NUMBER;',
'begin',
'',
':P639_AUX:=1;',
'',
':P639_ERR:=null;',
'select nvl(max(item)+1,1) into v_item_claB0300 from ngo$claB0300 where cola0100$id = :P_COD_EMPLEADO; -- ''ADIAZ'';',
'',
'--INSERTO EN LA TABLA DEL COLABORADOR PARA INDICAR QUE YA HIZO LA ENCUESTA',
'',
'',
'',
'',
'',
'INSERT INTO ngo$CLAB0300 (COLA0100$ID, ',
'              ITEM,',
'              CLAB0100$ID,',
'              FECH)',
'    VALUES   (:P_COD_EMPLEADO,',
'              V_ITEM_CLAB0300,',
'              :P639_CLAB0100_ID,',
'              SYSDATE);',
'',
'--INSERTO EN TABLA DE RESPUESTAS',
':P639_CLAB0200_ID := ngo$CLAB0200$SEQ.NEXTVAL;',
'IF :P639_DM_TENC = 3 THEN',
'INSERT INTO ngo$CLAB0200 (ID,',
'          CLAB0100$ID,',
'          EMPR0100$ID,',
'          COLA0100$ID)',
'   VALUES (:P639_CLAB0200_ID,',
'           :P639_CLAB0100_ID,',
'           :P_COD_EMPRESA,',
'           :P_COD_EMPLEADO);',
'ELSIF :P639_DM_TENC = 2 THEN',
'',
'INSERT INTO ngo$CLAB0200 (ID,',
'          CLAB0100$ID,',
'          EMPR0100$ID)',
'   VALUES (:P639_CLAB0200_ID,',
'           :P639_CLAB0100_ID,',
'           :P_COD_EMPRESA);',
'',
'END IF;',
'',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un Error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(217165844760637234)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(216426642684078323)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Encuesta Clima Laboral - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE    ',
'    V_ITEM NUMBER;',
' BEGIN   ',
'    --INSERTO LAS RESPUESTAS',
'            APEX_DEBUG.ERROR(''ENTRE'');',
'',
'    case :APEX$ROW_STATUS',
'    when ''U'' then',
'        APEX_DEBUG.ERROR(''AAAAAAAAAAAAAAAAAAAAAAAAAAAA'');',
'        SELECT NVL(MAX(ITEM)+1,1) INTO V_ITEM FROM NGO$CLAB0210 WHERE CLAB0200$ID = :P639_CLAB0200_ID;',
'        BEGIN',
'            INSERT INTO NGO$CLAB0210 (CLAB0200$ID,',
'                                ITEM,',
'                                CLAB0120$ID,',
'                                UMED0100$ID,',
'                                UMED0110$ITEM,',
'                                DM$ESSE,',
'                                DM$PERT)',
'                        VALUES   (:P639_CLAB0200_ID,',
'                                V_ITEM,',
'                                :ID_PREGUNTA,',
'                                :UNIDAD_MEDIDA,',
'                                :LIST_VALUE,',
'                                null,  --NO ES SENTIMIENTO',
'                                null); --NO ES PERTENENCIA',
'               APEX_DEBUG.ERROR(SQLERRM);',
'',
'        END;',
'    end case;    ',
'',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_error_message=>'Ha ocurrido un Error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\00A1Gracias por tus respuestas! ')
);
wwv_flow_imp.component_end;
end;
/
