prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Generaci\00F3n de Gift Card')
,p_alias=>unistr('GENERACI\00D3N-DE-GIFT-CARD')
,p_step_title=>unistr('Generaci\00F3n de Gift Card')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'solo_numeros();',
'formatMiles(''P21_MONTO'');',
'',
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}',
'',
'function doDescarga(p_cod_empresa, p_ser_vale, p_nro_vale){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CPSVALE.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_VALE='' + p_nro_vale + ''&P_SER_VALE='' + p_ser_vale;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   .t-Body{ ',
'      background-color: #003a852f !important;}',
'',
'',
'  .t-Report-colHead {',
'      background: #003a85!important;',
'       color: yellow; ',
' } ',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#reg_parametros{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P149_P_FECHA_FIN, #P149_P_FECHA_INI, #P149_P_RESPONSABLE, #P149_P_TIPO_TKT {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
' .a-IRR-header{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td { ',
'    border: 1px solid #003a85b7 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20231003152809'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6269989488275244)
,p_plug_name=>unistr('Generaci\00F3n de Gift Card')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6270071413275245)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(6269989488275244)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6970505144832302)
,p_plug_name=>'BUTTONS'
,p_parent_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6270293173275247)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(6269989488275244)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7311907892362709)
,p_name=>'Comprobantes Vinculados'
,p_parent_plug_id=>wwv_flow_imp.id(6269989488275244)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent15:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VW.TIP_FAC,',
'       VW.SER_FAC,',
'       VW.NRO_FAC,',
'       VW.FEC_COMPROBANTE,',
'       VW.COD_CLIENTE,',
'       VW.NOMBRE,',
'       VW.TOT_COMPROBANTE',
'  FROM VW_VALES_COMPROBANTES VW',
' WHERE VW.SER_COMPROBANTE = :P21_SER_COMPROBANTE ',
'   AND VW.NRO_COMPROBANTE = :P21_NRO_COMPROBANTE',
'   AND VW.COD_EMPRESA = :P21_COD_EMPRESA_CAB;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P21_COD_EMPRESA_CAB,P21_NRO_COMPROBANTE,P21_SER_COMPROBANTE'
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
 p_id=>wwv_flow_imp.id(213275051769599502)
,p_query_column_id=>1
,p_column_alias=>'TIP_FAC'
,p_column_display_sequence=>10
,p_column_heading=>'TIPO COMPROBANTE'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213275139826599503)
,p_query_column_id=>2
,p_column_alias=>'SER_FAC'
,p_column_display_sequence=>20
,p_column_heading=>'SERIE'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213275242999599504)
,p_query_column_id=>3
,p_column_alias=>'NRO_FAC'
,p_column_display_sequence=>30
,p_column_heading=>'NUMERO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213275323624599505)
,p_query_column_id=>4
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>'FECHA'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213275429566599506)
,p_query_column_id=>5
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>50
,p_column_heading=>'CODIGO'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213275634661599508)
,p_query_column_id=>6
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>60
,p_column_heading=>'CLIENTE'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(213275548372599507)
,p_query_column_id=>7
,p_column_alias=>'TOT_COMPROBANTE'
,p_column_display_sequence=>70
,p_column_heading=>'TOTAL'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7312954858362719)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(6269989488275244)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6973419796832331)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_button_name=>'BUSCAR_VALE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Vale'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6970677114832303)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6970505144832302)
,p_button_name=>'GENERAR_RECIBO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Recibo'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-file-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6970719742832304)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6970505144832302)
,p_button_name=>'CARGA_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Carga de Pedido'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-file-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14598460368343836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6970505144832302)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7311638253362706)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6970505144832302)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6973722729832334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6269989488275244)
,p_button_name=>'CARGAR_VALE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-43-text u-color-22-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13307786986033848)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6269989488275244)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6270307634275248)
,p_name=>'P21_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>unistr('N\00B0 Vale')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6270453749275249)
,p_name=>'P21_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6270554918275250)
,p_name=>'P21_MONTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6970467211832301)
,p_name=>'P21_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(6970860227832305)
,p_name=>'P21_MONTO_MINIMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971125165832308)
,p_name=>'P21_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971284480832309)
,p_name=>'P21_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971355577832310)
,p_name=>'P21_NOM_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971448539832311)
,p_name=>'P21_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971547765832312)
,p_name=>'P21_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971679390832313)
,p_name=>'P21_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6270293173275247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6971857951832315)
,p_name=>'P21_COD_EMPRESA_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6972547180832322)
,p_name=>'P21_AUX_MSJ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6970505144832302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6972766553832324)
,p_name=>'P21_NRO_COMPROBANTE_REF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'PEDIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(6973048748832327)
,p_name=>'P21_SER_COMPROBANTE_REF'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6973178575832328)
,p_name=>'P21_TIP_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6973200643832329)
,p_name=>'P21_FECHA_ALTA_CAB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(6974147227832338)
,p_name=>'P21_PARA_OBS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6974282283832339)
,p_name=>'P21_DE_OBS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6974354663832340)
,p_name=>'P21_TIP_COMPROBANTE_REF'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6974832704832345)
,p_name=>'P21_AUX_CARGAR_PEDIDO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6974981205832346)
,p_name=>'P21_AUX_GENERA_RECIBO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7807244715851814)
,p_name=>'P21_COD_USUARIO_CAB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_prompt=>'Generado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14599193453343843)
,p_name=>'P21_AUX_URL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6270071413275245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6970978019832306)
,p_validation_name=>'VA_MONTO1'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_NUMBER(NVl(REPLACE(:P21_MONTO_MINIMO,''.''),0)) > TO_NUMBER(NVL(REPLACE(:P21_MONTO,''.''),0)) THEN',
'	RETURN FALSE;			   ',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Debe ingresar un monto mayor a &P21_MONTO_MINIMO..'
,p_associated_item=>wwv_flow_imp.id(6270554918275250)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6974453188832341)
,p_validation_name=>'VA_SER_COMPROBANTE'
,p_validation_sequence=>20
,p_validation=>'P21_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un valor.'
,p_associated_item=>wwv_flow_imp.id(6270307634275248)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6974535451832342)
,p_validation_name=>'VA_NRO_COMPROBANTE'
,p_validation_sequence=>30
,p_validation=>'P21_NRO_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un n\00FAmero de comprobante.')
,p_associated_item=>wwv_flow_imp.id(6270453749275249)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6974729182832344)
,p_validation_name=>'VA_COD_CLIENTE'
,p_validation_sequence=>40
,p_validation=>'P21_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar un cliente.'
,p_associated_item=>wwv_flow_imp.id(6970467211832301)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6972856538832325)
,p_name=>'DA_CARGA_PEDIDO'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6970719742832304)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6972998484832326)
,p_event_id=>wwv_flow_imp.id(6972856538832325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P21_NRO_COMPROBANTE IS NOT NULL AND :P21_NRO_COMPROBANTE_REF IS NOT NULL THEN  ',
unistr('	NULL; --LLAMA A FORM VTPEDIDO CON LOS PAR\00C1METROS:			           '),
'	             /*Add_Parameter( pl_id, ''P_NRO_COMPROBANTE'', TEXT_PARAMETER, :B_CABECERA.NRO_COMPROBANTE_REF) ;',
'	             Add_Parameter( pl_id, ''P_SER_COMPROBANTE'', TEXT_PARAMETER,:B_CABECERA.SER_COMPROBANTE_REF ) ;	',
'	             call_form( ''VTPEDIDO'', NO_HIDE, NO_REPLACE, NO_QUERY_ONLY, pl_id ) ;*/',
'ELSE',
unistr('	NULL; --LLAMA A FORM VTPEDIDO CON LOS PAR\00C1METROS:				           '),
'	            /* Add_Parameter( pl_id, ''P_NRO_VALE'', TEXT_PARAMETER, :B_CABECERA.NRO_COMPROBANTE ) ;',
'	             Add_Parameter( pl_id, ''P_SER_VALE'', TEXT_PARAMETER,:B_CABECERA.SER_COMPROBANTE ) ;											             ',
'		           Add_Parameter( pl_id, ''P_COD_CLIENTE'', TEXT_PARAMETER,:B_CABECERA.COD_CLIENTE ) ;					             ',
'	             call_form( ''VTPEDIDO'', NO_HIDE, NO_REPLACE, NO_QUERY_ONLY, pl_id ) ;*/',
'					             ',
'    -- VER ESTO',
'    -- SET_BLOCK_PROPERTY(''B_CABECERA'', DEFAULT_WHERE, ''NRO_COMPROBANTE= '''''' || :B_CABECERA.NRO_COMPROBANTE || '''''' AND SERR_COMPROBANTE=''''''|| :B_CABECERA.SER_COMPROBANTE || '''''''');',
'',
'END IF;'))
,p_attribute_02=>'P21_NRO_COMPROBANTE,P21_NRO_COMPROBANTE_REF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6973589502832332)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6973419796832331)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9290059988889012)
,p_event_id=>wwv_flow_imp.id(6973589502832332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7311638253362706)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8198578467907001)
,p_event_id=>wwv_flow_imp.id(6973589502832332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P21_SER_COMPROBANTE IS NOT NULL AND :P21_NRO_COMPROBANTE IS NOT NULL THEN',
'    BEGIN',
'        SELECT COD_CLIENTE,',
'               TRIM(to_char(MONTO,''999G999G999G999G990'')),',
'               NRO_COMPROBANTE_REF,',
'               SER_COMPROBANTE_REF ',
'          INTO :P21_COD_CLIENTE,',
'               :P21_MONTO,',
'               :P21_NRO_COMPROBANTE_REF,',
'               :P21_SER_COMPROBANTE_REF',
'          FROM VT_VALES',
'         WHERE COD_EMPRESA = :P21_COD_EMPRESA ',
'           AND NRO_COMPROBANTE = TO_NUMBER(:P21_NRO_COMPROBANTE)',
'           AND SER_COMPROBANTE = :P21_SER_COMPROBANTE;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
unistr('            RAISE_APPLICATION_ERROR(-20000, ''No se han encontrado datos con ese n\00FAmero de vale.'');'),
'        WHEN OTHERS THEN',
'            RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error en la tabla de Vales. ''||sqlerrm);',
'    END;',
'    DECLARE ',
'    	DUMMY CHAR(1);',
'    BEGIN',
'    	SELECT DISTINCT ''1''',
'    	INTO DUMMY',
'    	FROM vw_vales_comprobantes',
'    	WHERE COD_EMPRESA= :P21_COD_EMPRESA',
'    	AND SER_COMPROBANTE=:P21_SER_COMPROBANTE',
'    	AND NRO_COMPROBANTE=:P21_NRO_COMPROBANTE;',
'',
'        :P21_AUX_CARGAR_PEDIDO := 1;',
'        :P21_AUX_GENERA_RECIBO := 2;',
'        :P21_AUX_MSJ := null;',
'    	--set_item_property(''B_CABECERA.REC'', ENABLED, PROPERTY_FALSE);	',
'        --set_item_property(''B_CABECERA.PEDIDO'', ENABLED, PROPERTY_TRUE);	',
'    /*',
'    	IF :b_cabecera.NRO_COMPROBANTE_REF is  null THEN',
'    			set_item_property(''B_CABECERA.PEDIDO'', ENABLED, PROPERTY_TRUE);				',
'    	end if;',
'    */ ',
'    EXCEPTION ',
'    	WHEN NO_DATA_FOUND THEN	',
'    	    :P21_AUX_GENERA_RECIBO := 1; --set_item_property(''B_CABECERA.REC'', ENABLED, PROPERTY_TRUE);',
'        WHEN OTHERS THEN',
'            null;',
'    END;',
'ELSE ',
unistr('    :P21_AUX_MSJ := ''Debe ingresar un n\00FAmero de vale para realizar la b\00FAsqueda.'';'),
'END IF;        ',
'',
''))
,p_attribute_02=>'P21_COD_EMPRESA,P21_NRO_COMPROBANTE,P21_SER_COMPROBANTE'
,p_attribute_03=>'P21_NRO_COMPROBANTE_REF,P21_SER_COMPROBANTE_REF,P21_COD_CLIENTE,P21_MONTO,P21_AUX_MSJ,P21_AUX_CARGAR_PEDIDO,P21_AUX_GENERA_RECIBO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8198938126907005)
,p_event_id=>wwv_flow_imp.id(6973589502832332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7311907892362709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8198841787907004)
,p_event_id=>wwv_flow_imp.id(6973589502832332)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P21_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P21_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6975048651832347)
,p_name=>'DA_BOTON_CARGAR_PEDIDO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_AUX_CARGAR_PEDIDO'
,p_condition_element=>'P21_AUX_CARGAR_PEDIDO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6975143728832348)
,p_event_id=>wwv_flow_imp.id(6975048651832347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6970719742832304)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6975296663832349)
,p_event_id=>wwv_flow_imp.id(6975048651832347)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6970719742832304)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6975341345832350)
,p_name=>'DA_BOTON_GENERA_RECIBO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_AUX_GENERA_RECIBO'
,p_condition_element=>'P21_AUX_GENERA_RECIBO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7311145324362701)
,p_event_id=>wwv_flow_imp.id(6975341345832350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6970677114832303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7311281693362702)
,p_event_id=>wwv_flow_imp.id(6975341345832350)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6970677114832303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14597867561343830)
,p_event_id=>wwv_flow_imp.id(6975341345832350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CC_DETALLE_RECIBOS'');',
'APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''CC_DETALLE_RECIBOS'',    	',
'                                       P_C002 => :P21_TIP_COMPROBANTE, ',
'                                       P_C003 => :P21_SER_COMPROBANTE,',
'                                       P_C004 => :P21_NRO_COMPROBANTE,',
'                                       P_C006 => :P21_MONTO); ',
'',
''))
,p_attribute_02=>'P21_TIP_COMPROBANTE,P21_SER_COMPROBANTE,P21_NRO_COMPROBANTE,P21_MONTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14598048542343832)
,p_event_id=>wwv_flow_imp.id(6975341345832350)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P21_MONTO'').attr(''readonly'',true);',
'$(''#P21_SER_COMPROBANTE'').attr(''readonly'',true);',
'$(''#P21_NRO_COMPROBANTE'').attr(''readonly'',true);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14598120865343833)
,p_event_id=>wwv_flow_imp.id(6975341345832350)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_COD_CLIENTE'
,p_server_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(7311349031362703)
,p_name=>'DA_BOTONES'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7311497641362704)
,p_event_id=>wwv_flow_imp.id(7311349031362703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6970719742832304)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7311513434362705)
,p_event_id=>wwv_flow_imp.id(7311349031362703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6970677114832303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9289689636889008)
,p_event_id=>wwv_flow_imp.id(7311349031362703)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7311638253362706)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14598236172343834)
,p_event_id=>wwv_flow_imp.id(7311349031362703)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7311717992362707)
,p_name=>'DA_CONTROL_MAESTRO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7311638253362706)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9290141495889013)
,p_event_id=>wwv_flow_imp.id(7311717992362707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFQuiere eliminar definitivamente el vale?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7311809550362708)
,p_event_id=>wwv_flow_imp.id(7311717992362707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  Dummy_Define CHAR(1);',
'  CURSOR VW_VALES_COMPROBANTES_cur IS      ',
'    SELECT 1 FROM vw_vales_comprobantes v     ',
'    WHERE v.SER_COMPROBANTE = :P21_SER_COMPROBANTE',
'      and v.NRO_COMPROBANTE = :P21_NRO_COMPROBANTE',
'      and v.COD_EMPRESA = :P21_COD_EMPRESA_CAB;',
'BEGIN',
'',
'  OPEN VW_VALES_COMPROBANTES_cur;     ',
'  FETCH VW_VALES_COMPROBANTES_cur INTO Dummy_Define;     ',
'  IF ( VW_VALES_COMPROBANTES_cur%found ) THEN         ',
'    CLOSE VW_VALES_COMPROBANTES_cur;     ',
'    raise_application_error(-20000,''No puede borrar registro maestro cuando existen registros detalle coincidentes.'');    ',
'  END IF;',
'  CLOSE VW_VALES_COMPROBANTES_cur;',
'END;'))
,p_attribute_02=>'P21_SER_COMPROBANTE,P21_NRO_COMPROBANTE,P21_COD_EMPRESA_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9289585425889007)
,p_event_id=>wwv_flow_imp.id(7311717992362707)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9289781698889009)
,p_name=>'DA_HABILITA_BOTONES'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9289864105889010)
,p_event_id=>wwv_flow_imp.id(9289781698889009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6973722729832334)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P21_SER_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9289927386889011)
,p_event_id=>wwv_flow_imp.id(9289781698889009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7311638253362706)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P21_SER_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13307837244033849)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13307786986033848)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P21_SER_COMPROBANTE'') !== "" && $v(''P21_NRO_COMPROBANTE'') !== ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9695905500292701)
,p_event_id=>wwv_flow_imp.id(13307837244033849)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un n\00FAmero de comprobante completo para imprimir el vale.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13307949323033850)
,p_event_id=>wwv_flow_imp.id(13307837244033849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDescarga(apex.item(''P21_COD_EMPRESA'').getValue(), apex.item(''P21_SER_COMPROBANTE'').getValue(),apex.item(''P21_NRO_COMPROBANTE'').getValue());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14598919062343841)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14599063566343842)
,p_event_id=>wwv_flow_imp.id(14598919062343841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P21_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213276631490599518)
,p_name=>'da_ir_a'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_AUX_URL'
,p_condition_element=>'P21_AUX_URL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213276793808599519)
,p_event_id=>wwv_flow_imp.id(213276631490599518)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P21_AUX_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213276982180599521)
,p_name=>'da_genera_url'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6970677114832303)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213276265767599514)
,p_event_id=>wwv_flow_imp.id(213276982180599521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_AUX_URL := apex_page.get_url(  p_page   => 394,',
'                                               p_items  => ''P394_CONTROL_ORIGEN,P394_P_TIP_COMPROBANTE,P394_P_SER_COMPROBANTE,P394_P_NRO_COMPROBANTE,P394_P_MONTO'',',
'                                               p_values => ''0,GIF,G,''||:P21_NRO_COMPROBANTE||'',''||:P21_MONTO',
'                                             );     '))
,p_attribute_02=>'P21_NRO_COMPROBANTE,P21_MONTO,P21_AUX_URL'
,p_attribute_03=>'P21_AUX_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6971755372832314)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6971013708832307)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
'',
'--INICIALIZA GLOBALES',
':P21_COD_USUARIO  := NVL(:P_COD_USUARIO, :APP_USER);',
':P21_COD_EMPRESA  := NVL(:P_COD_EMPRESA,1);',
':P21_NOM_EMPRESA  := NVL(:P_NOM_EMPRESA, NULL);',
':P21_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P21_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL, NULL);',
':P21_COD_MODULO   := NVL(:P_COD_MODULO, NULL);',
'',
'--PRE-FORM',
':P21_MONTO_MINIMO := NVL(bs_busca_parametro( :P21_COD_MODULO, ''MONTO_MINIMO''),0);   ',
'',
'--WHEN-CREATE-RECORD BLOQUE CABECERA --> solo cuando ingrese el vendedor a crear un nievo gift card',
':P21_COD_EMPRESA_CAB := :P21_COD_EMPRESA;',
':P21_SER_COMPROBANTE := ''G'';',
'',
'--PRE-INSERT BLOQUE CABECERA',
':P21_FECHA_ALTA_CAB   := sysdate ;',
':P21_COD_USUARIO_CAB  := :APP_USER;',
'',
'if :P21_NRO_COMPROBANTE IS NULL then',
'  begin',
'	   Select nvl(max(NRO_COMPROBANTE),0)+1',
'	     into :P21_NRO_COMPROBANTE',
'	     from VT_VALES',
'	    where cod_empresa     = :P21_COD_EMPRESA',
'	      and ser_COMPROBANTE = :P21_SER_COMPROBANTE;',
'   exception',
'     when others then',
'       :P21_NRO_COMPROBANTE := 1; ',
'  end;',
'end if; ',
'',
':P21_AUX_MSJ := null;',
'                                                ',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6974001899832337)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGAR_VALE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'    VNRO NUMBER;',
' BEGIN ',
'    BEGIN',
'                SELECT NVL(MAX(NRO_COMPROBANTE),0)+1',
'                  INTO VNRO',
'                  FROM VT_VALES',
'                 WHERE  COD_EMPRESA = :P21_COD_EMPRESA_CAB',
'                   AND SER_COMPROBANTE = :P21_SER_COMPROBANTE;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            VNRO:=1;',
'    END;',
' ',
'    INSERT INTO VT_VALES(COD_EMPRESA,SER_COMPROBANTE,NRO_COMPROBANTE,COD_USUARIO,FECHA_ALTA,COD_CLIENTE,MONTO)',
'     VALUES(:P21_COD_EMPRESA_CAB,''G'',VNRO,:APP_USER,sysdate,:P21_COD_CLIENTE,REPLACE(:P21_MONTO, ''.''));     ',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'            raise_application_error(-20000,sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6973722729832334)
,p_process_success_message=>unistr('El Vale se carg\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9289449805889006)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ELIMINAR_VALE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM VT_VALES',
'     WHERE NRO_COMPROBANTE = :P21_NRO_COMPROBANTE',
'       AND SER_COMPROBANTE = :P21_SER_COMPROBANTE',
'       AND COD_EMPRESA = :P21_COD_EMPRESA_CAB;  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7311638253362706)
,p_process_success_message=>'El vale se ha eliminado correctamente.'
);
wwv_flow_imp.component_end;
end;
/
