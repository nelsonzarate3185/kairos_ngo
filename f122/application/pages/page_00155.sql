prompt --application/pages/page_00155
begin
--   Manifest
--     PAGE: 00155
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
 p_id=>155
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Relacion_Motivos_CRM'
,p_alias=>'RELACION-MOTIVOS-CRM'
,p_step_title=>'Relacion_Motivos_CRM'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*#rcampania, #rcanal, #rmotivo{    width: auto;',
'                                    padding-right: 1px;  ',
'                                    padding-left: 1px;}',
' */',
'#btn1,#btn2,#btn3,#btn4,#btn5 {',
'     ',
'    background: darkblue;',
'    background-image: linear-gradient(180deg, darkblue  0%, #003a85 100%);',
'    color: #FFED00; ',
'    border-radius: 0.5rem;',
'    border-style: solid;',
'    border-width: 0.5px;',
'    border-color:  darkblue;',
'    ',
'    box-shadow: #6585af 1px 1px 5px 1px;/* 0 1px 0 inset;*/',
'    ',
'}',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'    ',
'body .ui-dialog .ui-dialog-titlebar {',
'    background: #003a85;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    ',
'    font-weight: bold !important;',
'}',
'.ui-dialog-title, .t-Report-colHead{color: #ffee00e4!important;  }',
'',
' .a-IRR-header, .t-Report-colHead{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink ,#nreg {',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td ,.t-Report-report tr { ',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'.t-Report-report tr .t-Report-cell:last-child, .t-Report-cell{ ',
'    border: 1px solid #003a85b7 !important;',
'    color: black !important;',
'    background: white !important;',
'}',
'',
'',
'.t-Report-cell> a {',
'    color: black;',
'}'))
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230911150608'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47075465004186007)
,p_plug_name=>'Nuevo Registro'
,p_region_name=>'nreg'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'u-color-43'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47581209402656733)
,p_plug_name=>'Opciones'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47579074620656712)
,p_plug_name=>unistr('Campa\00F1a/Canal/Motivo')
,p_parent_plug_id=>wwv_flow_imp.id(47581209402656733)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CRM.ROWID,',
'    CRM.COD_CAMPANIA as "CAMPANHA",',
'    CRM.COD_CANAL as CANAL,',
'    CRM.COD_MOTIVO as MOTIVO     ',
' from CRM_CAM_CAN_MOT CRM',
' where CRM.COD_EMPRESA=''1''',
' order by 2,3,4'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Campa\00F1a/Canal/Motivo')
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
 p_id=>wwv_flow_imp.id(47579808780656719)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>47579808780656719
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24162082784073005)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.::P154_ROWID:\#ROWID#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23431126828756746)
,p_db_column_name=>'CAMPANHA'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>unistr('Campa\00F1a')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(24153684296067950)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24161260593073004)
,p_db_column_name=>'CANAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Canal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24161637795073004)
,p_db_column_name=>'MOTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Motivo'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(24176818846073012)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46643488190475295)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'224851'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:CAMPANHA:MOTIVO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47581045586656732)
,p_plug_name=>'Detalles Relacion'
,p_parent_plug_id=>wwv_flow_imp.id(47581209402656733)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(47580885427656730)
,p_name=>unistr('Campa\00F1a')
,p_region_name=>'rcampania'
,p_parent_plug_id=>wwv_flow_imp.id(47581045586656732)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs:margin-left-sm:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CAMPANIA',
'FROM CRM_CAMPANIA',
'where activo=''S''',
'ORDER BY DESCRIPCION  ASC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.set_region_column_width(
 p_id=>wwv_flow_imp.id(47580885427656730)
,p_plug_column_width=>'style="width:auto; border-color: red"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24164900972073006)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>10
,p_column_heading=>unistr('<span>CAMPA\00D1A <button  type="button"  id="btn" onclick="$s(''P155_TABLA'',''CAMPANIA'')" class="fa fa-plus " style="font-size:12px;"></button></span>')
,p_use_as_row_header=>'N'
,p_column_css_class=>' '
,p_column_link=>'javascript:apex.item(''P155_COD_CAMPANIA'').setValue(#COD_CAMPANIA#)'
,p_column_linktext=>'#DESCRIPCION#'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24165310382073007)
,p_query_column_id=>2
,p_column_alias=>'COD_CAMPANIA'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(47581265963656734)
,p_name=>'Motivos'
,p_region_name=>'rmotivo'
,p_parent_plug_id=>wwv_flow_imp.id(47581045586656732)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-right-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPCION, M.COD_MOTIVO',
'FROM CRM_MOTIVO M,',
'     CRM_CAM_CAN_MOT D',
'WHERE D.COD_CAMPANIA = :P155_COD_CAMPANIA ',
'AND   D.COD_EMPRESA=''1''',
'AND   D.COD_EMPRESA=M.COD_EMPRESA',
'AND   D.COD_MOTIVO=M.COD_MOTIVO',
'and   M.ACTIVO=''S''',
'ORDER BY M.DESCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P155_COD_CAMPANIA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.set_region_column_width(
 p_id=>wwv_flow_imp.id(47581265963656734)
,p_plug_column_width=>'style="width:auto;"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24167931901073008)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>10
,p_column_heading=>'<span>MOTIVOS <button type="button" id="btn" onclick="$s(''P155_TABLA'',''MOTIVO'')" class="fa fa-plus" style="font-size:12px;"></button></span>'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24168332884073008)
,p_query_column_id=>2
,p_column_alias=>'COD_MOTIVO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24159014653073001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47075465004186007)
,p_button_name=>'Confirmar'
,p_button_static_id=>'btn5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padRight:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24163911648073006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47579074620656712)
,p_button_name=>'nuevo'
,p_button_static_id=>'btn1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nueva Relacion'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:CR,154::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24162730065073005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47579074620656712)
,p_button_name=>'CAMPANIA'
,p_button_static_id=>'btn2'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Campa\00F1a')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.item(''P155_TABLA'').setValue(''CAMPANIA'')'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24163127840073005)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(47579074620656712)
,p_button_name=>'CANAL'
,p_button_static_id=>'btn3'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Canal'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.item(''P155_TABLA'').setValue(''CANAL'')'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24163583310073006)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(47579074620656712)
,p_button_name=>'MOTIVO'
,p_button_static_id=>'btn4'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Motivo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.item(''P155_TABLA'').setValue(''MOTIVO'')'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24159473967073002)
,p_name=>'P155_TABLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47075465004186007)
,p_prompt=>'<span style="color:yellow">CREAR</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_css_classes=>'u-color-31-bg'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24159861597073003)
,p_name=>'P155_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47075465004186007)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(24165708897073007)
,p_name=>'P155_COD_CAMPANIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47580885427656730)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24170001729073009)
,p_name=>'da_refresh_canal'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P155_COD_CAMPANIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24170520482073009)
,p_event_id=>wwv_flow_imp.id(24170001729073009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47581265963656734)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24171480882073010)
,p_name=>'da_refres_motivo'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P155_COD_CANAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24171901012073010)
,p_event_id=>wwv_flow_imp.id(24171480882073010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47581265963656734)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24172321382073010)
,p_name=>'da_or_registro'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P155_TABLA'
,p_condition_element=>'P155_TABLA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24173342374073010)
,p_event_id=>wwv_flow_imp.id(24172321382073010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47075465004186007)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24172800350073010)
,p_event_id=>wwv_flow_imp.id(24172321382073010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P155_DESCRIPCION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24169110602073009)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P155_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24169666945073009)
,p_event_id=>wwv_flow_imp.id(24169110602073009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' //f?p=&APP_ID.:1043:&SESSION.::&DEBUG.::::',
'',
' /* ',
'apex.navigation.dialog(',
'        ''f?p=&APP_ID.:95:&APP_SESSION.::NO::'',',
'        {title:''Campania - Canal - Motivos'',height:''auto'',width:''720'',maxWidth:''960'',modal:true,dialog:null},''t-Dialog-page--standard ''+'''',this',
'        ); ',
'$(''lto23421286778583717_0'').trigger("click");*/',
'',
'     ///   apex.navigation.redirect ( ''f?p=&APP_ID.:141:&APP_SESSION.::::'')',
' ',
'document.getElementById(''btnuevo'').click();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24173775665073010)
,p_name=>'da_btn_ok'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24159014653073001)
,p_condition_element=>'P155_DESCRIPCION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24175275560073011)
,p_event_id=>wwv_flow_imp.id(24173775665073010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar en nuevo registro?')
,p_attribute_02=>'Confirmar Registro'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24174766079073011)
,p_event_id=>wwv_flow_imp.id(24173775665073010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VID NUMBER;',
'BEGIN',
'',
'    if :P155_TABLA=''CAMPANIA'' THEN',
'        BEGIN',
'            SELECT NVL(MAX(to_number(COD_CAMPANIA)),1)+1',
'            INTO VID',
'            FROM CRM_CAMPANIA;',
'        ',
'            insert into inv.crm_campania',
'              (cod_campania, descripcion, cod_empresa, activo)',
'            values',
'              (VID, :P155_DESCRIPCION, ''1'', ''S'');',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            apex_error.add_error(p_message               => sqlerrm,',
'                   p_display_location      => apex_error.c_inline_in_notification',
'               );',
'',
'        END;',
'',
'    ELSIF :P155_TABLA=''CANAL'' THEN',
'            BEGIN',
'                SELECT NVL(MAX(to_number(COD_CANAL)),1)+1',
'                INTO VID',
'                FROM CRM_CANAL;',
'            ',
'                insert into inv.crm_CANAL',
'                  (cod_CANAL, descripcion, cod_empresa, activo)',
'                values',
'                  (VID, :P155_DESCRIPCION, ''1'', ''S'');',
'',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                        apex_error.add_error(p_message               => sqlerrm,',
'                               p_display_location      => apex_error.c_inline_in_notification',
'                           );',
'            END;',
'    ELSE',
'            BEGIN',
'                SELECT NVL(MAX(to_number(COD_motivo)),1)+1',
'                INTO VID',
'                FROM crm_motivo;',
'            ',
'                insert into inv.crm_motivo',
'                  (cod_motivo, descripcion, cod_empresa, activo)',
'                values',
'                  (VID, :P155_DESCRIPCION, ''1'', ''S'');',
'',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                        apex_error.add_error(p_message               => sqlerrm,',
'                               p_display_location      => apex_error.c_inline_in_notification',
'                           );',
'            END;',
'    END IF;',
'    ',
'    commit;',
'    apex_application.g_print_success_message := ''<span class="notification">---Comiteo---</span>'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'            apex_error.add_error(p_message               => sqlerrm,',
'                   p_display_location      => apex_error.c_inline_in_notification',
'               );',
'END;'))
,p_attribute_02=>'P155_TABLA,P155_DESCRIPCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24174277764073011)
,p_event_id=>wwv_flow_imp.id(24173775665073010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24168726162073009)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
