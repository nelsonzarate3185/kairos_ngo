prompt --application/pages/page_00416
begin
--   Manifest
--     PAGE: 00416
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
 p_id=>416
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RECONCAT (Modal)'
,p_alias=>'RECONCAT-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'RECONCAT (Modal)'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IDR > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
' ',
'#IDR{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'',
'.a-CardView-items li{',
'    list-style: none;',
'    padding: 0;',
'   ',
'    overflow: hidden;',
'    flex-wrap: wrap;',
'    border-radius: 10px;',
'    transition: 0.4s;',
'    box-shadow:  0px 3px 3px #003a8586; ',
'}',
'',
'',
'',
'.a-CardView-items li:hover {',
'  transform: translateY(-5px) scale(1.005) translateZ(0);',
'  box-shadow: 0 5px 10px #003a8586,',
'    0 5px 10px #003a8586;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230519152654'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(118955749353105343)
,p_name=>'Informacion de Repuesto'
,p_region_name=>'IDR'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_report_attributes=>'S'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_ARTICULO CODIGO_ART,',
'       R.COD_ARTICULO CODIGO_ORIGEN,',
'       R.TENSION,',
'       R.POTENCIA,',
'       R.FRECUENCIA,',
'       R.TEMPERATURA_TRABAJO,',
'       R.PESO,',
'       R.CARACTERISTICAS,',
'       R.CATEGORIA,',
'       R.TIPO_REFRIGERANTE,',
'       R.MEDIDAS,',
'       R.LARGO,',
'       R.ANCHO,',
'       R.DIAMETRO,',
'       R.COLOR,',
'       R.POSICIONES,',
'       R.AMPERAJE,',
'       R.DESCRIPCION',
'  FROM RE_CATALOGO_REPUESTO R',
' WHERE R.ID_CATALOGO = :P416_ID_CATALOGO'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118955891557105344)
,p_query_column_id=>1
,p_column_alias=>'CODIGO_ART'
,p_column_display_sequence=>10
,p_column_heading=>'<b>Codigo Articulo</b>'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CODIGO_ART#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118955966846105345)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_ORIGEN'
,p_column_display_sequence=>20
,p_column_heading=>'Codigo Origen'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CODIGO_ORIGEN#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118956075953105346)
,p_query_column_id=>3
,p_column_alias=>'TENSION'
,p_column_display_sequence=>30
,p_column_heading=>'Tension'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#TENSION#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118956194484105347)
,p_query_column_id=>4
,p_column_alias=>'POTENCIA'
,p_column_display_sequence=>40
,p_column_heading=>'Potencia'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#POTENCIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118956219264105348)
,p_query_column_id=>5
,p_column_alias=>'FRECUENCIA'
,p_column_display_sequence=>50
,p_column_heading=>'Frecuencia'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#FRECUENCIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118956399383105349)
,p_query_column_id=>6
,p_column_alias=>'TEMPERATURA_TRABAJO'
,p_column_display_sequence=>60
,p_column_heading=>'Temperatura Trabajo'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#TEMPERATURA_TRABAJO#</b>'
,p_column_css_class=>'negrito'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(68482817454692734)
,p_query_column_id=>7
,p_column_alias=>'PESO'
,p_column_display_sequence=>70
,p_column_heading=>'Peso'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PESO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123956724068528301)
,p_query_column_id=>8
,p_column_alias=>'CARACTERISTICAS'
,p_column_display_sequence=>80
,p_column_heading=>'Caracteristicas'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CARACTERISTICAS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123956881458528302)
,p_query_column_id=>9
,p_column_alias=>'CATEGORIA'
,p_column_display_sequence=>100
,p_column_heading=>'Categoria'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CATEGORIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123956974265528303)
,p_query_column_id=>10
,p_column_alias=>'TIPO_REFRIGERANTE'
,p_column_display_sequence=>110
,p_column_heading=>'Tipo Refrigerante'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#TIPO_REFRIGERANTE#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957023843528304)
,p_query_column_id=>11
,p_column_alias=>'MEDIDAS'
,p_column_display_sequence=>120
,p_column_heading=>'Medidas'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#MEDIDAS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957131731528305)
,p_query_column_id=>12
,p_column_alias=>'LARGO'
,p_column_display_sequence=>130
,p_column_heading=>'Largo'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#LARGO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957258716528306)
,p_query_column_id=>13
,p_column_alias=>'ANCHO'
,p_column_display_sequence=>140
,p_column_heading=>'Ancho'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#ANCHO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957381762528307)
,p_query_column_id=>14
,p_column_alias=>'DIAMETRO'
,p_column_display_sequence=>150
,p_column_heading=>'Diametro'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DIAMETRO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957431552528308)
,p_query_column_id=>15
,p_column_alias=>'COLOR'
,p_column_display_sequence=>160
,p_column_heading=>'Color'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#COLOR#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957556241528309)
,p_query_column_id=>16
,p_column_alias=>'POSICIONES'
,p_column_display_sequence=>170
,p_column_heading=>'Posiciones'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#POSICIONES#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957687358528310)
,p_query_column_id=>17
,p_column_alias=>'AMPERAJE'
,p_column_display_sequence=>180
,p_column_heading=>'Amperaje'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#AMPERAJE#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957734471528311)
,p_query_column_id=>18
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>190
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DESCRIPCION#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137164611305888217)
,p_plug_name=>'Imagenes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT I.ID_CATALOGO,',
'        I.IMAGE,',
'        D.ID_IMAGEN,',
'        D.NRO_IMG,',
'        D.IMAGEN_BLOB',
'  from RE_CATALAGO_IMAGES I,',
'       V_IMAGEN_APEX_DIR D ',
' WHERE I.ID_CATALOGO =:P416_ID_CATALOGO',
'   AND I.ID_IMAGEN = D.ID_IMAGEN',
'   AND I.NRO_IMAGEN = D.NRO_IMG',
' ORDER BY I.IND_PRINCIPAL DESC,I.ID_IMAGEN,I.NRO_IMAGEN'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No se han cargado imagenes'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(137164759490888218)
,p_region_id=>wwv_flow_imp.id(137164611305888217)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGEN_BLOB'
,p_media_display_position=>'BODY'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID_IMAGEN'
,p_pk2_column_name=>'NRO_IMG'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137165052939888221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_button_name=>'AGREGAR_IMAGEN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Imagen'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:466:&SESSION.::&DEBUG.::P466_COD_MODULO,P466_OPERACION,P466_ID_IMAGEN:RE,CATALOGO,&P416_ID_IMAGEN.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137164886643888219)
,p_name=>'P416_ID_CATALOGO'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137165171397888222)
,p_name=>'P416_ID_IMAGEN'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137165446475888225)
,p_name=>'After Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137165052939888221)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137165550596888226)
,p_event_id=>wwv_flow_imp.id(137165446475888225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137164611305888217)
);
wwv_flow_imp.component_end;
end;
/
