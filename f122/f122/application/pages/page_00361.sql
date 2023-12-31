prompt --application/pages/page_00361
begin
--   Manifest
--     PAGE: 00361
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
 p_id=>361
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Facturacion Masiva CPH - RPFACCPH'
,p_alias=>'FACTURACION-MASIVA-CPH-RPFACCPH'
,p_step_title=>'Facturacion Masiva CPH - RPFACCPH'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doCCReciboMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECIBO_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doStremautMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanonFe (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPNCR_CANON_FE_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doRpfactmaspla(p_cod_empresa, p_nro_planilla){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPFACTMASPLA_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_planilla +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanonFeMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPFAC_CANON_FE_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doPagareMasivo (p_cod_empresa, p_nro_plantilla){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_EMP_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +       ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanon(p_cod_empresa, p_cod_cliente, p_pagado, p_reimpreso,',
'                         p_tip_comprobante, p_cod_usuario, p_ser_comprobante, ',
'                         p_nro_comprobante, p_imprime_condicion){',
' ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPFAC_CANON_FE_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_PAGADO='' + p_pagado +',
'             ''&P_REIMPRESO='' + p_reimpreso +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_COD_USUARIO='' + p_cod_usuario +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante + ',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&P_IMPRIME_CONDICION='' + p_imprime_condicion +                  ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function doCCRecibo(p_ser_comprobante, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECIBO_CPH.pdf?''',
'            + ''P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doCCPagareUnico(p_cod_empresa, p_cod_cliente, p_tip_comprobante,',
'                         p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_UNICO_CPH .pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_MOTIVO='' + p_motivo +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doCCPagareEmp(p_cod_empresa, p_cod_cliente, p_tip_comprobante, p_cod_usuario,',
'                         p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_EMP_CPH .pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_COD_USUARIO='' + p_cod_usuario +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_MOTIVO='' + p_motivo +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doCCPagareOficioCanon (p_cod_empresa, p_cod_cliente, p_tip_comprobante,',
'                                p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_OFICIO_CANON_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_MOTIVO='' + p_motivo +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doStremaut (p_cod_empresa, p_cod_cliente, p_tip_comprobante, p_ser_comprobante, ',
'                     p_nro_comprobante, p_cod_usuario, p_ind_ean, p_reimpresion){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +',
'             ''&P_USUARIO='' + p_cod_usuario +',
'             ''&P_IND_EAN='' + p_ind_ean +',
'             ''&P_REIMPRESION='' + p_reimpresion +             ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpNcrCanon (p_cod_empresa, p_cod_cliente, p_tip_comprobante, ',
'                          p_ser_comprobante, p_nro_comprobante){',
'',
'                         console.log("entro doStremaut");',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPNCR_CANON_FE_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +            ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230727085129'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99675858423806515)
,p_plug_name=>unistr('Facturaci\00F3n Masiva CPH - RPFACCPH')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99675996853806516)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(99676465751806521)
,p_name=>'COLEC_RPFACCPH_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 ser_comprobante,',
'       c002 nro_comprobante, ',
'       c003 pedido, ',
'       c004 COD_MONEDA,',
'       c005 TICAMBIO,',
'       c006 total,',
'       c007 COD_CLIENTE,',
'       c008 NOM_CLIENTE,',
'       c009 nro_remision,',
'       c010 OBSERVACION,',
'       c011 NRO_RECIBO,',
'       c012 NRO_NCR,',
'       c013 NRO_CANJE,',
'       c014 TIP_COMPROBANTE,',
'       NULL IMPRIMIR,',
'       NULL IMPRIMIR_2,',
'       NULL IMPRIMIR_3,',
'       NULL IMPRIMIR_4,',
'       NULL IMPRIMIR_5',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'''))
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
 p_id=>wwv_flow_imp.id(103366804397771135)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103366933387771136)
,p_query_column_id=>2
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367047915771137)
,p_query_column_id=>3
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>unistr('N\00FAmero')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367166548771138)
,p_query_column_id=>4
,p_column_alias=>'PEDIDO'
,p_column_display_sequence=>50
,p_column_heading=>'Pedido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367271036771139)
,p_query_column_id=>5
,p_column_alias=>'COD_MONEDA'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367310351771140)
,p_query_column_id=>6
,p_column_alias=>'TICAMBIO'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367419091771141)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>110
,p_column_heading=>'Importe'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367551327771142)
,p_query_column_id=>8
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>90
,p_column_heading=>'Cod. Cliente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367644640771143)
,p_query_column_id=>9
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>100
,p_column_heading=>'Nombre Cliente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367710724771144)
,p_query_column_id=>10
,p_column_alias=>'NRO_REMISION'
,p_column_display_sequence=>150
,p_column_heading=>unistr('N\00BA Remisi\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367846894771145)
,p_query_column_id=>11
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>160
,p_column_heading=>unistr('Observaci\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103367914648771146)
,p_query_column_id=>12
,p_column_alias=>'NRO_RECIBO'
,p_column_display_sequence=>120
,p_column_heading=>unistr('N\00BA Recibo')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103368014965771147)
,p_query_column_id=>13
,p_column_alias=>'NRO_NCR'
,p_column_display_sequence=>140
,p_column_heading=>unistr('N\00BA NC')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(103368150671771148)
,p_query_column_id=>14
,p_column_alias=>'NRO_CANJE'
,p_column_display_sequence=>130
,p_column_heading=>unistr('N\00BA Canje')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105182103550593744)
,p_query_column_id=>15
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105179995790593722)
,p_query_column_id=>16
,p_column_alias=>'IMPRIMIR'
,p_column_display_sequence=>180
,p_column_heading=>'Imprimir'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_FAC'',''#SEQ_ID#'');'
,p_column_linktext=>' <span class="t-Button-label">FAC</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105180129626593724)
,p_query_column_id=>17
,p_column_alias=>'IMPRIMIR_2'
,p_column_display_sequence=>190
,p_column_heading=>'Imprimir'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_REC'',''#SEQ_ID#'');'
,p_column_linktext=>' <span class="t-Button-label">REC</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105180269383593725)
,p_query_column_id=>18
,p_column_alias=>'IMPRIMIR_3'
,p_column_display_sequence=>200
,p_column_heading=>'Imprimir'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_PED'',''#SEQ_ID#'');'
,p_column_linktext=>' <span class="t-Button-label">PED</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105180360267593726)
,p_query_column_id=>19
,p_column_alias=>'IMPRIMIR_4'
,p_column_display_sequence=>210
,p_column_heading=>'Imprimir'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_REM'',''#SEQ_ID#'');'
,p_column_linktext=>' <span class="t-Button-label">REM</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(105180478891593727)
,p_query_column_id=>20
,p_column_alias=>'IMPRIMIR_5'
,p_column_display_sequence=>220
,p_column_heading=>'Imprimir'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_NCR'',''#SEQ_ID#'');'
,p_column_linktext=>' <span class="t-Button-label">NCR</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99678775923806544)
,p_plug_name=>'Contenedor Cabecera 2'
,p_parent_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99676313514806520)
,p_plug_name=>'Cabecera 2'
,p_parent_plug_id=>wwv_flow_imp.id(99678775923806544)
,p_region_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99678810208806545)
,p_plug_name=>'Cabecera 2 Botonera 2'
,p_parent_plug_id=>wwv_flow_imp.id(99678775923806544)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99679067726806547)
,p_plug_name=>'Cabecera 2 Botonera'
,p_parent_plug_id=>wwv_flow_imp.id(99678775923806544)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101974294750920933)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99679161150806548)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(99678810208806545)
,p_button_name=>'BTDETALLE_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalle de Pedidos y Facturas'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99679255019806549)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(99678810208806545)
,p_button_name=>'BTBUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Buscar'
,p_button_position=>'ABOVE_BOX'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99678036522806537)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99676313514806520)
,p_button_name=>'BTFACTURAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar Planilla'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gears'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99678106101806538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99679067726806547)
,p_button_name=>'BTIMPRIMIR_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Facturas'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99678295233806539)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(99679067726806547)
,p_button_name=>'BTIMPRIMIR_RECIBO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Recibo'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99678339601806540)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(99679067726806547)
,p_button_name=>'BTIMPRIMIR_PAGARE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Pagares'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99678488435806541)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(99679067726806547)
,p_button_name=>'BTIMPRIMIR_REMISIONES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Remisi\00F3n')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99678558854806542)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(99679067726806547)
,p_button_name=>'BTITEM_615'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('N. Cr\00E9dito')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99676037562806517)
,p_name=>'P361_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>' Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99676153596806518)
,p_name=>'P361_COD_CUSTODIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99676546728806522)
,p_name=>'P361_COD_COBRADOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COBRADORES_RPFACCPH'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cobrador R, ',
'       c.cod_cobrador||'' - ''||nvl( ltrim(p.nombre), ltrim(p.nomb_fantasia)) D ',
'  from cc_cobradores c, ',
'       personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(99676639481806523)
,p_name=>'P361_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Serie Factura'
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
 p_id=>wwv_flow_imp.id(99676735895806524)
,p_name=>'P361_COD_CUSTODIO_ENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Destino'
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
 p_id=>wwv_flow_imp.id(99676845530806525)
,p_name=>'P361_SER_NC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>unistr('Serie N Cr\00E9dito')
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
 p_id=>wwv_flow_imp.id(99676908289806526)
,p_name=>'P361_SER_RECIBO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Serie Recibo'
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
 p_id=>wwv_flow_imp.id(99677027460806527)
,p_name=>'P361_SER_REMISION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>unistr('Serie Remisi\00F3n')
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
 p_id=>wwv_flow_imp.id(99677130883806528)
,p_name=>'P361_GENERA_MD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Generar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99677213420806529)
,p_name=>'P361_VARIOS_DEPOSITOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>unistr('Facturar Varios Dep\00F3sitos')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99677324769806530)
,p_name=>'P361_NRO_PLANILLA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
,p_prompt=>'Nro. Planilla Ruteo'
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
 p_id=>wwv_flow_imp.id(99677495971806531)
,p_name=>'P361_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99677557949806532)
,p_name=>'P361_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99677643669806533)
,p_name=>'P361_TIP_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99678662755806543)
,p_name=>'P361_NRO_PLANILLA_TRASLADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99678810208806545)
,p_prompt=>'Traslado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(103363779648771104)
,p_name=>'P361_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
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
 p_id=>wwv_flow_imp.id(103364364286771110)
,p_name=>'P361_DESC_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99675996853806516)
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
 p_id=>wwv_flow_imp.id(103364555661771112)
,p_name=>'P361_MENSAJE_COD_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103365271539771119)
,p_name=>'P361_MENSAJE_SER_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103365950861771126)
,p_name=>'P361_MENSAJE_SER_NC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103368349153771150)
,p_name=>'P361_MENSAJE_BTFACTURAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105177806217593701)
,p_name=>'P361_NRO_REMISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105179353016593716)
,p_name=>'P361_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(99675858423806515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105179585693593718)
,p_name=>'P361_SEQ_ID_DETALLE_FAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105180558324593728)
,p_name=>'P361_SEQ_ID_DETALLE_REC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105180685567593729)
,p_name=>'P361_SEQ_ID_DETALLE_PED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105180745272593730)
,p_name=>'P361_SEQ_ID_DETALLE_REM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105180865998593731)
,p_name=>'P361_SEQ_ID_DETALLE_NCR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108892620815538409)
,p_name=>'P361_COD_CLIENTE_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108892771785538410)
,p_name=>'P361_TIP_COMPROBANTE_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108892841733538411)
,p_name=>'P361_SER_COMPROBANTE_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108892968095538412)
,p_name=>'P361_NRO_COMPROBANTE_AUX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108893102702538414)
,p_name=>'P361_CONTROL_PAGARE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108893662812538419)
,p_name=>'P361_SER_REMISION_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(99676465751806521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103363852572771105)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103363988967771106)
,p_event_id=>wwv_flow_imp.id(103363852572771105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
'APEX_DEBUG.ERROR('':P361_DESC_SUCURSAL ''||:P361_DESC_SUCURSAL);'))
,p_attribute_02=>'P361_COD_SUCURSAL,P361_DESC_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103364096870771107)
,p_event_id=>wwv_flow_imp.id(103363852572771105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BEGIN',
'        SELECT DESCRIPCION',
'          INTO :P361_DESC_SUCURSAL',
'          FROM SUCURSALES@dblink_cph',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'           AND COD_SUCURSAL = :P361_COD_SUCURSAL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P361_DESC_SUCURSAL := NULL;',
'    END;',
'',
'      if nvl(:P361_COD_SUCURSAL,''01'') IN(''20'',''28'') then',
'      	:P361_COD_CUSTODIO_ENT := ''24'';',
'      elsif nvl(:P361_COD_SUCURSAL,''01'')=''65'' then',
'      	:P361_COD_CUSTODIO_ENT := ''171'';	 ',
'      elsif nvl(:P361_COD_SUCURSAL,''01'') IN(''02'',''15'') then',
'      	:P361_COD_CUSTODIO_ENT := ''305'';	',
'      	elsif nvl(:P361_COD_SUCURSAL,''01'') in(''09'',''105'') then',
'      	:P361_COD_CUSTODIO_ENT := ''233'';	 ',
'     else 	                        ',
'     	:P361_COD_CUSTODIO_ENT := ''24'';-- busca_parametro( ''CC'', ''COD_CUSTODIO_DEP'' ); ',
'     end if;',
' ',
' ',
' ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SUCURSAL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P361_COD_SUCURSAL'
,p_attribute_03=>'P361_DESC_SUCURSAL,P361_COD_CUSTODIO_ENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103364695688771113)
,p_name=>'DA_COD_CUSTODIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103364793929771114)
,p_event_id=>wwv_flow_imp.id(103364695688771113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103364859940771115)
,p_event_id=>wwv_flow_imp.id(103364695688771113)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACCPH.VALIDATE_COD_CUSTODIO(pcod_empresa   => :P_COD_EMPRESA,',
'                                   pcod_custodio  => :P361_COD_CUSTODIO,',
'                                   pcod_usuario   => :P_COD_USUARIO,',
'                                   pdesc_custodio => :P361_DESC_CUSTODIO,',
'                                   pmensaje       => :P361_MENSAJE_COD_CUSTODIO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_CUSTODIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P361_COD_CUSTODIO,P_COD_USUARIO'
,p_attribute_03=>'P361_DESC_CUSTODIO,P361_MENSAJE_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_COD_CUSTODIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103364999270771116)
,p_name=>'DA_MENSAJE_COD_CUSTODIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_MENSAJE_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103365001558771117)
,p_event_id=>wwv_flow_imp.id(103364999270771116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_MENSAJE_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103365149473771118)
,p_event_id=>wwv_flow_imp.id(103364999270771116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P361_MENSAJE_COD_CUSTODIO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_MENSAJE_COD_CUSTODIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103365378839771120)
,p_name=>'DA_SER_COMPROBANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103365404047771121)
,p_event_id=>wwv_flow_imp.id(103365378839771120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103365562444771122)
,p_event_id=>wwv_flow_imp.id(103365378839771120)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACCPH.VALIDATE_SER_COMPROBANTE(pcod_empresa     => :P_COD_EMPRESA,',
'                                      pser_comprobante => :P361_SER_COMPROBANTE,',
'                                      pmensaje         => :P361_MENSAJE_SER_COMPROBANTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SER_COMPROBANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P361_SER_COMPROBANTE'
,p_attribute_03=>'P361_MENSAJE_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103365653977771123)
,p_name=>'DA_MENSAJE_SER_COMPROBANTE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_MENSAJE_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103365720707771124)
,p_event_id=>wwv_flow_imp.id(103365653977771123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103365801418771125)
,p_event_id=>wwv_flow_imp.id(103365653977771123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P361_MENSAJE_SER_COMPROBANTE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_MENSAJE_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103366056446771127)
,p_name=>'DA_MENSAJE_SER_NC'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_MENSAJE_SER_NC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103366146838771128)
,p_event_id=>wwv_flow_imp.id(103366056446771127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_MENSAJE_SER_NC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103366298923771129)
,p_event_id=>wwv_flow_imp.id(103366056446771127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P361_MENSAJE_SER_NC.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_MENSAJE_SER_NC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103366357323771130)
,p_name=>'DA_SER_NC'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SER_NC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103366403564771131)
,p_event_id=>wwv_flow_imp.id(103366357323771130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SER_NC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103366594434771132)
,p_event_id=>wwv_flow_imp.id(103366357323771130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACCPH.VALIDATE_SER_NC(pcod_empresa  => :P_COD_EMPRESA,',
'                             pcod_sucursal => :P361_COD_SUCURSAL,',
'                             pser_nc       => :P361_SER_NC,',
'                             pmensaje      => :P361_MENSAJE_SER_NC);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SER_NC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P361_COD_SUCURSAL,P361_SER_NC'
,p_attribute_03=>'P361_MENSAJE_SER_NC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_SER_NC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103366652844771133)
,p_name=>'DA_BTFACTURAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99678036522806537)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103366702498771134)
,p_event_id=>wwv_flow_imp.id(103366652844771133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar la planilla?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103368260060771149)
,p_event_id=>wwv_flow_imp.id(103366652844771133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACCPH.BTFACTURAR(pcod_empresa        => :P_COD_EMPRESA,',
'                        ptip_pedido         => :P361_TIP_PEDIDO,',
'                        pser_comprobante    => :P361_SER_COMPROBANTE,',
'                        pcod_custodio       => :P361_COD_CUSTODIO,',
'                        pcod_custodio_ent   => :P361_COD_CUSTODIO_ENT,',
'                        pcod_sucursal       => :P361_COD_SUCURSAL,',
'                        pnro_planilla       => :P361_NRO_PLANILLA,',
'                        pvarios_depositos   => :P361_VARIOS_DEPOSITOS,',
'                        pser_remision       => :P361_SER_REMISION,',
'                        pser_recibo         => :P361_SER_RECIBO,',
'                        pcod_cobrador       => :P361_COD_COBRADOR,',
'                        pser_nc             => :P361_SER_NC,',
'                        pcod_usuario        => :P_COD_USUARIO,',
'                        pmensaje            => :P361_MENSAJE_BTFACTURAR,',
'                        pdatos_nro_remision => :P361_NRO_REMISION,',
'                        pnro_planilla_tras  => :P361_NRO_PLANILLA_TRASLADO);  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTFACTURAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P361_TIP_PEDIDO,P361_SER_COMPROBANTE,P361_COD_CUSTODIO,P361_COD_CUSTODIO_ENT,P361_COD_SUCURSAL,P361_NRO_PLANILLA,P361_VARIOS_DEPOSITOS,P361_SER_REMISION,P361_SER_RECIBO,P361_COD_COBRADOR,P361_SER_NC,P361_COD_USUARIO,P_COD_USUARIO'
,p_attribute_03=>'P361_MENSAJE_BTFACTURAR,P361_NRO_REMISION,P361_NRO_PLANILLA_TRASLADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105177994757593702)
,p_event_id=>wwv_flow_imp.id(103366652844771133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99676465751806521)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105178001265593703)
,p_name=>'DA_MENSAJE_BTFACTURAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_MENSAJE_BTFACTURAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105178107276593704)
,p_event_id=>wwv_flow_imp.id(105178001265593703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_MENSAJE_BTFACTURAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105178256542593705)
,p_event_id=>wwv_flow_imp.id(105178001265593703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P361_MENSAJE_BTFACTURAR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P361_MENSAJE_BTFACTURAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105178399679593706)
,p_name=>'DA_BTIMPRIMIR_FACTURAS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99678106101806538)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105178449274593707)
,p_event_id=>wwv_flow_imp.id(105178399679593706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c001 ser_comprobante,',
'                     c002 nro_comprobante,',
'                     c014 TIP_COMPROBANTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        RPFACCPH.IMPRIMIR_FACTURA(p_cod_empresa        => :P_COD_EMPRESA,',
'                                  p_cod_sucursal       => :P361_COD_SUCURSAL,',
'                                  p_tipo               => CC.TIP_COMPROBANTE,',
'                                  p_serie              => CC.SER_COMPROBANTE,',
'                                  p_numero             => CC.NRO_COMPROBANTE,',
'                                  p_ind_auto_impresion => ''S'',',
'                                  p_grupo_numeracion   => 0);',
'    END LOOP;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_FACTURAS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108892181975538404)
,p_event_id=>wwv_flow_imp.id(105178399679593706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanonFeMasivo(apex.item(''P_COD_EMPRESA'').getValue(), ',
'                        apex.item(''P361_NRO_PLANILLA'').getValue(),',
'                        apex.item(''P_COD_USUARIO'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105178554538593708)
,p_name=>'DA_BTIMPRIMIR_RECIBO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99678295233806539)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105178678102593709)
,p_event_id=>wwv_flow_imp.id(105178554538593708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c011 NRO_RECIBO',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_RECIBO IS NOT NULL THEN',
'        NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_RECIBO ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108891818685538401)
,p_event_id=>wwv_flow_imp.id(105178554538593708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCReciboMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P361_NRO_PLANILLA'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105178749653593710)
,p_name=>'DA_BTIMPRIMIR_PAGARE'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99678339601806540)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105178896184593711)
,p_event_id=>wwv_flow_imp.id(105178749653593710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c001 ser_comprobante,',
'                     c002 nro_comprobante,',
'                     c013 NRO_CANJE,',
'                     c014 TIP_COMPROBANTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_CANJE IS NOT NULL THEN',
'            NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_PAGARE ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108892496707538407)
,p_event_id=>wwv_flow_imp.id(105178749653593710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doPagareMasivo  (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                 apex.item(''P361_NRO_PLANILLA'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105178971335593712)
,p_name=>'DA_BTIMPRIMIR_REMISIONES'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99678488435806541)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105179051184593713)
,p_event_id=>wwv_flow_imp.id(105178971335593712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c009 nro_remision',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_REMISION IS NOT NULL THEN',
'        NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_REMISIONES ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108891913584538402)
,p_event_id=>wwv_flow_imp.id(105178971335593712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doStremautMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P361_NRO_PLANILLA'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105179189729593714)
,p_name=>'DA_BTITEM_615'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99678558854806542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105179276530593715)
,p_event_id=>wwv_flow_imp.id(105179189729593714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c012 NRO_NCR',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_NCR IS NOT NULL THEN',
'        NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTITEM_615 ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108892028031538403)
,p_event_id=>wwv_flow_imp.id(105179189729593714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanonFe (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P361_NRO_PLANILLA'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105179758602593720)
,p_name=>'DA_SEQ_ID_IMPRIMIR_FAC'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SEQ_ID_DETALLE_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105179845403593721)
,p_event_id=>wwv_flow_imp.id(105179758602593720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SEQ_ID_DETALLE_FAC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105180082758593723)
,p_event_id=>wwv_flow_imp.id(105179758602593720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'BEGIN',
'    BEGIN',
'        SELECT c014,',
'               c001,',
'               c002,',
'               c007',
'          INTO VTIP_COMPROBANTE,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VCOD_CLIENTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P361_SEQ_ID_DETALLE_FAC;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_COMPROBANTE := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    RPFACCPH.IMPRIMIR_FACTURA(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_cod_sucursal       => :P361_COD_SUCURSAL,',
'                              p_tipo               => VTIP_COMPROBANTE,',
'                              p_serie              => VSER_COMPROBANTE,',
'                              p_numero             => VNRO_COMPROBANTE,',
'                              p_ind_auto_impresion => ''S'',',
'                              p_grupo_numeracion   => 0);',
'',
'    :P361_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'    :P361_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'    :P361_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P361_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_FAC''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P361_COD_SUCURSAL'
,p_attribute_03=>'P361_COD_CLIENTE_AUX,P361_TIP_COMPROBANTE_AUX,P361_SER_COMPROBANTE_AUX,P361_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108892569606538408)
,p_event_id=>wwv_flow_imp.id(105179758602593720)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanon (apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P361_COD_CLIENTE_AUX'').getValue(),',
'                 "",',
'                 "",',
'                 apex.item(''P361_TIP_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P_COD_USUARIO'').getValue(),',
'                 apex.item(''P361_SER_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue(),',
'                 "S");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105180913727593732)
,p_name=>'DA_SEQ_ID_IMPRIMIR_REC'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SEQ_ID_DETALLE_REC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(105181083256593733)
,p_event_id=>wwv_flow_imp.id(105180913727593732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SEQ_ID_DETALLE_REC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105181174822593734)
,p_event_id=>wwv_flow_imp.id(105180913727593732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_RECIBO VARCHAR2(500);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'BEGIN',
'    BEGIN',
'        SELECT c011,',
'               c001,',
'               c002',
'          INTO VNRO_RECIBO,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P361_SEQ_ID_DETALLE_REC;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VNRO_RECIBO := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'    END;',
'',
'    :P361_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P361_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_REC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P361_SEQ_ID_DETALLE_REC'
,p_attribute_03=>'P361_SER_COMPROBANTE_AUX,P361_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108893077400538413)
,p_event_id=>wwv_flow_imp.id(105180913727593732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCRecibo(apex.item(''P361_SER_COMPROBANTE_AUX'').getValue(),',
'           apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105181216576593735)
,p_name=>'DA_SEQ_ID_IMPRIMIR_PED'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SEQ_ID_DETALLE_PED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105181318105593736)
,p_event_id=>wwv_flow_imp.id(105181216576593735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SEQ_ID_DETALLE_PED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105181862687593741)
,p_event_id=>wwv_flow_imp.id(105181216576593735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VNRO_CANJE VARCHAR2(500);',
'VTIP_CLIENTE VARCHAR2(500);',
'VPAGARE_UNICO VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'BEGIN',
'    BEGIN',
'        SELECT c014,',
'               c001,',
'               c002,',
'               c013,',
'               c007',
'          INTO VTIP_COMPROBANTE,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VNRO_CANJE,',
'               VCOD_CLIENTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P361_SEQ_ID_DETALLE_PED;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_COMPROBANTE := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VNRO_CANJE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    RPFACCPH.imprimir_pagares(p_cod_empresa => :P_COD_EMPRESA,                           ',
'                              p_tipo        => VTIP_COMPROBANTE,',
'                              p_serie       => VSER_COMPROBANTE,',
'                              p_numero      => VNRO_COMPROBANTE,',
'                              p_nro_canje   => VNRO_CANJE,',
'                              ptip_cliente  => VTIP_CLIENTE,',
'                              ppagare_unico => VPAGARE_UNICO);',
'',
'    IF NVL(VTIP_CLIENTE,''d'') = ''6'' THEN',
'        :P361_CONTROL_PAGARE := 1;--run_product( REPORTS, ''CCPAGARE_EMP_CPH'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL ) ;',
'    ELSIF VPAGARE_UNICO = ''S'' THEN',
'        :P361_CONTROL_PAGARE := 2;--run_product( REPORTS, ''CCPAGARE_UNICO_CPH'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL );',
'    ELSE',
'        :P361_CONTROL_PAGARE := 3;--run_product( REPORTS, ''CCPAGARE_OFICIO_CANON_CPH'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL ) ;',
'    END IF;   ',
'    ',
'    :P361_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'    :P361_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'    :P361_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P361_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_PED ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P361_SEQ_ID_DETALLE_PED'
,p_attribute_03=>'P361_CONTROL_PAGARE,P361_COD_CLIENTE_AUX,P361_TIP_COMPROBANTE_AUX,P361_SER_COMPROBANTE_AUX,P361_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108893280374538415)
,p_event_id=>wwv_flow_imp.id(105181216576593735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareEmp (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P361_COD_CLIENTE_AUX'').getValue(),',
'                apex.item(''P361_TIP_COMPROBANTE_AUX'').getValue(),',
'                apex.item(''P_COD_USUARIO'').getValue(),',
'                apex.item(''P361_SER_COMPROBANTE_AUX'').getValue(),',
'                "",',
'                apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P361_CONTROL_PAGARE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108893325316538416)
,p_event_id=>wwv_flow_imp.id(105181216576593735)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareUnico(apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P361_COD_CLIENTE_AUX'').getValue(),',
'                apex.item(''P361_TIP_COMPROBANTE_AUX'').getValue(),',
'                apex.item(''P361_SER_COMPROBANTE_AUX'').getValue(),',
'                "",',
'                apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P361_CONTROL_PAGARE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108893409029538417)
,p_event_id=>wwv_flow_imp.id(105181216576593735)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareOficioCanon(apex.item(''P_COD_EMPRESA'').getValue(),',
'                     apex.item(''P361_COD_CLIENTE_AUX'').getValue(),',
'                     apex.item(''P361_TIP_COMPROBANTE_AUX'').getValue(),',
'                     apex.item(''P361_SER_COMPROBANTE_AUX'').getValue(),',
'                     "",',
'                     apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P361_CONTROL_PAGARE'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105181478556593737)
,p_name=>'DA_SEQ_ID_IMPRIMIR_REM'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SEQ_ID_DETALLE_REM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105181514698593738)
,p_event_id=>wwv_flow_imp.id(105181478556593737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SEQ_ID_DETALLE_REM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105181994852593742)
,p_event_id=>wwv_flow_imp.id(105181478556593737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_REMISION VARCHAR2(500);',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'VSER_COMPROBANTE VARCHAR2(50);',
'BEGIN',
'    BEGIN',
'        SELECT c009,',
'               c014,',
'               c002,',
'               c007,',
'               c001',
'          INTO VNRO_REMISION,',
'               VTIP_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VCOD_CLIENTE,',
'               VSER_COMPROBANTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P361_SEQ_ID_DETALLE_REM;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VNRO_REMISION := NULL;',
'        VTIP_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    IF VNRO_REMISION IS NOT NULL THEN',
'        RPFACCPH.imprimir_remisiones(p_cod_empresa  => :P_COD_EMPRESA,',
'                                     p_ser_remision => :P361_SER_REMISION,',
'                                     p_num_remision => VNRO_REMISION);',
'',
'        :P361_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'        :P361_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'        :P361_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'        :P361_SER_REMISION_AUX := VNRO_REMISION;',
'        :P361_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_REM ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P361_SEQ_ID_DETALLE_REM'
,p_attribute_03=>'P361_COD_CLIENTE_AUX,P361_TIP_COMPROBANTE_AUX,P361_NRO_COMPROBANTE_AUX,P361_SER_REMISION_AUX,P361_SER_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108893596107538418)
,p_event_id=>wwv_flow_imp.id(105181478556593737)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doStremaut (apex.item(''P_COD_EMPRESA'').getValue(),',
'            apex.item(''P361_COD_CLIENTE_AUX'').getValue(),',
'            apex.item(''P361_TIP_COMPROBANTE_AUX'').getValue(),',
'            apex.item(''P361_SER_REMISION'').getValue(),',
'            apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue(),',
'            apex.item(''P_COD_USUARIO'').getValue(),',
'            "",',
'            "");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105181683990593739)
,p_name=>'DA_SEQ_ID_IMPRIMIR_NCR'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_SEQ_ID_DETALLE_NCR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105181745540593740)
,p_event_id=>wwv_flow_imp.id(105181683990593739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P361_SEQ_ID_DETALLE_NCR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105182006678593743)
,p_event_id=>wwv_flow_imp.id(105181683990593739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'wexiste varchar2(1);',
'BEGIN',
'    BEGIN',
'        SELECT c014,',
'               c001,',
'               c002,',
'               c007',
'          INTO VTIP_COMPROBANTE,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VCOD_CLIENTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P361_SEQ_ID_DETALLE_NCR;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_COMPROBANTE := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    begin',
'        select ''S''',
'          into wexiste',
'          from vt_contador_impresion_fact@dblink_cph',
'         where cod_empresa = :P_COD_EMPRESA',
'           and tip_comprobante = ''NCR''',
'           and ser_comprobante = :P361_SER_NC',
'           and nro_comprobante = VNRO_COMPROBANTE;',
'',
'        if wexiste is null then',
'        	wexiste := ''N'';',
'        end if;',
'    exception',
'        when others then',
'        wexiste := ''N'';',
'    end;',
'',
'    if wexiste = ''N'' then',
'        RPFACCPH.IMPRIMIR_NCR(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_cod_sucursal       => :P361_COD_SUCURSAL,',
'                              p_tipo               => ''NCR'',',
'                              p_serie              => :P361_SER_NC,',
'                              p_numero             => VNRO_COMPROBANTE,',
'                              p_ind_auto_impresion => ''S'',',
'                              p_grupo_numeracion   => 0);',
'    end if;',
'',
'    :P361_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'    :P361_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'    :P361_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P361_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_NCR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P361_SEQ_ID_DETALLE_NCR,P_COD_EMPRESA,P361_SER_NC,P361_COD_SUCURSAL'
,p_attribute_03=>'P361_COD_CLIENTE_AUX,P361_TIP_COMPROBANTE_AUX,P361_SER_COMPROBANTE_AUX,P361_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108893719853538420)
,p_event_id=>wwv_flow_imp.id(105181683990593739)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpNcrCanon (apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P361_COD_CLIENTE_AUX'').getValue(),',
'                 apex.item(''P361_TIP_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P361_SER_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P361_NRO_COMPROBANTE_AUX'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108892218721538405)
,p_name=>'DA_IMPRIMIR_DETALLE_FACTURAS'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99679161150806548)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108892337635538406)
,p_event_id=>wwv_flow_imp.id(108892218721538405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doRpfactmaspla (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P361_NRO_PLANILLA'').getValue());'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103364181440771108)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99677780399806534)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_RPFACCPH_DETALLE'');',
':P361_COD_MODULO := ''RP'';',
':P361_GENERA_MD := ''S'';',
'--:P361_NRO_PLANILLA := 177561;--194836;',
'IF :P361_COD_SUCURSAL IS NULL THEN',
'    IF NVL(:P361_TIP_PEDIDO,''PRODUCTO'') = ''REPUESTOS'' THEN',
'        :P361_COD_SUCURSAL := ''06'';',
'    ELSE',
'        :P361_COD_SUCURSAL := ''20'';',
'    END IF;',
'END IF;',
'',
'BEGIN',
'    RPFACCPH.CARGAR_CAB(pcod_empresa      => :P_COD_EMPRESA,',
'                        pcod_usuario      => :P_COD_USUARIO,',
'                        pcod_sucursal     => :P361_COD_SUCURSAL,',
'                        pvarios_depositos => :P361_VARIOS_DEPOSITOS,',
'                        pcod_custodio     => :P361_COD_CUSTODIO,',
'                        pdesc_custodio    => :P361_DESC_CUSTODIO,',
'                        pcod_cobrador     => :P361_COD_COBRADOR,',
'                        pser_comprobante  => :P361_SER_COMPROBANTE,',
'                        pser_nc           => :P361_SER_NC,',
'                        pser_remision     => :P361_SER_REMISION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT CARGAR_DATOS ''||SQLERRM);',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(105179694632593719)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LLENAR_COL_BORRAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR X IN(select c.tip_comprobante, ',
'    		       c.ser_comprobante, ',
'    		       c.nro_comprobante,',
'    		       c.NOM_CLIENTE,',
'    		       c.COD_CLIENTE,',
'    		       c.tot_comprobante total, ',
'    		       c.COD_MONEDA, ',
'    		       c.TIP_CAMBIO, ',
'    		       c.ser_comprobante_ref||''-''||c.nro_comprobante_ref pedido, ',
'    		       c.ser_comprobante_ref, ',
'    		       c.nro_comprobante_ref,',
unistr('    		       r.nro_comprobante nro_remision, --Consulta modificada a fin de poder agregar el n\00FAmero de remisi\00F3n a la pantalla. Gaspar M. 18/03/2022'),
'                   c.nro_planilla_PEDIDO',
'              from vt_comprobantes_cabecera@dblink_cph c,',
'    		       st_remision_cab@dblink_cph r',
'    		 where c.cod_empresa = r.cod_empresa (+)',
'    		  and c.ser_comprobante = r.ser_comprobante_ref (+)',
'    		  and c.nro_comprobante = r.nro_comprobante_ref (+)',
'    		  and c.cod_empresa = ''1''',
'    		  and c.nro_planilla_PEDIDO = 173556',
'    		  and c.tip_comprobante in (''FCR'', ''FCO'')',
'    		order by c.nro_comprobante)',
'LOOP',
'    APEX_COLLECTION.add_member(p_collection_name => ''COLEC_RPFACCPH_DETALLE'',',
'                                       p_c001 => x.ser_comprobante,',
'                                       p_c002 => x.nro_comprobante, ',
'                                       p_c003 => x.pedido, ',
'                                       p_c004 => x.COD_MONEDA,',
'                                       p_c005 => x.TIP_CAMBIO,',
'                                       p_c006 => x.total,',
'                                       p_c007 => x.COD_CLIENTE,',
'                                       p_c008 => x.NOM_CLIENTE,',
'                                       p_c009 => x.nro_remision,',
'                                       p_c010 => null,--OBSERVACION',
'                                       p_c011 => NULL,--NRO_RECIBO',
'                                       p_c012 => NULL,--NRO_NCR',
'                                       p_c013 => NULL,--NRO_CANJE',
'                                       p_c014 => x.tip_comprobante);',
'',
'END LOOP;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
