prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVHORUPE - Hoja de Ruta'
,p_alias=>'HOJA-DE-RUTA'
,p_step_title=>'Hoja de Ruta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230717122652'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(175476398871603874)
,p_name=>'Hoja de Ruta'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_VENDEDOR,',
'VENDEDOR,',
'DIA,',
'COD_CLIENTE,',
'NOM_CLIENTE,',
'CIUDAD,',
'ASUNTO,',
'COMENTARIO,',
'VTA,',
'FECHA,',
'',
'',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=h.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P47_FECHA_INICIO AND nvl(h.FECHA,:P47_FECHA_FIN)',
'and hr.cod_vendedor=h.COD_VENDEDOR)',
'',
'',
'||''/''||',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= h.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)efectividad,sucursal_distribuidor',
'',
' from v_hoja_ruta_apex h',
' where ( COD_VENDEDOR = :P47_COD_VENDEDOR OR :P47_COD_VENDEDOR IS NUlL )',
' and fecha between :P47_FECHA_INICIO AND :P47_FECHA_FIN',
'order by fecha, nom_cliente'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P47_COD_VENDEDOR,P47_FECHA_INICIO,P47_FECHA_FIN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12336458701118002)
,p_query_column_id=>1
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>7
,p_column_heading=>'Cod Vendedor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12336879812118002)
,p_query_column_id=>2
,p_column_alias=>'VENDEDOR'
,p_column_display_sequence=>8
,p_column_heading=>'Vendedor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12337242780118002)
,p_query_column_id=>3
,p_column_alias=>'DIA'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12337627403118002)
,p_query_column_id=>4
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,:P49_COD_CLIENTE:#COD_CLIENTE#'
,p_column_linktext=>'#COD_CLIENTE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12338000629118002)
,p_query_column_id=>5
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>3
,p_column_heading=>'Nom Cliente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12338437355118003)
,p_query_column_id=>6
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>10
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12338830480118003)
,p_query_column_id=>7
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>4
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12339256075118003)
,p_query_column_id=>8
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>5
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12339686865118003)
,p_query_column_id=>9
,p_column_alias=>'VTA'
,p_column_display_sequence=>6
,p_column_heading=>'Vta'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12340061009118003)
,p_query_column_id=>10
,p_column_alias=>'FECHA'
,p_column_display_sequence=>1
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12340409467118003)
,p_query_column_id=>11
,p_column_alias=>'EFECTIVIDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Efectividad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(181630032713034640)
,p_query_column_id=>12
,p_column_alias=>'SUCURSAL_DISTRIBUIDOR'
,p_column_display_sequence=>30
,p_column_heading=>'Sucursal Distribuidor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175490104859605681)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12341138065118004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_button_name=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12341514933118004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_button_name=>'Visita'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agendar Visita'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48::'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12341980894118004)
,p_name=>'P47_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_item_default=>':P0_COD_VENDEDOR'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Cod Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE, F.COD_VENDEDOR',
'from fv_vendedores f, personas p',
'where f.cod_empresa=''1''',
'and nvl(f.ESTADO,''S'') NOT IN (''N'',''I'')',
'AND F.COD_PERSONA=P.COD_PERSONA',
'ORDER BY P.NOMBRE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12342332346118005)
,p_name=>'P47_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12342728926118005)
,p_name=>'P47_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_item_default=>'LAST_DAY(SYSDATE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12343102544118005)
,p_name=>'refrescar_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12341138065118004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12343695362118006)
,p_event_id=>wwv_flow_imp.id(12343102544118005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(175476398871603874)
);
wwv_flow_imp.component_end;
end;
/
