prompt --application/pages/page_00624
begin
--   Manifest
--     PAGE: 00624
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
 p_id=>624
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REMISIONES POR REPOSICION'
,p_alias=>'REMISIONES-POR-REPOSICION'
,p_step_title=>'REMISIONES POR REPOSICION'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-PageBody {',
'    background-color: #f0f7f9 !important; ',
'',
'}',
'',
'',
'  .a-IRR-header  a , #checktext , .a-IRR-header--group , .a-IRR-headerLabel{color: yellow !important; }',
' .a-IRR-header {    background: #003a85!important;}',
'',
'',
'.t-Body-mainContent  { ',
'    background: #082b642f!important;',
'} ',
'  ',
'  .t-Form-label{',
'    color:  darkblue  !important; ',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230927090630'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209705383063309523)
,p_plug_name=>'PARAMETRO'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212116579769929938)
,p_plug_name=>'INFORME DE REMISIONES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_sucursal cod_suc_sal,',
'       s1.descripcion desc_suc_sal,',
'       e.cod_sucursal_ent,',
'       s2.descripcion desc_suc_ent,',
'       c.fec_comprobante FECHA,',
'       c.ser_comprobante SER_REM,',
'       c.nro_comprobante NRO_REM, ',
'       c.ser_comprobante_ref SER_PEDIDO,',
'       C.nro_comprobante_ref NRO_PEDIDO, ',
'       E.FECHA FECHA_PEDIDO,',
'       nvl((select nro_envio',
'        from st_notas_envio_CAB',
'        where cod_empresa = e.cod_empresa',
'         and REFERENCIA = e.nro_envio',
'         AND ROWNUM=1),'''')NRO_RECEPCION,',
'       (nvl((select  FECHA',
'        from st_notas_envio_CAB  ',
'        where cod_empresa = e.cod_empresa',
'         and REFERENCIA = e.nro_envio',
'         AND ROWNUM=1),''''))FECHA_RECEP,',
'       d.cod_articulo,',
'       s.descripcion desc_articulo,',
'       (d.cantidad) cantidad  ',
'  from ST_REMISION_CAB c,',
'       sucursales      s1,',
'       st_articulos    s,',
'       st_remision_det d, ',
'       ST_ARTICULOS    SA,',
'       sucursales      s2,',
'       st_notas_envio_cab_pend e',
' where c.cod_empresa = :P_COD_EMPRESA  ',
'   and s1.cod_empresa = c.cod_empresa',
'   and s1.cod_sucursal = c.cod_sucursal ',
'   and nvl(anulado, ''N'') <> ''S''',
'   and c.cod_empresa = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante',
'   and d.cod_empresa = s.cod_empresa',
'   and d.cod_articulo = s.cod_articulo ',
'   AND SA.COD_EMPRESA = S.COD_EMPRESA',
'   AND SA.COD_ARTICULO = S.COD_ARTICULO',
'   and c.tip_comprobante_ref=e.tip_envio',
'   and c.ser_comprobante_ref=e.ser_envio',
'   and c.nro_comprobante_ref=e.nro_envio',
'   and c.cod_empresa=e.cod_empresa',
'   and e.cod_empresa=s2.cod_empresa',
'   and e.cod_sucursal_ent=s2.cod_sucursal',
'   AND ( :P624_FECHA_INI IS NULL OR c.fec_comprobante >= :P624_FECHA_INI)',
'   AND ( :P624_FECHA_FIN IS NULL OR c.fec_comprobante <= :P624_FECHA_FIN)',
'   AND ( :P624_SUC_SALIDA IS NULL OR c.cod_sucursal = :P624_SUC_SALIDA)',
'   AND ( :P624_SUC_ENTRADA IS NULL OR e.cod_sucursal_ent = :P624_SUC_ENTRADA)   ',
'   AND ( :P624_NRO_PEDIDO IS NULL OR c.nro_comprobante_ref = :P624_NRO_PEDIDO)',
'   AND ( :P624_NRO_REMISION IS NULL OR c.nro_comprobante = :P624_NRO_REMISION)',
'   ',
'order by c.fec_comprobante desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P624_SUC_ENTRADA,P624_SUC_SALIDA,P624_FECHA_INI,P624_FECHA_FIN,P624_NRO_REMISION,P624_NRO_PEDIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'INFORME DE REMISIONES'
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
 p_id=>wwv_flow_imp.id(209705867674309528)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>209705867674309528
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209705958003309529)
,p_db_column_name=>'COD_SUC_SAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706078820309530)
,p_db_column_name=>'DESC_SUC_SAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal Salida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706188215309531)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706241768309532)
,p_db_column_name=>'DESC_SUC_ENT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal Entrada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706394386309533)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706462752309534)
,p_db_column_name=>'SER_REM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706518950309535)
,p_db_column_name=>'NRO_REM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('N\00BA Remision')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706643570309536)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706732514309537)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('N\00BA Pedido')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706845710309538)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209706931121309539)
,p_db_column_name=>'NRO_RECEPCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Recepcion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209707031725309540)
,p_db_column_name=>'FECHA_RECEP'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Recep.'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209707102150309541)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209707217822309542)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209707327720309543)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(212364108251459537)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2123642'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:SER_REM:NRO_REM:COD_SUC_SAL:DESC_SUC_SAL:COD_SUCURSAL_ENT:DESC_SUC_ENT:SER_PEDIDO:NRO_PEDIDO:FECHA_PEDIDO:NRO_RECEPCION:FECHA_RECEP:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209707484972309544)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_button_name=>'FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209705407324309524)
,p_name=>'P624_SUC_ENTRADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_prompt=>'SUCURSAL ENTRADA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209705534270309525)
,p_name=>'P624_SUC_SALIDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_prompt=>'SUCURSAL SALIDA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209705695150309526)
,p_name=>'P624_FECHA_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_prompt=>'FECHA DESDE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209705769583309527)
,p_name=>'P624_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_prompt=>'FECHA HASTA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
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
 p_id=>wwv_flow_imp.id(209707554997309545)
,p_name=>'P624_NRO_REMISION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_prompt=>'NRO REMISION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209707602222309546)
,p_name=>'P624_NRO_PEDIDO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209705383063309523)
,p_prompt=>'NOTA ENVIO PEND.'
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
 p_id=>wwv_flow_imp.id(209707744829309547)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209707484972309544)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209707880648309548)
,p_event_id=>wwv_flow_imp.id(209707744829309547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(212116579769929938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209708092185309550)
,p_name=>'da_limpiar'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213274930746599501)
,p_event_id=>wwv_flow_imp.id(209708092185309550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P624_SUC_SALIDA,P624_SUC_ENTRADA,P624_FECHA_INI,P624_FECHA_FIN,P624_NRO_REMISION,P624_NRO_PEDIDO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
