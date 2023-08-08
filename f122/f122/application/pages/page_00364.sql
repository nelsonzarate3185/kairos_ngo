prompt --application/pages/page_00364
begin
--   Manifest
--     PAGE: 00364
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
 p_id=>364
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de  Solicitud Carneo'
,p_alias=>'SEGUIMIENTO-DE-SOLICITUD-CARNEO'
,p_step_title=>'Seguimiento de  Solicitud Carneo'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#parametros{',
'    background: #487ab8!important;',
'}',
'',
' .t-Form-label{',
'    color:  darkblue !important;     ',
'    } ',
'',
'     ',
' .a-IRR-header  a  {color: yellow; }',
' .a-IRR-header { background: #003a85!important;}',
'',
' .t-Report-colHead {color: yellow !important;',
'                    background: #003a85!important;',
'  }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230213151038'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105203608732701815)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(105203717761701816)
,p_name=>'SOLICITUDES DE CARNEO'
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 NRO',
'       ,C002 FECHA',
'       ,C003 ESTADO  ',
'       ,C004 OPERACION   ',
'       ,C005 COD_ARTICULO  ',
'       ,C005 COD_ART ',
'       ,C007 NRO_GARANTIA  ',
'       ,C008 NRO_FICHA  ',
'       ,C009 ORT  ',
'       ,C010 SOLICITA ',
'       ,C011 AUTORIZA  ',
'       ,C012 NUM_ENT_SAL ',
'       ,C013 SERIE ',
'       , NULL VER',
'       ,SEQ_ID ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STPEDCAR''  ',
' ',
'',
' /*',
'P_C001 => REG.NRO,',
'                                 P_C002 => REG.FECHA,',
'                                 P_C003 => REG.ESTADO,',
'                                 P_C004 => REG.OPERACION,',
'                                 P_C005 => REG.COD_ARTICULO,',
'                                 P_C006 => REG.COD_ART_CORTO,',
'                                 P_C007 => REG.NRO_GARANTIA,',
'                                 P_C008 => REG.NRO_FICHA ,',
'                                 P_C009 => REG.ORT,',
'                                 P_C010 => REG.CREA_USER,',
'                                 P_C011 => REG.AUTORIZA_USER,',
'                                 P_C012 => REG.NUM_ENT_SAL,',
'                                 P_C013 => REG.SERIE',
' */'))
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
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106974645777363818)
,p_query_column_id=>1
,p_column_alias=>'NRO'
,p_column_display_sequence=>30
,p_column_heading=>unistr('N\00BA Solicitud')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106974767364363819)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>40
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106974828868363820)
,p_query_column_id=>3
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>70
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106974970964363821)
,p_query_column_id=>4
,p_column_alias=>'OPERACION'
,p_column_display_sequence=>80
,p_column_heading=>'Operacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105204978020701828)
,p_query_column_id=>5
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>90
,p_column_heading=>unistr('C\00F3digo Articulo')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106976183782363833)
,p_query_column_id=>6
,p_column_alias=>'COD_ART'
,p_column_display_sequence=>100
,p_column_heading=>unistr('Descripci\00F3n del Articulo')
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.COD_ART_CORTO ||'' - ''||A.DESCRIPCION NOM,',
'       A.COD_ARTICULO ',
'FROM ST_ARTICULOS A',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975186418363823)
,p_query_column_id=>7
,p_column_alias=>'NRO_GARANTIA'
,p_column_display_sequence=>110
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105204881654701827)
,p_query_column_id=>8
,p_column_alias=>'NRO_FICHA'
,p_column_display_sequence=>170
,p_column_heading=>unistr('N\00BA Ficha')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975282578363824)
,p_query_column_id=>9
,p_column_alias=>'ORT'
,p_column_display_sequence=>120
,p_column_heading=>'Orden de Trabajo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975368212363825)
,p_query_column_id=>10
,p_column_alias=>'SOLICITA'
,p_column_display_sequence=>130
,p_column_heading=>'User Solicita'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975412776363826)
,p_query_column_id=>11
,p_column_alias=>'AUTORIZA'
,p_column_display_sequence=>140
,p_column_heading=>'User Autoriza'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975595420363827)
,p_query_column_id=>12
,p_column_alias=>'NUM_ENT_SAL'
,p_column_display_sequence=>150
,p_column_heading=>unistr('N\00BA Ajuste')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975653379363828)
,p_query_column_id=>13
,p_column_alias=>'SERIE'
,p_column_display_sequence=>160
,p_column_heading=>'Serie'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(106975743640363829)
,p_query_column_id=>14
,p_column_alias=>'VER'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:365:&SESSION.::&DEBUG.::P365_P_NRO:#NRO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105206295597701841)
,p_query_column_id=>15
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(105203863467701817)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_button_name=>'FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204073754701819)
,p_name=>'P364_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204136919701820)
,p_name=>'P364_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204262055701821)
,p_name=>'P364_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT ESTADO NOM, ESTADO',
'from ST_PEDIDO_CARNEO',
'WHERE COD_EMPRESA= :P_COD_EMPRESA ;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204387521701822)
,p_name=>'P364_DESTINO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>unistr('Operaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT OPERACION NOM, OPERACION',
'from ST_PEDIDO_CARNEO',
'WHERE COD_EMPRESA= :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204457300701823)
,p_name=>'P364_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204567366701824)
,p_name=>'P364_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Articulo'
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
 p_id=>wwv_flow_imp.id(105204613709701825)
,p_name=>'P364_SOLICITA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Solicitado por'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT CREA_USER NOM, CREA_USER',
'from ST_PEDIDO_CARNEO',
'WHERE COD_EMPRESA= :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204704877701826)
,p_name=>'P364_NRO_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>unistr('N\00BA Orden de Trabajo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105206447839701843)
,p_name=>'P364_FICHA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>unistr('N\00BA Ficha T\00E9cnica')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106975829117363830)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(105203863467701817)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106975933563363831)
,p_event_id=>wwv_flow_imp.id(106975829117363830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.stpedcar.trae_datos(p_cod_empresa => :p_cod_empresa,',
'                          p_estado => :P364_ESTADO,',
'                          p_destino => :P364_DESTINO,',
'                          p_ficha => :P364_FICHA,',
'                          p_nro_ort => :P364_NRO_OT,',
'                          p_articulo => :P364_ARTICULO,',
'                          p_garantia => :P364_GARANTIA,',
'                          p_fecha_ini => :P364_FECHA_INI,',
'                          p_fecha_fin => :P364_FECHA_FIN,',
'                          P_SOLICITA => :P364_SOLICITA);'))
,p_attribute_02=>'P364_FECHA_INI,P364_ESTADO,P364_DESTINO,P364_ARTICULO,P364_FECHA_FIN,P364_GARANTIA,P364_SOLICITA,P364_NRO_OT,P364_FICHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106976064052363832)
,p_event_id=>wwv_flow_imp.id(106975829117363830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(105203717761701816)
);
wwv_flow_imp.component_end;
end;
/
