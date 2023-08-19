prompt --application/pages/page_00370
begin
--   Manifest
--     PAGE: 00370
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
 p_id=>370
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAORDTRA'
,p_alias=>'CAORDTRA'
,p_step_title=>'Carga de Orden de Trabajo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#util_generico.js',
'#APP_IMAGES#inputmask.js',
'#APP_IMAGES#imask.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"''; ',
'',
'',
'',
''))
,p_javascript_code_onload=>'  '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #ffed00 !important;',
'   border-color: red !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label{',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
' .tabla_color  th.t-Report-colHead{',
'  background-color: #003a85; ',
'  color: yellow  !important;',
'  border-color: cadetblue;',
'}',
'td[headers="SER_REP_SOL"], #SER_REP_SOL , td[headers="NRO_REP_SOL"], #NRO_REP_SOL, #SEQ_ID , td[headers="SEQ_ID"]{',
'        display: none;',
'    }',
' ',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea , .apex-item-display-only{',
'   background-color: white !important;',
'   border-width: 0.5px;',
'   border-color: darkblue !important;   ',
'   color: darkblue!important;   ',
'}',
'#P63_GARANTIA_LABEL, #P63_IND_RECLAMO_LABEL, .u-radio{ color: darkblue  !important;',
'}',
'#REG_OT{',
'   background-color: #487ab8 !important;}',
'   ',
'#finalizar_ot {',
'    display: none !important;',
'}',
'',
'.t-BreadcrumbRegion {',
'    padding: 1px;',
'}',
'',
'.t-Region .t-Region-body {',
'    padding: 1px;',
'}',
'',
'',
'.t-Form-fieldContainer:not(.js-show-label) .t-Form-labelContainer .t-Form-label {        ',
'    margin-top: -8px ;       ',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230818114809'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106525111792760542)
,p_plug_name=>'MENU PRINCIPAL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110209709574399619)
,p_plug_name=>'Taller'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(75707913031194348)
,p_name=>'Repuestos / Mano de Obra'
,p_parent_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>2000
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id,',
'        c001 COD_EMPRESA,',
'        c002 TIP_OT,',
'        c003 SER_OT,',
'        c004 NRO_OT,',
'        c005 COD_ARTICULO,',
'        c006 DESCRIPCION,',
'        c007 CANT_PRESUPUESTADO,',
'        to_number(c008) MONTO_PRESUPUESTO,',
'        c009 CANT_PEDIDO,',
'        c010 CANT_CONFIRMADA,',
'        c011 PEDIDO_VERIFICADO,',
'        c012 FECHA_CONFIRMA,',
'        c013 FECHA_RECEPION,',
'        c014 CANT_UTILIZADO,',
'        c015 IMPORTE_REPUESTO,',
'        c016 IND_RECEPCION,',
'        c017 IND_RECHAZADO,',
'        c018 RECEPCIONADO,',
'        c019 RECHAZADO,',
'        c020 COD_SUCURSAL_ENV,',
'        C021 CANT_PREPARADA,',
'        c022 nro_pedido,',
'        c023 ser_pedido,',
'        c024 tip_pedido,',
'        c025 devolver, ',
'        c026 cant_devuelto,',
'        c027 importe_devuelto,',
'        c028 CON_STOCK,',
'        c029 stock',
'          from apex_collections',
' where collection_name = ''VT_PRODUCTOS'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
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
 p_id=>wwv_flow_imp.id(173011422302991218)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>220
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75708042233194349)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75708157625194350)
,p_query_column_id=>3
,p_column_alias=>'TIP_OT'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173009745880991201)
,p_query_column_id=>4
,p_column_alias=>'SER_OT'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173009821059991202)
,p_query_column_id=>5
,p_column_alias=>'NRO_OT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173009914428991203)
,p_query_column_id=>6
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>50
,p_column_heading=>unistr('C\00F3d. Articulo')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010080322991204)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>60
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010115234991205)
,p_query_column_id=>8
,p_column_alias=>'CANT_PRESUPUESTADO'
,p_column_display_sequence=>90
,p_column_heading=>'Cantidad Presupuestado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010230168991206)
,p_query_column_id=>9
,p_column_alias=>'MONTO_PRESUPUESTO'
,p_column_display_sequence=>80
,p_column_heading=>'Monto Presupuesto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010351984991207)
,p_query_column_id=>10
,p_column_alias=>'CANT_PEDIDO'
,p_column_display_sequence=>100
,p_column_heading=>'Cantidad Pedido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010437920991208)
,p_query_column_id=>11
,p_column_alias=>'CANT_CONFIRMADA'
,p_column_display_sequence=>120
,p_column_heading=>'Cantidad Confirmada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010504787991209)
,p_query_column_id=>12
,p_column_alias=>'PEDIDO_VERIFICADO'
,p_column_display_sequence=>130
,p_column_heading=>'Pedido Verificado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010602279991210)
,p_query_column_id=>13
,p_column_alias=>'FECHA_CONFIRMA'
,p_column_display_sequence=>140
,p_column_heading=>unistr('Fecha Confirmaci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010720786991211)
,p_query_column_id=>14
,p_column_alias=>'FECHA_RECEPION'
,p_column_display_sequence=>150
,p_column_heading=>unistr('Fecha Recepci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010858301991212)
,p_query_column_id=>15
,p_column_alias=>'CANT_UTILIZADO'
,p_column_display_sequence=>160
,p_column_heading=>'Cantidad Utilizado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173010958910991213)
,p_query_column_id=>16
,p_column_alias=>'IMPORTE_REPUESTO'
,p_column_display_sequence=>170
,p_column_heading=>'Importe Repuesto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173011043362991214)
,p_query_column_id=>17
,p_column_alias=>'IND_RECEPCION'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173011180174991215)
,p_query_column_id=>18
,p_column_alias=>'IND_RECHAZADO'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173011289476991216)
,p_query_column_id=>19
,p_column_alias=>'RECEPCIONADO'
,p_column_display_sequence=>200
,p_column_heading=>'Recepcionado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_recep2'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173011385702991217)
,p_query_column_id=>20
,p_column_alias=>'RECHAZADO'
,p_column_display_sequence=>210
,p_column_heading=>'Rechazado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_rechaz2'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173013241365991236)
,p_query_column_id=>21
,p_column_alias=>'COD_SUCURSAL_ENV'
,p_column_display_sequence=>230
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173013320960991237)
,p_query_column_id=>22
,p_column_alias=>'CANT_PREPARADA'
,p_column_display_sequence=>110
,p_column_heading=>'Cantidad Preparada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173013543283991239)
,p_query_column_id=>23
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173013665638991240)
,p_query_column_id=>24
,p_column_alias=>'SER_PEDIDO'
,p_column_display_sequence=>260
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173013727314991241)
,p_query_column_id=>25
,p_column_alias=>'TIP_PEDIDO'
,p_column_display_sequence=>270
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173014323688991247)
,p_query_column_id=>26
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>280
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_dev2'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173536939014096906)
,p_query_column_id=>27
,p_column_alias=>'CANT_DEVUELTO'
,p_column_display_sequence=>290
,p_column_heading=>'Cant Devuelto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173537060498096907)
,p_query_column_id=>28
,p_column_alias=>'IMPORTE_DEVUELTO'
,p_column_display_sequence=>300
,p_column_heading=>'Importe Devuelto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173537249904096909)
,p_query_column_id=>29
,p_column_alias=>'CON_STOCK'
,p_column_display_sequence=>310
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(173537389899096910)
,p_query_column_id=>30
,p_column_alias=>'STOCK'
,p_column_display_sequence=>320
,p_column_heading=>'Stock'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(104445300965494209)
,p_name=>'Problemas'
,p_parent_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>80
,p_region_css_classes=>'refreshme tabla_color2'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL  ,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=''1'' and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc',
'',
' /*',
'         apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                            p_c001 => R.COD_PROBLEMA_CLIENTE,',
'                                            p_c002 => R.PROBL_CLI ,',
'                                            p_c003 => R.COD_PROBLEMA ,',
'                                            p_c004 => R.PROBLEMA ,',
'                                            p_c005 => R.COD_SOLUCION ,',
'                                            p_c006 => R.SOLUCION,',
'                                            p_c007 => R.REPARADO',
'                                            );*/',
'                                            '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_COD_USUARIO_SIN_RP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104445447160494210)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104445513500494211)
,p_query_column_id=>2
,p_column_alias=>'COD_PC'
,p_column_display_sequence=>20
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104445621834494212)
,p_query_column_id=>3
,p_column_alias=>'PROBLEMA_CLIENTE'
,p_column_display_sequence=>30
,p_column_heading=>'Problema Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104445703996494213)
,p_query_column_id=>4
,p_column_alias=>'COD_PR'
,p_column_display_sequence=>40
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104445805688494214)
,p_query_column_id=>5
,p_column_alias=>'PROBLEMA'
,p_column_display_sequence=>50
,p_column_heading=>'Problema'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104445940399494215)
,p_query_column_id=>6
,p_column_alias=>'COD_SOL'
,p_column_display_sequence=>60
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104446008252494216)
,p_query_column_id=>7
,p_column_alias=>'SOLUCION'
,p_column_display_sequence=>70
,p_column_heading=>'Solucion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104446136044494217)
,p_query_column_id=>8
,p_column_alias=>'REPARADO'
,p_column_display_sequence=>80
,p_column_heading=>'Reparado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(104446250729494218)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>90
,p_column_heading=>'Remove'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ps" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110208278068399604)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134117671452083450)
,p_plug_name=>'Presupuestos'
,p_parent_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>1160
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106525777045760548)
,p_plug_name=>'Presupuesto'
,p_parent_plug_id=>wwv_flow_imp.id(134117671452083450)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115740124962259220)
,p_plug_name=>'Pedidos de Repuestos'
,p_parent_plug_id=>wwv_flow_imp.id(106525777045760548)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115740528809259224)
,p_plug_name=>'Solicitud / Entrega de Productos'
,p_parent_plug_id=>wwv_flow_imp.id(106525777045760548)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(117394682585014138)
,p_name=>'Repuestos Devueltos'
,p_region_name=>'B_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(106525777045760548)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 COD_ARTICULO,',
'    c002 DESC_ARTICULO,',
'    c003 COD_UNIDAD_MEDIDA,',
'    c004 DESC_UNIDAD_MEDIDA,',
'    c005 CANTIDAD,',
'    c006 CANTIDAD_UB,',
'    c007 TIP_ENT_SAL,',
'    c008 COD_GRUPO_ART,',
'    c009 SER_ENT_SAL,',
'    c010 NRO_ENT_SAL,',
'    c011 FECHA,',
'    c012 MONTO_TOTAL,',
'    c013 PRECIO_LISTA,',
'    c014 TOT_LISTA',
'  from apex_collections',
' where collection_name = ''VT_B_DETALLE'';'))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(125067088174854410)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067120384854411)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>unistr('C\00F3d. Articulo')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067265178854412)
,p_query_column_id=>3
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Descripci\00F3n Art\00EDculo')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067389130854413)
,p_query_column_id=>4
,p_column_alias=>'COD_UNIDAD_MEDIDA'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067471467854414)
,p_query_column_id=>5
,p_column_alias=>'DESC_UNIDAD_MEDIDA'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067562256854415)
,p_query_column_id=>6
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>60
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067637800854416)
,p_query_column_id=>7
,p_column_alias=>'CANTIDAD_UB'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067759040854417)
,p_query_column_id=>8
,p_column_alias=>'TIP_ENT_SAL'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067840166854418)
,p_query_column_id=>9
,p_column_alias=>'COD_GRUPO_ART'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125067926127854419)
,p_query_column_id=>10
,p_column_alias=>'SER_ENT_SAL'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068049972854420)
,p_query_column_id=>11
,p_column_alias=>'NRO_ENT_SAL'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068120213854421)
,p_query_column_id=>12
,p_column_alias=>'FECHA'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068257027854422)
,p_query_column_id=>13
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>500
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068305576854423)
,p_query_column_id=>14
,p_column_alias=>'PRECIO_LISTA'
,p_column_display_sequence=>140
,p_column_heading=>'Precio Lista'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068449475854424)
,p_query_column_id=>15
,p_column_alias=>'TOT_LISTA'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(331743744062775440)
,p_name=>'Repuestos Solicitados'
,p_region_name=>'GRILLA_RS'
,p_parent_plug_id=>wwv_flow_imp.id(106525777045760548)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>90
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'        c001 as cod_articulo,',
'        nvl(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as Descripcion,',
'        (c003) as cantidad,',
'        (c004) as cantidad_pedida,     ',
'        (c005) as cantidad_ot,',
'         apex_item.checkbox2 ( 1, c009, DECODE(c009, ''S'' , ''CHECKED'' , ''UNCHECKED'') || DECODE(c006, ''I'' , '' DISABLED'' , DECODE(c009, ''S'' , '' DISABLED'' , c010, ''S'' , '' DISABLED'' ,'''') ) )  as RECEPCIONADO,',
'         apex_item.checkbox2 ( 2, c010, DECODE(c010, ''S'' , ''CHECKED'' , ''UNCHECKED'') || DECODE(c006, ''I'' , '' DISABLED'' , DECODE(c009, ''S'' , '' DISABLED'' , c010, ''S'' , '' DISABLED'' ,'''') ) )  as RECHAZADO, ',
'         null as remove, ',
'        /* ''<span class="ser_rep_sol">''||(c007)||''</span> ''ser,  */',
'        (c007) as ser_rep_sol,    ',
'        (c008) as nro_rep_sol',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
' order by 1 asc',
'',
'/*'' DISABLED''*/',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_COD_USUARIO_SIN_RP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110055014388167964)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110055425055167964)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>unistr('C\00F3d. Art\00EDculo')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_link_attr=>'class="COD_ARTICULO"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110055886307167964)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110056298941167964)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>40
,p_column_heading=>'Cant.Conf'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110056626159167965)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD_PEDIDA'
,p_column_display_sequence=>50
,p_column_heading=>'Cant.Pedida'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110057035920167965)
,p_query_column_id=>6
,p_column_alias=>'CANTIDAD_OT'
,p_column_display_sequence=>60
,p_column_heading=>'Cant.Recep'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110057474542167965)
,p_query_column_id=>7
,p_column_alias=>'RECEPCIONADO'
,p_column_display_sequence=>70
,p_column_heading=>'Recepcionado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_recep'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110057815429167965)
,p_query_column_id=>8
,p_column_alias=>'RECHAZADO'
,p_column_display_sequence=>80
,p_column_heading=>'Rechazado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_rechaz'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110058209320167966)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-rs" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110058619104167966)
,p_query_column_id=>10
,p_column_alias=>'SER_REP_SOL'
,p_column_display_sequence=>100
,p_column_heading=>'Ser Rep Sol'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110059098884167967)
,p_query_column_id=>11
,p_column_alias=>'NRO_REP_SOL'
,p_column_display_sequence=>110
,p_column_heading=>'Nro Rep Sol'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(331806421988080413)
,p_name=>'Repuestos Utilizados'
,p_region_name=>'GRILLA_RU'
,p_parent_plug_id=>wwv_flow_imp.id(106525777045760548)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>100
,p_region_css_classes=>'refreshme  tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id, ',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c001) as codigo_corto,',
'c001 as cod_articulo,',
'NVL(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'        to_number(c003) as CANTIDAD,',
'        to_number(c004) as PRECIO, ',
'        to_number(c005) as total',
'       , null as remove,',
'       ''<button type="button" id="btndev">DEVOLVER</button>'' Devolver',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS''',
' order by 1 asc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'----------- Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110060945085167969)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110061380413167969)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110061767320167969)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110062114596167970)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>8
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110062552277167970)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>24
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110062910251167971)
,p_query_column_id=>6
,p_column_alias=>'PRECIO'
,p_column_display_sequence=>34
,p_column_heading=>'Precio'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110063310674167971)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>64
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110063717646167971)
,p_query_column_id=>8
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>74
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ru" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068530748854425)
,p_query_column_id=>9
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>84
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(383160951435570047)
,p_name=>'Presupuesto'
,p_region_name=>'GRILLA_PRE'
,p_parent_plug_id=>wwv_flow_imp.id(106525777045760548)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>80
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'        c001 as cod_articulo,  ',
'        nvl(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as desc_articulo, ',
'        c003 as cantidad, ',
'        to_number(c004) as monto_total,  ',
'        apex_item.checkbox2 ( 2, c005, DECODE(c005, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS EN_STOCK,',
'       null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PRESUPUESTO''',
' order by 1 asc',
'',
'',
' /*',
'           apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.MONTO_TOTAL,',
'                                            p_c005 => R.EN_STOCK  ',
'                                            );',
' */'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_COD_USUARIO_SIN_RP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110090524938167990)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110090971131167991)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110091339476167991)
,p_query_column_id=>3
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>15
,p_column_heading=>unistr('Descripci\00F3n del Articulo')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110091715826167991)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>25
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110092179701167991)
,p_query_column_id=>5
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>35
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110092560195167992)
,p_query_column_id=>6
,p_column_alias=>'EN_STOCK'
,p_column_display_sequence=>45
,p_column_heading=>'En Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110092909571167992)
,p_query_column_id=>7
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>55
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-pre" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134812346678775517)
,p_plug_name=>'Problemas'
,p_parent_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=''1'' and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 (2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove,',
'    c010 cod_articulo',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas'
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
 p_id=>wwv_flow_imp.id(134812427045775518)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:393:&SESSION.::&DEBUG.::P393_COD_ARTICULO,P393_PROBLEMA_CLIENTE,P393_OPERACION,P393_SECUENCIA,P393_CODIGO_PROBLEMA,P393_CODIGO_SOLUCION,P393_VERIFICAR,P393_NRO_COMPROBANTE:#COD_ARTICULO#,#COD_PC#,MODIFICAR,#SEQ_ID#,#COD_PR#,#COD_SOL#,0,&'
||'P370_PARAM_NRO_OT.'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>134812427045775518
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134812592725775519)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134812606011775520)
,p_db_column_name=>'COD_PC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d. Problema Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134812721032775521)
,p_db_column_name=>'PROBLEMA_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Problema Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134812887740775522)
,p_db_column_name=>'COD_PR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3d. Problema')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134812923304775523)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Problema T\00E9cnico')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134813026789775524)
,p_db_column_name=>'COD_SOL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3d. Problema Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134813163777775525)
,p_db_column_name=>'SOLUCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134813251639775526)
,p_db_column_name=>'REPARADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reparado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134813370549775527)
,p_db_column_name=>'REMOVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remove'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134813496814775528)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135626754203247208)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1356268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PC:PROBLEMA_CLIENTE:COD_PR:PROBLEMA:COD_SOL:SOLUCION:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(331740524085775408)
,p_name=>'Mano de Obra'
,p_region_name=>'GRILLA_MO'
,p_parent_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>110
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'    c001 AS COD_ARTICULO, ',
'    NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'        to_number(c003) as MONTO,',
'        to_number(c004) as MONTO_VENTA,',
'        (c005) as COD_TECNICO,',
'       apex_item.checkbox2 ( 2, c006, DECODE(c006, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as GARANTIA,',
'       apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as RECLAMO, ',
'       null as remove',
'  from apex_collections',
' where collection_name = ''VT_MANO_OBRA''',
' order by 1 asc',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110052363274167962)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110052795583167962)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>11
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110053127715167962)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>21
,p_column_heading=>'Descripcion de la Mano de Obra'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110049971024167960)
,p_query_column_id=>4
,p_column_alias=>'MONTO'
,p_column_display_sequence=>31
,p_column_heading=>'Monto Base'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110050369356167961)
,p_query_column_id=>5
,p_column_alias=>'MONTO_VENTA'
,p_column_display_sequence=>41
,p_column_heading=>'Monto Venta'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110050765235167961)
,p_query_column_id=>6
,p_column_alias=>'COD_TECNICO'
,p_column_display_sequence=>51
,p_column_heading=>'Tecnico'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110051145302167961)
,p_query_column_id=>7
,p_column_alias=>'GARANTIA'
,p_column_display_sequence=>61
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110051585434167961)
,p_query_column_id=>8
,p_column_alias=>'RECLAMO'
,p_column_display_sequence=>71
,p_column_heading=>'Reclamo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(110051914999167962)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>81
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-mo" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114138138998544403)
,p_plug_name=>'CA_RECLAMOS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115344545590984203)
,p_plug_name=>'B_MOBRA'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 COD_EMPRESA,',
'    c002 TIP_COMPROBANTE,',
'    c003 SER_COMPROBANTE,',
'    c004 NRO_COMPROBANTE,',
'    c005 NRO_ORDEN,',
'    c006 COD_ARTICULO,',
'    c007 PORCENTAJE_CLIENTE,',
'    c008 DESC_ARTICULO,',
'    c009 COD_TECNICO,',
'    c010 NOM_TECNICO,',
'    c011 CANTIDAD,',
'    c012 COD_MONEDA,',
'    c013 DESC_MONEDA,',
'    c014 TIP_CAMBIO,',
'    c015 MONTO,',
'    c016 MONTO_GAR_JT,',
'    c017 TOT_MOBRA_ANT,',
'    c018 GARANTIA,',
'    c019 IND_RECLAMO,',
'    c020 IND_HISTORICO,',
'    c021 SUM_CANT,',
'    c022 MONTO_VENTA,',
'    c023 MONTO_JT_COMISION,',
'    c024  MONTO_COMISION_TECNICO,',
'    c025 MONTO_COMISION_JEFE_TECNICO,',
'    c026 PORCENTAJE_COMISION_JT,',
'    c027 TOTAL_COMISION_TECNICO,',
'    c028 TOTAL_COMISION_JEFE_TECNICO,',
'    c029 COMISION_JT_CUMPLE,  ',
'    c030 TOTAL_COMISION,',
'    c031 MONTO_ADICIONAL,',
'    c032 PORCENTAJE_SPP',
'  from apex_collections',
' where collection_name = ''VT_B_MOBRA'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P370_COD_USUARIO_SIN_RP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_MOBRA'
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
 p_id=>wwv_flow_imp.id(115344760210984205)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(115344853782984206)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115344953690984207)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345009320984208)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345172426984209)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345281795984210)
,p_name=>'NRO_ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Orden'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345382691984211)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345457081984212)
,p_name=>'PORCENTAJE_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345537972984213)
,p_name=>'DESC_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345685003984214)
,p_name=>'COD_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345799157984215)
,p_name=>'NOM_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nom Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115345873337984216)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115345940227984217)
,p_name=>'COD_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346020234984218)
,p_name=>'DESC_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346161683984219)
,p_name=>'TIP_CAMBIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_CAMBIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Cambio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346265426984220)
,p_name=>'MONTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346386282984221)
,p_name=>'MONTO_GAR_JT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_GAR_JT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Gar Jt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346433062984222)
,p_name=>'TOT_MOBRA_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_MOBRA_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tot Mobra Ant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346532984984223)
,p_name=>'GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Garantia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346680737984224)
,p_name=>'IND_RECLAMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_RECLAMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Reclamo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346783877984225)
,p_name=>'IND_HISTORICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_HISTORICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Historico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346815511984226)
,p_name=>'SUM_CANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_CANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sum Cant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115346915284984227)
,p_name=>'MONTO_VENTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_VENTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Venta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347021649984228)
,p_name=>'MONTO_JT_COMISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_JT_COMISION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Jt Comision'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347181852984229)
,p_name=>'MONTO_COMISION_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_COMISION_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Comision Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347243644984230)
,p_name=>'MONTO_COMISION_JEFE_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_COMISION_JEFE_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Comision Jefe Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347302705984231)
,p_name=>'PORCENTAJE_COMISION_JT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_COMISION_JT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje Comision Jt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347410916984232)
,p_name=>'TOTAL_COMISION_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COMISION_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Comision Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347551374984233)
,p_name=>'TOTAL_COMISION_JEFE_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COMISION_JEFE_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Comision Jefe Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347698624984234)
,p_name=>'COMISION_JT_CUMPLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMISION_JT_CUMPLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comision Jt Cumple'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347780888984235)
,p_name=>'TOTAL_COMISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COMISION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Comision'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347828508984236)
,p_name=>'MONTO_ADICIONAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_ADICIONAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Adicional'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(115347924314984237)
,p_name=>'PORCENTAJE_SPP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_SPP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje Spp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(115344681499984204)
,p_internal_uid=>115344681499984204
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
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
 p_id=>wwv_flow_imp.id(115355738413130738)
,p_interactive_grid_id=>wwv_flow_imp.id(115344681499984204)
,p_static_id=>'1153558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(115355983707130739)
,p_report_id=>wwv_flow_imp.id(115355738413130738)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115356469650130742)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(115344760210984205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115357363200130746)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(115344853782984206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115358205510130747)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(115344953690984207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115359150274130749)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(115345009320984208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115360086144130751)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(115345172426984209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115360995895130753)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(115345281795984210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115361808871130755)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(115345382691984211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115362725921130757)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(115345457081984212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115363639296130758)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(115345537972984213)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115364511268130760)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(115345685003984214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115365440590130762)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(115345799157984215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115366371331130764)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(115345873337984216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115367234516130766)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(115345940227984217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115368102266130767)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(115346020234984218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115369029385130769)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(115346161683984219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115369909420130771)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(115346265426984220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115370743181130772)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(115346386282984221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115371672170130774)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(115346433062984222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115372509648130776)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(115346532984984223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115373459246130778)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(115346680737984224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115374369372130780)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(115346783877984225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115375239615130781)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(115346815511984226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115376126592130783)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(115346915284984227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115377095326130785)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(115347021649984228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115377958458130787)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(115347181852984229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115378875934130789)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(115347243644984230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115379704055130790)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(115347302705984231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115380648179130792)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(115347410916984232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115381556139130794)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(115347551374984233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115382404112130796)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(115347698624984234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115383362064130798)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(115347780888984235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115384233498130800)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(115347828508984236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115385180353130801)
,p_view_id=>wwv_flow_imp.id(115355983707130739)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(115347924314984237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115349243205984250)
,p_plug_name=>'PARAMETER'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117499326801342240)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119343176864664628)
,p_plug_name=>'Rechazos'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119710408324278423)
,p_plug_name=>'TIPO CIERRE'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122668879642248619)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122671629310248647)
,p_plug_name=>unistr('Detalle de Comisi\00F3n OT')
,p_parent_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186260344562274107)
,p_plug_name=>'detalles'
,p_parent_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124020347663827301)
,p_plug_name=>'Registros de Seguimientos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 NOMBRE',
'  from apex_collections',
' where collection_name = ''TMP_REG_SEGUIMIENTOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Registros de Seguimientos'
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
 p_id=>wwv_flow_imp.id(124020476875827302)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>124020476875827302
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124020513577827303)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124020614318827304)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124173792457018606)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1241738'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124020741949827305)
,p_plug_name=>'Registros Call'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 NOMBRE',
'  from apex_collections',
' where collection_name = ''TMP_REG_CALL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Registros Call'
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
 p_id=>wwv_flow_imp.id(124020890406827306)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>124020890406827306
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124020947882827307)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124021057011827308)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124174351038018610)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1241744'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(124022767796827325)
,p_name=>'Almacenamiento'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001  empleado,',
'    c002  fec_alta,',
'    c003  tipo,',
'    c004  usuario,',
'    c005  OBSERVACION,',
'    c006  posicion',
'  from apex_collections',
' where collection_name = ''TMP_UBICACIONES'';'))
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
 p_id=>wwv_flow_imp.id(124024408773827342)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124024581566827343)
,p_query_column_id=>2
,p_column_alias=>'EMPLEADO'
,p_column_display_sequence=>20
,p_column_heading=>'Empleado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124024652627827344)
,p_query_column_id=>3
,p_column_alias=>'FEC_ALTA'
,p_column_display_sequence=>30
,p_column_heading=>'Fec Alta'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124024702676827345)
,p_query_column_id=>4
,p_column_alias=>'TIPO'
,p_column_display_sequence=>40
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124024858120827346)
,p_query_column_id=>5
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>50
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124024947225827347)
,p_query_column_id=>6
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>60
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124025045323827348)
,p_query_column_id=>7
,p_column_alias=>'POSICION'
,p_column_display_sequence=>70
,p_column_heading=>'Posicion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125070170150854441)
,p_plug_name=>unistr('Art\00EDculos Presupuestados')
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134810898354775502)
,p_plug_name=>'SNC'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134810915099775503)
,p_plug_name=>'Solicitud no conforme'
,p_parent_plug_id=>wwv_flow_imp.id(134810898354775502)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149024720054268826)
,p_plug_name=>'Garantia'
,p_region_name=>'gara'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182764542259206901)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>21
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(380784664251976839)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>11
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(383109061936570207)
,p_plug_name=>unistr('Creaci\00F3n')
,p_region_name=>'REG_OT'
,p_region_css_classes=>'CSS_CLASS'
,p_region_template_options=>'is-expanded:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'CSS_CLASS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110207940156399601)
,p_plug_name=>'Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110208123484399603)
,p_plug_name=>'Orden'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110208340728399605)
,p_plug_name=>'Distribuidor'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110208739679399609)
,p_plug_name=>'Presup'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134811632818775510)
,p_plug_name=>'Region 1'
,p_parent_plug_id=>wwv_flow_imp.id(110208739679399609)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134811773515775511)
,p_plug_name=>'Region 2'
,p_parent_plug_id=>wwv_flow_imp.id(110208739679399609)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110209545389399617)
,p_plug_name=>'Cierre'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110211544760399637)
,p_plug_name=>'Respuestos Utilizados'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(125068613861854426)
,p_name=>'Repuestos Utilizados'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>110
,p_region_css_classes=>'refreshme  tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id, ',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c001) as codigo_corto,',
'c001 as cod_articulo,',
'NVL(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'        to_number(c003) as CANTIDAD,',
'        to_number(c004) as PRECIO, ',
'        to_number(c005) as total',
'       , null as remove,',
'       ''<button type="button" id="btndev">DEVOLVER</button>'' Devolver',
'  from apex_collections',
' where collection_name = ''VT_REPUESTOS_UTILIZADOS''',
' order by 1 asc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'----------- Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068828294854428)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068733183854427)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125068960230854429)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>30
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125069074577854430)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>40
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125069194229854431)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>50
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125069217275854432)
,p_query_column_id=>6
,p_column_alias=>'PRECIO'
,p_column_display_sequence=>60
,p_column_heading=>'Precio Lista'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125069376056854433)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125069457224854434)
,p_query_column_id=>8
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ru" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125069502992854435)
,p_query_column_id=>9
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>90
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_dev'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149024493831268823)
,p_plug_name=>'Entrega'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(331358670673332631)
,p_plug_name=>'Problemas'
,p_region_name=>'GRILLA_PS'
,p_parent_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=''1'' and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 (2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove,',
'    c010 cod_articulo',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas'
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
 p_id=>wwv_flow_imp.id(118836764865846417)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:393:&SESSION.::&DEBUG.::P393_COD_ARTICULO,P393_PROBLEMA_CLIENTE,P393_OPERACION,P393_SECUENCIA,P393_CODIGO_PROBLEMA,P393_CODIGO_SOLUCION,P393_NRO_COMPROBANTE:#COD_ARTICULO#,#COD_PC#,MODIFICAR,#SEQ_ID#,#COD_PR#,#COD_SOL#,&P370_PARAM_NRO_OT'
||'.'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>118836764865846417
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118836827319846418)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118836993802846419)
,p_db_column_name=>'COD_PC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d. Problema Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837023568846420)
,p_db_column_name=>'PROBLEMA_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Problema Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837131353846421)
,p_db_column_name=>'COD_PR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3d. Problema')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837249840846422)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Problema Real '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837344053846423)
,p_db_column_name=>'COD_SOL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3d. Problema Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837431094846424)
,p_db_column_name=>'SOLUCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837505383846425)
,p_db_column_name=>'REPARADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reparado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837616636846426)
,p_db_column_name=>'REMOVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remove'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118837757348846427)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118923295555816960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1189233'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PC:PROBLEMA_CLIENTE:COD_PR:PROBLEMA:COD_SOL:SOLUCION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110073039279167978)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(383109061936570207)
,p_button_name=>'crea_clientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Crea Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110211602790399638)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110211544760399637)
,p_button_name=>'Repuestos_utilizados'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Utilizados'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115740295233259221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(115740124962259220)
,p_button_name=>'pedir_repuesto'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedir Repuesto'
,p_button_redirect_url=>'f?p=&APP_ID.:327:&SESSION.::&DEBUG.::P327_NRO_COMPROBANTE_REF,P327_SER_COMPROBANTE_REF,P327_TIP_COMPROBANTE_REF,P327_COD_SUCURSAL_ENV,P327_LINEA,P327_CATEGORIA:&P370_NRO_COMPROBANTE_REF.,&P370_SER_COMPROBANTE.,&P370_TIP_COMPROBANTE.,&P370_COD_SUCURSAL_DIST.,&P370_LINEA_ARTICULOS.,&P370_CATEGORIA_ARTICULO.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115740704723259226)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(115740528809259224)
,p_button_name=>'Agregar_repuestoSSS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Repuestos'
,p_button_redirect_url=>'f?p=&APP_ID.:342:&SESSION.::&DEBUG.::P342_NRO_COMPROBANTE_REF,P342_SER_COMPROBANTE_REF,P342_TIP_COMPROBANTE_REF,P342_CATEGORIA,P342_LINEA,P342_COD_ARTICULO:&P370_PARAM_NRO_OT.,&P370_SER_COMPROBANTE.,&P370_TIP_COMPROBANTE.,&P370_CATEGORIA_ARTICULO.,&P370_LINEA_ARTICULOS.,&P370_COD_ARTICULO_OT.'
,p_button_condition=>'P370_GARANT'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119711231240278431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_button_name=>'Finalizar_orden'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar OT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104445181807494207)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_button_name=>'Finalizar_OT'
,p_button_static_id=>'finalizar_ot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Finalizar OT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115740330157259222)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(115740124962259220)
,p_button_name=>'Pedidos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedidos'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115740873954259227)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(115740528809259224)
,p_button_name=>'Repuestos_utilizado'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Utilizados'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119710676238278425)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119710408324278423)
,p_button_name=>'Aceptar_cierre'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125156296535724610)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(134810915099775503)
,p_button_name=>'no_conforme'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Sol. No Conforme'
,p_button_redirect_url=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_NRO_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P146_TIP_COMPROBANTE_REF,P146_ACCION,P146_TIPO_COMPROBANTE:&P370_PARAM_NRO_OT.,&P370_SER_COMPROBANTE.,ORT,N,OT'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149025242908268831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(149024720054268826)
,p_button_name=>'Cerrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115740421380259223)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(115740124962259220)
,p_button_name=>'repuestos_devueltos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Devueltos'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119710718270278426)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(119710408324278423)
,p_button_name=>'Salir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119343587244664632)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(119343176864664628)
,p_button_name=>'RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125070236905854442)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(125070170150854441)
,p_button_name=>'DEVOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Devolver'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104445273519494208)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(149024493831268823)
,p_button_name=>'Entregar_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Entregar OT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125070321864854443)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(125070170150854441)
,p_button_name=>'Cancelar_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119343633443664633)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(119343176864664628)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149024641277268825)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_button_name=>'Garantia'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gar.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110053553286167962)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(331740524085775408)
,p_button_name=>'btn_add_mo'
,p_button_static_id=>'btn_add_mo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Mano de Obra'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:402:P402_COD_ARTICULO_OT,P402_ORIGEN:&P370_COD_ARTICULO_OT.,&P370_COD_ORIGEN_AUX.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110059406472167967)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(331743744062775440)
,p_button_name=>'btn_add_sr'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar Repuestos'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ''1''',
'from dual;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104446323988494219)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104445300965494209)
,p_button_name=>'btn_add_ps_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Problemas'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110073482483167980)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P370_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119713006527278449)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(331806421988080413)
,p_button_name=>'Crear_pedidos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Pedido'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110075498795167981)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'Volver_PAG_298'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P370_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110073849875167981)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:370,400:P400_PAGINA:&P370_NRO_PAGINA.'
,p_button_condition=>'P370_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182764926486206905)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'CANCEL_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:370,400::'
,p_button_condition=>'P370_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125155785314724605)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'visualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar OT'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-31'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(186259980619274103)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'Etiqueta'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Etiqueta'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110074248707167981)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-31'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110074659132167981)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-2-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110075081385167981)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(182764542259206901)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Orden'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P370_ESTADO_PRESU IN (''C'', ''E'') THEN ',
'    RETURN FALSE;',
'ELSE ',
'    IF inv.catickets.pr_verifica_usuario(p_usuario => :APP_USER,',
'                                        p_nro_ot => :P370_PARAM_NRO_OT) THEN ',
'        RETURN TRUE;',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110048005445167952)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_button_name=>'btn_add_ps'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Problemas'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:393:&SESSION.::&DEBUG.::P393_OPERACION,P393_VERIFICAR,P393_NRO_COMPROBANTE:AGREGAR,1,&P370_PARAM_NRO_OT.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182768453622206940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(124020347663827301)
,p_button_name=>'Agregar_Seguimientos'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Seguimientos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:568:&SESSION.::&DEBUG.::P568_TIP_COMPROBANTE,P568_SER_COMPROBANTE,P568_NRO_COMPROBANTE,P568_COD_CLIENTE,P568_NRO_TELEFONO:&P370_TIP_COMPROBANTE.,&P370_PARAM_SER_OT.,&P370_PARAM_NRO_OT.,&P370_COD_CLIENTE.,&P370_TEL_CLIENTE.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(110476729013213434)
,p_branch_name=>unistr('Ir a P\00E1gina 400')
,p_branch_action=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:370:P400_NRO_COMPROBANTE,P400_SER_COMPROBANTE,P400_OPERACION,P400_PAGINA:&P370_NRO_COMPROBANTE.,&P370_SER_COMPROBANTE.,&P370_OPERACION.,&P370_NRO_PAGINA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(110075081385167981)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P370_OT_MULTIPLE'
,p_branch_condition_text=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(134814537741775539)
,p_branch_name=>unistr('Ir a P\00E1gina 370')
,p_branch_action=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:370:P370_OT_MULTIPLE,P370_COD_CLIENTE,P370_NOM_CLIENTE,P370_CI,P370_RUC,P370_TEL_CLIENTE,P370_DIR_CLIENTE,P370_EMAIL,P370_DEPARTAMENTO,P370_CIUDAD,P370_IND_ZONA,P370_COD_ORIGEN,P370_OPERACION,P370_IMPRIMIR,P370_NRO_COMPROBANTE:&P370_OT_MULTIPLE.,&P370_COD_CLIENTE.,&P370_NOM_CLIENTE.,&P370_CI.,&P370_RUC.,&P370_TEL_CLIENTE.,&P370_DIR_CLIENTE.,&P370_EMAIL.,&P370_DEPARTAMENTO.,&P370_CIUDAD.,&P370_IND_ZONA.,&P370_COD_ORIGEN.,&P370_OPERACION.,S,&P370_NRO_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(110075081385167981)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(110138015387168031)
,p_branch_name=>'imprimir_ot'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAORDTRA.html?p_ser_comprobante=&P63_SER_COMPROBANTE.&p_nro_comprobante=&P63_NRO_COMPROBANTE.&j_username=jasperadmin&j_password=jasperadmin'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(110074248707167981)
,p_branch_sequence=>60
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P370_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67054571260084712)
,p_name=>'P370_COD_ORIGEN_AUX'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67055235324084719)
,p_name=>'P370_GARANT'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104444783921494203)
,p_name=>'P370_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>'Estado'
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
 p_id=>wwv_flow_imp.id(104444809889494204)
,p_name=>'P370_ESTADO_ENTREGA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(149024493831268823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104444939026494205)
,p_name=>'P370_FEC_CIERRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>'Cierre de OT'
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
 p_id=>wwv_flow_imp.id(104445015108494206)
,p_name=>'P370_FEC_ENTREGA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(149024493831268823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104446405084494220)
,p_name=>'P370_COD_ARTICULO_OT_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>'Codigo Articulo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'     v_persona NUMBER;',
'     v_contador NUMBER :=  0;',
'',
'BEGIN ',
'    BEGIN ',
'    select U.COD_PERSONA',
'    INTO v_persona',
'    from usuarios u',
'    where u.cod_usuario = :APP_USER',
'    AND COD_EMPRESA = ''1'';',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_persona := NULL;',
'    END;',
'',
'BEGIN ',
'    SELECT COUNT(*)',
'    INTO v_contador',
'    FROM CM_PROVEEDORES P',
'    WHERE P.COD_EMPRESA=''1''',
'    AND   P.COD_PERSONA=v_persona',
'    AND   P.IND_SERVICIO_TECNICO=''STNGO'';',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'',
'    IF v_contador > 0 THEN ',
'        RETURN TRUE;',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104446507904494221)
,p_name=>'P370_DESCRIPCION_ARTICULO_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>unistr('Descripci\00F3n Articulo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110048423152167955)
,p_name=>'P370_DEL_PS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110048860844167957)
,p_name=>'P370_DEL_ID_PS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110049216681167958)
,p_name=>'P370_CANTIDAD_PROBLEMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110053972734167963)
,p_name=>'P370_DELETE_PROMO_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(331740524085775408)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110054399919167963)
,p_name=>'P370_DEL_ID_MO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(331740524085775408)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110059809129167967)
,p_name=>'P370_DEL_ID_RS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110209709574399619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110060251416167968)
,p_name=>'P370_CANT_RS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(331743744062775440)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110064521031167972)
,p_name=>'P370_DELETE_PROMO_2_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(331806421988080413)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110064895024167972)
,p_name=>'P370_DEL_ID_RU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(331806421988080413)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110065276433167973)
,p_name=>'P370_CANTIDAD_DETALLE_2_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(331806421988080413)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110065986741167974)
,p_name=>'P370_COLL_BPS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110066372415167974)
,p_name=>'P370_COLL_BMO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110066794753167974)
,p_name=>'P370_COLL_BRS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110067180208167975)
,p_name=>'P370_COLL_BPRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110067585687167975)
,p_name=>'P370_COLL_BRU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110067965358167975)
,p_name=>'P370_PARAM_SER_OT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110068306444167975)
,p_name=>'P370_PARAM_NRO_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110068771297167976)
,p_name=>'P370_ID_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P370_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110069143677167977)
,p_name=>'P370_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110069548127167977)
,p_name=>'P370_VCIUDAD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110069997983167977)
,p_name=>'P370_DESCARGA_DATOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_item_default=>'''N'''
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110070326761167977)
,p_name=>'P370_PARAM_ID_TKT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110070731675167977)
,p_name=>'P370_LATITUDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110071133265167977)
,p_name=>'P370_LONGITUDE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110071511266167978)
,p_name=>'P370_COD_PROV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110071909364167978)
,p_name=>'P370_INDICADOR_VOLVER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110072340389167978)
,p_name=>'P370_TIP_COMPROBANTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(380784664251976839)
,p_item_default=>'ORT'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110075851808167982)
,p_name=>'P370_SER_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_item_default=>'P'
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="background-color: #f0ffef; border-color: #4dff00"'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110076250408167982)
,p_name=>'P370_NRO_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_prompt=>'Numero de Orden'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110076610321167982)
,p_name=>'P370_FEC_COMPROBANTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_prompt=>unistr('Fecha de Creaci\00F3n de OT')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110077038256167983)
,p_name=>'P370_COD_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CLIENTES_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, PR.numero RUC, PI.numero CI, cod_cliente',
'from cc_clientes c, ',
'     personas p, ',
'     --telef_personas pt, ',
'     ident_personas pi ,',
'     ident_personas pR ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'---and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and NVL(pi.cod_ident(+),''CI'')=''CI''',
'and p.cod_persona = pR.cod_persona(+) ',
'and NVL(pR.cod_ident(+),''RUC'')=''RUC''',
'and nvl(c.estado,''X'') = ''A'' ',
''))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="background-color:   #f0ffef   ; width:60px"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>'Clientes'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110077424443167984)
,p_name=>'P370_NOM_CLIENTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110077865090167984)
,p_name=>'P370_DIR_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110078268452167984)
,p_name=>'P370_NCI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110078670198167984)
,p_name=>'P370_RUC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110079063579167984)
,p_name=>'P370_TEL_CLIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110079477388167985)
,p_name=>'P370_EMAIL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110079814546167985)
,p_name=>'P370_COD_DIRECCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110080297484167985)
,p_name=>'P370_DEPARTAMENTO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PR.DESCRIPCION, PR.COD_PROVINCIA',
'from provincias pr',
'where pr.cod_pais=''PAR'''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(110080679061167985)
,p_name=>'P370_CIUDAD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CT.DESCRIPCION, CT.COD_CIUDAD',
'from CIUDADES CT',
'where ct.cod_pais=''PAR''',
'AND (:P370_DEPARTAMENTO is null or :P370_DEPARTAMENTO= CT.COD_PROVINCIA )',
'AND (:P370_VCIUDAD is null or :P370_VCIUDAD= CT.COD_ciudad )'))
,p_lov_cascade_parent_items=>'P370_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P370_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'refreshme'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110081092743167985)
,p_name=>'P370_NRO_GARANTIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_prompt=>'Nro Garantia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>15
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110081414210167986)
,p_name=>'P370_GARANTIA'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_item_default=>'N'
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''SI'' DESCRIPCION , ''S'' C FROM DUAL UNION ALL',
'SELECT ''NO'' DESCRIPCION , ''N'' C FROM DUAL '))
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110081881043167986)
,p_name=>'P370_IND_RECLAMO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110082247222167986)
,p_name=>'P370_COD_ORIGEN'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ORIGENES_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.cod_origen||'' - ''||o.descripcion descripcion, o.cod_origen, o.descripcion  descri',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'') not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.cod_origen||'' -  ''||o.descripcion descripcion, o.cod_origen, o.descripcion decri',
'from vt_origenes o  ',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa=''1'' ',
'      and p.ind_servicio_tecnico is not null',
'      and p.cod_persona=u.cod_persona',
'      and u.cod_usuario=v(''APP_USER'')',
'     )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRI:P370_DESCRI_ORIGEN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110082679852167986)
,p_name=>'P370_SERIE_PRODUCTO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Serie Producto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110083034709167986)
,p_name=>'P370_COD_DISTRIBUIDOR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_DISTRIBUIDOR_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre ||'' -'' ||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona ',
'and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'',
'order by nombre'))
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>'Distribuidores'
,p_attribute_10=>'NOMBRE:P370_NOMBRE_DISTRIBUIDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110083439374167987)
,p_name=>'P370_NOMBRE_DISTRIBUIDOR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Nombre Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110083884851167987)
,p_name=>'P370_NRO_FACTURA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Nro. de Factura de salida de NGO'
,p_format_mask=>'"''999-999-9999"'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110084281062167987)
,p_name=>'P370_FECHA_FACTURA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Fecha de Factura de salida de NGO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers '
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110084659859167987)
,p_name=>'P370_COD_ARTICULO_OT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_prompt=>'Codigo Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'      COD_ARTICULO,',
'      cod_art_corto',
'FROM (',
'select descripcion, cod_articulo,cod_art_corto ,1 ORDEN',
'from st_articulos a where cod_empresa =  ''1''',
'and a.precio_base>0',
'and a.costo_prom>0',
'and a.descripcion is not null',
'and a.cod_rubro in (''PR'')',
'AND A.COD_ART_CORTO IS NOT NULL',
'',
') ORDER BY ORDEN,1',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110085013260167987)
,p_name=>'P370_DESCRIPCION_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_prompt=>unistr('Descripci\00F3n Articulo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110085423737167988)
,p_name=>'P370_COD_PROVEEDOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )nombre,  c.cod_proveedor cod',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = ''1''',
'   and c.cod_rubro = :P370_RUBRO_SERV_TECNICO',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'   UNION ALL',
'   select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, c.cod_proveedor',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = ''1''',
'   and nvl(c.cod_rubro,''99'') <> :P370_RUBRO_SERV_TECNICO',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_lov_cascade_parent_items=>'P370_RUBRO_SERV_TECNICO'
,p_ajax_items_to_submit=>'P370_RUBRO_SERV_TECNICO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'     v_persona NUMBER;',
'     v_contador NUMBER :=  0;',
'',
'BEGIN ',
'    BEGIN ',
'    select U.COD_PERSONA',
'    INTO v_persona',
'    from usuarios u',
'    where u.cod_usuario = :APP_USER',
'    AND COD_EMPRESA = ''1'';',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_persona := NULL;',
'    END;',
'',
'BEGIN ',
'    SELECT COUNT(*)',
'    INTO v_contador',
'    FROM CM_PROVEEDORES P',
'    WHERE P.COD_EMPRESA=''1''',
'    AND   P.COD_PERSONA=v_persona',
'    AND   P.IND_SERVICIO_TECNICO=''STNGO'';',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'',
'    IF v_contador > 0 THEN ',
'        RETURN TRUE;',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110085899392167988)
,p_name=>'P370_NRO_BOLETA_AM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110086241224167988)
,p_name=>'P370_COD_SUCURSAL_DIST'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Sucursal Dist.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SUCURSAL_DIST_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_SUCURSAL||'' - ''||p.nombre descri, ',
'       p.direccion, ',
'       p.telefono, ',
'       p.cod_SUCURSAL,',
'       p.nombre',
'from BS_SUCURSAL_CLIENTE p',
'where p.cod_empresa= ''1''',
'and p.cod_cliente=:P370_COD_CLIENTE'))
,p_lov_cascade_parent_items=>'P370_COD_CLIENTE'
,p_ajax_items_to_submit=>'P370_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110086633808167988)
,p_name=>'P370_LUGAR_ENTREGA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110087034996167988)
,p_name=>'P370_TELEFONO_DIST'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110087468522167989)
,p_name=>'P370_COMENTARIO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_prompt=>unistr('Condici\00F3n del Producto')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>1000
,p_cHeight=>5
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110087829703167989)
,p_name=>'P370_OBERVACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>unistr('Diagnostico seg\00FAn T\00E9cnico')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa fa-microchip'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110088258866167989)
,p_name=>'P370_CONCLUSION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>unistr('Conclusi\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fas fa-tools'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110088672016167989)
,p_name=>'P370_COD_ARTICULO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110089068260167989)
,p_name=>'P370_COD_MARCA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110089488754167990)
,p_name=>'P370_COD_LISTA_PRECIO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110089841117167990)
,p_name=>'P370_ESTADO_PRESU'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_prompt=>'Estado Presupuesto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:A presupuestar;AP,Espera Repuesto;PE,Presupuestado;P,Aprobado;A,Rechazado;R,Cerrado;C,Reparacion Particular;V,Entregado;E,Reparacion Inmediata;RI,Visita Realizada;VR,Rebobinado;RB,Pedido Repuestos;PR,RECLAMO URGENTE;RU,Visto STA;VI,Con Repues'
||'tos;CR,En Proceso;EP,Rendidas;RN'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110093749881167993)
,p_name=>'P370_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(383160951435570047)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110094193989167993)
,p_name=>'P370_DEL_ID_PRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(383160951435570047)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110094592738167993)
,p_name=>'P370_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(383160951435570047)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110208420772399606)
,p_name=>'P370_IND_ZONA'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_item_default=>'C'
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:INTERIOR;I,CAPITAL;C,NINGUNA'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110208580172399607)
,p_name=>'P370_CI'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'CI'
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
 p_id=>wwv_flow_imp.id(110208819100399610)
,p_name=>'P370_PRESUPUESTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_item_default=>'S'
,p_prompt=>'Presupuesto (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110208926290399611)
,p_name=>'P370_IND_DELIVERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_prompt=>'SPP (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110209061133399612)
,p_name=>'P370_IND_RETIRADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_prompt=>'Retirado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110209142763399613)
,p_name=>'P370_FECHA_CO_DISTRIBUIDOR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Fecha de Factura del Distribuidor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers '
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110209292825399614)
,p_name=>'P370_NRO_COMPROBANTE_DISTR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Nro. de Factura del Distribuidor'
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
 p_id=>wwv_flow_imp.id(110209302486399615)
,p_name=>'P370_CONTADOR_FACT_ART_DIST'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
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
 p_id=>wwv_flow_imp.id(110209407549399616)
,p_name=>'P370_AGENTE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Agente asignado para contacto al cliente'
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
 p_id=>wwv_flow_imp.id(110209613162399618)
,p_name=>'P370_TIPO_CIERRE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(110208340728399605)
,p_prompt=>'Tipo Cierre'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:Cerradas Reparadas;CR,Cerradas Sin Soluci\00F3n;CSS,Cerradas Pres. Rechazadas;CPR,Cerradas Sin Repuestos;CSR,Nada')
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110212280829399644)
,p_name=>'P370_CERRADO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110212322357399645)
,p_name=>'P370_TOT_MOBRA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(331740524085775408)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110212497019399646)
,p_name=>'P370_TOTAL_OT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110212599605399647)
,p_name=>'P370_SENIA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110212624518399648)
,p_name=>'P370_MONTO_ADELANTO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110212731392399649)
,p_name=>'P370_IND_ADELANTO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110473455104213401)
,p_name=>'P370_ESTADO_AN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110211544760399637)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110477060382213437)
,p_name=>'P370_FEC_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110477101312213438)
,p_name=>'P370_VERIFICADO_POR'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Verificado por'
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
 p_id=>wwv_flow_imp.id(110477234943213439)
,p_name=>'P370_FEC_VERIFICADO'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha verificado'
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
 p_id=>wwv_flow_imp.id(110477374508213440)
,p_name=>'P370_HORA_VERIFICACION'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Hora Verificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(110477427707213441)
,p_name=>'P370_IND_CORREO_PRESU'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110478077014213447)
,p_name=>'P370_RETIRADO_POR'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Retirado por'
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
 p_id=>wwv_flow_imp.id(110478133427213448)
,p_name=>'P370_FECHA_RETIRADO'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha retirado'
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
 p_id=>wwv_flow_imp.id(110478239025213449)
,p_name=>'P370_HORA_RETIRADO'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora retirado'
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
 p_id=>wwv_flow_imp.id(110478319908213450)
,p_name=>'P370_FEC_RETIRADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112972761395099001)
,p_name=>'P370_IND_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(134811632818775510)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112973298643099006)
,p_name=>'P370_COD_ARTICULO2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112973325328099007)
,p_name=>'P370_CONT_OT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112973474275099008)
,p_name=>'P370_NOM_PROVEEDOR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112973503242099009)
,p_name=>'P370_CREADO_POR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Creado por'
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
 p_id=>wwv_flow_imp.id(112973601440099010)
,p_name=>'P370_FEC_CREACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Fecha Creaci\00F3n')
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
 p_id=>wwv_flow_imp.id(112973789401099011)
,p_name=>'P370_HORA_CREACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Hora creaci\00F3n')
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
 p_id=>wwv_flow_imp.id(112973866218099012)
,p_name=>'P370_PRESUPUESTADO_POR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Presupuestado por'
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
 p_id=>wwv_flow_imp.id(112973958428099013)
,p_name=>'P370_FEC_PRESUPUESTADO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Presupuestado'
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
 p_id=>wwv_flow_imp.id(112974050597099014)
,p_name=>'P370_HORA_PRESUPUESTO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora Presupuesto'
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
 p_id=>wwv_flow_imp.id(112974140722099015)
,p_name=>'P370_PENDIENTE_POR'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Pendiente Por'
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
 p_id=>wwv_flow_imp.id(112974226179099016)
,p_name=>'P370_FEC_PENDIENTE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Pendiente'
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
 p_id=>wwv_flow_imp.id(112974319092099017)
,p_name=>'P370_HORA_PENDIENTE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora Pendiente'
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
 p_id=>wwv_flow_imp.id(112974444341099018)
,p_name=>'P370_RECHAZADO_POR'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Rechazado por'
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
 p_id=>wwv_flow_imp.id(112974549701099019)
,p_name=>'P370_FEC_RECHAZO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Rechazo'
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
 p_id=>wwv_flow_imp.id(112974642806099020)
,p_name=>'P370_HORA_RECHAZADO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora rechazado'
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
 p_id=>wwv_flow_imp.id(112974889529099022)
,p_name=>'P370_ENTREGADO_POR'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Entregado por'
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
 p_id=>wwv_flow_imp.id(112974976175099023)
,p_name=>'P370_FEC_ENTREGADO'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha entregado'
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
 p_id=>wwv_flow_imp.id(112975060252099024)
,p_name=>'P370_HORA_ENTREGADO'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora entregado'
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
 p_id=>wwv_flow_imp.id(112975134029099025)
,p_name=>'P370_COD_USUARIO_SIN_RP'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Sin Repuesto'
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
 p_id=>wwv_flow_imp.id(112975243837099026)
,p_name=>'P370_FEC_SIN_REPUESTO'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha sin repuesto'
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
 p_id=>wwv_flow_imp.id(112975305571099027)
,p_name=>'P370_HORA_SIN_REPUESTO'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora sin repuesto'
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
 p_id=>wwv_flow_imp.id(112975419102099028)
,p_name=>'P370_ESTADO_PRESU_REAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112975572581099029)
,p_name=>'P370_COSTO_SERVICIO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112975602910099030)
,p_name=>'P370_COD_SUCURSAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112975761231099031)
,p_name=>'P370_COD_MOTIVO_RECLAMO_JEFE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112975886215099032)
,p_name=>'P370_COD_CONDICION_VENTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_item_default=>'36'
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONDICION_VENTA_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_condicion_venta||'' - ''||c.descripcion  descricion,',
'       c.cod_condicion_venta,',
'       c.plazo',
'  from cc_descuento_tipo_cliente d,',
'       cc_condiciones_ventas c',
' where d.cod_empresa = ''1''',
'   and d.tip_cliente = bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP'')',
'   and c.cod_empresa         = d.cod_empresa',
'   and c.cod_condicion_venta = d.cod_condicion_venta',
' order by plazo asc',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112975951015099033)
,p_name=>'P370_FEC_APROBACION'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Fecha Aprobaci\00F3n')
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
 p_id=>wwv_flow_imp.id(112976053468099034)
,p_name=>'P370_ANULADO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976178189099035)
,p_name=>'P370_COD_MOTIVO_ANU'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976266770099036)
,p_name=>'P370_COD_MOTIVO_RECHAZO_PRESU'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976362403099037)
,p_name=>'P370_IND_RECLAMO_STA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976440602099038)
,p_name=>'P370_COD_MOTIVO_RECLAMO_STA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976534147099039)
,p_name=>'P370_TIPO_RECLAMO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976629451099040)
,p_name=>'P370_COD_MOTIVO_RECLAMO_SPP'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976815806099042)
,p_name=>'P370_COD_ARTICULO_CALL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112976913273099043)
,p_name=>'P370_APROBADO_POR'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Aprobado por'
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
 p_id=>wwv_flow_imp.id(112977073415099044)
,p_name=>'P370_HORA_APROBADA'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora Aprobada'
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
 p_id=>wwv_flow_imp.id(112977120345099045)
,p_name=>'P370_FEC_MODIF_APROBADO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112977215939099046)
,p_name=>'P370_FEC_MODIF_PRESUPUESTO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Modif. Presupuesto'
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
 p_id=>wwv_flow_imp.id(112977355570099047)
,p_name=>'P370_FEC_MODIF_PENDIENTE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Modif. Pendiente'
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
 p_id=>wwv_flow_imp.id(112977408234099048)
,p_name=>'P370_FEC_MODIF_RECHAZADO'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fec. Modif. Rechazado'
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
 p_id=>wwv_flow_imp.id(112977565378099049)
,p_name=>'P370_FEC_MODIF_VERIFICADO'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fec. modif. verificado'
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
 p_id=>wwv_flow_imp.id(112977631457099050)
,p_name=>'P370_IND_LIQUIDA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114137979802544401)
,p_name=>'P370_IND_ABANDONADO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114138067181544402)
,p_name=>'P370_TOT_REPUESTOS_CALL'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114138473670544406)
,p_name=>'P370_ESTADO_RECLAMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114138566204544407)
,p_name=>'P370_COD_PROBLEMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114138628606544408)
,p_name=>'P370_DESC_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114138780637544409)
,p_name=>'P370_COD_SOLUCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114138889601544410)
,p_name=>'P370_SOLUCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114138900218544411)
,p_name=>'P370_COMENTARIO_RECLAMO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114139019636544412)
,p_name=>'P370_FECHA_FINALIZACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(114138138998544403)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(114139123581544413)
,p_name=>'P370_COD_MOTIVO_COMPRA_NUEVA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114139211828544414)
,p_name=>'P370_TIENE_REPUESTOS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114139370313544415)
,p_name=>'P370_CELULAR_CONTACTO'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114139443830544416)
,p_name=>'P370_CORREO_CONTACTO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114142476774544446)
,p_name=>'P370_OPERACION'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114142604206544448)
,p_name=>'P370_FEC_IM'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha IM'
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
 p_id=>wwv_flow_imp.id(114142702031544449)
,p_name=>'P370_REPARADO_IM_POR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Reparaci\00F3n Inmediato')
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
 p_id=>wwv_flow_imp.id(114142820099544450)
,p_name=>'P370_HORA_IM'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora IM'
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
 p_id=>wwv_flow_imp.id(115348026023984238)
,p_name=>'P370_COD_FORMA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348272418984240)
,p_name=>'P370_RUBRO_MO'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348318746984241)
,p_name=>'P370_COD_MONEDA_BASE'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348468196984242)
,p_name=>'P370_PORC_IVA'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348567981984243)
,p_name=>'P370_FECHA_MODIFICADO_GARANTIA'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Modificado Gar'
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
 p_id=>wwv_flow_imp.id(115348661828984244)
,p_name=>'P370_FECHA_ESTADO_COMPLICADO'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha estado complicado'
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
 p_id=>wwv_flow_imp.id(115348708273984245)
,p_name=>'P370_IND_ADICIONAL'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348871085984246)
,p_name=>'P370_LINEA_PRODUCTO'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348930360984247)
,p_name=>'P370_ERROR'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115349061882984248)
,p_name=>'P370_MODIFICA_GARANTIA'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115349134504984249)
,p_name=>'P370_SITIO'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115394232311810202)
,p_name=>'P370_P_TIP_SERVICIO_PARAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(115349243205984250)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(115394343161810203)
,p_name=>'P370_P_NRO_SERVICIO_PARAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(115349243205984250)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(115394416136810204)
,p_name=>'P370_TOTA_OT_CALL'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115394599969810205)
,p_name=>'P370_IND_CORREO_PE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115394641250810206)
,p_name=>'P370_IND_ENVIADO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115394767622810207)
,p_name=>'P370_TOTAL_OT_CALL_C_G'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(115740528809259224)
,p_prompt=>unistr('Total c/ Garant\00EDa')
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
 p_id=>wwv_flow_imp.id(115394874900810208)
,p_name=>'P370_TOTAL_OT_CALL_S_G'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(115740528809259224)
,p_prompt=>unistr('Total s/ Garant\00EDa')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115738285653259201)
,p_name=>'P370_PORCENTAJE_SPP'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115738405879259203)
,p_name=>'P370_TOT_MOBRA_ANT'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115739897417259217)
,p_name=>'P370_PER_RECLAMO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115739936102259218)
,p_name=>'P370_MONTO_VENTA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117499161631342238)
,p_name=>'P370_MUESTRA_REPORTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(115740124962259220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117499521443342242)
,p_name=>'P370_TIP_ORDEN_TRABAJO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117499655138342243)
,p_name=>'P370_SER_ORDEN_TRABAJO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117499707324342244)
,p_name=>'P370_CLIENTE_CONTADO'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117499878385342245)
,p_name=>'P370_RUBRO_SERV_TECNICO'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117499981067342246)
,p_name=>'P370_TIP_MOTIVO_ANULACION'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117500026893342247)
,p_name=>'P370_PERMITE_ANULAR'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117500100570342248)
,p_name=>'P370_MODIFICA_FECHA_CIERRE'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117500299741342249)
,p_name=>'P370_ESTADO_COMPLICADO'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117500320759342250)
,p_name=>'P370_REPUESTO'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835128575846401)
,p_name=>'P370_AGREGA_REPUESTOS_OT_PRE'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835219983846402)
,p_name=>'P370_MODIFICA_CLIENTE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835377736846403)
,p_name=>'P370_ACTUALIZA_COD_ARTICULO'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835496540846404)
,p_name=>'P370_MODIFICA_FECHA_ENTREGA'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835581460846405)
,p_name=>'P370_REIMPRIME'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835648057846406)
,p_name=>'P370_FECHAOT'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835723722846407)
,p_name=>'P370_CONSULTA_FECHAOT'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835808533846408)
,p_name=>'P370_CONSULTA_FEC_CIERRE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118835934101846409)
,p_name=>'P370_CARGA_NROOT'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118836037937846410)
,p_name=>'P370_TICKET'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118836160628846411)
,p_name=>'P370_CARGA_MO_GARANTIA'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(118836268565846412)
,p_name=>'P370_MODIFICA_PRECIO_MO'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118836382795846413)
,p_name=>'P370_CIERRA_LINEA_CRITICA'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118836452959846414)
,p_name=>'P370_RECLAMO_JEFE'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118837853716846428)
,p_name=>'P370_ARTICULO'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118838921514846439)
,p_name=>'P370_NRO_COMPROBANTE_REF'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119343200405664629)
,p_name=>'P370_ARTICULO_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119343176864664628)
,p_prompt=>'Producto'
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
 p_id=>wwv_flow_imp.id(119343382109664630)
,p_name=>'P370_COD_MOTIVO_RECHAZO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119343176864664628)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_RECHAZO_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo || '' - '' || descripcion descripcion, cod_motivo codigo',
'  FROM ca_motivos_devolucion_repuesto'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119343475888664631)
,p_name=>'P370_COMENTARIO_RECHAZADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119343176864664628)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(119709546620278414)
,p_name=>'P370_FINALIZADO_POR'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Cerrado por'
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
 p_id=>wwv_flow_imp.id(119709611030278415)
,p_name=>'P370_FEC_MODIF_CERRADO'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fec. Modif. Cerrado'
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
 p_id=>wwv_flow_imp.id(119709743266278416)
,p_name=>'P370_HORA_FINALIZADO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora Cerrado'
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
 p_id=>wwv_flow_imp.id(119709846977278417)
,p_name=>'P370_NCR'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119709993612278418)
,p_name=>'P370_CAMBIO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119710041203278419)
,p_name=>'P370_IND_CARNEO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119710550019278424)
,p_name=>'P370_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119710408324278423)
,p_item_default=>'CR'
,p_prompt=>'Nuevo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CERRADAS_REPARADAS;CR,CERRADAS_SIN_SOLUCION;CSS,CERRADAS_PRESUPUESTO_RECHAZADO;CPR,CERRADAS_SIN_REPUESTOS;CSR'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119712071752278439)
,p_name=>'P370_TOTAL_OT_CALL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(115740528809259224)
,p_prompt=>'Total del Presupuesto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121596270584098002)
,p_name=>'P370_TOT_REPUESTOS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121596471032098004)
,p_name=>'P370_SEGUIMIENTO'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597668041098016)
,p_name=>'P370_MARCA_PRO'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597732843098017)
,p_name=>'P370_CATEGORIA_PRODUCTO'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597846092098018)
,p_name=>'P370_FAMILIA_PRODUCTO'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121597930856098019)
,p_name=>'P370_DESC_ARTICULO_CALL'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598084856098020)
,p_name=>'P370_DESC_DISTRIBUIDOR'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598168606098021)
,p_name=>'P370_SEGMENTO_CLIENTE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598254354098022)
,p_name=>'P370_NOM_USUARIO'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598451465098024)
,p_name=>'P370_DERIVADO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598598596098025)
,p_name=>'P370_DESC_DERIVADO'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598622052098026)
,p_name=>'P370_COD_USU_PRESUP_GPV'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598722053098027)
,p_name=>'P370_FECHA_PROPUESTA_GPV'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121598826587098028)
,p_name=>'P370_COD_USUARIO_CERRADO_GPV'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('C\00F3d. usuario cerrado GPV')
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
 p_id=>wwv_flow_imp.id(121598915140098029)
,p_name=>'P370_FECHA_CERRADO_GPV'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha cerrado GPV'
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
 p_id=>wwv_flow_imp.id(121599087164098030)
,p_name=>'P370_COD_USUARIO_SNC_GPV'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(186260344562274107)
,p_prompt=>unistr('C\00F3d. usuario SNG GPV')
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
 p_id=>wwv_flow_imp.id(121599170042098031)
,p_name=>'P370_FECHA_SNC_GPV'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(186260344562274107)
,p_prompt=>'Fecha SNG GPV'
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
 p_id=>wwv_flow_imp.id(121599229113098032)
,p_name=>'P370_COD_USU_VERIFICADO_STA'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121599310742098033)
,p_name=>'P370_FECHA_VERIFICADO_STA'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Verificado STA'
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
 p_id=>wwv_flow_imp.id(121599437244098034)
,p_name=>'P370_COD_USU_APROBACION_GPV'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121599573948098035)
,p_name=>'P370_FECHA_APROBADO_GPV'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121599638483098036)
,p_name=>'P370_COD_USUARIO_RECHAZO_GPV'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('C\00F3d. Usuario rechazo GPV')
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
 p_id=>wwv_flow_imp.id(121599755389098037)
,p_name=>'P370_FECHA_RECHAZO_GPV'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Rechazo GPV'
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
 p_id=>wwv_flow_imp.id(121600343761098043)
,p_name=>'P370_COD_USUAROP_ES_COMPLICADO'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121600497302098044)
,p_name=>'P370_COD_USUARIO_MOD_GAR'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Cod. usuario mod. gar'
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
 p_id=>wwv_flow_imp.id(121600511370098045)
,p_name=>'P370_AUTORIZADO_GAR_POR'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121600642140098046)
,p_name=>'P370_FEC_AUTORIZADO_GAR_POR'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121600710947098047)
,p_name=>'P370_HORA_AUTORIZADO_GAR_POR'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121600904234098049)
,p_name=>'P370_IND_GARANTIA'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122668716643248618)
,p_name=>'P370_TOTAL_OT_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(331358670673332631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122668993741248620)
,p_name=>'P370_FEC_FINALIZADO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Cerrado'
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
 p_id=>wwv_flow_imp.id(122669007007248621)
,p_name=>'P370_USUARIO_PED_REP'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Pedido Repuesto'
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
 p_id=>wwv_flow_imp.id(122669150556248622)
,p_name=>'P370_FECHA_PED_REP'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Repuesto'
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
 p_id=>wwv_flow_imp.id(122669294433248623)
,p_name=>'P370_HORA_PED_REP'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Hora Repuesto'
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
 p_id=>wwv_flow_imp.id(122669359334248624)
,p_name=>'P370_COD_USUARIO_ESTADO_COMPLI'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('C\00F3d. usuario estado complicado')
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
 p_id=>wwv_flow_imp.id(122669464452248625)
,p_name=>'P370_COD_USUARIO_RENDICION'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Usuario rendici\00F3n')
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
 p_id=>wwv_flow_imp.id(122669556634248626)
,p_name=>'P370_FEC_RENDIDO'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Rendido'
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
 p_id=>wwv_flow_imp.id(122669612435248627)
,p_name=>'P370_IND_RENDIDO'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'IND Rendido'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122669713848248628)
,p_name=>'P370_FECHA_LIQUIDA'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Liquidaci\00F3n')
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
 p_id=>wwv_flow_imp.id(122669811845248629)
,p_name=>'P370_USUARIO_LIQUIDA'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Usuario Liquida'
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
 p_id=>wwv_flow_imp.id(122669949613248630)
,p_name=>'P370_COD_USUARIO_VERIFICADO_STA'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('C\00F3d. usuario verificado STA')
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
 p_id=>wwv_flow_imp.id(122670072541248631)
,p_name=>'P370_FECHA_ABANDONADO'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Abandonado'
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
 p_id=>wwv_flow_imp.id(122670138946248632)
,p_name=>'P370_COD_USUARIO_ABANDONADO'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Usuario Abandono'
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
 p_id=>wwv_flow_imp.id(122670261603248633)
,p_name=>'P370_FECHA_CREACION_GPV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Fecha creaci\00F3n GPV')
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
 p_id=>wwv_flow_imp.id(122670315860248634)
,p_name=>'P370_COD_USUARIO_CREACION_GPV'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>unistr('Usuario creaci\00F3n GPV')
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
 p_id=>wwv_flow_imp.id(122670414071248635)
,p_name=>'P370_FECHA_PRESUPUESTO_GPV'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Fecha Presupuesto GPV'
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
 p_id=>wwv_flow_imp.id(122670512652248636)
,p_name=>'P370_COD_USUARIO_PRESUPUESTO_GPV'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(122668879642248619)
,p_prompt=>'Usuario presupuesto GPV'
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
 p_id=>wwv_flow_imp.id(122671738031248648)
,p_name=>'P370_TOTAL_COMISION_TECNICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122671629310248647)
,p_prompt=>unistr('Comisi\00F3n T\00E9cnico')
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
 p_id=>wwv_flow_imp.id(122671890413248649)
,p_name=>'P370_TOTAL_COMISION_JEFE_TECNICO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(122671629310248647)
,p_prompt=>unistr('Comisi\00F3n Jefe T\00E9cnico')
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
 p_id=>wwv_flow_imp.id(122671976721248650)
,p_name=>'P370_TOTAL_COMISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122671629310248647)
,p_prompt=>unistr('Total Comisi\00F3n OT')
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
 p_id=>wwv_flow_imp.id(124021278138827310)
,p_name=>'P370_USUARIO_SEGUIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124020347663827301)
,p_item_default=>'T'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_USUARIO_SEGUIMIENTOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario codigo_rapido,cod_usuario nombre,1 orden',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d, ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and d.cod_motivo       = m.cod_motivo',
' and (d.tip_comprobante = :P370_TIP_COMPROBANTE)',
' and (d.ser_comprobante = :P370_SER_COMPROBANTE)',
' and (d.nro_comprobante = :P370_NRO_COMPROBANTE) ',
' group by cod_usuario',
'UNION ALL',
'select cod_usuario, cod_usuario,2',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE ',
'  group by cod_usuario',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124021398793827311)
,p_name=>'P370_MOTIVO_SEGUIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124020347663827301)
,p_item_default=>'T'
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SEGUIMIENTOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.cod_motivo codigo_rapido, m.descripcion  nombre ,1 orden',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d, ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and d.cod_motivo       = m.cod_motivo',
' and (d.tip_comprobante = :P370_TIP_COMPROBANTE)',
' and (d.ser_comprobante = :P370_SER_COMPROBANTE)',
' and (d.nro_comprobante = :P370_NRO_COMPROBANTE) ',
' group by d.cod_motivo,descripcion',
'UNION ALL',
'select c.cod_motivo codigo_rapido, m.descripcion desc_motivo,2',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS NULL ',
' group by c.cod_motivo,descripcion',
'UNION ALL',
' ',
'SELECT ''SNC'' codigo_rapido,''SOLICITUD NO CONFORME'' nombre,2',
' from ca_seguimiento_conformidad c ,  ca_conformidad t',
'where t.cod_empresa     =  :P_COD_EMPRESA',
'and t.cod_empresa=c.cod_empresa',
'and t.nro_solicitud=c.nro_solicitud',
'',
' and T.tip_comprobante_ref = :P370_TIP_COMPROBANTE',
' and T.ser_comprobante_ref = :P370_SER_COMPROBANTE',
' and t.nro_comprobante_ref = :P370_NRO_COMPROBANTE ',
' AND ROWNUM=1',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124021438007827312)
,p_name=>'P370_MOTIVO_PRINCIPAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124020741949827305)
,p_item_default=>'T'
,p_prompt=>'Motivo Principal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_PRINCIPAL_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.MOTIVO_PRINCIPAL codigo, C.MOTIVO_PRINCIPAL nombre ,1 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS NOT NULL ',
' group by c.MOTIVO_PRINCIPAL',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124021505411827313)
,p_name=>'P370_MOTIVO_SECUNDARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124020741949827305)
,p_item_default=>'T'
,p_prompt=>'Motivo Secundario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_SECUNDARIO_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.MOTIVO_SECUNDARIO codigo, C.MOTIVO_SECUNDARIO nombre ,1 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS not  NULL ',
' and C.MOTIVO_SECUNDARIO is not null',
'',
'and (c.motivo_principal = :P370_MOTIVO_PRINCIPAL OR ( NVL(:P370_MOTIVO_PRINCIPAL,''T'')=''T''))',
' and (c.motivo_secundario = :P370_MOTIVO_SECUNDARIO OR ( NVL(:P370_MOTIVO_SECUNDARIO,''T'')=''T''))',
' and (c.cod_motivo = :P370_COD_MOTIVO OR ( NVL(:P370_COD_MOTIVO,''T'')=''T''))',
'',
'',
' group by c.MOTIVO_SECUNDARIO',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'',
'ORDER BY 3 desc,2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_MOTIVO_PRINCIPAL'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_MOTIVO_PRINCIPAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(124021652838827314)
,p_name=>'P370_COD_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124020741949827305)
,p_item_default=>'T'
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.COD_MOTIVO codigo, DESCRIPCION nombre ,1 orden',
'',
'from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' and c.motivo_principal is not null',
'and (c.motivo_principal = :P370_MOTIVO_PRINCIPAL OR ( NVL(:P370_MOTIVO_PRINCIPAL,''T'')=''T''))',
' and (c.motivo_secundario = :P370_MOTIVO_SECUNDARIO OR ( NVL(:P370_MOTIVO_SECUNDARIO,''T'')=''T''))',
' and (c.cod_motivo = :P370_COD_MOTIVO OR ( NVL(:P370_COD_MOTIVO,''T'')=''T''))',
'',
'GROUP BY c.COD_MOTIVO,DESCRIPCION',
'',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'order by 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_MOTIVO_PRINCIPAL,P370_MOTIVO_SECUNDARIO'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_MOTIVO_PRINCIPAL,P370_MOTIVO_SECUNDARIO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124021731429827315)
,p_name=>'P370_USUARIO_CALL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124020741949827305)
,p_item_default=>'T'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_USUARIO_CALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_usuario codigo_rapido, cod_usuario nombre,2 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE ',
' and c.motivo_principal is not null',
'  group by cod_usuario',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125066334047854403)
,p_name=>'P370_CATEGORIA_ARTICULO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125066417127854404)
,p_name=>'P370_LINEA_ARTICULOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125070462135854444)
,p_name=>'P370_ARTICULO_DEV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125070170150854441)
,p_prompt=>'Producto'
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
 p_id=>wwv_flow_imp.id(125070581682854445)
,p_name=>'P370_CANTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125070170150854441)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125070688047854446)
,p_name=>'P370_COD_MOTIVO_DEV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(125070170150854441)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_DEVOLUCION_CAORDTRA'
,p_lov=>'SELECT cod_motivo||'' - ''||descripcion descripcion, cod_motivo codigo FROM ca_motivos_devolucion_repuesto'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125070906669854449)
,p_name=>'P370_CANTIDAD_DEV'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134811059387775504)
,p_name=>'P370_NO_CONFORME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134810915099775503)
,p_prompt=>'Solicitud no Conforme'
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
 p_id=>wwv_flow_imp.id(134811393439775507)
,p_name=>'P370_COD_STA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110207940156399601)
,p_prompt=>'Nro. STA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CLIENTE||'' - ''||NOMBRE NOMBRE',
'         , COD_CLIENTE',
'            from CC_CLIENTES c, personas p',
'            where c.cod_empresa   = ''1''       ',
'              AND C.TIP_CLIENTE in (''28'',''77'')',
'              and c.cod_persona   = p.cod_persona',
'              AND NVL(C.ESTADO,''A'')NOT IN (''I'')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'STA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134811595207775509)
,p_name=>'P370_CANAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_prompt=>'Canal'
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
 p_id=>wwv_flow_imp.id(134812244402775516)
,p_name=>'P370_NRO_ORDEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134811773515775511)
,p_prompt=>'Nro. de Orden de Retiro de Ticket'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134814116776775535)
,p_name=>'P370_NRO_COMPRA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134814239983775536)
,p_name=>'P370_FEC_COMPRA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134814424645775538)
,p_name=>'P370_OT_MULTIPLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_prompt=>'Crear  varias OTs para el mismo cliente'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134814681292775540)
,p_name=>'P370_IMPRIMIR'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137002627409087928)
,p_name=>'P370_DESCRI_ORIGEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(110209545389399617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137003152133087933)
,p_name=>'P370_TRANSPPORTADOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134811773515775511)
,p_prompt=>'Origen Ticket'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:SPP;S,LOGISTICA;L,TRANSPORTADORA;T'
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149024877992268827)
,p_name=>'P370_DATOS_GARANTIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(149024720054268826)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175728226205649220)
,p_name=>'P370_OCULTAR'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175728519325649223)
,p_name=>'P370_ESTADO_AUX'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(110208278068399604)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181181484322121001)
,p_name=>'P370_NRO_PAGINA'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_imp.id(117499326801342240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181185851179121045)
,p_name=>'P370_SUC_DIST_AUX'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181186114075121048)
,p_name=>'P370_OBSERV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110211544760399637)
,p_prompt=>'OBS'
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
 p_id=>wwv_flow_imp.id(182765061655206906)
,p_name=>'P370_VOLVER'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186260274778274106)
,p_name=>'P370_IND_SNC'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(110208123484399603)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186260510996274109)
,p_name=>'P370_USR_IND_SNC'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(186260344562274107)
,p_prompt=>'Usuario SNC'
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
 p_id=>wwv_flow_imp.id(186260656833274110)
,p_name=>'P370_FEC_IND_SNC'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(186260344562274107)
,p_prompt=>'Fecha SNC'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(110095771209167999)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P370_COD_CLIENTE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(110077038256167983)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(149026010287268839)
,p_validation_name=>unistr('Valida garant\00EDa')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_meses NUMBER  := 0;',
'v_fecha_garantia DATE;',
'v_meses_2 NUMBER := 0;',
'BEGIN ',
'    IF :P370_GARANTIA = ''S'' THEN ',
'        IF :P370_NRO_GARANTIA  IS NOT NULL THEN',
'            BEGIN ',
'                SELECT C.FEC_COMPROBANTE',
'                   INTO v_fecha_garantia',
'                  FROM st_garantia_productos_det a, vt_comprobantes_cabecera c',
'                 WHERE a.nro_garantia = :P370_NRO_GARANTIA',
'                   AND a.cod_empresa = c.cod_empresa',
'                   AND a.tip_comprobante = c.tip_comprobante',
'                   AND a.nro_comprobante = c.nro_comprobante',
'                   AND a.ser_comprobante = c.ser_comprobante;',
'                EXCEPTION ',
'                    WHEN OTHERS THEN  ',
'                        v_fecha_garantia := NULL;',
'            END;',
'',
'             v_meses := inv.caordtra.f_meses(p_fecini => v_fecha_garantia);',
'             IF v_meses > 12 THEN ',
'                IF :P370_NRO_COMPROBANTE_DISTR IS NULL OR :P370_FECHA_CO_DISTRIBUIDOR IS NULL THEN  ',
'                    RETURN ''Debe ingresar los datos de la factura del Cliente'';',
'                ELSE ',
'                    v_meses_2 := inv.caordtra.f_meses(p_fecini => :P370_FECHA_CO_DISTRIBUIDOR);',
'                    IF v_meses_2 > 12 THEN ',
unistr('                        RETURN ''Producto fuera de garant\00EDa'';'),
'                    END IF;',
'                END IF;',
'            END IF;',
'        ELSE ',
unistr('            RETURN ''Debe ingresar el n\00FAmero de garant\00EDa'';'),
'        END IF;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110098484294168003)
,p_name=>'nombre'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_CLIENTE'
,p_condition_element=>'P370_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110098981198168005)
,p_event_id=>wwv_flow_imp.id(110098484294168003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') not in ''I'' ',
'and c.cod_cliente=:P370_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre',
';'))
,p_attribute_07=>'P370_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110099370566168005)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>20
,p_condition_element=>'P370_OPERACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'MODIFICAR'
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110103342612168010)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P370_PARAM_NRO_OT IS NULL AND :P370_PARAM_SER_OT IS NULL  THEN',
'declare',
'vusuario varchar2(600):= :APP_USER;',
'begin',
':P370_SER_COMPROBANTE:=''P'';',
':P370_FEC_COMPROBANTE:=TO_CHAR(SYSDATE,''DD/MM/YYYY'');',
':P370_GARANTIA:=''S'';',
':P370_DEPARTAMENTO:=null;',
':P370_CIUDAD:=null;      ',
'end;',
'else',
'declare',
'vproveedor varchar2(30);',
'begin',
'select OT.FEC_COMPROBANTE,',
'OT.NRO_COMPROBANTE,',
'OT.SER_COMPROBANTE ,',
'NVL(OT.IND_GARANTIA,''N''),',
'OT.SERIE,',
'OT.COD_ORIGEN,',
'OT.COD_ARTICULO,',
'OT.NRO_COMPROBANTE_DISTR ,',
'OT.FECHA_CO_DISTRIBUIDOR,',
'ot.cod_distribuidor,',
'ot.cod_proveedor, ',
'ot.CONDICION   ,',
'OT.COD_CLIENTE, ',
'OT.GARANTIA_OT,',
'OT.COD_SUCURSAL_DIST ,',
'OT.COD_DEPARTAMENTO,',
'OT.COD_CIUDAD,',
'OT.estado_presu',
',ot.observ',
',ot.comentario,',
'presupuesto,',
'ind_delivery,',
'ind_retirado,',
'ind_zona,',
'OT.COD_CONDICION_VENTA,',
'TOT_REPUESTOS_CALL,',
'fec_presupuestado,',
'FEC_RECHAZO,',
'FEC_APROBACION,',
'TIPO_CIERRE,',
'IND_RECLAMO,',
'COD_ORIGEN,',
'CERRADO,',
'CREADO_POR,',
'FEC_CREACION,',
'HORA_CREACION,',
'PRESUPUESTADO_POR,',
'FEC_PRESUPUESTADO,',
'HORA_PRESUPUESTO,',
'FEC_MODIF_PRESUPUESTO,',
'PENDIENTE_POR,',
'FEC_PENDIENTE,',
'HORA_PENDIENTE,',
'FEC_MODIF_PENDIENTE,',
'REPARADO_IM_POR,',
'FEC_IM,',
'HORA_IM,',
'APROBADO_POR,',
'FEC_APROBACION,',
'HORA_APROBADA,',
'RECHAZADO_POR,',
'FEC_RECHAZO,',
'HORA_RECHAZADO,',
'FEC_MODIF_RECHAZADO,',
'FINALIZADO_POR,',
'FEC_FINALIZADO,',
'HORA_FINALIZADO,',
'FEC_MODIF_CERRADO,',
'VERIFICADO_POR,',
'FEC_VERIFICADO,',
'HORA_VERIFICACION,',
'FEC_MODIF_VERIFICADO,',
'ENTREGADO_POR,',
'FEC_ENTREGADO,',
'HORA_ENTREGADO,',
'RETIRADO_POR,',
'FECHA_RETIRADO,',
'HORA_RETIRADO,',
'COD_USUARIO_SIN_RP,',
'FEC_SIN_REPUESTO,',
'HORA_SIN_REPUESTO,',
'USUARIO_PED_REP,',
'FECHA_PED_REP,',
'HORA_PED_REP,',
'COD_USUARIO_ESTADO_COMPLICADO,',
'FECHA_ESTADO_COMPLICADO,',
'COD_USUARIO_RENDICION,',
'FEC_RENDIDO,',
'IND_RENDIDO,',
'FECHA_LIQUIDA,',
'USUARIO_LIQUIDA,',
'FECHA_MODIFICADO_GARANTIA,',
'COD_USUARIO_MOD_GAR,',
'FECHA_ABANDONADO,',
'COD_USUARIO_ABANDONADO,',
'COD_STA,',
'FECHA_CO_DISTRIBUIDOR,',
'NRO_COMPROBANTE_DISTR,',
'COD_SUCURSAL_DIST',
'INTO :P370_FEC_COMPROBANTE,:P370_NRO_COMPROBANTE,:P370_SER_COMPROBANTE,:P370_GARANTIA,:P370_SERIE_PRODUCTO,:P370_COD_ORIGEN,:P370_COD_ARTICULO_OT,:P370_NRO_FACTURA,:P370_FECHA_FACTURA,',
':P370_COD_DISTRIBUIDOR,vproveedor,:P370_COMENTARIO,:P370_COD_CLIENTE,:P370_NRO_GARANTIA,:P370_COD_SUCURSAL_DIST,:P370_DEPARTAMENTO,:P370_vCIUDAD,:P370_ESTADO_PRESU,:P370_OBERVACION',
',:P370_CONCLUSION,:P370_PRESUPUESTO,:P370_IND_DELIVERY,:P370_IND_RETIRADO,:P370_IND_ZONA,:P370_COD_CONDICION_VENTA,:p370_TOT_REPUESTOS_CALL,:P370_FEC_PRESUPUESTADO,:P370_FEC_RECHAZO,',
':P370_FEC_APROBACION,:P370_TIPO_CIERRE,:P370_IND_RECLAMO,:P370_COD_ORIGEN,:P370_CERRADO,:P370_CREADO_POR,:P370_FEC_CREACION,:P370_HORA_CREACION,:P370_PRESUPUESTADO_POR,:P370_FEC_PRESUPUESTADO,',
':P370_HORA_PRESUPUESTO,:P370_FEC_MODIF_PRESUPUESTO,:P370_PENDIENTE_POR,:P370_FEC_PENDIENTE,:P370_HORA_PENDIENTE,:P370_FEC_MODIF_PENDIENTE,:P370_REPARADO_IM_POR,:P370_FEC_IM,',
':P370_HORA_IM,:P370_APROBADO_POR,:P370_FEC_APROBACION,:P370_HORA_APROBADA,:P370_RECHAZADO_POR,:P370_FEC_RECHAZO,:P370_HORA_RECHAZADO,:P370_FEC_MODIF_RECHAZADO,:P370_FINALIZADO_POR,',
':P370_FEC_FINALIZADO,:P370_HORA_FINALIZADO,:P370_FEC_MODIF_CERRADO,:P370_VERIFICADO_POR,:P370_FEC_VERIFICADO,:P370_HORA_VERIFICACION,:P370_FEC_MODIF_VERIFICADO,:P370_ENTREGADO_POR,',
':P370_FEC_ENTREGADO,:P370_HORA_ENTREGADO,:P370_RETIRADO_POR,:P370_FECHA_RETIRADO,:P370_HORA_RETIRADO,:P370_COD_USUARIO_SIN_RP,:P370_FEC_SIN_REPUESTO,:P370_HORA_SIN_REPUESTO,',
':P370_USUARIO_PED_REP,:P370_FECHA_PED_REP,:P370_HORA_PED_REP,:P370_COD_USUARIO_ESTADO_COMPLI,:P370_FECHA_ESTADO_COMPLICADO,:P370_COD_USUARIO_RENDICION,:P370_FEC_RENDIDO,',
':P370_IND_RENDIDO,',
':P370_FECHA_LIQUIDA,',
':P370_USUARIO_LIQUIDA,',
':P370_FECHA_MODIFICADO_GARANTIA,',
':P370_COD_USUARIO_MOD_GAR,',
':P370_FECHA_ABANDONADO,',
':P370_COD_USUARIO_ABANDONADO,',
':P370_COD_STA,',
':P370_FECHA_CO_DISTRIBUIDOR,',
':P370_NRO_COMPROBANTE_DISTR,',
':P370_COD_SUCURSAL_DIST',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=''1''',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P370_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P370_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
'END IF;',
''))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_attribute_03=>'P370_FEC_COMPROBANTE,P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE,P370_GARANT,P370_SERIE_PRODUCTO,P370_COD_ORIGEN,P370_NRO_FACTURA,P370_FECHA_FACTURA,P370_COD_DISTRIBUIDOR,P370_COMENTARIO,P370_COD_CLIENTE,P370_NOM_CLIENTE,P370_NRO_GARANTIA,P370_COD_SUCU'
||'RSAL_DIST,P370_DEPARTAMENTO,P370_VCIUDAD,P370_DESCARGA_DATOS,P370_CONCLUSION,P370_OBERVACION,P370_PRESUPUESTO,P370_IND_DELIVERY,P370_IND_ZONA,P370_IND_RETIRADO,P370_ESTADO_PRESU,P370_COD_CONDICION_VENTA,P370_TOT_REPUESTOS_CALL,P370_FEC_PRESUPUESTADO,'
||'P370_FEC_RECHAZO,P370_FEC_APROBACION,P370_TIPO_CIERRE,P370_IND_RECLAMO,P370_CERRADO,P370_COD_USUARIO_ESTADO_COMPLI,P370_CERRADO, P370_CREADO_POR, P370_FEC_CREACION, P370_HORA_CREACION, P370_PRESUPUESTADO_POR, P370_FEC_PRESUPUESTADO, P370_HORA_PRESUPU'
||'ESTO, P370_FEC_MODIF_PRESUPUESTO, P370_PENDIENTE_POR, P370_FEC_PENDIENTE, P370_HORA_PENDIENTE, P370_FEC_MODIF_PENDIENTE, P370_REPARADO_IM_POR, P370_FEC_IM, P370_HORA_IM, P370_APROBADO_POR, P370_FEC_APROBACION, P370_HORA_APROBADA, P370_RECHAZADO_POR, '
||'P370_FEC_RECHAZO, P370_HORA_RECHAZADO, P370_FEC_MODIF_RECHAZADO, P370_FINALIZADO_POR, P370_FEC_FINALIZADO, P370_HORA_FINALIZADO, P370_FEC_MODIF_CERRADO, P370_VERIFICADO_POR, P370_FEC_VERIFICADO, P370_HORA_VERIFICACION, P370_FEC_MODIF_VERIFICADO, P370'
||'_ENTREGADO_POR, P370_FEC_ENTREGADO, P370_HORA_ENTREGADO, P370_RETIRADO_POR, P370_FECHA_RETIRADO, P370_HORA_RETIRADO, P370_COD_USUARIO_SIN_RP, P370_FEC_SIN_REPUESTO, P370_HORA_SIN_REPUESTO, P370_USUARIO_PED_REP, P370_FECHA_PED_REP, P370_HORA_PED_REP, '
||'P370_COD_USUARIO_ESTADO_COMPLI, P370_FECHA_ESTADO_COMPLICADO, P370_COD_USUARIO_RENDICION, P370_FEC_RENDIDO, P370_IND_RENDIDO, P370_FECHA_LIQUIDA, P370_USUARIO_LIQUIDA, P370_FECHA_MODIFICADO_GARANTIA, P370_COD_USUARIO_MOD_GAR, P370_FECHA_ABANDONADO, P'
||'370_COD_USUARIO_ABANDONADO,P370_COD_STA,P370_FECHA_CO_DISTRIBUIDOR,P370_NRO_COMPROBANTE_DISTR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110104303419168011)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'             DECLARE',
'                    CURSOR REG IS',
'                       SELECT OT.COD_ARTICULO,',
'                             AR.descripcion,',
'                             OT.MONTO,',
'                             OT.MONTO_VENTA,',
'                             OT.COD_TECNICO,',
'                             NVL(OT.GARANTIA,''N'') GARANTIA,',
'                             NVL(OT.IND_RECLAMO,''N'') RECLAMO',
'                        FROM VT_ORDENES_TRABAJO_MO OT,',
'                             st_articulos AR ',
'                        WHERE OT.COD_EMPRESA=''1''',
'                        AND   OT.TIP_COMPROBANTE=''ORT''',
'                        AND   OT.SER_COMPROBANTE= :P370_PARAM_SER_OT--:P370_SER_COMPROBANTE',
'                        AND   OT.NRO_COMPROBANTE= :P370_PARAM_NRO_OT  --:P370_NRO_COMPROBANTE ',
'                        AND   OT.cod_empresa = AR.cod_empresa',
'                        AND   OT.COD_ARTICULO = AR.COD_ARTICULO  ;',
'                BEGIN',
'                        if not apex_collection.collection_exists(''VT_MANO_OBRA'') then ',
'                            apex_collection.create_collection(''VT_MANO_OBRA'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_MANO_OBRA'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_MANO_OBRA'',',
'                                            p_c001 => R.COD_ARTICULO,',
'                                            p_c002 => R.descripcion ,',
'                                            p_c003 => R.MONTO,',
'                                            p_c004 => R.MONTO_VENTA ,',
'                                            p_c005 => R.COD_TECNICO ,',
'                                            p_c006 => R.GARANTIA,',
'                                            p_c007 => R.RECLAMO,',
'                                            p_c014 => ''S''',
'                                            );',
'                 ',
'                    END LOOP;',
'',
'                    begin',
'                     select SUM(to_number(c004))',
'                     INTO :P370_TOT_MOBRA',
'                      from apex_collections',
'                     where collection_name = ''VT_MANO_OBRA'';',
'                     exception ',
'                    when others then ',
'                        null;',
'                    end;',
'',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
'                END;',
'',
' '))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_attribute_03=>'P370_TOT_MOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110105865538168013)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = ''1''',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P370_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P370_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P370_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_USUARIO_SIN_RP P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110099837436168006)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- REOUESTOS SOLICITADOS',
'',
' IF :P370_COLL_BRS IS NULL THEN',
'    :P370_COLL_BRS:=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'                                                            c003 as cantidad, ',
'                                                            NVL(c004,0) as conf ,',
'                                                            NVL(c005,0) as recep, ',
'                                                            c006 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.conf,',
'                                                    p_c004 => R.cantidad ,',
'                                                    p_c005 => R.recep ,',
'                                                    p_c006 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;'))
,p_attribute_02=>'P370_COLL_BRS'
,p_attribute_03=>'P370_COLL_BRS'
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
 p_id=>wwv_flow_imp.id(110100379996168007)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos UTILIZADOS',
' declare ',
'        cursor reg is',
'                select cod_articulo,',
'                       desc_articulo,  ',
'                       cantidad, ',
'                       PRECIO_LISTA,',
'                       total',
'              from VW_OT_REP_UTILIZADOS_APEX',
'             where  ser_comprobante = NVL(:P370_SER_COMPROBANTE,:P370_PARAM_SER_OT)',
'               and  nro_comprobante = NVL(:P370_nro_COMPROBANTE,:P370_PARAM_nro_OT)  ; ',
'',
' BEGIN',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_UTILIZADOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.precio_lista,',
'                                            p_c005 => R.total  ',
'                                            );',
'                  ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_USUARIO_SIN_RP P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110100800474168008)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------- PRESUPUESTO ',
'',
'DECLARE',
'CURSOR REG IS ',
'SELECT COD_ARTICULO,  DESC_ARTICULO,  CANTIDAD,  MONTO_TOTAL , COD_RUBRO  ,CANTIDAD_CONFIRMADA,	OBSERVACION,',
'              DECODE(NVL(AAA.IND_MANEJA_STOCK,''N''),''N'',''S'',NVL((SELECT DISTINCT ''S'' ',
'                                                            FROM    st_existencia_art  EE',
'                                                            WHERE   AAA.COD_ARTICULO=EE.COD_ARTICULO',
'                                                            AND     EE.COD_EMPRESA=''1'' ',
'                                                            AND     EE.COD_SUCURSAL IN (''101'',''1015'',''76'',''102'',''260'',''190'',''05'',''248'') ',
'                                                            group by EE.COD_ARTICULO',
'                                                            HAVING 		SUM(eE.cant_dispon)>=AAA.cantidad ),''N'')) EN_STOCK',
'FROM ',
'(',
'        select d.cod_articulo, a.descripcion desc_articulo, ',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) cantidad,',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) * nvl( d.precio_venta, 0 ) ) monto_total, ',
'              A.COD_RUBRO,A.IND_MANEJA_STOCK,',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad_CONFIRMADA, 0 ), nvl( d.cantidad_CONFIRMADA, 0 ) * -1 ) )CANTIDAD_CONFIRMADA,',
'              NVL(D.OBSERVACION, C.OBSERVACION)OBSERVACION             ',
'             from ca_entsal_cab c, ca_entsal_det d, st_articulos a, st_motivo_ent_sal mo',
'            where c.cod_empresa = ''1''',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P370_PARAM_SER_OT',
'              and c.nro_comprobante_ref = :P370_PARAM_NRO_OT',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_ent_sal, ''DFL'' ) = d.tip_ent_sal',
'              and nvl( c.ser_ent_sal, ''D'' ) = d.ser_ent_sal',
'              and c.num_ent_sal = d.num_ent_sal',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and nvl(D.anulado,''N'')<>''S''',
'              and c.cod_motivo_ent_sal = mo.cod_motivo_ent_sal(+)',
'            group by d.cod_articulo, a.descripcion, a.cod_grupo_art,d.garantia,A.IND_MANEJA_STOCK,',
'             A.COD_RUBRO,',
'              NVL(D.OBSERVACION, C.OBSERVACION)',
'            having sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) > 0',
'            )AAA',
'            order by AAa.desc_articulo',
'            ;',
'',
'',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_PRESUPUESTO'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_PRESUPUESTO'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_PRESUPUESTO'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.MONTO_TOTAL,',
'                                            p_c005 => R.EN_STOCK  ',
'                                            );',
'                  ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110101315985168008)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- PRESUPUESTO',
'',
' IF :P370_COLL_BPRE IS NULL THEN',
'    :P370_COLL_BPRE:=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PRESUPUESTO1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'                                                            c003 as cantidad, ',
'                                                            c004 as precio ,',
'                                                            c005 as total, ',
'                                                            c006 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_PRESUPUESTO1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.cantidad ,',
'                                                    p_c004 => R.total ,',
'                                                    --p_c005 => R.total ,',
'                                                    p_c006 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;',
''))
,p_attribute_02=>'P370_COLL_BPRE'
,p_attribute_03=>'P370_COLL_BPRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110101881012168009)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_COD_PROVEEDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(:P370_COD_PROV, NVL((select   ot.cod_proveedor  ',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=''1''',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = NVL(:P370_PARAM_SER_OT,:P370_SER_COMPROBANTE)',
'            and   ot.NRO_comprobante= NVL(:P370_PARAM_NRO_OT,:P370_NRO_COMPROBANTE))   , (select distinct p.cod_proveedor ',
'                            from usuarios u,',
'                                cm_proveedores p',
'                            where u.cod_usuario= v(''app_user'')',
'                            AND   u.cod_persona=p.cod_persona',
'                            AND   p.cod_empresa=''1''',
'                            AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'                            AND   p.ind_servicio_tecnico =''STNGO'' ))',
')DD',
'FROM',
'DUAL;'))
,p_attribute_07=>'P370_PARAM_NRO_OT,P370_PARAM_SER_OT,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_PROV'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110102342723168009)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_VCIUDAD,P370_DEL_ID_RS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110103894996168011)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------------------- PROBLEMA SOLUCION',
'             DECLARE',
'                    CURSOR REG IS',
'                     SELECT nvl(OT.COD_PROBLEMA,'''')COD_PROBLEMA,',
'                            nvl(P1.DESCRIPCION,'''') PROBLEMA,',
'                            nvl(OT.COD_SOLUCION,'''')COD_SOLUCION,',
'                            nvl(SL.DESCRIPCION,'''') SOLUCION,',
'                            nvl(OT.COD_PROBLEMA_CLIENTE,'''')COD_PROBLEMA_CLIENTE,',
'                            nvl(P2.DESCRIPCION,'''') PROBL_CLI,',
'                            nvl(OT.REPARADO,'''')REPARADO',
'                        FROM VT_ORDENES_TRABAJO_PROB_GEN OT,',
'                            ca_problemas P1,',
'                            ca_problemas P2,',
'                            CA_SOLUCIONES SL',
'                        WHERE OT.COD_EMPRESA=''1''',
'                        AND   OT.TIP_COMPROBANTE=''ORT''',
'                        AND   OT.SER_COMPROBANTE=:P370_PARAM_SER_OT ',
'                        AND   OT.NRO_COMPROBANTE=:P370_PARAM_NRO_OT ',
'                        AND   OT.cod_empresa = P1.cod_empresa(+)',
'                        AND   OT.cod_problema = P1.cod_problema(+)',
'                        AND   OT.cod_empresa = P2.cod_empresa(+)',
'                        AND   OT.COD_PROBLEMA_CLIENTE = P2.cod_problema(+)',
'                        AND   OT.cod_empresa = SL.cod_empresa(+)',
'                        AND   OT.COD_SOLUCION = SL.COD_SOLUCION(+);',
'                BEGIN',
'                        if not apex_collection.collection_exists(''VT_ORDENES_PROBLEMA'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_PROBLEMA'');',
'                            ',
'                         else',
'                            apex_collection.truncate_collection(''VT_ORDENES_PROBLEMA''); ',
'                                                     ',
'                        end if; ',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                            p_c001 => R.COD_PROBLEMA_CLIENTE,',
'                                            p_c002 => R.PROBL_CLI ,',
'                                            p_c003 => R.COD_PROBLEMA ,',
'                                            p_c004 => R.PROBLEMA ,',
'                                            p_c005 => R.COD_SOLUCION ,',
'                                            p_c006 => R.SOLUCION,',
'                                            p_c007 => R.REPARADO,',
'                                            P_c008 => ''S'',',
'                                            p_c010 =>  :P370_COD_ARTICULO_OT',
'                                            );',
'                 ',
'                    END LOOP;',
'',
'                    ',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
'                END;',
'',
''))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE,P370_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110102834995168010)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$(''.refreshme'').trigger(''apexrefresh''); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115738524232259204)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331358670673332631)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119710359121278422)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OT.estado_presu',
'INTO :P370_ESTADO_PRESU ',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=''1''',
'AND   OT.TIP_COMPROBANTE=''ORT''',
'AND   OT.SER_COMPROBANTE = :P370_PARAM_SER_OT ',
'and   ot.NRO_comprobante= :P370_PARAM_NRO_OT;'))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_03=>'P370_ESTADO_PRESU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121599834776098038)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select SUM(to_number(c005))',
'INTO :P370_TOT_REPUESTOS',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS'';',
' exception ',
'when others then ',
'    null;',
'end;',
'',
''))
,p_attribute_03=>'P370_TOT_REPUESTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121598336119098023)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    SELECT HORA_INGRESO, HORA_SALIDA',
'      INTO :P370_HORA_ENTREGADO, :P370_HORA_FINALIZADO',
'      FROM VT_OT_TIEMPO',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'       AND TIP_COMPROBANTE = :P370_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P370_SER_COMPROBANTE',
'       AND NRO_COMPROBANTE = :P370_NRO_COMPROBANTE',
'       AND TO_CHAR(FECHA_INGRESO, ''DD/MM/YYYY'') =',
'           TO_CHAR(SYSDATE, ''DD/MM/YYYY'')',
'       AND ROWNUM = 1;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      :P370_HORA_ENTREGADO := NULL;',
'      :P370_HORA_FINALIZADO := NULL;',
'  END;',
'',
'',
'',
'  IF :P370_DERIVADO = ''F'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVADO A FACTURACION'';',
'  ELSIF :P370_DERIVADO = ''CO'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVADO A COBRANZAS'';',
'  ELSIF :P370_DERIVADO = ''CR'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVADO A CREDITOS'';',
'  ELSIF :P370_DERIVADO = ''DI'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVADO A DIRECTORIO'';',
'  ELSIF :P370_DERIVADO = ''RH'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVADO A RRHH'';',
'  ELSIF :P370_DERIVADO = ''CA'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVADO A CANJE'';',
'  ELSIF :P370_DERIVADO = ''AN'' THEN',
'    :P370_DESC_DERIVADO := ''DERIVACION ANULADO'';',
'  ELSIF :P370_DERIVADO = ''AF'' THEN',
'    :P370_DESC_DERIVADO := ''AUTORIZADO A FACTURACION'';',
'  END IF;',
' ',
'  inv.caordtra.pr_carga_detalle_gpv(p_cod_usuario_presupuesto_gpv => :P370_COD_USU_PRESUP_GPV,',
'                                   p_fecha_presupuesto_gpv       => :P370_FECHA_PROPUESTA_GPV,',
'                                   p_cod_empresa                 => :P_COD_EMPRESA,',
'                                   p_tip_comprobante             => :P370_TIP_COMPROBANTE,',
'                                   p_ser_comprobante             => :P370_SER_COMPROBANTE,',
'                                   p_nro_comprobante             => :P370_NRO_COMPROBANTE,',
'                                   p_cod_usuario_cerrado_gpv     =>  :P370_COD_USUARIO_CERRADO_GPV,',
'                                   p_fecha_cerrado_gpv           =>  :P370_FECHA_CERRADO_GPV,',
'                                   p_cod_usuario_snc_gpv         => :P370_COD_USUARIO_SNC_GPV,',
'                                   p_fecha_snc_gpv               => :P370_FECHA_SNC_GPV,',
'                                   p_cod_origen                  => :P370_COD_ORIGEN,',
'                                   p_cod_usuario_verificado_sta  => :p370_cod_usu_verificado_sta,',
'                                   p_fecha_verificado_sta        => :p370_fecha_verificado_sta);',
'',
'   :P370_cod_usu_aprobacion_gpv := :P370_aprobado_por;',
'  :P370_fecha_aprobado_gpv         := :P370_fec_aprobacion;',
'',
'  :P370_cod_usuario_rechazo_gpv := :P370_rechazado_por;',
'  :P370_fecha_rechazo_gpv       := :P370_fec_rechazo;',
'',
'  :P370_cod_usuario_cerrado_gpv := :P370_finalizado_por;',
'  :P370_fecha_cerrado_gpv       := :P370_FECHA_FINALIZACION;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_DERIVADO,P370_COD_ORIGEN,P370_APROBADO_POR,P370_FEC_APROBACION,P370_RECHAZADO_POR,P370_FEC_RECHAZO,P370_FINALIZADO_POR,P370_FECHA_FINALIZACION'
,p_attribute_03=>'P370_HORA_ENTREGADO,P370_HORA_FINALIZADO,P370_DESC_DERIVADO,P370_COD_USU_PRESUP_GPV,P370_FECHA_PROPUESTA_GPV,P370_COD_USUARIO_CERRADO_GPV,P370_FECHA_CERRADO_GPV,P370_COD_USUARIO_SNC_GPV,P370_FECHA_SNC_GPV,P370_COD_USU_VERIFICADO_STA,P370_FECHA_VERIFI'
||'CADO_STA,P370_COD_USU_APROBACION_GPV,P370_FECHA_APROBADO_GPV,P370_COD_USUARIO_RECHAZO_GPV,P370_FECHA_RECHAZO_GPV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121597589028098015)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P370_SEGUIMIENTO   := ''N'';',
'  :P370_COD_ARTICULO2 := :P370_COD_ARTICULO_OT;',
'  ----------------------------------------------------',
'  inv.caordtra.pr_verifica_repuestos(p_cod_empresa       =>  :P_COD_EMPRESA,',
'                                    p_tip_comprobante    => :P370_TIP_COMPROBANTE,',
'                                    p_ser_comprobante    => :P370_SER_COMPROBANTE,',
'                                    p_nro_comprobante    =>  :P370_NRO_COMPROBANTE,',
'                                    p_cod_origen        => :P370_COD_ORIGEN,',
'                                    p_tiene_repuestos   =>  :P370_TIENE_REPUESTOS,',
'                                    p_actualiza_cod_articulo => :P370_ACTUALIZA_COD_ARTICULO); --VERIFICAMOS SI LA OT TIENE O NO PEDIDO DE REPUESTOS A PEDIDO DE ALMA VILLALBA. GASPAR M. 16/03/2022',
'  ----------------------------------------------------',
'  DECLARE',
'    VPATH_EXP   VARCHAR2(600);',
'    VPATH_SPARE VARCHAR2(600);',
'  BEGIN',
'    SELECT DESCRIPCION,',
'           PATH_SPARE,',
'           PATH_EXP,',
'           COD_MARCA,',
'           COD_LINEA,',
'           COD_CATEGORIA,',
'           COD_FAMILIA',
'      INTO :P370_DESCRIPCION_ARTICULO,',
'           VPATH_SPARE,',
'           VPATH_EXP,',
'           :P370_MARCA_PRO,',
'           :P370_LINEA_PRODUCTO,',
'           :P370_CATEGORIA_PRODUCTO,',
'           :P370_FAMILIA_PRODUCTO',
'      FROM ST_ARTICULOS',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'       AND COD_ARTICULO = :P370_COD_ARTICULO_OT;',
'  ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      :P370_DESCRIPCION_ARTICULO := NULL;',
'  END;',
'  ----------------------------------------------------',
'  inv.caordtra.pr_sumar_totales_mo(p_cod_empresa       =>  :P_COD_EMPRESA,',
'                                    p_tip_comprobante    => :P370_TIP_COMPROBANTE,',
'                                    p_ser_comprobante    => :P370_SER_COMPROBANTE,',
'                                    p_nro_comprobante    =>  :P370_NRO_COMPROBANTE,',
'                                        p_tot_mobra       => :P370_TOT_MOBRA);',
'',
'  ',
' ',
'  inv.caordtra.pr_sumar_totales_rep(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'p_ser_comprobante => :P370_SER_COMPROBANTE,',
'p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'p_tot_repuestos       => :P370_TOT_REPUESTOS);',
'  ----------------------------------------------------',
'   IF nvl(:P370_IND_ADELANTO,''N'') = ''S'' THEN',
'   :P370_TOTAL_OT := NVL(:P370_TOT_MOBRA, 0) +',
'            NVL(:P370_TOT_REPUESTOS, 0) -',
'            NVL(:P370_SENIA, 0) -',
'            NVL(:P370_MONTO_ADELANTO, 0);',
'  ELSE',
'    :P370_TOTAL_OT := NVL(:P370_TOT_MOBRA, 0) +',
'                            NVL(:P370_TOT_REPUESTOS, 0) -',
'                            NVL(:P370_SENIA, 0);',
' END IF;',
'  ----------------------------------------------------',
'  :P370_TOTAL_OT_CALL := NVL(:P370_TOT_REPUESTOS_CALL, 0);',
'  :P370_TOTAL_OT_AUX := :P370_TOTAL_OT;',
'  ----------------------------------------------------',
'  ',
'END;',
''))
,p_attribute_02=>'P370_COD_ARTICULO_OT,P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ORIGEN,P370_ACTUALIZA_COD_ARTICULO,P370_TOT_REPUESTOS_CALL'
,p_attribute_03=>'P370_SEGUIMIENTO,P370_COD_ARTICULO2,P370_TIENE_REPUESTOS,P370_TOTAL_OT,P370_TOTAL_OT_CALL,P370_TOTAL_OT_AUX,P370_TOT_REPUESTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119712244347278441)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'inv.caordtra.pr_suma_presupuesto_call(p_cod_empresa       => :P_COD_EMPRESA,',
'                                     p_tip_comprobante   => :P370_TIP_COMPROBANTE,',
'                                     p_ser_comprobante   => :P370_PARAM_SER_OT,',
'                                     p_nro_comprobante   => :P370_PARAM_NRO_OT,',
'                                     p_total_ot_call_c_g => :P370_TOTAL_OT_CALL_C_G,',
'                                     p_total_ot_call_s_g => :P370_TOTAL_OT_CALL_S_G,',
'                                     p_mensaje_error     => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_PARAM_NRO_OT,P370_PARAM_SER_OT'
,p_attribute_03=>'P370_TOTAL_OT_CALL_C_G,P370_TOTAL_OT_CALL_S_G,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124021113738827309)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_busca_llamadas(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_tip_comprobante     => :P370_TIP_COMPROBANTE,',
'                              p_ser_comprobante     => :P370_SER_COMPROBANTE,',
'                              p_nro_comprobante     => :P370_NRO_COMPROBANTE,',
'                              p_usuario_seguimiento => :P370_USUARIO_SEGUIMIENTO,',
'                              p_motivo_seguimiento  => :P370_MOTIVO_SEGUIMIENTO,',
'                              p_motivo_secundario   => :P370_MOTIVO_SECUNDARIO,',
'                              p_motivo_principal    => :P370_MOTIVO_PRINCIPAL,',
'                              p_cod_motivo          => :P370_COD_MOTIVO);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_USUARIO_SEGUIMIENTO,P370_MOTIVO_SEGUIMIENTO,P370_MOTIVO_SECUNDARIO,P370_MOTIVO_PRINCIPAL,P370_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124021804081827316)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124020347663827301)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124021984477827317)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124020741949827305)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124024243341827340)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>280
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_ubicaciones(p_cod_empresa      =>  :P_COD_EMPRESA,',
'                                   p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'                                   p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                                   p_nro_comprobante =>  :P370_NRO_COMPROBANTE,',
'                                   p_mensaje_error   => :P0_MENSAJE_VALIDACION);',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124024303211827341)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124022767796827325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125066753776854407)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>300
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DESCRIPCION_ARTICULO,P370_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P370_COD_ARTICULO_OT'))
,p_attribute_07=>'P370_COD_ARTICULO_OT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134811123144775505)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>310
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_solicitud VARCHAR2(300);',
'BEGIN ',
'    BEGIN ',
'        select a.nro_solicitud ',
'        INTO v_solicitud',
'        from CA_CONFORMIDAD  a',
'        where a.nro_comprobante_ref  = :P370_NRO_COMPROBANTE',
'        and a.tip_comprobante_ref  = ''ORT'';',
'    EXCEPTION  ',
'        WHEN OTHERS THEN ',
'            v_solicitud  := NULL;',
'            :P370_NO_CONFORME := ''No cuenta con solicitu no conforme'';',
'    END;',
'',
'    IF v_solicitud IS NOT NULL THEN',
'        :P370_NO_CONFORME := ''Cuenta con solicitud no conforme Nro. ''|| v_solicitud;',
'    ELSE ',
'        :P370_NO_CONFORME := ''No cuenta con solicitud no conforme'';',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P370_NRO_COMPROBANTE'
,p_attribute_03=>'P370_NO_CONFORME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65386081241339814)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>320
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	',
' ',
'             ',
' select u.cod_usuario',
'             into :P370_AGENTE',
'from ca_agente_call_ot  a, usuarios u, personas p',
'where u.cod_empresa=''1''',
'and u.cod_empresa=a.cod_empresa',
'and u.cod_usuario=a.cod_usuario',
'and u.cod_persona=p.cod_persona',
'and a.cod_empresa=a.cod_empresa',
'and a.tip_comprobante=:P370_TIP_COMPROBANTE',
'and a.ser_comprobante=:P370_SER_COMPROBANTE',
'and a.nro_comprobante=:P370_NRO_COMPROBANTE',
'and rownum=1;',
'exception',
'	when others then ',
'	begin ',
' select u.cod_usuario',
'    into :P370_AGENTE ',
'    from ca_agente_call a, usuarios u, personas p, cc_clientes cc',
'where cc.cod_empresa=''1''',
'and cc.cod_empresa=a.cod_empresa',
'and u.cod_empresa=a.cod_empresa',
'and u.cod_usuario=a.cod_usuario',
'and u.cod_persona=p.cod_persona',
'and u.cod_empresa=cc.cod_empresa',
'and cc.cod_cliente=:P370_COD_CLIENTE',
'and a.cod_vendedor=cc.cod_vendedor;',
'exception',
'	when others then ',
'	 :P370_AGENTE:=''CALLMANAG'';',
'	',
'end;',
'end;'))
,p_attribute_02=>'P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_CLIENTE,P370_COD_ORIGEN'
,p_attribute_03=>'P370_AGENTE'
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
 p_id=>wwv_flow_imp.id(173011582896991219)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>330
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P370_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P370_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');',
'',
'',
'if :P370_ESTADO_PRESU in (''E'',''C'', ''CE'') THEN ',
':P370_OCULTAR := 1;',
'ELSE ',
':P370_OCULTAR := 0;',
'END  IF;',
'',
':P370_ESTADO_AUX := :P370_ESTADO_PRESU;'))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_ESTADO_PRESU'
,p_attribute_03=>'P370_OCULTAR,P370_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181185929380121046)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>340
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= :APP_USER;',
'vproveedor varchar2(30);',
'begin',
'select ',
'COD_SUCURSAL_DIST, OBSERV, usr_ind_snc, fec_ind_snc ',
'INTO ',
':P370_COD_SUCURSAL_DIST, :P370_OBSERV, :P370_USR_IND_SNC, :P370_FEC_IND_SNC',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=''1''',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P370_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P370_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
''))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_03=>'P370_COD_SUCURSAL_DIST,P370_OBSERV,P370_USR_IND_SNC,P370_FEC_IND_SNC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173011660164991220)
,p_event_id=>wwv_flow_imp.id(110099370566168005)
,p_event_result=>'TRUE'
,p_action_sequence=>350
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75707913031194348)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110106204501168014)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_CLIENTE'
,p_condition_element=>'P370_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110106767897168014)
,p_event_id=>wwv_flow_imp.id(110106204501168014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'                    declare ',
'                        vciudad varchar2(30);',
'                        vdepartamento varchar2(30);',
'                    begin ',
'                            select	     ',
'                                        d.cod_direccion cod_dir, ',
'                                        d.detalle||''-''||ci.descripcion dir_cliente,  ',
'                                        i.numero,',
'                                        CI.COD_PROVINCIA,',
'                                        cI.COD_CIUDAD,',
'                                        p.direc_electronica',
'                                        ,NC.numero',
'                                        ,C.COD_LISTA_PRECIO,',
'                                        NC.NUMERO',
'                                       INTO',
'                                                        :P370_COD_DIRECCION,',
'                                                        :P370_DIR_CLIENTE, ',
'                                                        :P370_RUC,',
'                                                        vdepartamento,',
'                                                        vciudad,',
'                                                        :P370_EMAIL,',
'                                                        :P370_NCI,',
'                                                        :P370_COD_LISTA_PRECIO,',
'                                                        :P370_CI',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = ''1''',
'                                and c.cod_cliente = :P370_cod_cliente',
'                                and c.cod_persona = p.cod_persona',
'                                and c.cod_causal  = b.cod_causal(+)',
'                                and c.cod_persona = d.cod_persona(+)',
'                                and nvl(d.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona             = t.cod_persona(+)',
'                                and nvl(t.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona           = i.cod_persona(+)',
'                                and nvl(i.cod_ident(+),''X'') = ''RUC''',
'                                AND CI.COD_PAIS (+)     = D.COD_PAIS',
'                                AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'                                AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'                                and c.cod_persona           = NC.cod_persona(+)',
'                                and nvl(NC.cod_ident(+),''X'') = ''CI''',
'                                and rownum = 1;',
'',
'                            if :P370_PARAM_NRO_OT is null then',
'                                :P370_DEPARTAMENTO:=vdepartamento;',
'                                :P370_vCIUDAD:=vciudad;',
'                                :P370_CIUDAD:=vciudad;',
'                            end if;',
'                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                                :P370_COD_DIRECCION:=null;',
'                                :P370_DIR_CLIENTE:=null; ',
'                                :P370_RUC:=null;',
'                                :P370_DEPARTAMENTO:=null;',
'                                :P370_CIUDAD:=null;',
'                                :P370_EMAIL:=null;',
'                                :P370_NCI:=null;',
'                                :P370_COD_LISTA_PRECIO:=NULL;',
'                                :P370_CI :=  null;',
'                    END;',
'                end;'))
,p_attribute_02=>'P370_COD_CLIENTE'
,p_attribute_03=>'P370_COD_DIRECCION,P370_DIR_CLIENTE,P370_TEL_CLIENTE,P370_RUC,P370_DEPARTAMENTO,P370_CIUDAD,P370_EMAIL,P370_NCI,P370_VCIUDAD,P370_CI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110107225180168015)
,p_event_id=>wwv_flow_imp.id(110106204501168014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        if :P370_PARAM_NRO_OT is null and :P370_PARAM_SER_OT is null then',
'                select  distinct t.codigo_area || '' '' || t.num_telefono',
'                into :P370_TEL_CLIENTE',
'                    from cc_clientes c, telef_personas t',
'                    where c.cod_empresa = ''1''',
'                    and c.cod_cliente = :P370_cod_cliente',
'                    and c.cod_persona = t.cod_persona',
'                    and por_defecto =''S''',
'                    and rownum = ''1''',
'                    ;',
'                else',
'                select ot.TELEFONO',
'                into :P370_TEL_CLIENTE',
'                    from vt_ordenes_trabajo ot',
'                    where OT.COD_EMPRESA = ''1''',
'                    AND OT.TIP_COMPROBANTE = ''ORT''',
'                    AND OT.SER_COMPROBANTE = :P370_PARAM_SER_OT',
'                    and ot.NRO_comprobante = :P370_PARAM_NRO_OT; ',
'',
'        end if;',
'',
'exception ',
'    when others then',
'          :P370_TEL_CLIENTE:=  null;',
'end;',
'',
'if (:P370_DEPARTAMENTO=''11'' or :P370_DEPARTAMENTO=''18'') THEN',
'		:P370_IND_ZONA:=''C'';',
'ELSIF :P370_DEPARTAMENTO IS NOT NULL THEN                   ',
'		:P370_IND_ZONA :=''I'';',
'ELSE',
'	:P370_IND_ZONA:=NULL;',
'END IF;'))
,p_attribute_02=>'P370_COD_CLIENTE,P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_DEPARTAMENTO'
,p_attribute_03=>'P370_TEL_CLIENTE,P370_IND_ZONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181186048126121047)
,p_event_id=>wwv_flow_imp.id(110106204501168014)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= :APP_USER;',
'vproveedor varchar2(30);',
'begin',
'select ',
'COD_SUCURSAL_DIST',
'INTO ',
':P370_COD_SUCURSAL_DIST',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=''1''',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P370_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P370_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
''))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_03=>'P370_COD_SUCURSAL_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P370_PARAM_NRO_OT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110107683809168015)
,p_name=>'datos_sucursales'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_SUCURSAL_DIST'
,p_condition_element=>'P370_COD_SUCURSAL_DIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110108124352168015)
,p_event_id=>wwv_flow_imp.id(110107683809168015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select  p.direccion, p.telefono',
'	 into  :P370_lugar_entrega, :P370_telefono_dist',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P370_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P370_cod_sucursal_dist',
'	;',
'exception',
'	when others then 	',
'	 :P370_lugar_entrega:=:P370_cod_sucursal_dist||''-''||:P370_cod_cliente;',
'     ---, :P370_telefono_dist',
'end;'))
,p_attribute_02=>'P370_COD_SUCURSAL_DIST,P370_COD_CLIENTE'
,p_attribute_03=>'P370_LUGAR_ENTREGA,P370_TELEFONO_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110108530336168015)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_ARTICULO_OT'
,p_condition_element=>'P370_COD_ARTICULO_OT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115739401947259213)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_det_cod_tecnico   varchar2(500);',
'    v_det_nom_tecnico   varchar2(500);',
'    v_det_porcentaje_comision_jt varchar2(500);',
'    v_det_porcentaje_spp    number;',
'    v_det_porcentaje_cliente    number;',
'    v_det_desc_articulo varchar2(500);',
'    v_det_monto number;',
'    v_det_cod_moneda varchar2(500);',
'    v_det_desc_moneda   varchar2(500);',
'    v_det_tip_cambio    varchar2(500);',
'    v_det_tot_mobra_ant number;',
'    v_det_m_comision_jefe_tecnico number;',
'    v_det_sum_cant      number;',
'    V_det_monto_comision_tecnico    NUMBER;',
'    v_det_monto_gar_jt  number;',
'    v_det_monto_venta   number;',
'    v_det_monto_adicional   number;',
'begin ',
'       if not apex_collection.collection_exists(''VT_MANO_OBRA'') then ',
'          apex_collection.create_collection(''VT_MANO_OBRA'');                         ',
'        end if; ',
'inv.caordtra.pr_validaciones_mobra(p_det_cod_articulo          => :P370_COD_ARTICULO_OT,',
'    p_det_cod_tecnico              => v_det_cod_tecnico,',
'    p_det_nom_tecnico             => v_det_nom_tecnico,',
'    p_det_porcentaje_comision_jt  => v_det_porcentaje_comision_jt,',
'    p_cod_empresa                 => :P_COD_EMPRESA,',
'    p_cod_proveedor               =>  :P370_COD_PROVEEDOR,',
'    p_det_porcentaje_spp          => v_det_porcentaje_spp,',
'    p_cod_origen                  => :P370_COD_ORIGEN,',
'    p_det_porcentaje_cliente      => v_det_porcentaje_cliente,',
'    p_cod_cliente                 => :P370_COD_CLIENTE,',
'    p_fec_comprobante             => :P370_FEC_COMPROBANTE,',
'    p_ind_garantia                => :P370_GARANTIA,',
'    p_det_desc_articulo           => v_det_desc_articulo,',
'    p_det_monto                   => v_det_monto,',
'    p_rubro_mo                    => :P370_RUBRO_MO,',
'    p_cod_moneda_base             => :P370_COD_MONEDA_BASE,',
'    p_det_cod_moneda              => v_det_cod_moneda,',
'    p_porc_iva                    => :P370_PORC_IVA,',
'    p_det_desc_moneda             =>  v_det_desc_moneda,',
'    p_det_tip_cambio              => v_det_tip_cambio,',
'    p_tot_mobra                   => :P370_TOT_MOBRA,',
'    p_det_tot_mobra_ant           => v_det_tot_mobra_ant,',
'    p_det_m_comision_jefe_tecnico => v_det_m_comision_jefe_tecnico,',
'    p_fec_aprobacion              => :P370_FEC_APROBACION,',
'    p_fec_rechazo                 => :P370_FEC_RECHAZO,',
'    p_fec_cierre                  => :P370_FEC_CIERRE,',
'    p_fecha_estado_complicado     => :P370_FECHA_ESTADO_COMPLICADO,',
'    p_fec_pendiente               => :P370_FEC_PENDIENTE,',
'    p_ser_comprobante             => :P370_SER_COMPROBANTE,',
'    p_nro_comprobante             => :P370_NRO_COMPROBANTE,',
'    p_cod_articulo                => :P370_COD_ARTICULO,',
'    p_total_ot                    => :P370_TOTAL_OT,',
'    p_det_sum_cant                => v_det_sum_cant,',
'    p_cod_forma                   => :P370_COD_FORMA,',
'    p_cod_usuario                 => :APP_USER,',
'    p_ind_adicional               => :P370_IND_ADICIONAL,',
'    p_mensaje_error               => :P0_MENSAJE_VALIDACION,',
'    p_det_monto_comision_tecnico  => V_det_monto_comision_tecnico,',
'    p_det_monto_gar_jt            => v_det_monto_gar_jt,',
'    p_det_monto_venta             => v_det_monto_venta,',
'    p_det_monto_adicional         => v_det_monto_adicional);',
'',
'',
'',
'apex_collection.add_member(',
'p_collection_name => ''VT_MANO_OBRA'',',
'p_c001            => :P370_COD_ARTICULO_OT, ',
'p_c002            => '''', ',
'p_c003            => null,',
'p_c004            => v_det_monto , ',
'p_c005            => v_det_cod_tecnico, ',
'p_c006            => ''N'', ',
'p_c007            => ''N'',',
'p_c008            => v_det_porcentaje_cliente , ',
'p_c009            => v_det_tip_cambio,',
'p_c010            =>  null, ',
'p_c011            => null , ',
'p_c012            => null,',
'p_c013            =>  null ,',
'p_c014            => ''I''',
');',
'end;'))
,p_attribute_02=>'P370_COD_ARTICULO_OT,P_COD_EMPRESA,P370_COD_PROVEEDOR,P370_COD_ORIGEN,P370_COD_CLIENTE,P370_FEC_COMPROBANTE,P370_GARANT,P370_RUBRO_MO,P370_COD_MONEDA_BASE,P370_PORC_IVA,P370_TOT_MOBRA,P370_FEC_APROBACION,P370_FEC_RECHAZO,P370_FEC_CIERRE,P370_COD_USUA'
||'RIO_RENDICION,P370_FEC_PENDIENTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ARTICULO,P370_TOTAL_OT,P370_COD_FORMA,P370_IND_ADICIONAL'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110109064491168016)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DESCRIPCION_ARTICULO,P370_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P370_COD_ARTICULO_OT'))
,p_attribute_07=>'P370_COD_ARTICULO_OT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110109516543168016)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DESCRIPCION_ARTICULO,P370_COD_MARCA,P370_COD_PROVEEDOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110110020707168016)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P370_cod_origen is not null and :P370_cod_origen  is not null then',
'',
'    if :P370_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P370_COD_PROVEEDOR:=f_asigna_tecnico(:P370_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P370_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P370_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=''1''',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P370_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P370_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P370_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_ARTICULO_OT'
,p_attribute_03=>'P370_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114142265508544444)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_ARTI''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_OBRA''); ',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_ARTI'',',
'                    p_c001            => :P370_COD_ARTICULO_OT,',
'                    p_c002            => ''AGREGAR'');',
'',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_OBRA'',',
'                    p_c001            => :P370_COD_ORIGEN,',
'                    p_c002            => :P370_COD_MARCA,',
'                    p_c003            => :P370_COD_ARTICULO_OT);'))
,p_attribute_02=>'P370_COD_ARTICULO_OT,P370_COD_ORIGEN,P370_COD_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118836680869846416)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vorigen varchar2(200);',
'begin',
'if :P370_COD_PROVEEDOR is not null then',
'begin',
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ind_servicio_tecnico',
'into :P370_NOM_PROVEEDOR, VORIGEN',
'from cm_proveedores c, personas p',
'where c.cod_empresa   = :P_COD_EMPRESA',
'and c.cod_proveedor = :P370_COD_PROVEEDOR',
'and c.cod_persona   = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'and ind_servicio_tecnico is not null;',
'exception',
'when no_data_found then',
':P0_MENSAJE_VALIDACION  := ''No existe el codigo de Proveedor'';',
':P370_NOM_PROVEEDOR :=null;',
'return;',
'',
'end;',
'else',
':P370_NOM_PROVEEDOR :=null;',
'end if;',
'if :P370_COD_ORIGEN in( ''1'' ,''3'',''20'',''9'',''32'')',
'and :APP_USER not in (''GESTIONST'')  then  ',
'if VORIGEN NOT IN(''STNGO'')  then ',
':P0_MENSAJE_VALIDACION := ''No se puede asignar el codigo del proveedor para el origen seleccionado'';',
'RETURN;',
'end if;',
'end if;	',
'',
'',
':P370_TOT_MOBRA := 0;',
'',
'if :P370_COD_PROVEEDOR is not null then',
'if :P370_COD_ORIGEN in (''1'',''3'',''24'',''11'',''29'',''20'',''9'',''36'') and ',
'nvl(:P370_TOT_MOBRA,0)=0 and :P370_NRO_COMPROBANTE is null then ',
'',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); ',
'',
'inv.caordtra.pr_agrega_mano_obra(p_cod_empresa             => :P_COD_EMPRESA,',
'p_cod_origen =>  :P370_COD_ORIGEN,',
'p_cod_cliente  =>  :P370_COD_CLIENTE,',
'p_cod_articulo => :P370_COD_ARTICULO_OT,',
'p_tot_mobra => :P370_TOT_MOBRA,',
'p_fec_comprobante  =>  :P370_FEC_COMPROBANTE,',
'p_ind_garantia  => :P370_GARANTIA,',
'p_rubro_mo => :P370_RUBRO_MO,',
'p_cod_moneda_base =>  :P370_COD_MONEDA_BASE,',
'p_porc_iva =>  :P370_PORC_IVA,',
'p_cod_proveedor  => :P370_COD_PROVEEDOR,',
'p_fec_aprobacion => :P370_FEC_APROBACION,',
'p_fec_rechazo =>  :P370_FEC_RECHAZO,',
'p_fec_cierre =>  :P370_FEC_CIERRE,',
'p_fecha_estado_complicado => :P370_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente           => :P370_FEC_PENDIENTE,',
'p_per_reclamo =>  :P370_PER_RECLAMO,',
'p_cod_forma               =>  :P370_COD_FORMA,',
'p_cod_usuario             =>  :APP_USER,',
'p_ind_reclamo             => :P370_IND_RECLAMO,',
'p_nro_comprobante         =>  :P370_NRO_COMPROBANTE);  ',
'',
'inv.caordtra.pr_agregar_mo_flete(p_cod_origen       => :P370_COD_ORIGEN,',
'p_ind_zona        =>  :P370_IND_ZONA,',
'p_cod_empresa     => :P_COD_EMPRESA,',
'p_rubro_mo        =>  :P370_RUBRO_MO,',
'p_cod_moneda_base => :P370_COD_MONEDA_BASE,',
'p_porc_iva        =>  :P370_PORC_IVA,',
'p_monto_venta     => :P370_MONTO_VENTA,',
'p_tot_mobra       => :P370_TOT_MOBRA,',
'p_cod_proveedor   => :P370_COD_PROVEEDOR);',
'end if;',
'end if;',
'',
'if :P370_COD_PROVEEDOR is not null then',
'if :P370_COD_ORIGEN in (''27'') and ',
'nvl(:P370_TOT_MOBRA,0)=0 and :P370_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra.pr_agrega_mo_sta(p_cod_empresa              => :P_COD_EMPRESA,',
'       p_cod_origen              => :P370_COD_ORIGEN,',
'       p_cod_cliente             =>  :P370_COD_CLIENTE,',
'       p_cod_articulo            =>  :P370_COD_ARTICULO_OT,',
'       p_tot_mobra                => :P370_TOT_MOBRA,',
'       p_fec_comprobante =>  :P370_FEC_COMPROBANTE,',
'       p_ind_garantia => :P370_GARANTIA,',
'       p_rubro_mo  =>  :P370_RUBRO_MO,',
'       p_cod_moneda_base  => :P370_COD_MONEDA_BASE,',
'       p_porc_iva =>  :P370_PORC_IVA,',
'       p_cod_proveedor  => :P370_COD_PROVEEDOR,',
'       p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'       p_fec_aprobacion => :P370_FEC_APROBACION,',
'       p_fec_rechazo =>  :P370_FEC_RECHAZO,',
'       p_fec_cierre =>  :P370_FEC_CIERRE,',
'       p_fecha_estado_complicado   => :P370_FECHA_ESTADO_COMPLICADO,',
'       p_fec_pendiente  => :P370_FEC_PENDIENTE,',
'       p_per_reclamo =>  :P370_PER_RECLAMO,',
'       p_cod_forma =>  :P370_COD_FORMA,',
'       p_cod_usuario =>  :APP_USER,',
'       p_ind_reclamo => :P370_IND_RECLAMO,',
'       p_nro_comprobante =>  :P370_NRO_COMPROBANTE);',
'       null;',
'',
'end if;',
'end if;',
'begin',
'     select SUM(to_number(c004))',
'     INTO :P370_TOT_MOBRA',
'      from apex_collections',
'     where collection_name = ''VT_MANO_OBRA'';',
'     exception ',
'    when others then ',
'        null;',
'    end;',
'end;  '))
,p_attribute_02=>'P370_COD_PROVEEDOR,P_COD_EMPRESA,P370_COD_ORIGEN,P370_TOT_MOBRA,P370_NRO_COMPROBANTE,P370_COD_CLIENTE,P370_COD_ARTICULO_OT_1,P370_FEC_COMPROBANTE,P370_GARANT,P370_RUBRO_MO,P370_COD_MONEDA_BASE,P370_PORC_IVA,P370_FEC_APROBACION,P370_FEC_RECHAZO,P370_F'
||'EC_CIERRE,P370_COD_USUARIO_RENDICION,P370_FEC_PENDIENTE,P370_PER_RECLAMO,P370_COD_FORMA,P370_IND_RECLAMO,P370_IND_ZONA,P370_MONTO_VENTA,P370_FECHA_ABANDONADO'
,p_attribute_03=>'P370_NOM_PROVEEDOR,P0_MENSAJE_VALIDACION,P370_TOT_MOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115739544020259214)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331740524085775408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125066564412854405)
,p_event_id=>wwv_flow_imp.id(110108530336168015)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
' SELECT cod_linea, cod_categoria',
' into :P370_LINEA_ARTICULOS, :P370_CATEGORIA_ARTICULO',
'   FROM st_articulos',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'    AND cod_articulo = :P370_COD_ARTICULO_OT;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P370_LINEA_ARTICULOS :=  null;',
'        :P370_CATEGORIA_ARTICULO := null;',
'END;'))
,p_attribute_02=>'P370_COD_ARTICULO_OT,P_COD_EMPRESA'
,p_attribute_03=>'P370_LINEA_ARTICULOS,P370_CATEGORIA_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104446689237494222)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_ARTICULO_OT_1'
,p_condition_element=>'P370_COD_ARTICULO_OT_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104446768764494223)
,p_event_id=>wwv_flow_imp.id(104446689237494222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DESCRIPCION_ARTICULO_1,P370_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P370_COD_ARTICULO_OT_1'))
,p_attribute_07=>'P370_COD_ARTICULO_OT_1'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104446895112494224)
,p_event_id=>wwv_flow_imp.id(104446689237494222)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DESCRIPCION_ARTICULO_1,P370_COD_MARCA,P370_COD_PROVEEDOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104446914431494225)
,p_event_id=>wwv_flow_imp.id(104446689237494222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P370_cod_origen is not null and :P370_cod_origen  is not null then',
'',
'    if :P370_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P370_COD_PROVEEDOR:=f_asigna_tecnico(:P370_COD_ARTICULO_OT_1 , null);  ',
'',
'    elsif :P370_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P370_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=''1''',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P370_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P370_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P370_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_ARTICULO_OT_1'
,p_attribute_03=>'P370_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110110496321168016)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-ps'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110110930050168016)
,p_event_id=>wwv_flow_imp.id(110110496321168016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110111448395168017)
,p_event_id=>wwv_flow_imp.id(110110496321168016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_PS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110111922174168017)
,p_event_id=>wwv_flow_imp.id(110110496321168016)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcodprcl varchar2(30);',
'    vcodprbl varchar2(30);',
'    vcodsol  varchar2(30);',
'    vid number; ',
'    vmensaje varchar2(3200);',
'    error exception;',
'begin ',
'        IF TO_NUMBER(:P370_DEL_ID_PS)<>0 THEN',
'                select c001 as COD_PROB_CLI,',
'                       c003 as COD_PROBLEMA,',
'                       c005 as COD_SOLUCION,',
'                       c008 as op',
'                into vcodprcl,',
'                     vcodprbl,',
'                     vcodsol,',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_PROBLEMA''',
'                and SEQ_ID = TO_NUMBER(:P370_DEL_ID_PS);',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                         ',
'                            APEX_COLLECTION.DELETE_MEMBER(',
'                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                            p_seq => :P370_DEL_ID_PS);',
'   ',
'                    exception',
'                        when others then',
'                                vmensaje:=sqlerrm;',
'                                 raise error ;',
'                    END;',
'            else',
'                APEX_COLLECTION.DELETE_MEMBER(',
'                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                            p_seq => :P370_DEL_ID_PS);',
'                begin',
'                    delete',
'                    from  inv.vt_ordenes_trabajo_prob_gen',
'                    where cod_empresa=''1''',
'                     AND  tip_comprobante=''ORT''',
'                     AND  ser_comprobante=:P370_SER_COMPROBANTE',
'                     AND  nro_comprobante=:P370_NRO_COMPROBANTE  ',
'                     AND  cod_problema_cliente = vcodprcl;',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                                vmensaje:=sqlerrm;',
'                                 raise error ;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when error then',
'            apex_error.add_error(p_message               => ''Error: ''||vmensaje,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   ); ',
'    when others then            ',
'       apex_error.add_error(p_message               => ''Error: ''||sqlerrm,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   ); ',
'',
'end;',
'           '))
,p_attribute_02=>'P370_DEL_ID_PS,P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_attribute_03=>'P370_COD_USUARIO_SIN_RP'
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
 p_id=>wwv_flow_imp.id(110112456562168018)
,p_event_id=>wwv_flow_imp.id(110110496321168016)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114142372310544445)
,p_event_id=>wwv_flow_imp.id(110110496321168016)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331358670673332631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110112860560168018)
,p_name=>'DELETE_REP_SOL'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-rs'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110113373849168018)
,p_event_id=>wwv_flow_imp.id(110112860560168018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar el repuesto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110113804545168018)
,p_event_id=>wwv_flow_imp.id(110112860560168018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110114302416168019)
,p_event_id=>wwv_flow_imp.id(110112860560168018)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VABM   CHAR(1);',
'  VCOD   VARCHAR2(30);',
'  VID    NUMBER;',
'  VRECEP CHAR(1);',
'  VRECH  CHAR(1);',
'  ERROR EXCEPTION;',
'  VMENSAJE VARCHAR2(3200);',
'  VSER_PER VARCHAR2(30);',
'  VNRO_PER NUMBER;',
'BEGIN',
'  IF TO_NUMBER(:P370_DEL_ID_RS) <> 0 THEN',
'    SELECT C001 AS COD_PROB_CLI,',
'           C006 AS OP,',
'           C007 AS SER_PER,',
'           C008 AS NRO_PER,',
'           C009 AS RECEP,',
'           C010 AS RECH',
'      INTO VCOD, VABM, VSER_PER, VNRO_PER, VRECEP, VRECH',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'       AND SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);',
'  ',
'    IF VABM = ''I'' THEN',
'      --- SI ES I ENTONCES ES UN NUEVO ITEM PARA INSERTAR, SOLO REQUIERE BORRAR DEL TEMPORAL  VT_ORDENES_PROBLEMA1',
'      BEGIN',
'       ',
'      ',
'        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                      P_SEQ             => :P370_DEL_ID_RS);',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          VMENSAJE := SQLERRM;',
'          RAISE ERROR;',
'      END;',
'    ELSE',
'      IF VRECEP = ''S'' OR VRECH = ''S'' THEN',
'        VMENSAJE := ''No se puede desconfirmar el repuesto'';',
'        RAISE ERROR;',
'      ELSE',
'        BEGIN',
'          SACA_REPUESTOS_OT(''1'',',
'                            ''PER'',',
'                            VSER_PER,',
'                            VNRO_PER,',
'                            VCOD,',
'                            ''05'',',
'                            ''ANULADO - APEX'');',
'        ',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            VMENSAJE := SQLERRM;',
'            RAISE ERROR;',
'        END;',
'      END IF;',
'    END IF;',
'  ELSE',
'    VMENSAJE := :P370_DEL_ID_RS;',
'    RAISE ERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN ERROR THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Error: '' || VMENSAJE,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'END;',
''))
,p_attribute_02=>'P370_DEL_ID_RS,P370_NRO_COMPROBANTE'
,p_attribute_03=>'P370_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119343003269664627)
,p_event_id=>wwv_flow_imp.id(110112860560168018)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110115271537168019)
,p_name=>'DELETE_PRESUP'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-pre'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110115713869168020)
,p_event_id=>wwv_flow_imp.id(110115271537168019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110116277949168020)
,p_event_id=>wwv_flow_imp.id(110115271537168019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_PRE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110116774854168020)
,p_event_id=>wwv_flow_imp.id(110115271537168019)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod varchar2(30);',
'    vid number;',
'begin ',
'        IF TO_NUMBER(:P370_DEL_ID_PRE)<>0 THEN',
'                select c001 ,',
'                       nvl(c006,''S'')  ',
'                into vcod,',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_PRESUPUESTO''',
'                and SEQ_ID = TO_NUMBER(:P370_DEL_ID_PRE);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_PRESUPUESTO1''',
'                                and  c001 = vcod ;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_PRESUPUESTO1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                null;',
'                    END;',
'            else',
'                begin',
'                    borra_repuesto_presupuesto(''ORT'' ,',
'                                            :P370_SER_COMPROBANTE ,',
'                                            :P370_nro_comprobante ,',
'                                            vcod',
'',
'                                );',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                            null;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when others then',
'             apex_application.g_print_success_message := ''<span class="notification"> Error. No se ha podido eliminar el item $(vcod) del presupuesto.</span>'';',
'end;',
'           '))
,p_attribute_02=>'P370_DEL_ID_PRE,P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_attribute_03=>'P370_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110117237856168020)
,p_event_id=>wwv_flow_imp.id(110115271537168019)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110117650777168021)
,p_name=>'DELETE_MANO_OBRA'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-mo'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110118101246168021)
,p_event_id=>wwv_flow_imp.id(110117650777168021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110118630780168021)
,p_event_id=>wwv_flow_imp.id(110117650777168021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_MO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110119137426168021)
,p_event_id=>wwv_flow_imp.id(110117650777168021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcodART varchar2(30); ',
'    vcodTEC  varchar2(30);',
'    vid number;',
'    error exception;',
'    verror   varchar2(3200);',
'',
'begin ',
'        IF TO_NUMBER(:P370_DEL_ID_MO)<>0 THEN ',
'                select c001 as COD_ARTICULO,',
'                       c005 as COD_TECNICO,',
'                       c014 as op,',
'                       SEQ_ID',
'                into vcodART,',
'                     vcodTEC, ',
'                     vabm,',
'                     vid',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_MANO_OBRA''',
'                and SEQ_ID = TO_NUMBER(:P370_DEL_ID_MO);',
'',
'            OUT_OUT(''vabm ''|| vabm);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                    OUT_OUT(''vcodART ''||  vcodART);',
'                    OUT_OUT(''vcodTEC ''||  vcodTEC);',
'                    OUT_OUT(''vid ''||  vid);',
'                               APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_MANO_OBRA'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                verror:=sqlerrm;',
'                                raise error;',
'                    END;',
'            else',
'                begin',
'                    delete',
'                    from  inv.VT_ORDENES_TRABAJO_MO',
'                    where cod_empresa=''1''',
'                     AND  tip_comprobante=''ORT''',
'                     AND  ser_comprobante=:P370_SER_COMPROBANTE',
'                     AND  nro_comprobante=:P370_NRO_COMPROBANTE  ',
'                     AND  cod_ARTICULO = vcodART ',
'                     AND  cod_TECNICO =vcodTEC',
'                    ;',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                                verror:=sqlerrm;',
'                                raise error;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when error then ',
'    apex_error.add_error(p_message               => ''Error: ''||verror,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'',
'end;',
'           '))
,p_attribute_02=>'P370_DEL_ID_MO,P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE'
,p_attribute_03=>'P370_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67054645332084713)
,p_event_id=>wwv_flow_imp.id(110117650777168021)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331740524085775408)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110120050392168022)
,p_name=>'DELETE_REP_UTIL'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-ru'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110120559421168022)
,p_event_id=>wwv_flow_imp.id(110120050392168022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110121022387168022)
,p_event_id=>wwv_flow_imp.id(110120050392168022)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RU'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110121544167168022)
,p_event_id=>wwv_flow_imp.id(110120050392168022)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod  varchar2(30);',
'    vcant NUMBER; ',
'    vid number;  ',
'begin ',
'        IF TO_NUMBER(:P370_DEL_ID_RU)<>0 THEN',
'                select c001 as COD ,',
'                       c003 as CANT ,',
'                       c008 as op',
'                into vcod ,',
'                     vcant, ',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS''',
'                and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RU);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS1''',
'                                and  c001 = vcod;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                null;',
'                    END;',
'            else',
'                if :P370_COD_ORIGEN in(''2'',''13'',''12'',''27'',''40'') THEN',
'                    borra_repuesto_ot_web(''ORT'' ,:P370_ser_comprobante ,:P370_nro_comprobante ,vcod );',
'',
'                elsIF  :P370_COD_ORIGEN in(''1'',''15'',''20'',''3'',''24'',''9'',''11'',''32'',''33'',''42'')	and nvl(:P370_cerrado,''N'')<>''S'' THEN',
'',
'                    sp_devolucion_repuesto_ot(:P370_COD_PROVEEDOR,''ORT'' ,:P370_ser_comprobante ,',
'                                :P370_nro_comprobante ,vcod ,vcant ,''05'');',
'                end if;',
'               ',
'            end if;',
'',
'        END IF; ',
'exception',
'    when others then',
'              apex_error.add_error(p_message  => ''Error: Al intenetar dar de baja el codigo '',',
'	                                p_display_location      => apex_error.c_inline_in_notification',
'                                );',
'',
'end;',
'           '))
,p_attribute_02=>'P370_DEL_ID_RU,P370_NRO_COMPROBANTE,P370_COD_ORIGEN'
,p_attribute_03=>'P370_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110122055796168023)
,p_event_id=>wwv_flow_imp.id(110120050392168022)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110124399378168024)
,p_name=>'crea_cliente'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110124890829168025)
,p_event_id=>wwv_flow_imp.id(110124399378168024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MODAL PAGE LOOKUP BUTTON'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073039279167978)
,p_attribute_01=>'P370_COD_CLIENTE'
,p_attribute_02=>'92'
,p_attribute_03=>'P370_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110125202433168025)
,p_name=>'OBTIENE_DATOS_GARANTIAS'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_NRO_GARANTIA'
,p_condition_element=>'P370_NRO_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110125732926168025)
,p_event_id=>wwv_flow_imp.id(110125202433168025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P370_NRO_COMPROBANTE is null then',
'    if :P370_NRO_GARANTIA is not null then',
'        declare ',
'                vcod varchar(30);',
'        begin',
'                select S.COD_ARTICULO,C.COD_CLIENTE, c.nro_comprobante, c.fec_comprobante',
'                into vcod, :P370_COD_DISTRIBUIDOR,:P370_NRO_FACTURA,:P370_FECHA_FACTURA',
'                from st_garantia_productos_det a,',
'                    st_articulos              s',
'                    , VT_COMPROBANTES_CABECERA C            ',
'            where a.cod_empresa = ''1''',
'                and a.nro_garantia =:P370_NRO_GARANTIA',
'                and a.cod_empresa = s.cod_empresa',
'                and a.cod_articulo = s.cod_articulo',
'                AND A.COD_EMPRESA=C.COD_EMPRESA',
'                AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'                AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'                AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'                AND ROWNUM=1;',
'',
'                if vcod<>NVL(:P370_COD_ARTICULO_OT,''NNN'') then',
'                        :P370_COD_ARTICULO_OT:=vcod;',
'                        apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_ORDENES_PROBLEMA'');',
'                        apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_ORDENES_PRESUPUESTO1'');',
'                        apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_MANO_OBRA1'');  ',
'                end IF;',
'',
'            EXCEPTION',
'                WHEN no_data_found THEN ',
'                    :P370_COD_ARTICULO_OT:=null; ',
'                    :P370_COD_DISTRIBUIDOR:=null;',
'                WHEN OTHERS THEN ',
'                    null;',
'            end;',
'    end if;',
'else',
'    declare',
'        dummy char(1);',
'    begin ',
'            select  distinct ''1'' ',
'            INTO DUMMY',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=''1''',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = :P370_SER_COMPROBANTE',
'            and   OT.NRO_comprobante= :P370_NRO_COMPROBANTE',
'            and   OT.GARANTIA_OT = :P370_NRO_GARANTIA',
'            ',
'            ;',
'',
'    exception',
'            WHEN no_data_found THEN ',
'                        begin',
'                            select S.COD_ARTICULO,C.COD_CLIENTE',
'                                into :P370_COD_ARTICULO_OT, :P370_COD_DISTRIBUIDOR',
'                                from st_garantia_productos_det a,',
'                                    st_articulos              s',
'                                    , VT_COMPROBANTES_CABECERA C                                ',
'                            where a.cod_empresa = ''1''',
'                                and a.nro_garantia =:P370_NRO_GARANTIA',
'                                and a.cod_empresa = s.cod_empresa',
'                                and a.cod_articulo = s.cod_articulo',
'                                AND A.COD_EMPRESA=C.COD_EMPRESA',
'                                AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'                                AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'                                AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'                                AND ROWNUM=1;       ',
'                        exception          ',
'                        WHEN OTHERS THEN ',
'                                :P370_COD_ARTICULO_OT:=null; ',
'                                :P370_COD_DISTRIBUIDOR:=null;',
'                        end;    ',
'            WHEN OTHERS THEN ',
'                :P370_COD_ARTICULO_OT:=null; ',
'                :P370_COD_DISTRIBUIDOR:=null;',
'    end;',
'end if;',
''))
,p_attribute_02=>'P370_NRO_GARANTIA,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'
,p_attribute_03=>'P370_COD_ARTICULO_OT,P370_COD_DISTRIBUIDOR,P370_NRO_FACTURA,P370_FECHA_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124022602944827324)
,p_event_id=>wwv_flow_imp.id(110125202433168025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'select  nombre',
'INTO :P370_NOMBRE_DISTRIBUIDOR',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona ',
'--and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'AND c.COD_CLIENTE=:P370_COD_DISTRIBUIDOR;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;'))
,p_attribute_02=>'P370_COD_DISTRIBUIDOR'
,p_attribute_03=>'P370_NOMBRE_DISTRIBUIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149024560428268824)
,p_event_id=>wwv_flow_imp.id(110125202433168025)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF LENGTH(:P370_NRO_GARANTIA) > 5 THEN ',
'    :P370_GARANTIA := ''S'';',
'ELSE ',
'    :P370_GARANTIA :=  ''N'';',
'END  IF;'))
,p_attribute_02=>'P370_NRO_GARANTIA'
,p_attribute_03=>'P370_GARANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110126166432168026)
,p_name=>'carga_dist'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_DISTRIBUIDOR'
,p_condition_element=>'P370_COD_DISTRIBUIDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110126628855168026)
,p_event_id=>wwv_flow_imp.id(110126166432168026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_NOMBRE_DISTRIBUIDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona ',
'--and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'AND  c.COD_CLIENTE=:P370_COD_DISTRIBUIDOR;',
''))
,p_attribute_07=>'P370_COD_DISTRIBUIDOR'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110127022774168026)
,p_name=>'List_ciudad'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_DEPARTAMENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110127529057168026)
,p_event_id=>wwv_flow_imp.id(110127022774168026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_CIUDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110127945185168026)
,p_name=>'chec_garantia'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_GARANT'
,p_condition_element=>'P370_GARANT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121601022184098050)
,p_event_id=>wwv_flow_imp.id(110127945185168026)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_PRESUPUESTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'S'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115738301015259202)
,p_event_id=>wwv_flow_imp.id(110127945185168026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_validaciones_garantia(p_ind_garantia              =>  :P370_GARANTIA,',
'                                       p_estado_presu             => :P370_ESTADO_PRESU,',
'                                       p_cod_origen               => :P370_COD_ORIGEN,',
'                                       p_fec_estado               =>  :P370_FEC_ESTADO,',
'                                       p_fec_im                   =>  :P370_FEC_IM,',
'                                       p_reparado_im_por          => :P370_REPARADO_IM_POR,',
'                                       p_hora_im                  => :P370_HORA_IM,',
'                                       p_cod_usuario              => :APP_USER,',
'                                       p_cod_empresa              => :P_COD_EMPRESA,',
'                                       p_tot_mobra                => :P370_TOT_MOBRA,',
'                                       p_tot_mobra_ant            => :P370_TOT_MOBRA_ANT,',
'                                       p_cod_cliente              => :P370_COD_CLIENTE,',
'                                       p_rubro_mo                 => :P370_RUBRO_MO,',
'                                       p_cod_moneda_base          =>  :P370_COD_MONEDA_BASE,',
'                                       p_porc_iva                 => :P370_PORC_IVA,',
'                                       p_nro_comprobante          => :P370_NRO_COMPROBANTE,',
'                                       p_mensaje_error            =>  :P0_MENSAJE_VALIDACION,',
'                                       p_cerrado                   => :P370_CERRADO,',
'                                       p_ind_reclamo               => :P370_IND_RECLAMO,',
'                                       p_fec_comprobante           => :P370_FEC_COMPROBANTE,',
'                                       p_fec_rechazo               => :P370_FEC_RECHAZO,',
'                                       p_ser_comprobante           => :P370_SER_COMPROBANTE,',
'                                       p_fecha_modificado_garantia =>  :P370_FECHA_MODIFICADO_GARANTIA,',
'                                       p_fec_aprobacion            => :P370_FEC_APROBACION,',
'                                       p_fec_cierre                =>  :P370_FEC_CIERRE,',
'                                       p_fecha_estado_complicado   => :P370_FECHA_ESTADO_COMPLICADO,',
'                                       p_fec_pendiente             =>  :P370_FEC_PENDIENTE,',
'                                       p_ind_adicional             => :P370_IND_ADICIONAL,',
'                                       p_cod_proveedor             => :P370_COD_PROVEEDOR,',
'                                       p_linea_producto            => :P370_LINEA_PRODUCTO,',
'                                       p_error                     => :P370_ERROR,',
'                                       p_tipo_cierre               => :P370_TIPO_CIERRE);'))
,p_attribute_02=>'P370_GARANT,P370_ESTADO_PRESU,P370_COD_ORIGEN,P_COD_EMPRESA,P370_TOT_MOBRA,P370_COD_CLIENTE,P370_RUBRO_MO,P370_COD_MONEDA_BASE,P370_PORC_IVA,P370_NRO_COMPROBANTE,P370_CERRADO,P370_IND_RECLAMO,P370_FEC_COMPROBANTE,P370_FEC_RECHAZO,P370_SER_COMPROBANTE'
||',P370_FECHA_ABANDONADO,P370_FEC_APROBACION,P370_FEC_CIERRE,P370_COD_USUARIO_RENDICION,P370_FEC_PENDIENTE,P370_IND_ADICIONAL,P370_COD_PROVEEDOR,P370_TIPO'
,p_attribute_03=>'P370_ESTADO_PRESU,P370_FEC_ESTADO,P370_FEC_IM,P370_REPARADO_IM_POR,P370_HORA_IM,P370_TOT_MOBRA,P370_TOT_MOBRA_ANT,P0_MENSAJE_VALIDACION,P370_LINEA_PRODUCTO,P370_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149025680228268835)
,p_event_id=>wwv_flow_imp.id(110127945185168026)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(149024641277268825)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122667050988248601)
,p_event_id=>wwv_flow_imp.id(110127945185168026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_PRESUPUESTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149025582486268834)
,p_event_id=>wwv_flow_imp.id(110127945185168026)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(149024641277268825)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110129359960168027)
,p_name=>'btn_volver'
,p_event_sequence=>180
,p_condition_element=>'P370_PARAM_ID_TKT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110129813140168027)
,p_event_id=>wwv_flow_imp.id(110129359960168027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073482483167980)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110130326043168027)
,p_event_id=>wwv_flow_imp.id(110129359960168027)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073849875167981)
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
 p_id=>wwv_flow_imp.id(110130877747168028)
,p_event_id=>wwv_flow_imp.id(110129359960168027)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073482483167980)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110131388192168028)
,p_event_id=>wwv_flow_imp.id(110129359960168027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073849875167981)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110131729983168028)
,p_name=>'RS_CONF_RECEP'
,p_event_sequence=>190
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110132237946168028)
,p_event_id=>wwv_flow_imp.id(110131729983168028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'    Desea Confirmar la recepcion del producto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110133743246168029)
,p_event_id=>wwv_flow_imp.id(110131729983168028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110132710098168028)
,p_event_id=>wwv_flow_imp.id(110131729983168028)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P370_DEL_ID_RS is not null then',
'    declare',
'        vretorno        varchar2(3500); ',
'        vser_comprobante varchar2(15);',
'        vnro_comprobante varchar2(35);',
'        vcod_suc_env    varchar2(5);',
'        vcod_articulo  varchar2(35);',
'        v_cantidad number;',
'        v_cantidad_pedida number;',
'        v_cantidad_ot number;',
'    begin    ',
'                        select c001 as COD_ART, ',
'                                C007 AS SER_PER,',
'                                C008 AS NRO_PER, ',
'                                c011 as SUC,',
'                                c003 as cantidad,',
'                                c004 as cantidad_pedida,',
'                                c005 as cantidad_ot',
'                            into vcod_articulo  , ',
'                                vser_comprobante,',
'                                vnro_comprobante,',
'                                vcod_suc_env, ',
'                                v_cantidad,',
'                                v_cantidad_pedida,',
'                                v_cantidad_ot',
'                            FROM APEX_collections',
'                            WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'                            and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);  ',
'                         ',
'          BEGIN',
'              IF NVL(v_cantidad_ot, 0) = 0 THEN',
'                IF NVL(v_cantidad, 0) > 0 THEN',
'                  DECLARE',
'                    VTRASLADO VARCHAR2(500);',
'                  BEGIN',
'                    ',
'                    CREA_ENVIO_REP_OT_DET(:P_COD_EMPRESA,',
'                                          ''PER'',',
'                                          vser_comprobante,',
'                                          vnro_comprobante,',
'                                          vcod_suc_env,',
'                                          VTRASLADO,',
'                                          :P370_NRO_COMPROBANTE,',
'                                          vcod_articulo);',
'                 ',
'                    AGREGAR_REPUESTO_OT_DET(:P_COD_EMPRESA,',
'                                            vcod_suc_env,',
'                                            vnro_comprobante,',
'                                            vcod_articulo);',
'                  ',
'               apex_collection.update_member_attribute(p_collection_name=> ''VT_ORDENES_REPUESTOS_PEDIDOS'', ',
'                    p_seq             => :P370_DEL_ID_RS, ',
'                    p_attr_number     => ''5'', ',
'                    p_attr_value=> v_cantidad); ',
'',
'                 apex_collection.update_member_attribute(p_collection_name=> ''VT_ORDENES_REPUESTOS_PEDIDOS'', ',
'                    p_seq             => :P370_DEL_ID_RS, ',
'                    p_attr_number     => ''9'', ',
'                    p_attr_value       => ''S''); ',
'                  EXCEPTION',
'                    WHEN OTHERS THEN',
'                      :P0_MENSAJE_VALIDACION := SQLERRM;',
'                      NULL;',
'                  END;',
'                ELSE',
'            --      :IND_RECEPCION         := ''N'';',
'                  :P0_MENSAJE_VALIDACION := ''Aun no se genero la confirmacion del pedido'';',
'                END IF;',
'              ',
'              ELSE',
'        --        :IND_RECEPCION         := ''S'';',
'                :P0_MENSAJE_VALIDACION := ''El repuesto ya ha sido recepcionado'';',
'              END IF;',
'',
'            END;',
'       ',
'            ',
'    end;',
'end if;',
' '))
,p_attribute_02=>'P370_DEL_ID_RS,P370_PARAM_NRO_OT,P370_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119342836292664625)
,p_event_id=>wwv_flow_imp.id(110131729983168028)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173012740314991231)
,p_name=>'RS_CONF_RECEP_2'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep2'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012819690991232)
,p_event_id=>wwv_flow_imp.id(173012740314991231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'    Desea Confirmar la recepcion del producto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012942604991233)
,p_event_id=>wwv_flow_imp.id(173012740314991231)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173013015729991234)
,p_event_id=>wwv_flow_imp.id(173012740314991231)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P370_DEL_ID_RS is not null then',
'    declare',
'        vretorno        varchar2(3500); ',
'        vser_comprobante varchar2(15);',
'        vnro_comprobante varchar2(35);',
'        vcod_suc_env    varchar2(5);',
'        vcod_articulo  varchar2(35);',
'        v_cantidad number;',
'        v_cantidad_pedida number;',
'        v_cantidad_ot number;',
'        v_cant_preparada  NUMBER;',
'    begin    ',
'                        select c005 as COD_ART, ',
'                                C023 AS SER_PER,',
'                                C022 AS NRO_PER, ',
'                                c020 as SUC,',
'                                c007 as cantidad,',
'                                c009 as cantidad_pedida,',
'                                c010 as cantidad_ot,',
'                                c021 as cant_preparada',
'                            into vcod_articulo  , ',
'                                vser_comprobante,',
'                                vnro_comprobante,',
'                                vcod_suc_env, ',
'                                v_cantidad,',
'                                v_cantidad_pedida,',
'                                v_cantidad_ot,',
'                                v_cant_preparada',
'                            FROM APEX_collections',
'                            WHERE collection_name = ''VT_PRODUCTOS''',
'                            and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);  ',
'                         ',
'          BEGIN',
'',
'              IF NVL(v_cantidad_ot, 0) = 0 THEN',
'                IF NVL(v_cant_preparada, 0) > 0 THEN',
'                  DECLARE',
'                    VTRASLADO VARCHAR2(500);',
'                  BEGIN',
'',
'                    ',
'                    CREA_ENVIO_REP_OT_DET(:P_COD_EMPRESA,',
'                                          ''PER'',',
'                                          vser_comprobante,',
'                                          vnro_comprobante,',
'                                          vcod_suc_env,',
'                                          VTRASLADO,',
'                                          :P370_NRO_COMPROBANTE,',
'                                          vcod_articulo);',
'                 ',
'                    AGREGAR_REPUESTO_OT_DET(:P_COD_EMPRESA,',
'                                            vcod_suc_env,',
'                                            vnro_comprobante,',
'                                            vcod_articulo);',
'                  ',
'               apex_collection.update_member_attribute(p_collection_name=> ''VT_PRODUCTOS'', ',
'                    p_seq             => :P370_DEL_ID_RS, ',
'                    p_attr_number     => ''10'', ',
'                    p_attr_value=> v_cant_preparada); ',
'',
'                 apex_collection.update_member_attribute(p_collection_name=> ''VT_PRODUCTOS'', ',
'                    p_seq             => :P370_DEL_ID_RS, ',
'                    p_attr_number     => ''16'', ',
'                    p_attr_value       => ''S''); ',
'                  EXCEPTION',
'                    WHEN OTHERS THEN',
'                      :P0_MENSAJE_VALIDACION := SQLERRM;',
'                      NULL;',
'                  END;',
'                ELSE',
'            --      :IND_RECEPCION         := ''N'';',
'                  :P0_MENSAJE_VALIDACION := ''Aun no se genero la confirmacion del pedido'';',
'                END IF;',
'              ',
'              ELSE',
'        --        :IND_RECEPCION         := ''S'';',
'                :P0_MENSAJE_VALIDACION := ''El repuesto ya ha sido recepcionado'';',
'              END IF;',
'',
'            END;',
'       ',
'            ',
'    end;',
'end if;',
' '))
,p_attribute_02=>'P370_DEL_ID_RS,P370_PARAM_NRO_OT,P370_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173537480432096911)
,p_event_id=>wwv_flow_imp.id(173012740314991231)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'inv.caordtra.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P370_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P370_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');'))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173013146910991235)
,p_event_id=>wwv_flow_imp.id(173012740314991231)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75707913031194348)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119343988803664636)
,p_name=>'RS_CONF_RECHAZAR'
,p_event_sequence=>210
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_rechaz'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119344177409664638)
,p_event_id=>wwv_flow_imp.id(119343988803664636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119345202011664649)
,p_event_id=>wwv_flow_imp.id(119343988803664636)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 as COD_ART',
'into :P370_ARTICULO_RECHAZO',
'FROM APEX_collections',
'WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);  '))
,p_attribute_02=>'P370_DEL_ID_RS'
,p_attribute_03=>'P370_ARTICULO_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119344582755664642)
,p_event_id=>wwv_flow_imp.id(119343988803664636)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119343176864664628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173011742826991221)
,p_name=>'RS_CONF_RECHAZAR_1'
,p_event_sequence=>220
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_rechaz2'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173011844126991222)
,p_event_id=>wwv_flow_imp.id(173011742826991221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173011974714991223)
,p_event_id=>wwv_flow_imp.id(173011742826991221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c005 as COD_ART',
'into :P370_ARTICULO_RECHAZO',
'FROM APEX_collections',
'WHERE collection_name = ''VT_PRODUCTOS''',
'and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);  '))
,p_attribute_02=>'P370_DEL_ID_RS'
,p_attribute_03=>'P370_ARTICULO_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012074867991224)
,p_event_id=>wwv_flow_imp.id(173011742826991221)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119343176864664628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125069718369854437)
,p_name=>'RS_CONF_DEVOLVER'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_dev'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125069802908854438)
,p_event_id=>wwv_flow_imp.id(125069718369854437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125069963280854439)
,p_event_id=>wwv_flow_imp.id(125069718369854437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001, c003',
'into :P370_ARTICULO_DEV, :P370_CANTIDAD_DEV',
'FROM APEX_collections',
'WHERE collection_name = ''VT_REPUESTOS_UTILIZADOS''',
'and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);  '))
,p_attribute_02=>'P370_DEL_ID_RS'
,p_attribute_03=>'P370_ARTICULO_DEV,P370_CANTIDAD_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125070095366854440)
,p_event_id=>wwv_flow_imp.id(125069718369854437)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125070170150854441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173014402648991248)
,p_name=>'RS_CONF_DEVOLVER_1'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_dev2'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173014583251991249)
,p_event_id=>wwv_flow_imp.id(173014402648991248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173014683168991250)
,p_event_id=>wwv_flow_imp.id(173014402648991248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c005, c010',
'into :P370_ARTICULO_DEV, :P370_CANTIDAD_DEV',
'FROM APEX_collections',
'WHERE collection_name = ''VT_PRODUCTOS''',
'and SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);  '))
,p_attribute_02=>'P370_DEL_ID_RS'
,p_attribute_03=>'P370_ARTICULO_DEV,P370_CANTIDAD_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173536479693096901)
,p_event_id=>wwv_flow_imp.id(173014402648991248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125070170150854441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110134176962168029)
,p_name=>'RS_CONF_RECEP_1'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110134603606168029)
,p_event_id=>wwv_flow_imp.id(110134176962168029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110135061520168029)
,p_name=>'New'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_ORIGEN'
,p_condition_element=>'P370_COD_ORIGEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110135535234168030)
,p_event_id=>wwv_flow_imp.id(110135061520168029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P370_cod_origen is not null and :P370_cod_origen  is not null then',
'',
'    if :P370_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P370_COD_PROVEEDOR:=f_asigna_tecnico(:P370_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P370_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P370_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=''1''',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P370_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P370_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P370_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_ARTICULO_OT'
,p_attribute_03=>'P370_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110211711959399639)
,p_name=>unistr('Llama regi\00F3n articulos')
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110211602790399638)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110211916899399641)
,p_event_id=>wwv_flow_imp.id(110211711959399639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'inv.caordtra.pr_buscar_articulos(p_cod_empresa    => :P_COD_EMPRESA,',
'                                p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'                                p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                                p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                                p_cod_origen      => :P370_COD_ORIGEN,',
'                                p_cod_proveedor   => :P370_COD_PROVEEDOR,',
'                                p_fec_comprobante => :P370_FEC_COMPROBANTE,',
'                                p_tot_repuestos   => :P370_TOT_REPUESTOS,',
'                                p_cerrado         => :P370_CERRADO,',
'                                p_tot_mobra       => :P370_TOT_MOBRA,',
'                                p_total_ot        => :P370_TOTAL_OT,',
'                                p_senia           => :P370_SENIA,',
'                                p_monto_adelanto  => :P370_MONTO_ADELANTO,',
'                                p_ind_adelanto    => :P370_IND_ADELANTO,',
'                                p_mensaje_error   => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ORIGEN,P370_COD_PROVEEDOR,P370_FEC_COMPROBANTE,P370_CERRADO,P370_TOT_MOBRA,P370_SENIA,P370_MONTO_ADELANTO,P370_IND_ADELANTO'
,p_attribute_03=>'P370_TOTAL_OT,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125069648314854436)
,p_event_id=>wwv_flow_imp.id(110211711959399639)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125068613861854426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110473639927213403)
,p_name=>unistr('Refresca regi\00F3n Problemas')
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(331358670673332631)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110473761668213404)
,p_event_id=>wwv_flow_imp.id(110473639927213403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331358670673332631)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134813888916775532)
,p_event_id=>wwv_flow_imp.id(110473639927213403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134812346678775517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134813579415775529)
,p_name=>unistr('Refresca regi\00F3n Problemas_1')
,p_event_sequence=>290
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(134812346678775517)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134813683082775530)
,p_event_id=>wwv_flow_imp.id(134813579415775529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331358670673332631)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134813739222775531)
,p_event_id=>wwv_flow_imp.id(134813579415775529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134812346678775517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110476896225213435)
,p_name=>'Validaciones presupuestos'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_PRESUPUESTO'
,p_condition_element=>'P370_PRESUPUESTO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110476948210213436)
,p_event_id=>wwv_flow_imp.id(110476896225213435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P370_PRESUPUESTO,''N'') = ''S'' then',
'  ',
'  :P370_FEC_ESTADO   := sysdate;',
'   	  :P370_VERIFICADO_POR    := :APP_USER;',
' 	  :P370_FEC_VERIFICADO  := sysdate;',
' 	  :P370_HORA_VERIFICACION := to_char(sysdate,''HH24:MI:SS'');',
'       :P370_ESTADO_PRESU := ''V'';',
'else',
'',
'   :P370_IND_CORREO_PRESU := ''N'';',
'   :P370_ESTADO_PRESU := ''RI'';',
' ',
'end if;',
'',
'',
''))
,p_attribute_02=>'P370_PRESUPUESTO'
,p_attribute_03=>'P370_FEC_ESTADO,P370_VERIFICADO_POR,P370_FEC_VERIFICADO,P370_HORA_VERIFICACION,P370_IND_CORREO_PRESU,P370_ESTADO_PRESU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175727724095649215)
,p_event_id=>wwv_flow_imp.id(110476896225213435)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740295233259221)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175727502311649213)
,p_event_id=>wwv_flow_imp.id(110476896225213435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740295233259221)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190746581076605911)
,p_event_id=>wwv_flow_imp.id(110476896225213435)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_VERIFICADO_POR, P370_FEC_VERIFICADO, P370_HORA_VERIFICACION, P370_FEC_MODIF_VERIFICADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110477537335213442)
,p_name=>'Validaciones delivery'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_IND_DELIVERY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110477659403213443)
,p_event_id=>wwv_flow_imp.id(110477537335213442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P370_PRESUPUESTO,''N'') = ''S'' then',
'  :P370_ESTADO_PRESU := ''AP'';',
'  :P370_FEC_ESTADO   := sysdate;',
'else',
'  :P370_ESTADO_PRESU := null;',
'  :P370_FEC_ESTADO   := null;',
'end if;'))
,p_attribute_02=>'P370_PRESUPUESTO'
,p_attribute_03=>'P370_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110477899652213445)
,p_name=>'Valida retirado'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_IND_RETIRADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110477981261213446)
,p_event_id=>wwv_flow_imp.id(110477899652213445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P370_GARANTIA,''N'')<>''S'' and  NVL(:P370_IND_RECLAMO,''N'')<>''S'' ',
'  AND :P370_COD_ORIGEN in (''20'',''1'',''3'',''9'',''42'') ',
'	and TRUNC(nvl(:P370_TOTAL_OT,0))>0 THEN',
'	  :P0_MENSAJE_VALIDACION := ''Debe estar tildado en garantia para poder entregar la orden.'';',
'	    :P370_RETIRADO_POR    := null;',
' 	    :P370_FECHA_RETIRADO  := null; 	     ',
'        :P370_HORA_RETIRADO  := null;',
'        :P370_IND_RETIRADO:=''N''; ',
'END IF;',
'',
'IF NVL(:P370_CERRADO,''N'')<>''S'' THEN',
'	  :P0_MENSAJE_VALIDACION := ''Debe estar cerrada la orden para poder entregar .'';',
'	  :P370_RETIRADO_POR    := null;',
' 	    :P370_FECHA_RETIRADO  := null; 	     ',
'        :P370_HORA_RETIRADO  := null;',
'        :P370_IND_RETIRADO:=''N''; ',
'END IF;',
'',
'if nvl(:P370_IND_RETIRADO,''N'')=''S'' then',
'	:P370_FEC_RETIRADO:=to_char(sysdate,''dd/mm/yyyy'');',
'	 :P370_RETIRADO_POR := :app_user;',
' 	  :P370_FECHA_RETIRADO := sysdate; 	     ',
'    :P370_HORA_RETIRADO  := to_char(sysdate,''HH24:MI:SS'');',
'     :P370_ESTADO_PRESU := ''E'';',
' ',
'     if nvl(:P370_TOT_REPUESTOS,0)=0  	and nvl(:P370_COD_ORIGEN,''2'') in(''1'',''9'',''11'',''15'',''18'',''20'',''3'',''38'',''23'',''40'') then',
'      :P370_IND_ENTREGA := ''S'';',
'      :P370_FEC_ENTREGA:= sysdate;    ',
'    end if;',
'    ',
'else',
'      :P370_RETIRADO_POR   := null;',
' 	  :P370_FECHA_RETIRADO  := null; 	     ',
'      :P370_HORA_RETIRADO := null;',
'      :P370_ESTADO_PRESU :=''C'';',
'    	',
'     if nvl(:P370_TOT_REPUESTOS,0)=0  	and nvl(:P370_COD_ORIGEN,''2'')in (''20'',''1'',''3'') then',
'      :P370_IND_ENTREGA :=  null; ',
'      :P370_FEC_ENTREGA :=  null; ',
'    end if;',
'end if;	',
''))
,p_attribute_02=>'P370_GARANT,P370_IND_RECLAMO,P370_COD_ORIGEN,P370_TOTAL_OT,P370_CERRADO,P370_IND_RETIRADO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P370_RETIRADO_POR,P370_FECHA_RETIRADO,P370_HORA_RETIRADO,P370_IND_RETIRADO,P370_FEC_RETIRADO,P370_IND_ENTREGA,P370_FEC_ENTREGA'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(115738830007259207)
,p_name=>'Refresca detalles'
,p_event_sequence=>330
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(331740524085775408)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115738995448259208)
,p_event_id=>wwv_flow_imp.id(115738830007259207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331740524085775408)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(115739669188259215)
,p_name=>'Validaciones de proveedor'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_COD_PROVEEDOR'
,p_condition_element=>'P370_COD_PROVEEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115739739703259216)
,p_event_id=>wwv_flow_imp.id(115739669188259215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vorigen varchar2(200);',
'begin',
'if :P370_COD_PROVEEDOR is not null then',
'begin',
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ind_servicio_tecnico',
'into :P370_NOM_PROVEEDOR, VORIGEN',
'from cm_proveedores c, personas p',
'where c.cod_empresa   = :P_COD_EMPRESA',
'and c.cod_proveedor = :P370_COD_PROVEEDOR',
'and c.cod_persona   = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'and ind_servicio_tecnico is not null;',
'exception',
'when no_data_found then',
':P0_MENSAJE_VALIDACION  := ''No existe el codigo de Proveedor'';',
':P370_NOM_PROVEEDOR :=null;',
'return;',
'',
'end;',
'else',
':P370_NOM_PROVEEDOR :=null;',
'end if;',
'if :P370_COD_ORIGEN in( ''1'' ,''3'',''20'',''9'',''32'')',
'and :APP_USER not in (''GESTIONST'')  then  ',
'if VORIGEN NOT IN(''STNGO'')  then ',
':P0_MENSAJE_VALIDACION := ''No se puede asignar el codigo del proveedor para el origen seleccionado'';',
'RETURN;',
'end if;',
'end if;	',
'',
'if :P370_COD_PROVEEDOR is not null then',
'if :P370_COD_ORIGEN in (''1'',''3'',''24'',''11'',''29'',''20'',''9'',''36'') and ',
'nvl(:P370_TOT_MOBRA,0)=0 and :P370_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra.pr_agrega_mano_obra(p_cod_empresa             => :P_COD_EMPRESA,',
'p_cod_origen =>  :P370_COD_ORIGEN,',
'p_cod_cliente  =>  :P370_COD_CLIENTE,',
'p_cod_articulo =>  :P370_COD_ARTICULO_OT,',
'p_tot_mobra => :P370_TOT_MOBRA,',
'p_fec_comprobante  =>  :P370_FEC_COMPROBANTE,',
'p_ind_garantia  => :P370_GARANTIA,',
'p_rubro_mo => :P370_RUBRO_MO,',
'p_cod_moneda_base =>  :P370_COD_MONEDA_BASE,',
'p_porc_iva =>  :P370_PORC_IVA,',
'p_cod_proveedor         => :P370_COD_PROVEEDOR,',
'p_fec_aprobacion        => :P370_FEC_APROBACION,',
'p_fec_rechazo            =>  :P370_FEC_RECHAZO,',
'p_fec_cierre              =>  :P370_FEC_CIERRE,',
'p_fecha_estado_complicado => :P370_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente           => :P370_FEC_PENDIENTE,',
'p_per_reclamo             =>  :P370_PER_RECLAMO,',
'p_cod_forma               =>  :P370_COD_FORMA,',
'p_cod_usuario             =>  :APP_USER,',
'p_ind_reclamo             => :P370_IND_RECLAMO,',
'p_nro_comprobante         =>  :P370_NRO_COMPROBANTE);  ',
'',
'inv.caordtra.pr_agregar_mo_flete(p_cod_origen       => :P370_COD_ORIGEN,',
'p_ind_zona        =>  :P370_IND_ZONA,',
'p_cod_empresa     => :P_COD_EMPRESA,',
'p_rubro_mo        =>  :P370_RUBRO_MO,',
'p_cod_moneda_base => :P370_COD_MONEDA_BASE,',
'p_porc_iva        =>  :P370_PORC_IVA,',
'p_monto_venta     => :P370_MONTO_VENTA,',
'p_tot_mobra       => :P370_TOT_MOBRA,',
'p_cod_proveedor   => :P370_COD_PROVEEDOR);',
'end if;',
'end if;',
'',
'if :P370_COD_PROVEEDOR is not null then',
'if :P370_COD_ORIGEN in (''27'') and ',
'nvl(:P370_TOT_MOBRA,0)=0 and :P370_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra.pr_agrega_mo_sta(p_cod_empresa              => :P_COD_EMPRESA,',
'       p_cod_origen              => :P370_COD_ORIGEN,',
'       p_cod_cliente             =>  :P370_COD_CLIENTE,',
'       p_cod_articulo            =>  :P370_COD_ARTICULO_OT,',
'       p_tot_mobra                => :P370_TOT_MOBRA,',
'       p_fec_comprobante         =>  :P370_FEC_COMPROBANTE,',
'       p_ind_garantia             => :P370_GARANTIA,',
'       p_rubro_mo                 =>  :P370_RUBRO_MO,',
'       p_cod_moneda_base          => :P370_COD_MONEDA_BASE,',
'       p_porc_iva                 =>  :P370_PORC_IVA,',
'       p_cod_proveedor             => :P370_COD_PROVEEDOR,',
'       p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'       p_fec_aprobacion            => :P370_FEC_APROBACION,',
'       p_fec_rechazo               =>  :P370_FEC_RECHAZO,',
'       p_fec_cierre                =>  :P370_FEC_CIERRE,',
'       p_fecha_estado_complicado   => :P370_FECHA_ESTADO_COMPLICADO,',
'       p_fec_pendiente             => :P370_FEC_PENDIENTE,',
'       p_per_reclamo               =>  :P370_PER_RECLAMO,',
'       p_cod_forma                 =>  :P370_COD_FORMA,',
'       p_cod_usuario               =>  :APP_USER,',
'       p_ind_reclamo               => :P370_IND_RECLAMO,',
'       p_nro_comprobante           =>  :P370_NRO_COMPROBANTE);',
'       null;',
'',
'end if;',
'end if;',
'end;  '))
,p_attribute_02=>'P370_COD_PROVEEDOR,P_COD_EMPRESA,P370_COD_ORIGEN,P370_TOT_MOBRA,P370_NRO_COMPROBANTE,P370_COD_CLIENTE,P370_COD_ARTICULO_OT_1,P370_FEC_COMPROBANTE,P370_GARANT,P370_RUBRO_MO,P370_COD_MONEDA_BASE,P370_PORC_IVA,P370_FEC_APROBACION,P370_FEC_RECHAZO,P370_F'
||'EC_CIERRE,P370_COD_USUARIO_RENDICION,P370_FEC_PENDIENTE,P370_PER_RECLAMO,P370_COD_FORMA,P370_IND_RECLAMO,P370_IND_ZONA,P370_MONTO_VENTA,P370_FECHA_ABANDONADO'
,p_attribute_03=>'P370_NOM_PROVEEDOR,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117394249403014134)
,p_name=>'Carga de pedidos'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(115740330157259222)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117394359645014135)
,p_event_id=>wwv_flow_imp.id(117394249403014134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_pedidos(p_cod_empresa     => :P_COD_EMPRESA,',
'                               p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'                               p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                               p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                               p_cod_origen      => :P370_COD_ORIGEN,',
'                               p_mensaje_error   => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ORIGEN'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119345390672664650)
,p_event_id=>wwv_flow_imp.id(117394249403014134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = ''1''',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P370_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P370_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P370_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_USUARIO_SIN_RP P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119342771286664624)
,p_event_id=>wwv_flow_imp.id(117394249403014134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119708242101278401)
,p_event_id=>wwv_flow_imp.id(117394249403014134)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117498750005342234)
,p_name=>'Procedimientos devueltos'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(115740421380259223)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117498832511342235)
,p_event_id=>wwv_flow_imp.id(117498750005342234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P370_MUESTRA_REPORTE := ''S'' ;',
'inv.caordtra.pr_buscar_articulos_devueltos(p_cod_empresa  => :P_COD_EMPRESA,',
'                                        p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'                                        p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                                        p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                                        p_cod_origen      => :P370_COD_ORIGEN,',
'                                        p_mensaje_error   => :P0_MENSAJE_VALIDACION,',
'                                        p_cod_proveedor   => :P370_COD_PROVEEDOR,',
'                                        p_fec_comprobante => :P370_FEC_COMPROBANTE,',
'                                        p_tot_repuestos   => :P370_TOT_REPUESTOS,',
'                                        p_cerrado         => :P370_CERRADO,',
'                                        p_total_ot        => :P370_TOTAL_OT,',
'                                        p_tot_mobra       => :P370_TOT_MOBRA,',
'                                        p_senia           => :P370_SENIA,',
'                                        p_ind_adelanto    => :P370_IND_ADELANTO,',
'                                        p_monto_adelanto  => :P370_MONTO_ADELANTO);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ORIGEN,P370_COD_PROVEEDOR,P370_FEC_COMPROBANTE,P370_CERRADO,P370_TOTAL_OT,P370_TOT_MOBRA,P370_SENIA,P370_IND_ADELANTO,P370_MONTO_ADELANTO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P370_TOTAL_OT,P370_MUESTRA_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117498948162342236)
,p_event_id=>wwv_flow_imp.id(117498750005342234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(117394682585014138)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119343700723664634)
,p_name=>unistr('Rechazar art\00EDculos')
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119343587244664632)
,p_condition_element=>'P370_COD_MOTIVO_RECHAZO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119343833618664635)
,p_event_id=>wwv_flow_imp.id(119343700723664634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VMENSAJE VARCHAR2(3200);',
'  VSER_PER VARCHAR2(30);',
'  VNRO_PER NUMBER;',
'  VCOD_ARTICULO VARCHAR2(3200);',
'  VSER_COMPROBANTE VARCHAR2(30);',
'  VNRO_COMPROBANTE VARCHAR2(30);',
'  VCOD_SUC_ENV VARCHAR2(30);',
'  V_CANTIDAD VARCHAR2(30);',
'  V_CANTIDAD_PEDIDA VARCHAR2(30);',
'  V_CANTIDAD_OT VARCHAR2(30);',
'BEGIN',
'    SELECT C001 AS COD_ART,',
'           C007 AS SER_PER,',
'           C008 AS NRO_PER,',
'           C011 AS SUC,',
'           C003 AS CANTIDAD,',
'           C004 AS CANTIDAD_PEDIDA,',
'           C005 AS CANTIDAD_OT',
'      INTO VCOD_ARTICULO,',
'           VSER_COMPROBANTE,',
'           VNRO_COMPROBANTE,',
'           VCOD_SUC_ENV,',
'           V_CANTIDAD,',
'           V_CANTIDAD_PEDIDA,',
'           V_CANTIDAD_OT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'       AND SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);',
'  ',
'    SACA_REPUESTOS_OT(:P_COD_EMPRESA,',
'                      ''PER'',',
'                      VSER_COMPROBANTE,',
'                      VNRO_COMPROBANTE,',
'                      VCOD_ARTICULO,',
'                      :P370_COD_MOTIVO_RECHAZO,',
'                      :P370_COMENTARIO_RECHAZADO);',
'END;',
''))
,p_attribute_02=>'P370_DEL_ID_RS,P_COD_EMPRESA,P370_COD_MOTIVO_RECHAZO,P370_COMENTARIO_RECHAZADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119344476902664641)
,p_event_id=>wwv_flow_imp.id(119343700723664634)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe ingresar un motivo para realizar el rechazo'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119344686773664643)
,p_event_id=>wwv_flow_imp.id(119343700723664634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = ''1''',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P370_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P370_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P370_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_USUARIO_SIN_RP P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119344760967664644)
,p_event_id=>wwv_flow_imp.id(119343700723664634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119345056014664647)
,p_event_id=>wwv_flow_imp.id(119343700723664634)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119343176864664628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173012179017991225)
,p_name=>unistr('Rechazar art\00EDculos_1')
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119343587244664632)
,p_condition_element=>'P370_COD_MOTIVO_RECHAZO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012276866991226)
,p_event_id=>wwv_flow_imp.id(173012179017991225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VMENSAJE VARCHAR2(3200);',
'  VSER_PER VARCHAR2(30);',
'  VNRO_PER NUMBER;',
'  VCOD_ARTICULO VARCHAR2(3200);',
'  VSER_COMPROBANTE VARCHAR2(30);',
'  VNRO_COMPROBANTE VARCHAR2(30);',
'  VCOD_SUC_ENV VARCHAR2(30);',
'  V_CANTIDAD VARCHAR2(30);',
'  V_CANTIDAD_PEDIDA VARCHAR2(30);',
'  V_CANTIDAD_OT VARCHAR2(30);',
'BEGIN',
'    SELECT C005 AS COD_ART,',
'           C023 AS SER_PER,',
'           C022 AS NRO_PER,',
'           C020 AS SUC,',
'           C010 AS CANTIDAD,',
'           C009 AS CANTIDAD_PEDIDA,',
'           C007 AS CANTIDAD_OT',
'      INTO VCOD_ARTICULO,',
'           VSER_COMPROBANTE,',
'           VNRO_COMPROBANTE,',
'           VCOD_SUC_ENV,',
'           V_CANTIDAD,',
'           V_CANTIDAD_PEDIDA,',
'           V_CANTIDAD_OT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VT_PRODUCTOS''',
'       AND SEQ_ID = TO_NUMBER(:P370_DEL_ID_RS);',
'  ',
'    SACA_REPUESTOS_OT(:P_COD_EMPRESA,',
'                      ''PER'',',
'                      VSER_COMPROBANTE,',
'                      VNRO_COMPROBANTE,',
'                      VCOD_ARTICULO,',
'                      :P370_COD_MOTIVO_RECHAZO,',
'                      :P370_COMENTARIO_RECHAZADO);',
'END;',
''))
,p_attribute_02=>'P370_DEL_ID_RS,P_COD_EMPRESA,P370_COD_MOTIVO_RECHAZO,P370_COMENTARIO_RECHAZADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012339123991227)
,p_event_id=>wwv_flow_imp.id(173012179017991225)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe ingresar un motivo para realizar el rechazo'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012421847991228)
,p_event_id=>wwv_flow_imp.id(173012179017991225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P370_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P370_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');'))
,p_attribute_02=>'P370_COD_ORIGEN,P370_COD_USUARIO_SIN_RP P370_PARAM_SER_OT,P370_PARAM_NRO_OT,P370_PARAM_SER_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012502524991229)
,p_event_id=>wwv_flow_imp.id(173012179017991225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75707913031194348)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173012625290991230)
,p_event_id=>wwv_flow_imp.id(173012179017991225)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119343176864664628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119344820142664645)
,p_name=>unistr('Cierra regi\00F3n de Rechazos')
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119343633443664633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119345183078664648)
,p_event_id=>wwv_flow_imp.id(119344820142664645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331743744062775440)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119344915150664646)
,p_event_id=>wwv_flow_imp.id(119344820142664645)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119343176864664628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119709120838278410)
,p_name=>'Finaliza OT'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104445181807494207)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119709308529278412)
,p_event_id=>wwv_flow_imp.id(119709120838278410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Calculos.',
' inv.caordtra.pr_valida_mano_de_obra(p_cod_empresa => :P_COD_EMPRESA,',
'p_cod_origen => :P370_COD_ORIGEN,',
'p_cod_cliente => :P370_COD_CLIENTE,',
'p_cerrado => :P370_CERRADO,',
'p_ind_reclamo => :P370_IND_RECLAMO,',
'p_tot_mobra => :P370_TOT_MOBRA,',
'p_fec_comprobante => :P370_FEC_COMPROBANTE,',
'p_ind_garantia => :P370_GARANTIA,',
'p_rubro_mo => :P370_RUBRO_MO,',
'p_cod_moneda_base => :P370_COD_MONEDA_BASE,',
'p_porc_iva => :P370_PORC_IVA,',
'p_fec_rechazo => :P370_FEC_RECHAZO,',
'p_ser_comprobante          => :P370_SER_COMPROBANTE,',
'p_nro_comprobante           => :P370_NRO_COMPROBANTE,',
'p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'p_fec_aprobacion            => :P370_FEC_APROBACION,',
'p_fec_cierre                => :P370_FEC_CIERRE,',
'p_fecha_estado_complicado   => :P370_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente             => :P370_FEC_PENDIENTE,',
'p_ind_adicional             => :P370_IND_ADICIONAL,',
'p_cod_proveedor             => :P370_COD_PROVEEDOR,',
'p_linea_producto            => :P370_LINEA_PRODUCTO,',
'p_error                     => :P370_ERROR,',
'p_tipo_cierre               => :P370_TIPO_CIERRE,',
'p_mensaje_error             => :P0_MENSAJE_VALIDACION);',
'inv.caordtra.pr_sumar_totales_mo(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'p_ser_comprobante => :P370_SER_COMPROBANTE,',
'p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'p_tot_mobra       => :P370_TOT_MOBRA);',
'',
'inv.caordtra.pr_sumar_totales_rep(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'p_ser_comprobante => :P370_SER_COMPROBANTE,',
'p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'p_tot_repuestos       => :P370_TOT_REPUESTOS);',
'',
'',
'inv.caordtra.pr_suma_presupuesto_call(p_cod_empresa    =>  :P_COD_EMPRESA,',
'                                   p_tip_comprobante   => :P370_TIP_COMPROBANTE,',
'                                   p_ser_comprobante   => :P370_SER_COMPROBANTE,',
'                                   p_nro_comprobante   => :P370_NRO_COMPROBANTE,',
'                                   p_total_ot_call_c_g => :P370_TOTAL_OT_CALL_C_G,',
'                                   p_total_ot_call_s_g => :P370_TOTAL_OT_CALL_S_G,',
'                                   p_mensaje_error     => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_COD_ORIGEN,P370_COD_CLIENTE,P370_CERRADO,P370_IND_RECLAMO,P370_TOT_MOBRA,P370_FEC_COMPROBANTE,P370_GARANT,P370_RUBRO_MO,P370_COD_MONEDA_BASE,P370_PORC_IVA,P370_FEC_RECHAZO,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE_DISTR,P370_NRO_CO'
||'MPROBANTE,P370_FECHA_ABANDONADO,P370_FEC_APROBACION,P370_FEC_CIERRE,P370_COD_USUARIO_RENDICION,P370_FEC_PENDIENTE,P370_IND_ADICIONAL,P370_COD_PROVEEDOR,P370_LINEA_PRODUCTO,P370_TIPO'
,p_attribute_03=>'P370_ERROR,P0_MENSAJE_VALIDACION,P370_TOTAL_OT_CALL_C_G,P370_TOTAL_OT_CALL_S_G'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119709203666278411)
,p_event_id=>wwv_flow_imp.id(119709120838278410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'verror_importe exception;',
'',
'begin',
'IF nvl(:P370_GARANTIA, ''N'') <> ''S''THEN',
'if ((nvl(:P370_TOT_MOBRA, 0) + nvl(:P370_TOT_REPUESTOS, 0 ) - nvl( :P370_TOT_REPUESTOS_CALL, 0 )>10000 ',
'or nvl( :P370_TOT_MOBRA, 0 ) + nvl( :P370_TOT_REPUESTOS, 0 ) - nvl( :P370_TOT_REPUESTOS_CALL, 0 )<-10000) ',
'and nvl( :P370_TOT_REPUESTOS_CALL, 0 )>0)',
'and NVL(:P370_CERRADO,''N'')<>''S''',
'and nvl(:P370_TIPO_CIERRE,''CR'') in (''CR'') ',
'AND NVL(:P370_IND_RECLAMO,''N'')<>''S''',
'and :P370_FEC_RECHAZO is null then',
'raise verror_importe;',
'end if;',
'END IF;',
'',
'exception',
'when verror_importe then ',
':P0_MENSAJE_VALIDACION := ''La ot no puede ser finalizada, existe diferencia entre el presupuesto y el cierre..'';',
'RETURN;',
'when others then',
'null;',
'end;',
'',
'begin',
'IF :P370_COD_ORIGEN in(''1'',''15'',''20'') THEN	',
'DECLARE',
'VEXISTE VARCHAR2(60);',
'verror exception;',
'BEGIN',
'begin',
'SELECT ''S''',
'INTO VEXISTE',
'FROM  CA_PEDIDO_REPUESTO_CAB C, ',
'CA_PEDIDO_REPUESTO_DET D,',
'ST_ARTICULOS S',
'WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'AND C.TIP_COMPROBANTE_REF=:P370_TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE_REF=:P370_SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE_REF=:P370_NRO_COMPROBANTE',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND NVL(D.CANTIDAD,0)>0',
'AND NVL(D.TRASLADADO,''N'')=''S''',
'AND D.COD_EMPRESA=S.COD_EMPRESA',
'AND D.COD_ARTICULO=S.COD_ARTICULO',
'AND NVL(D.CANTIDAD_CONFIRMADA,0)>0',
'AND NVL(D.CANTIDAD_CONFIRMADA,0)>NVL(D.CANTIDAD_OT,0)',
'AND ROWNUM=1;',
'',
'if nvl(vexiste,''N'')=''S'' THEN',
'RAISE VERROR;',
'end if;',
'',
'exception',
'when VERROR then',
':P0_MENSAJE_VALIDACION := ''Debe confirmar los repuestos para cerrar la orden de trabajo.'';',
'RETURN;',
'when others then ',
'VEXISTE:=''N'';',
'end;',
'',
'IF NVL(VEXISTE,''N'')=''S'' THEN',
':P0_MENSAJE_VALIDACION :=''Debe confirmar los repuestos para cerrar la orden de trabajo.'';',
'RETURN;',
'END IF;',
'',
'END;',
'END IF;',
'end;',
'',
':P370_TIPO_CIERRE:=null;',
'null;',
'inv.caordtra.pr_cierra_orden(p_cod_empresa => :P_COD_EMPRESA,',
'p_ser_comprobante => :P370_SER_COMPROBANTE,',
'p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'p_monto_adelanto => :P370_MONTO_ADELANTO,',
'p_ind_adelanto => :P370_IND_ADELANTO,',
'p_total_ot => :P370_TOTAL_OT,',
'p_tot_mobra => :P370_TOT_MOBRA,',
'p_tot_repuestos => :P370_TOT_REPUESTOS,',
'p_senia=> :P370_SENIA,',
'p_ind_garantia =>:P370_GARANTIA,',
'p_tipo_cierre=> :P370_TIPO_CIERRE,',
'p_cerrado=> :P370_CERRADO,',
'p_ind_reclamo=> :P370_IND_RECLAMO,',
'p_fec_rechazo => :P370_FEC_RECHAZO,',
'p_cod_origen=> :P370_COD_ORIGEN,',
'p_tipo_reclamo=> :P370_TIPO_RECLAMO,',
'p_cod_motivo_reclamo_spp =>:P370_COD_MOTIVO_RECLAMO_SPP,',
'p_cod_motivo_reclamo_jefe =>:P370_COD_MOTIVO_RECLAMO_JEFE,',
'p_linea_producto=>:P370_LINEA_PRODUCTO,',
'p_cod_proveedor=> :P370_COD_PROVEEDOR,',
'p_comentario => :P370_CONCLUSION,',
'p_fec_cierre=>:P370_FEC_CIERRE,',
'p_estado_presu =>:P370_ESTADO_PRESU,',
'p_fec_estado =>:P370_FEC_ESTADO,',
'p_finalizado_por=>:P370_FINALIZADO_POR,',
'p_cod_usuario =>:APP_USER,',
'p_fec_finalizado =>:P370_FECHA_FINALIZACION,',
'p_fec_modif_cerrado =>:P370_FEC_MODIF_CERRADO,',
'p_hora_finalizado =>:P370_HORA_FINALIZADO,',
'p_cod_articulo=> :P370_COD_ARTICULO_OT,',
'p_ind_entrega=> :P370_IND_ENTREGA,',
'p_ncr => :P370_NCR,',
'p_cambio=> :P370_CAMBIO,',
'p_ind_carneo => :P370_IND_CARNEO,',
'p_cod_cliente => :P370_COD_CLIENTE,',
'p_tot_repuestos_call => :P370_TOT_REPUESTOS_CALL,',
'p_mensaje_error => :P0_MENSAJE_VALIDACION,',
'p_nom_cliente => :P370_NOM_CLIENTE,',
'p_celular_contacto => :P370_CELULAR_CONTACTO,',
'p_correo_contacto=> :P370_CORREO_CONTACTO);',
'',
'',
'IF nvl( :P370_CERRADO, ''N'' ) = ''S'' THEN',
':P370_TIPO_CIERRE:=''CR'';',
'ELSE',
':P370_TIPO_CIERRE :=NULL;',
'if nvl(:P370_GARANTIA,''N'') = ''S''then',
':P370_ESTADO_PRESU := ''RI'';',
':P370_FEC_ESTADO := sysdate;',
':P370_FEC_IM := sysdate;',
':P370_HORA_IM := to_char(sysdate,''HH24:MI:SS'');',
':P370_REPARADO_IM_POR := :APP_USER;',
'end if;',
'',
'if nvl(:P370_PRESUPUESTO,''N'') = ''S'' then',
':P370_ESTADO_PRESU := ''V'';',
':P370_FEC_ESTADO := sysdate;',
':P370_VERIFICADO_POR:= :APP_USER;',
':P370_FEC_VERIFICADO:= sysdate;',
':P370_HORA_VERIFICACION := to_char(sysdate,''HH24:MI:SS'');',
'end if;',
'END IF;',
'',
''))
,p_attribute_02=>'P370_GARANT,P370_TOT_MOBRA,P370_TOT_REPUESTOS_CALL,P370_CERRADO,P370_TIPO,P370_IND_RECLAMO,P370_FEC_RECHAZO,P370_COD_ORIGEN,P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_IND_ADELANTO,P370_SENIA,P370_TIPO_RECLAMO,P3'
||'70_COD_MOTIVO_RECLAMO_SPP,P370_COD_MOTIVO_RECLAMO_JEFE,P370_LINEA_PRODUCTO,P370_COD_PROVEEDOR,P370_COMENTARIO,P370_FECHA_FINALIZACION,P370_COD_ARTICULO_OT,P370_IND_ENTREGA,P370_NCR,P370_CAMBIO,P370_IND_CARNEO,P370_COD_CLIENTE,P370_NOM_CLIENTE,P370_CE'
||'LULAR_CONTACTO,P370_CORREO_CONTACTO,P370_CONCLUSION'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P370_TIPO,P370_MONTO_ADELANTO,P370_TOTAL_OT,P370_CERRADO,P370_COMENTARIO,P370_FEC_CIERRE,P370_ESTADO_PRESU,P370_FEC_ESTADO,P370_FINALIZADO_POR,P370_FECHA_FINALIZACION,P370_FEC_MODIF_CERRADO,P370_HORA_FINALIZADO,P370_CELULAR_CONT'
||'ACTO,P370_CORREO_CONTACTO,P370_FEC_IM,P370_HORA_IM,P370_REPARADO_IM_POR,P370_VERIFICADO_POR,P370_FEC_VERIFICADO,P370_HORA_VERIFICACION'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119710126425278420)
,p_name=>'Entrega OT'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104445273519494208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119710253455278421)
,p_event_id=>wwv_flow_imp.id(119710126425278420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'----------------------------------------------------------------------------------',
'begin',
'IF nvl( :P370_IND_ENTREGA, ''N'' ) = ''N''  AND :P370_COD_ORIGEN=''1'' THEN',
'	IF NVL(:P370_TOT_REPUESTOS,0)>0 THEN',
'		  :P0_MENSAJE_VALIDACION := ''Debe facturar para poder entregar la ot.'';',
'	    return;',
'	END IF;',
'END IF;',
'exception',
'	when others then',
'	:P0_MENSAJE_VALIDACION :=  sqlerrm;',
'end;',
'----------------------------------------------------------------------------------',
'begin',
'IF nvl( :P370_IND_ENTREGA, ''N'' ) = ''N'' THEN',
'  IF nvl( :P370_CERRADO,''N'') <> ''S'' THEN',
'    :P0_MENSAJE_VALIDACION  :=  ''Debe cerrar la orden de trabajo para poder entregar.'';',
'    return;',
'  ELSE',
'   :P370_IND_ENTREGA     := ''S'';',
'   :P370_FEC_ENTREGA     := sysdate;    ',
'   :P370_ENTREGADO_POR   := :app_user;',
'   :P370_FEC_ENTREGADO   := sysdate; ',
'   :P370_HORA_ENTREGADO := to_char(sysdate,''HH24:MI:SS'');',
'  END IF;',
'END IF;',
'exception',
'	when others then',
'	:P0_MENSAJE_VALIDACION  := sqlerrm;',
'end;',
''))
,p_attribute_02=>'P370_IND_ENTREGA,P370_COD_ORIGEN,P370_CERRADO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P370_IND_ENTREGA,P370_FEC_ENTREGA,P370_ENTREGADO_POR,P370_FEC_ENTREGADO,P370_HORA_ENTREGADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119710884555278427)
,p_name=>'Condicional'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119710676238278425)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119711064151278429)
,p_event_id=>wwv_flow_imp.id(119710884555278427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00BFDesea finalizar la Orden de Trabajo?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119710991718278428)
,p_event_id=>wwv_flow_imp.id(119710884555278427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :p370_tipo = ''CR''  then ',
'    :P370_TIPO_CIERRE := ''CR'';',
'    :P370_ESTADO_PRESU  :=  ''C'';',
'    :P370_FEC_ESTADO := sysdate;',
'    :P370_FINALIZADO_POR      := :APP_USER;',
'ELSIF :p370_tipo = ''CSS''  then ',
'    :P370_TIPO_CIERRE := ''CSS'';',
'    :P370_ESTADO_PRESU  :=  ''C'';',
'    :P370_FEC_ESTADO := sysdate;',
'    :P370_FINALIZADO_POR      := :APP_USER;',
'ELSIF :p370_tipo = ''CPR''  then ',
'    :P370_TIPO_CIERRE := ''CPR'';',
'    :P370_ESTADO_PRESU  :=  ''C'';',
'    :P370_FEC_ESTADO := sysdate;',
'    :P370_FINALIZADO_POR      := :APP_USER;',
'ELSIF :p370_tipo = ''CSR''  then ',
'    :P370_TIPO_CIERRE := ''CSR'';',
'    :P370_ESTADO_PRESU  :=  ''C'';',
'    :P370_FEC_ESTADO := sysdate;',
'    :P370_FINALIZADO_POR      := :APP_USER;',
'END IF;'))
,p_attribute_02=>'P370_TIPO'
,p_attribute_03=>'P370_TIPO_CIERRE,P370_ESTADO_PRESU,P370_FEC_ESTADO,P370_FINALIZADO_POR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119711198392278430)
,p_event_id=>wwv_flow_imp.id(119710884555278427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){ ',
'$(''#finalizar_ot'').trigger(''click''); ',
'}); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119711591906278434)
,p_event_id=>wwv_flow_imp.id(119710884555278427)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119710408324278423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119711320560278432)
,p_name=>unistr('Llamada a condici\00F3n cierre')
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119711231240278431)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119711422175278433)
,p_event_id=>wwv_flow_imp.id(119711320560278432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119710408324278423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119711678882278435)
,p_name=>unistr('Cierre de ventana condici\00F3n cierre')
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119710718270278426)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119711809966278437)
,p_event_id=>wwv_flow_imp.id(119711678882278435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119710408324278423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119712757233278446)
,p_name=>'Repuesto utilizados'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(115740873954259227)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121599912360098039)
,p_event_id=>wwv_flow_imp.id(119712757233278446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P370_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P370_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P370_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P370_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P370_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P370_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P370_IND_ADELANTO,',
'                                      p_total_ot           => :P370_TOTAL_OT,',
'                                      p_tot_mobra          => :P370_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P370_TOT_REPUESTOS,',
'                                      p_senia              => :P370_SENIA,',
'                                      p_mensaje_error      => :P0_MENSAJE_VALIDACION);',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_TOT_REPUESTOS_CALL,P370_TOTAL_OT_CALL_C_G,P370_TOTAL_OT_CALL_S_G,P370_IND_ADELANTO,P370_TOT_MOBRA,P370_TOT_REPUESTOS,P370_SENIA'
,p_attribute_03=>'P370_TOT_REPUESTOS_CALL,P370_TOTAL_OT_CALL_C_G,P370_TOTAL_OT_CALL_S_G,P370_TOTAL_OT,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119712866042278447)
,p_event_id=>wwv_flow_imp.id(119712757233278446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(331806421988080413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119713153806278450)
,p_name=>'Crea pedido'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119713006527278449)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121596112237098001)
,p_event_id=>wwv_flow_imp.id(119713153806278450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'vnro_pedido number(18);',
'vsucursal varchar2(20);',
'vmensaje VARCHAR2(300);',
'VEXISTE VARCHAR2(2):=''N''; ',
'begin',
'CREA_PEDIDO_REPUESTO_STNGO(:P_COD_EMPRESA,',
'                           :P370_COD_PROVEEDOR    ,',
'                            :P370_TIP_COMPROBANTE  ,',
'                            :P370_SER_COMPROBANTE  ,',
'                            :P370_NRO_COMPROBANTE  ,',
'                            NVL(:P370_GARANTIA,''N''),',
'                            :P370_ESTADO_PRESU,',
'                           vmensaje         ',
'                           );',
'',
' ',
'  :P0_MENSAJE_VALIDACION :=  vmensaje;',
'  EXCEPTION',
'  	WHEN OTHERS THEN',
'  	  :P0_MENSAJE_VALIDACION :=   SQLERRM;',
'end ;'))
,p_attribute_02=>'P_COD_EMPRESA,P370_COD_PROVEEDOR,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_GARANT,P370_ESTADO_PRESU'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121600116660098041)
,p_name=>'Valida estado'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_ESTADO_PRESU'
,p_condition_element=>'P370_ESTADO_PRESU'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121600290886098042)
,p_event_id=>wwv_flow_imp.id(121600116660098041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'inv.caordtra.pr_validaciones_estado(p_estado_presu               => :P370_ESTADO_PRESU,',
'                     p_estado_presu_real         => :P370_ESTADO_PRESU_REAL,',
'                     p_fec_cierre                => :P370_FEC_CIERRE,',
'                     p_fec_entregado             => :P370_FEC_ENTREGADO,',
'                     p_fec_presupuestado         => :P370_FEC_PRESUPUESTADO,',
'                     p_fec_estado                => :P370_FEC_ESTADO,',
'                     p_creado_por                => :P370_CREADO_POR,',
'                     p_fec_creacion              => :P370_FEC_CREACION,',
'                     p_cod_usuario               => :APP_USER,',
'                     p_hora_creacion             => :P370_HORA_CREACION,',
'                     p_entregado_por             => :P370_ENTREGADO_POR,',
'                     p_presupuestado_por         =>  :P370_PRESUPUESTADO_POR,',
'                     p_hora_presupuesto          =>  :P370_HORA_PRESUPUESTO,',
'                     p_pendiente_por             =>  :P370_PENDIENTE_POR,',
'                     p_fec_pendiente             => :P370_FEC_PENDIENTE,',
'                     p_hora_pendiente            => :P370_HORA_PENDIENTE,',
'                     p_aprobado_por              => :P370_APROBADO_POR,',
'                     p_cod_empresa               => :P_COD_EMPRESA,',
'                     p_cod_forma                 =>  ''CAORDTRA'',',
'                     p_fec_aprobacion            =>  :P370_FEC_APROBACION,',
'                     p_hora_aprobada             =>  :P370_HORA_APROBADA,',
'                     p_fecha_estado_complicado   =>  :P370_FECHA_ESTADO_COMPLICADO,',
'                     p_cod_usuario_es_complicado =>  :P370_COD_USUAROP_ES_COMPLICADO,',
'                     p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'                     p_cod_usuario_mod_gar       =>  :P370_COD_USUARIO_MOD_GAR,',
'                     p_rechazado_por             => :P370_RECHAZADO_POR,',
'                     p_fec_rechazo               => :P370_FEC_RECHAZO,',
'                     p_hora_rechazado            =>  :P370_HORA_RECHAZADO,',
'                     p_verificado_por            => :P370_VERIFICADO_POR,',
'                     p_fec_verificado            =>  :P370_FEC_VERIFICADO,',
'                     p_hora_verificacion         => :P370_HORA_VERIFICACION,',
'                     p_autorizado_gar_por        => :P370_AUTORIZADO_GAR_POR,',
'                     p_fec_autorizado_gar_por    => :P370_FEC_AUTORIZADO_GAR_POR,',
'                     p_hora_autorizado_gar_por   => :P370_HORA_AUTORIZADO_GAR_POR,',
'                     p_presupuesto               => :P370_PRESUPUESTO,',
'                     p_cod_usuario_sin_rp        => :P370_COD_USUARIO_SIN_RP,',
'                     p_fec_sin_repuesto          => :P370_FEC_SIN_REPUESTO,',
'                     p_hora_sin_repuesto         => :P370_HORA_SIN_REPUESTO,',
'                     p_fec_im                    => :P370_FEC_IM,',
'                     p_reparado_im_por           => :P370_REPARADO_IM_POR,',
'                     p_tot_repuestos_call        => :P370_TOT_REPUESTOS_CALL,',
'                     p_mensaje_error             => :P0_MENSAJE_VALIDACION,',
'                     p_tip_comprobante           => :P370_TIP_COMPROBANTE,',
'                     p_ser_comprobante           => :P370_SER_COMPROBANTE,',
'                     p_nro_comprobante           => :P370_NRO_COMPROBANTE,',
'                     p_usuario                   => :APP_USER);',
'',
'                     IF :P0_MENSAJE_VALIDACION IS NOT NULL THEN ',
'                         :P370_ESTADO_PRESU := :P370_ESTADO_AUX;',
'                     END IF;',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            :P370_ESTADO_PRESU := :P370_ESTADO_AUX;',
'END;'))
,p_attribute_02=>'P370_ESTADO_PRESU,P370_ESTADO_PRESU_REAL,P370_FEC_CIERRE,P370_FEC_ENTREGADO,P370_FEC_PRESUPUESTADO,P370_HORA_CREACION,P370_ENTREGADO_POR,P370_PENDIENTE_POR,P370_APROBADO_POR,P_COD_EMPRESA,P370_VERIFICADO_POR,P370_AUTORIZADO_GAR_POR,P370_COD_USUARIO_S'
||'IN_RP,P370_TOT_REPUESTOS_CALL,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_ESTADO_AUX'
,p_attribute_03=>'P370_ESTADO_PRESU,P370_ESTADO_PRESU_REAL,P370_FEC_PRESUPUESTADO,P370_FEC_ESTADO,P370_CREADO_POR,P370_FEC_CREACION,P370_HORA_CREACION,P370_PRESUPUESTADO_POR,P370_HORA_PRESUPUESTO,P370_PENDIENTE_POR,P370_FEC_PENDIENTE,P370_HORA_PENDIENTE,P370_APROBADO_'
||'POR,P370_FEC_APROBACION,P370_HORA_APROBADA,P370_COD_USUARIO_RENDICION,P370_COD_USUAROP_ES_COMPLICADO,P370_FECHA_ABANDONADO,P370_COD_USUARIO_MOD_GAR,P370_RECHAZADO_POR,P370_FEC_RECHAZO,P370_HORA_RECHAZADO,P370_VERIFICADO_POR,P370_FEC_VERIFICADO,P370_H'
||'ORA_VERIFICACION,P370_AUTORIZADO_GAR_POR,P370_FEC_AUTORIZADO_GAR_POR,P370_HORA_AUTORIZADO_GAR_POR,P370_COD_USUARIO_SIN_RP,P370_FEC_SIN_REPUESTO,P370_HORA_SIN_REPUESTO,P370_FEC_IM,P370_REPARADO_IM_POR,P0_MENSAJE_VALIDACION,P370_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122667849614248609)
,p_name=>'Obtiene montos de presupuestos'
,p_event_sequence=>480
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(115740528809259224)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122668413510248615)
,p_event_id=>wwv_flow_imp.id(122667849614248609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P370_TOTAL_OT_CALL_S_G := inv.caordtra.calcular_total(p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                                                         p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                                                         pcod_empresa => :P_COD_EMPRESA);',
'',
'',
''))
,p_attribute_02=>'P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P370_TOTAL_OT_CALL_S_G'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124023395854827331)
,p_event_id=>wwv_flow_imp.id(122667849614248609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_contador  NUMBER := 0;',
'BEGIN',
'    BEGIN',
'        SELECT count(*)',
'            INTO v_contador',
'         FROM ca_entsal_det d, ca_entsal_cab a',
'        WHERE a.cod_empresa = d.cod_empresa',
'          AND a.cod_empresa = ''1''',
'          AND a.nro_comprobante_ref = :P370_NRO_COMPROBANTE',
'          AND a.ser_comprobante_ref = :P370_SER_COMPROBANTE',
'          AND a.tip_comprobante_ref = ''ORT''',
'          AND a.num_ent_sal = d.num_ent_sal',
'          AND a.ser_ent_sal = d.ser_ent_sal;',
'          EXCEPTION ',
'            WHEN OTHERS THEN  ',
'                v_contador := 0;',
'           ',
'    END;',
'    IF v_contador >  0 THEN ',
'        :P370_ESTADO_PRESU := ''P'';',
'        :P370_FEC_PRESUPUESTADO := SYSDATE;',
'    END IF;',
'END;',
'',
'',
'  inv.caordtra.pr_sumar_totales_rep(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => ''ORT'',',
'p_ser_comprobante => :P370_SER_COMPROBANTE,',
'p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'p_tot_repuestos       => :P370_TOT_REPUESTOS);'))
,p_attribute_02=>'P370_NRO_COMPROBANTE,P370_SER_COMPROBANTE,P_COD_EMPRESA,P370_TOT_REPUESTOS'
,p_attribute_03=>'P370_ESTADO_PRESU,P370_FEC_PRESUPUESTADO,P370_TOT_REPUESTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122667937693248610)
,p_event_id=>wwv_flow_imp.id(122667849614248609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P370_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P370_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P370_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P370_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P370_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P370_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P370_IND_ADELANTO,',
'                                      p_total_ot           => :P370_TOTAL_OT,',
'                                      p_tot_mobra          => :P370_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P370_TOT_REPUESTOS,',
'                                      p_senia              => :P370_SENIA,',
'                                      p_mensaje_error      => :P0_MENSAJE_VALIDACION);',
'',
':P370_TOTAL_OT_CALL := :P370_TOT_REPUESTOS_CALL;'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_TOT_REPUESTOS_CALL,P370_TOTAL_OT_CALL_C_G,P370_TOTAL_OT_CALL_S_G,P370_IND_ADELANTO,P370_TOT_MOBRA,P370_TOT_REPUESTOS,P370_SENIA'
,p_attribute_03=>'P370_TOT_REPUESTOS_CALL,P370_TOTAL_OT_CALL_C_G,P370_TOTAL_OT,P0_MENSAJE_VALIDACION,P370_TOTA_OT_CALL,P370_TOTAL_OT_CALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122668538396248616)
,p_name=>'SETEA MONTOS'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_TOTAL_OT_CALL_S_G'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122668620220248617)
,p_event_id=>wwv_flow_imp.id(122668538396248616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_TOTAL_OT_CALL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P370_TOTAL_OT_CALL_S_G'
,p_attribute_07=>'P370_TOTAL_OT_CALL_S_G'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125070718253854447)
,p_name=>'Validaciones de devoluciones'
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(125070236905854442)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125070808624854448)
,p_event_id=>wwv_flow_imp.id(125070718253854447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P370_CANTIDAD, 0) <= NVL(:P370_CANTIDAD_DEV, 0) THEN',
'    IF :P370_COD_MOTIVO_DEV IS NOT NULL THEN',
'      SP_DEVOLUCION_REPUESTO_OT(:P370_COD_PROVEEDOR,',
'                                :P370_TIP_COMPROBANTE,',
'                                :P370_SER_COMPROBANTE,',
'                                :P370_NRO_COMPROBANTE,',
'                                :P370_ARTICULO_DEV,',
'                                :P370_CANTIDAD,',
'                                :P370_COD_MOTIVO_DEV);',
'    ',
'      apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'    inv.caordtra.pr_buscar_articulos(p_cod_empresa    => :P_COD_EMPRESA,',
'                                    p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'                                    p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                                    p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                                    p_cod_origen      => :P370_COD_ORIGEN,',
'                                    p_cod_proveedor   => :P370_COD_PROVEEDOR,',
'                                    p_fec_comprobante => :P370_FEC_COMPROBANTE,',
'                                    p_tot_repuestos   => :P370_TOT_REPUESTOS,',
'                                    p_cerrado         => :P370_CERRADO,',
'                                    p_tot_mobra       => :P370_TOT_MOBRA,',
'                                    p_total_ot        => :P370_TOTAL_OT,',
'                                    p_senia           => :P370_SENIA,',
'                                    p_monto_adelanto  => :P370_MONTO_ADELANTO,',
'                                    p_ind_adelanto    => :P370_IND_ADELANTO,',
'                                    p_mensaje_error   => :P0_MENSAJE_VALIDACION);',
'    ELSE',
'      :P0_MENSAJE_VALIDACION := ''Debe ingresar un motivo para realizar la devolucion'';',
'    END IF;',
'    NULL;',
'  ELSE',
'    :P0_MENSAJE_VALIDACION := ''La cantidad a devolver no puede ser mayor a la cantidad utiliazada'';',
'    NULL;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ORIGEN,P370_COD_PROVEEDOR,P370_FEC_COMPROBANTE,P370_CERRADO,P370_TOT_MOBRA,P370_SENIA,P370_MONTO_ADELANTO,P370_IND_ADELANTO,P370_CANTIDAD,P370_CANTIDAD_DEV,P370_COD'
||'_MOTIVO_DEV,P370_ARTICULO_DEV'
,p_attribute_03=>'P370_TOTAL_OT,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125071056564854450)
,p_event_id=>wwv_flow_imp.id(125070718253854447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125070170150854441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125155312389724601)
,p_event_id=>wwv_flow_imp.id(125070718253854447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125070170150854441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173536519572096902)
,p_name=>'Validaciones de devoluciones_1'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(125070236905854442)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173536622980096903)
,p_event_id=>wwv_flow_imp.id(173536519572096902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P370_CANTIDAD, 0) <= NVL(:P370_CANTIDAD_DEV, 0) THEN',
'    IF :P370_COD_MOTIVO_DEV IS NOT NULL THEN',
'      SP_DEVOLUCION_REPUESTO_OT(:P370_COD_PROVEEDOR,',
'                                :P370_TIP_COMPROBANTE,',
'                                :P370_SER_COMPROBANTE,',
'                                :P370_NRO_COMPROBANTE,',
'                                :P370_ARTICULO_DEV,',
'                                :P370_CANTIDAD,',
'                                :P370_COD_MOTIVO_DEV);',
'    ',
'  /*    apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'    inv.caordtra.pr_buscar_articulos(p_cod_empresa    => :P_COD_EMPRESA,',
'                                    p_tip_comprobante => :P370_TIP_COMPROBANTE,',
'                                    p_ser_comprobante => :P370_SER_COMPROBANTE,',
'                                    p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                                    p_cod_origen      => :P370_COD_ORIGEN,',
'                                    p_cod_proveedor   => :P370_COD_PROVEEDOR,',
'                                    p_fec_comprobante => :P370_FEC_COMPROBANTE,',
'                                    p_tot_repuestos   => :P370_TOT_REPUESTOS,',
'                                    p_cerrado         => :P370_CERRADO,',
'                                    p_tot_mobra       => :P370_TOT_MOBRA,',
'                                    p_total_ot        => :P370_TOTAL_OT,',
'                                    p_senia           => :P370_SENIA,',
'                                    p_monto_adelanto  => :P370_MONTO_ADELANTO,',
'                                    p_ind_adelanto    => :P370_IND_ADELANTO,',
'                                    p_mensaje_error   => :P0_MENSAJE_VALIDACION);*/',
'    ELSE',
'      :P0_MENSAJE_VALIDACION := ''Debe ingresar un motivo para realizar la devolucion'';',
'    END IF;',
'    NULL;',
'  ELSE',
'    :P0_MENSAJE_VALIDACION := ''La cantidad a devolver no puede ser mayor a la cantidad utiliazada'';',
'    NULL;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_COD_ORIGEN,P370_COD_PROVEEDOR,P370_FEC_COMPROBANTE,P370_CERRADO,P370_TOT_MOBRA,P370_SENIA,P370_MONTO_ADELANTO,P370_IND_ADELANTO,P370_CANTIDAD,P370_CANTIDAD_DEV,P370_COD'
||'_MOTIVO_DEV,P370_ARTICULO_DEV'
,p_attribute_03=>'P370_TOTAL_OT,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173537617223096913)
,p_event_id=>wwv_flow_imp.id(173536519572096902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'inv.caordtra.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P370_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P370_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');'))
,p_attribute_02=>'P370_PARAM_SER_OT,P370_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173536722282096904)
,p_event_id=>wwv_flow_imp.id(173536519572096902)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75707913031194348)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173537142602096908)
,p_event_id=>wwv_flow_imp.id(173536519572096902)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125070170150854441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125155445155724602)
,p_name=>unistr('Cierra ventana de art\00EDculos presupuestados')
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(125070321864854443)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125155605250724604)
,p_event_id=>wwv_flow_imp.id(125155445155724602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125070170150854441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125173499682140652)
,p_name=>'Imprime reporte'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110074248707167981)
,p_condition_element=>'P370_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125173881202140652)
,p_event_id=>wwv_flow_imp.id(125173499682140652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P370_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P370_SER_COMPROBANTE").value; ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'Jasper_impresion_directa(''CAORDTRA'', params)',
'       ',
'  ',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125155873099724606)
,p_name=>'Visualizar reporte'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(125155785314724605)
,p_condition_element=>'P370_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125155911053724607)
,p_event_id=>wwv_flow_imp.id(125155873099724606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P370_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P370_SER_COMPROBANTE").value; ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'createReportUrl(''CAORDTRA'', params)',
'       ',
'  ',
'',
'',
'',
'',
''))
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
 p_id=>wwv_flow_imp.id(125156033038724608)
,p_name=>'Setea info articulos'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_DESCRIPCION_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125156114484724609)
,p_event_id=>wwv_flow_imp.id(125156033038724608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_DESCRIPCION_ARTICULO_1'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P370_DESCRIPCION_ARTICULO'
,p_attribute_07=>'P370_DESCRIPCION_ARTICULO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134813909024775533)
,p_name=>'Carga datos Ticket'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_NRO_ORDEN'
,p_condition_element=>'P370_NRO_ORDEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134814076674775534)
,p_event_id=>wwv_flow_imp.id(134813909024775533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_transporte NUMBER;',
'BEGIN ',
'    IF :P370_COD_ORIGEN IS NOT NULL THEN ',
'        :P0_MENSAJE_VALIDACION := null;',
'        BEGIN',
'        select A.COD_DISTRIBUIDOR, A.NRO_PLANILLA, A.COD_DISTRIBUIDOR, A.COD_CLIENTE, A.TRANSPORTADORA',
'        into :P370_COD_CLIENTE,',
'            :P370_NRO_ORDEN,',
'            :P370_COD_DISTRIBUIDOR,',
'            :P370_COD_STA,',
'            v_transporte',
'        from RP_Retiro_CABECERA a',
'        where a.nro_planilla = :P370_NRO_ORDEN',
'        and a.cod_empresa = :P_COD_EMPRESA;',
'        EXCEPTION  ',
'           WHEN OTHERS THEN ',
'            :P370_COD_DISTRIBUIDOR := NULL;',
'            :P370_NRO_ORDEN  := NULL;',
'            :P370_COD_CLIENTE := NULL;',
'        END;',
'',
'',
'        BEGIN ',
'            SELECT D.COD_ARTICULO, D.GARANTIA, D.FACTURA, D.FEC_COMPRA  ',
'            INTO :P370_COD_ARTICULO_OT,',
'                 :P370_NRO_GARANTIA,',
'                 :P370_NRO_COMPRA,',
'                 :P370_FEC_COMPRA',
'            FROM RP_RETIRO_DETALLE D',
'            WHERE D.NRO_PLANILLA = :P370_NRO_ORDEN',
'            and  D.cod_empresa = :P_COD_EMPRESA',
'            AND ROWNUM = 1;',
'            EXCEPTION  ',
'           WHEN OTHERS THEN ',
'            :P370_COD_ARTICULO_OT := NULL;',
'            :P370_NRO_GARANTIA  := NULL;',
'            :P370_NRO_COMPRA := NULL;',
'        END;',
'    ELSE ',
'        :P0_MENSAJE_VALIDACION := ''Debe seleccionar el Origen'';',
'    END IF;',
'',
'    IF v_transporte IN (1,2,3,4,7) THEN ',
'        :P370_TRANSPPORTADOR := ''T'';',
'        ',
'    ELSIF  v_transporte IN (5,8) THEN ',
'        :P370_TRANSPPORTADOR := ''S'';',
'    ELSIF  v_transporte  IN (6) THEN ',
'        :P370_TRANSPPORTADOR := ''L'';',
'    ELSE ',
'        :P370_TRANSPPORTADOR := NULL;',
'',
'    END  IF;',
'',
'',
'END;'))
,p_attribute_02=>'P370_NRO_ORDEN,P_COD_EMPRESA,P370_COD_ORIGEN'
,p_attribute_03=>'P370_COD_CLIENTE,P370_COD_DISTRIBUIDOR,P370_NRO_ORDEN,P370_COD_ARTICULO_OT,P0_MENSAJE_VALIDACION,P370_NRO_COMPRA,P370_FEC_COMPRA,P370_NRO_GARANTIA,P370_COD_STA,P370_TRANSPPORTADOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135719832875259312)
,p_name=>'Imprime reporte'
,p_event_sequence=>570
,p_condition_element=>'P370_IMPRIMIR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135720251674259309)
,p_event_id=>wwv_flow_imp.id(135719832875259312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P370_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P370_SER_COMPROBANTE").value; ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
unistr('var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la OT Nro. '' + comprobante + '' y la Etiqueta?'';  '),
'    apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'        if( okPressed ) {',
'            createReportUrl(''CAORDTRA'', params);',
'',
'                var params = []',
'                params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'                params.push({ name: ''p_id_ticket'', value: comprobante}) ',
'                createReportUrl("ETIQUETAOT", params)',
'',
'        } else {',
'           null;',
'        }',
'    });',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137002768248087929)
,p_name=>'Setea Canal'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_DESCRI_ORIGEN'
,p_condition_element=>'P370_DESCRI_ORIGEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137002840812087930)
,p_event_id=>wwv_flow_imp.id(137002768248087929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P370_DESCRI_ORIGEN IN (''DESMONTAJE/MONTAJE'', ''DIVISION CORPORATIVA'', ''MANTENIMIENTO'', ''OBRAS Y PROYECTOS'') THEN ',
'    :P370_CANAL := ''DIVISION CORPORATIVA'';',
'ELSIF :P370_DESCRI_ORIGEN IN (''ARGENTAL'',  ''VISITA GASTRO-NGO'') THEN ',
unistr('    :P370_CANAL := ''GASTRONOM\00CDA'';'),
'ELSIF :P370_DESCRI_ORIGEN IN (''INSTALACION DE PILETAS'', ''LEVANTAMIENTOS STA'', ''REPARACION DE PILETAS'', ''SERVICIO AUTORIZADO CPH'') THEN ',
'    :P370_CANAL := ''N/A'';',
'ELSIF :P370_DESCRI_ORIGEN IN (''ARISTON'',  ''FITNES'', ''GESTION STCDE'', ''SERVICIO AUTORIZADO'', ''SERVICIO AUTORIZADO WEB'', ''TOKYO SET UP'', ''WHIRLPOOL SET UP'') THEN ',
'    :P370_CANAL := ''STA'';',
'ELSIF :P370_DESCRI_ORIGEN IN (''BICICLETAS'', ''CARNEO'', ''CLIENTE FINAL CPH'', ''CPH'', ''DESCARGA EN GARANTIA'', ''LEVANTAMIENTO'', ''MUESTRAS'', ''SERVICIO TECNICO'', ''SERVICIO TECNICO INTERIOR'', ''SPP INTERIOR'', ''SPP INTERIOR'') THEN ',
'    :P370_CANAL := ''STNGO'';',
'ELSIF :P370_DESCRI_ORIGEN IN (''CELULARES'') THEN ',
'    :P370_CANAL := ''STNGO'';',
'ELSE ',
'    :P370_CANAL := NULL;',
'END  IF;'))
,p_attribute_02=>'P370_DESCRI_ORIGEN'
,p_attribute_03=>'P370_CANAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149024962634268828)
,p_name=>'Abrir garantia'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(149024641277268825)
,p_condition_element=>'P370_NRO_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149025023548268829)
,p_event_id=>wwv_flow_imp.id(149024962634268828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_garantia(p_garantia_ot    => :P370_NRO_GARANTIA,',
'                        p_datos_garantia => :P370_DATOS_GARANTIA);'))
,p_attribute_02=>'P370_NRO_GARANTIA'
,p_attribute_03=>'P370_DATOS_GARANTIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149025706991268836)
,p_event_id=>wwv_flow_imp.id(149024962634268828)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''gara''); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149025370209268832)
,p_name=>unistr('Cerrar regi\00F3n garant\00EDa')
,p_event_sequence=>600
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(149025242908268831)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149025420639268833)
,p_event_id=>wwv_flow_imp.id(149025370209268832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(149024720054268826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175727196846649209)
,p_name=>'Oculta botones'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_ESTADO_PRESU'
,p_condition_element=>'P370_ESTADO_PRESU'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175727334625649211)
,p_event_id=>wwv_flow_imp.id(175727196846649209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740704723259226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175727475379649212)
,p_event_id=>wwv_flow_imp.id(175727196846649209)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740704723259226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496239842419323)
,p_event_id=>wwv_flow_imp.id(175727196846649209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110053553286167962)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175727876319649216)
,p_name=>'Establece estado'
,p_event_sequence=>620
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_OCULTAR'
,p_condition_element=>'P370_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175727945124649217)
,p_event_id=>wwv_flow_imp.id(175727876319649216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110075081385167981)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175728456336649222)
,p_event_id=>wwv_flow_imp.id(175727876319649216)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110075081385167981)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179495281463419313)
,p_name=>'Nuevo_1'
,p_event_sequence=>630
,p_condition_element=>'P370_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179495386060419314)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179497212731419333)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740704723259226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179495442751419315)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179495599085419316)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179495652296419317)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496805783419329)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740295233259221)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496935618419330)
,p_event_id=>wwv_flow_imp.id(179495281463419313)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740704723259226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179495765500419318)
,p_name=>'Estado de OT'
,p_event_sequence=>640
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_GARANTIA'
,p_condition_element=>'P370_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179495839383419319)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179495947663419320)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496033913419321)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496194959419322)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496608027419327)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740704723259226)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496711600419328)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740295233259221)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179496408498419325)
,p_event_id=>wwv_flow_imp.id(179495765500419318)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(115740704723259226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181182300024121010)
,p_name=>'Nuevo'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_NRO_GARANTIA'
,p_condition_element=>'P370_NRO_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181182453412121011)
,p_event_id=>wwv_flow_imp.id(181182300024121010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P370_GARANTIA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'S'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181186210044121049)
,p_name=>'Nuevo_2'
,p_event_sequence=>660
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P370_OBERVACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P370_PARAM_NRO_OT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181186326860121050)
,p_event_id=>wwv_flow_imp.id(181186210044121049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var valor = apex.item("P370_OBERVACION").getValue();',
'if (valor ===  "" || valor === null) {',
'    null;',
'}',
'else {',
'    document.getElementById(''P370_OBERVACION'').readOnly = true; ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182765196009206907)
,p_name=>'Oculta boton'
,p_event_sequence=>670
,p_condition_element=>'P370_VOLVER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182765266540206908)
,p_event_id=>wwv_flow_imp.id(182765196009206907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(182764926486206905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182765522406206911)
,p_event_id=>wwv_flow_imp.id(182765196009206907)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(182764926486206905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182765399868206909)
,p_event_id=>wwv_flow_imp.id(182765196009206907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073849875167981)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182765404620206910)
,p_event_id=>wwv_flow_imp.id(182765196009206907)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(110073849875167981)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182768714064206943)
,p_name=>'Refresca region'
,p_event_sequence=>680
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(124020347663827301)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182769042124206946)
,p_event_id=>wwv_flow_imp.id(182768714064206943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_busca_llamadas(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_tip_comprobante     => :P370_TIP_COMPROBANTE,',
'                              p_ser_comprobante     => :P370_SER_COMPROBANTE,',
'                              p_nro_comprobante     => :P370_NRO_COMPROBANTE,',
'                              p_usuario_seguimiento => :P370_USUARIO_SEGUIMIENTO,',
'                              p_motivo_seguimiento  => :P370_MOTIVO_SEGUIMIENTO,',
'                              p_motivo_secundario   => :P370_MOTIVO_SECUNDARIO,',
'                              p_motivo_principal    => :P370_MOTIVO_PRINCIPAL,',
'                              p_cod_motivo          => :P370_COD_MOTIVO);'))
,p_attribute_02=>'P_COD_EMPRESA,P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE,P370_USUARIO_SEGUIMIENTO,P370_MOTIVO_SEGUIMIENTO,P370_MOTIVO_SECUNDARIO,P370_MOTIVO_PRINCIPAL,P370_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182768858623206944)
,p_event_id=>wwv_flow_imp.id(182768714064206943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124020347663827301)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(186260082699274104)
,p_name=>'Imprimir etiqueta'
,p_event_sequence=>690
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(186259980619274103)
,p_condition_element=>'P370_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186260134539274105)
,p_event_id=>wwv_flow_imp.id(186260082699274104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var ser_comprobante = apex.item("P370_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P370_NRO_COMPROBANTE").getValue();',
'var vfacnom = "ETIQUETAOT";',
'params.push({ name: ''p_id_ticket'', value: nro_comprobante})',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante})',
'',
'createReportUrl(vfacnom, params)',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110096047813167999)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110073849875167981)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110096882371168000)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear_page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110074659132167981)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110098061020168003)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear_page_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110073482483167980)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(115344408015984202)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'KEY COMMIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P370_IND_RECLAMO := ''N'';',
':P370_COD_ARTICULO_CALL  := :P370_COD_ARTICULO;',
':P370_COD_ARTICULO := :P370_COD_ARTICULO_OT;',
':P370_IND_GARANTIA :=  :P370_GARANTIA;',
'  DECLARE',
'    VORIGEN VARCHAR2(100);',
'  BEGIN',
'    BEGIN',
'      SELECT ORIGEN',
'        INTO VORIGEN',
'        FROM VT_ORIGENES',
'       WHERE COD_EMPRESA = :P_COD_EMPRESA',
'         AND COD_ORIGEN = :P370_COD_ORIGEN;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VORIGEN := NULL;',
'    END;',
'    IF VORIGEN = ''STNGO'' THEN',
'      inv.caordtra.pr_valida_cantidad_mo(p_cod_empresa  => :P_COD_EMPRESA,',
'                                        p_tot_mobra     => :P370_TOT_MOBRA,',
'                                        p_cod_forma     => :P370_COD_FORMA,',
'                                        p_cod_usuario   => :APP_USER,',
'                                        p_cod_origen    => :P370_COD_ORIGEN,',
'                                        p_mensaje_error => :P0_ERROR);',
'      inv.caordtra.pr_valida_mano_de_obra(p_cod_empresa               => :P_COD_EMPRESA,',
'                                           p_cod_origen               => :P370_COD_ORIGEN,',
'                                           p_cod_cliente              => :P370_COD_CLIENTE,',
'                                           p_cerrado                  => :P370_CERRADO,',
'                                           p_ind_reclamo              => :P370_IND_RECLAMO,',
'                                           p_tot_mobra                => :P370_TOT_MOBRA,',
'                                           p_fec_comprobante          => :P370_FEC_COMPROBANTE,',
'                                           p_ind_garantia             => :P370_GARANTIA,',
'                                           p_rubro_mo                 => :P370_RUBRO_MO,',
'                                           p_cod_moneda_base          => :P370_COD_MONEDA_BASE,',
'                                           p_porc_iva                 => :P370_PORC_IVA,',
'                                           p_fec_rechazo              => :P370_FEC_RECHAZO,',
'                                           p_ser_comprobante          => :P370_SER_COMPROBANTE,',
'                                           p_nro_comprobante           => :P370_NRO_COMPROBANTE,',
'                                           p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'                                           p_fec_aprobacion            => :P370_FEC_APROBACION,',
'                                           p_fec_cierre                => :P370_FEC_CIERRE,',
'                                           p_fecha_estado_complicado   => :P370_FECHA_ESTADO_COMPLICADO,',
'                                           p_fec_pendiente             => :P370_FEC_PENDIENTE,',
'                                           p_ind_adicional             => :P370_IND_ADICIONAL,',
'                                           p_cod_proveedor             => :P370_COD_PROVEEDOR,',
'                                           p_linea_producto            => :P370_LINEA_PRODUCTO,',
'                                           p_error                     => :P370_ERROR,',
'                                           p_tipo_cierre               => :P370_TIPO_CIERRE,',
'                                           p_mensaje_error             => :P0_ERROR);',
'    END IF;',
'  END;',
'',
'  DECLARE',
'    VEXISTE VARCHAR2(10) := ''N'';',
'    VERROR EXCEPTION;',
'  BEGIN',
'    BEGIN',
'      SELECT ''S''',
'        INTO VEXISTE',
'        FROM CA_COMISION_LINEAS T',
'       WHERE T.COD_EMPRESA = :P_COD_EMPRESA',
'            ',
'         AND COD_PROVEEDOR = :P370_COD_PROVEEDOR',
'         AND ROWNUM = 1;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VEXISTE := ''N'';',
'    END;',
'  ',
'    BEGIN',
'      IF NVL(VEXISTE, ''N'') = ''N'' AND',
'         NVL(:P370_IND_ADICIONAL, ''N'') = ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Proveedor no habilitado para MO adicional!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_PROVEEDOR IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el Proveedor antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_ERROR = ''1'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Cantidad de MO para el Tecnico no Valida!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    inv.caordtra.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P370_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P370_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P370_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P370_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P370_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P370_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P370_IND_ADELANTO,',
'                                      p_total_ot           => :P370_TOTAL_OT,',
'                                      p_tot_mobra          => :P370_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P370_TOT_REPUESTOS,',
'                                      p_senia              => :P370_SENIA,',
'                                      p_mensaje_error      => :P0_ERROR);',
'    IF :P370_TOT_REPUESTOS_CALL > 0 AND',
'       :P370_FEC_PRESUPUESTADO IS NULL AND',
'       NVL(:P370_MODIFICA_GARANTIA, ''N'') <> ''S'' THEN',
'    ',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cambiar de estado a presupuestado para poder guardar.'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  inv.caordtra.pr_valida_motivos_guardar(p_estado_presu          => :P370_ESTADO_PRESU,',
'                                    p_fec_aprobacion           => :P370_FEC_APROBACION,',
'                                    p_presupuesto              => :P370_PRESUPUESTO,',
'                                    p_ind_garantia             => :P370_GARANTIA,',
'                                    p_anulado                  => :P370_ANULADO,',
'                                    p_cod_motivo_anu           => :P370_COD_MOTIVO_ANU,',
'                                    p_cod_origen               => :P370_COD_ORIGEN,',
'                                    p_cod_motivo_rechazo_presu => :P370_COD_MOTIVO_RECHAZO_PRESU,',
'                                    p_ind_reclamo_sta          => :P370_IND_RECLAMO_STA,',
'                                    p_cod_motivo_reclamo_sta   => :P370_COD_MOTIVO_RECLAMO_STA,',
'                                    p_tipo_reclamo             => :P370_TIPO_RECLAMO,',
'                                    p_cod_motivo_reclamo_spp   => :P370_COD_MOTIVO_RECLAMO_SPP,',
'                                    p_cerrado                  => :P370_CERRADO,',
'                                    p_cod_proveedor            => :P370_COD_PROVEEDOR,',
'                                    p_mensaje_error            => :P0_ERROR);',
'',
'  DECLARE',
'    VDISTRIBUIDOR VARCHAR2(15);',
'    VERROR EXCEPTION;',
'  BEGIN',
'  ',
'    BEGIN',
'      SELECT ''S''',
'        INTO VDISTRIBUIDOR',
'        FROM CC_CLIENTES C, PERSONAS P',
'       WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P370_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND C.TIP_CLIENTE IN (''1'', ''27'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VDISTRIBUIDOR := ''N'';',
'    END;',
'  ',
'    IF VDISTRIBUIDOR = ''S'' AND :P370_COD_SUCURSAL_DIST IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar LA SUCURSAL del distribuidor antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_ESTADO_PRESU IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar el estado de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_TIPO_RECLAMO IS NULL AND',
'       NVL(:P370_IND_RECLAMO, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar el TIPO de RECLAMO ANTES de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_ARTICULO_OT IS NULL AND',
'       :P370_COD_ARTICULO_CALL IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar el articulo de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'  ',
'    IF NVL(:P370_GARANTIA, ''N'') = ''S'' AND',
'       NVL(:P370_PRESUPUESTO, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  ',
'    IF NVL(:P370_GARANTIA, ''N'') <> ''S'' AND',
'       NVL(:P370_PRESUPUESTO, ''N'') <> ''S'' THEN',
'      IF :P370_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'') THEN',
'      ',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'     RAISE_APPLICATION_ERROR(-20001,''Para Guardar debe Seleccionar si es garantia o presupuesto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  IF :P370_COD_ORIGEN IN (''1'', ''3'') THEN',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P370_TEL_CLIENTE IS NULL AND',
'         :P370_EMAIL IS NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el algun medio de contacto antes de grabar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  IF NVL(:P370_SITIO, ''B'') = ''LE'' THEN',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P370_COD_ORIGEN IS NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el origen!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'',
'  IF :P370_P_NRO_SERVICIO_PARAM IS NOT NULL THEN',
'    LLAMA_NRO_SERVICIO(''1'',',
'                       :P370_P_TIP_SERVICIO_PARAM,',
'                       :P370_P_NRO_SERVICIO_PARAM,',
'                       ''RELA'',',
'                       :P370_TIP_COMPROBANTE,',
'                       :P370_SER_COMPROBANTE,',
'                       :P370_NRO_COMPROBANTE);',
'  ',
'  END IF;',
'',
'  IF NVL(:P370_ESTADO_PRESU, ''N'') = ''P'' AND',
'     NVL(:P370_IND_CORREO_PRESU, ''N'') <> ''S'' AND',
'     NVL(:P370_TOTA_OT_CALL, 0) > 0 THEN',
'    inv.caordtra.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P370_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P370_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P370_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P370_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P370_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P370_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P370_IND_ADELANTO,',
'                                      p_total_ot           => :P370_TOTAL_OT,',
'                                      p_tot_mobra          => :P370_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P370_TOT_REPUESTOS,',
'                                      p_senia              => :P370_SENIA,',
'                                      p_mensaje_error      => :P0_ERROR);',
'  ',
'    inv.caordtra.pr_informa_presupuesto(p_nom_cliente      => :P370_NOM_CLIENTE,',
'                                         p_desc_articulo    => :P370_DESCRIPCION_ARTICULO,',
'                                         p_ser_comprobante  => :P370_SER_COMPROBANTE,',
'                                         p_nro_comprobante  => :P370_NRO_COMPROBANTE,',
'                                         p_cod_empresa      => :P_COD_EMPRESA,',
'                                         p_tip_comprobante  => :P370_TIP_COMPROBANTE,',
'                                         p_ind_garantia     => :P370_GARANTIA,',
'                                         p_ind_delivery     => :P370_IND_DELIVERY,',
'                                         p_total_ot_call    => :P370_TOTAL_OT,',
'                                         p_cod_cliente      => :P370_COD_CLIENTE,',
'                                         p_celular_contacto => :P370_CELULAR_CONTACTO,',
'                                         p_correo_contacto  => :P370_CORREO_CONTACTO);',
'  ',
'    :P370_IND_CORREO_PRESU := ''S'';',
'  END IF;',
'',
'  IF NVL(:P370_ESTADO_PRESU, ''N'') = ''PE'' AND',
'     NVL(:P370_IND_CORREO_PRESU, ''N'') <> ''S'' AND',
'     NVL(:P370_CERRADO, ''S'') <> ''S'' THEN',
'  ',
'    inv.caordtra.pr_informa_pe(p_cod_origen       => :P370_COD_ORIGEN,',
'                                p_nom_cliente     => :P370_NOM_CLIENTE,',
'                                p_nro_comprobante => :P370_NRO_COMPROBANTE,',
'                                p_correo_contacto => :P370_CORREO_CONTACTO,',
'                                p_cod_empresa     => :P_COD_EMPRESA,',
'                                p_cod_cliente     => :P370_COD_CLIENTE,',
'                                p_ser_comprobante => :P370_SER_COMPROBANTE);',
'  ',
'    :P370_IND_CORREO_PE := ''S'';',
'  END IF;',
'',
'  IF :P370_COD_ORIGEN IN (''2'', ''27'', ''30'') AND',
'     NVL(:P370_IND_ENVIADO, ''N'') <> ''S'' THEN',
'  ',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P370_DIR_CLIENTE IS NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001,''Debe cargar la direccion antes de grabar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  ',
'    DECLARE',
'      VDATOS VARCHAR2(60);',
'    BEGIN',
'    ',
'      SP_NEWOTWEB(:P370_TIP_COMPROBANTE,',
'                  :P370_SER_COMPROBANTE,',
'                  :P370_NRO_COMPROBANTE,',
'                  VDATOS);',
'    ',
'      :P370_IND_ENVIADO := ''S'';',
'      COMMIT;',
'    ',
'      IF :APP_USER NOT IN (''CARGAST1'', ''CARGAST2'', ''PATRICIAPO'') THEN',
'        CORREO_OT_CREADA_PROV(:P370_SER_COMPROBANTE,',
'                              :P370_NRO_COMPROBANTE);',
'      END IF;',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        COMMIT;',
'    END;',
'  END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110075081385167981)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112973129839099005)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  -------------------------------------------------------',
'  -- LE DAMOS VALOR A LA VARIABLE CON LOS DATOS INGRESADOS. GASPAR M. 12/04/2022',
'  :P370_COD_ARTICULO2 := :P370_COD_ARTICULO;',
'  -------------------------------------------------------',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_SERIE_PRODUCTO IS NULL AND',
'       :P370_COD_ORIGEN IN (''1'', ''3'', ''24'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Para Guardar debe cargar la serie del producto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'',
'  IF :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''27'') THEN',
'    INSERTA_SEGUIMIENTO_OT_MOTIVO(''1'',',
'                                  ''ASIGNA PROVEEDOR  '' ||',
'                                  :P370_COD_PROVEEDOR || ''  '' ||',
'                                  :P370_NOM_PROVEEDOR,',
'                                  :P370_COD_CLIENTE,',
'                                  :P370_SER_COMPROBANTE,',
'                                  :P370_NRO_COMPROBANTE,',
'                                  :P370_NOM_CLIENTE,',
'                                  NULL,',
'                                  ''ASIGNA PROVEEDOR'',',
'                                  ''201'',',
'                                  :APP_USER);',
'  END IF;',
'',
'',
'',
'',
'  IF NVL(:P370_ESTADO_PRESU, ''AP'') = ''AP'' THEN',
'    :P370_CREADO_POR    := :APP_USER;',
'    :P370_FEC_CREACION  := SYSDATE;',
'    :P370_HORA_CREACION := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''P'' THEN',
'    :P370_PRESUPUESTADO_POR := :APP_USER;',
'    :P370_FEC_PRESUPUESTADO := SYSDATE;',
'    :P370_HORA_PRESUPUESTO  := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''PE'' THEN',
'    :P370_PENDIENTE_POR  := :APP_USER;',
'    :P370_FEC_PENDIENTE  := SYSDATE;',
'    :P370_HORA_PENDIENTE := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''A'' THEN',
'    NULL;',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''R'' THEN',
'    :P370_RECHAZADO_POR  := :APP_USER;',
'    :P370_FEC_RECHAZO    := SYSDATE;',
'    :P370_HORA_RECHAZADO := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''V'' THEN',
'    NULL;',
'   /* :P370_VERIFICADO_POR    := :APP_USER;',
'    :P370_FEC_VERIFICADO    := SYSDATE;',
'    :P370_HORA_VERIFICACION := TO_CHAR(SYSDATE, ''HH24:MI:SS'');*/',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''E'' THEN',
'    :P370_ENTREGADO_POR  := :APP_USER;',
'    :P370_FEC_ENTREGADO  := SYSDATE;',
'    :P370_HORA_ENTREGADO := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''SR'' THEN',
'    :P370_COD_USUARIO_SIN_RP := :APP_USER;',
'    :P370_FEC_SIN_REPUESTO   := SYSDATE;',
'    :P370_HORA_SIN_REPUESTO  := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ',
'  END IF;',
'',
'  :P370_ESTADO_PRESU_REAL := :P370_ESTADO_PRESU;',
'',
' ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P370_GARANTIA, ''N'') <> ''S'' AND',
'       NVL(:P370_PRESUPUESTO, ''N'') <> ''S'' THEN',
'      IF :P370_COD_ORIGEN IN (''1'', ''11'', ''9'') THEN',
'      ',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Para Guardar debe Seleccionar si es garantia o presupuesto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_ESTADO_PRESU IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'     RAISE_APPLICATION_ERROR(-20001,''Debe cargar el estado de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  DECLARE',
'    VDIST VARCHAR2(5) := ''N'';',
'  BEGIN',
'    BEGIN',
'    ',
'      SELECT ''S''',
'        INTO VDIST',
'        FROM CC_CLIENTES C',
'       WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P370_COD_CLIENTE',
'         AND C.TIP_CLIENTE IN (''1'', ''27'', ''63'', ''6'', ''28'');',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VDIST := ''N'';',
'    END;',
'  ',
'    DECLARE',
'      DUMMY CHAR;',
'    BEGIN',
'      SELECT DISTINCT ''1''',
'        INTO DUMMY',
'        FROM ST_ARTICULOS A',
'       WHERE A.COD_ARTICULO = :P370_COD_ARTICULO',
'         AND A.COD_EMPRESA = :P_COD_EMPRESA',
'         AND A.COD_RUBRO <> ''PR'';',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        IF NVL(:P370_COSTO_SERVICIO, 0) > 0 AND',
'           NVL(:P370_IND_ADELANTO, ''N'') <> ''S'' AND',
'           NVL(:P370_GARANTIA, ''N'') <> ''S'' AND',
'           NVL(:P370_COD_ORIGEN, ''N'') = ''1'' AND',
'           NVL(VDIST, ''N'') <> ''S'' THEN',
'          :P370_MONTO_ADELANTO := :P370_COSTO_SERVICIO;',
'        END IF;',
'    END;',
'  ',
'  END;',
'',
'  IF :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''27'') THEN',
'    :P370_COD_SUCURSAL := ''248'';',
'  END IF;',
'',
'  :P370_ESTADO_PRESU_REAL := :P370_ESTADO_PRESU;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P370_PRESUPUESTO, ''N'') = ''S'' AND',
'       NVL(:P370_GARANTIA, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe tildar garantia o particular antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_MOTIVO_RECLAMO_JEFE IS NULL AND',
'       NVL(:P370_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P370_CERRADO, ''P'') = ''S'' AND',
'       :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''EL motivo de reclamo debe validarse por el jefe tecnico antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF (:P370_DIR_CLIENTE IS NULL OR :P370_TEL_CLIENTE IS NULL) AND',
'       :P370_COD_ORIGEN IN (''2'', ''13'', ''31'', ''27'', ''15'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar la direccion y telefono antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VTIP_CLIENTE CC_CLIENTES.TIP_CLIENTE%TYPE;',
'  BEGIN',
'    IF NVL(:P370_GARANTIA, ''N'') = ''N'' THEN',
'      BEGIN',
'        SELECT C.TIP_CLIENTE',
'          INTO VTIP_CLIENTE',
'          FROM CC_CLIENTES C',
'         WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P370_COD_CLIENTE',
'           AND NVL(C.ESTADO, ''A'') <> ''I'';',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          VTIP_CLIENTE := NULL;',
'        WHEN OTHERS THEN',
'          VTIP_CLIENTE := NULL;',
'      END;',
'    ',
'      --SI EL CLIENTE ES COLABORADOR DE LA EMPRESA',
'      --DEBE REGISTRAR CONDICION DE VENTA',
'      --LAURAVE AL 09032020',
'      IF VTIP_CLIENTE = BS_BUSCA_PARAMETRO(''VT'', ''VT_TIPO_PERS_EMP'') THEN',
'        IF :P370_COD_CONDICION_VENTA IS NULL THEN',
unistr('          RAISE_APPLICATION_ERROR(-20001,''Debe registrar la condici\00F3n de venta. El dato no puede ser nulo. '');'),
'        END IF;',
'      END IF;',
'    END IF;',
'  END;',
'',
'',
'inv.caordtra.pr_valida_motivos_guardar(p_estado_presu          => :P370_ESTADO_PRESU,',
'                                    p_fec_aprobacion           => :P370_FEC_APROBACION,',
'                                    p_presupuesto              => :P370_PRESUPUESTO,',
'                                    p_ind_garantia             => :P370_GARANTIA,',
'                                    p_anulado                  => :P370_ANULADO,',
'                                    p_cod_motivo_anu           => :P370_COD_MOTIVO_ANU,',
'                                    p_cod_origen               => :P370_COD_ORIGEN,',
'                                    p_cod_motivo_rechazo_presu => :P370_COD_MOTIVO_RECHAZO_PRESU,',
'                                    p_ind_reclamo_sta          => :P370_IND_RECLAMO_STA,',
'                                    p_cod_motivo_reclamo_sta   => :P370_COD_MOTIVO_RECLAMO_STA,',
'                                    p_tipo_reclamo             => :P370_TIPO_RECLAMO,',
'                                    p_cod_motivo_reclamo_spp   => :P370_COD_MOTIVO_RECLAMO_SPP,',
'                                    p_cerrado                  => :P370_CERRADO,',
'                                    p_cod_proveedor            => :P370_COD_PROVEEDOR,',
'                                    p_mensaje_error            => :P0_ERROR);',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110075081385167981)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112976723309099041)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  --------------------------------------------------------------------------',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_ARTICULO IS NULL AND',
'       :P370_COD_ARTICULO_CALL IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el articulo de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  -------------------------------------------------------------------------- ',
'  IF NVL(:P370_ESTADO_PRESU, ''AP'') = ''A'' AND',
'     :P370_APROBADO_POR IS NOT NULL AND',
'     :P370_FEC_APROBACION IS NOT NULL AND',
'     :P370_HORA_APROBADA IS NOT NULL AND',
'     NVL(:P370_IND_CORREO_PRESU, ''N'') <> ''S'' THEN',
'    :P370_FEC_MODIF_APROBADO := SYSDATE;',
'  ',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''P'' AND',
'        :P370_PRESUPUESTADO_POR IS NOT NULL AND',
'        :P370_FEC_PRESUPUESTADO IS NOT NULL AND',
'        :P370_HORA_PRESUPUESTO IS NOT NULL THEN',
'        :P370_FEC_MODIF_PRESUPUESTO := SYSDATE;',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''PE'' AND',
'        :P370_PENDIENTE_POR IS NOT NULL AND',
'        :P370_FEC_PENDIENTE IS NOT NULL AND',
'        :P370_HORA_PENDIENTE IS NOT NULL THEN',
'        :P370_FEC_MODIF_PENDIENTE := SYSDATE;',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''R'' AND',
'        :P370_RECHAZADO_POR IS NOT NULL AND',
'        :P370_FEC_RECHAZO IS NOT NULL AND',
'        :P370_HORA_RECHAZADO IS NOT NULL THEN',
'        :P370_FEC_MODIF_RECHAZADO := SYSDATE;',
'  ELSIF NVL(:P370_ESTADO_PRESU, ''P'') = ''V'' AND',
'        :P370_VERIFICADO_POR IS NOT NULL AND',
'        :P370_FEC_VERIFICADO IS NOT NULL AND',
'        :P370_HORA_VERIFICACION IS NOT NULL THEN',
'        :P370_FEC_MODIF_VERIFICADO := SYSDATE;',
'  END IF;',
'  -------------------------------------------------------------------------- ',
'',
'  --------------------------------------------------------------------------      ',
'  IF NVL(:P370_ESTADO_PRESU, ''N'') = ''P'' AND',
'     NVL(:P370_IND_CORREO_PRESU, ''N'') <> ''S'' THEN',
'     /*inv.caordtra.pr_informa_presupuesto(p_nom_cliente      => :P370_NOM_CLIENTE,',
'                                         p_desc_articulo    => :P370_DESCRIPCION_ARTICULO,',
'                                         p_ser_comprobante  => :P370_SER_COMPROBANTE,',
'                                         p_nro_comprobante  => :P370_NRO_COMPROBANTE,',
'                                         p_cod_empresa      => :P_COD_EMPRESA,',
'                                         p_tip_comprobante  => :P370_TIP_COMPROBANTE,',
'                                         p_ind_garantia     => :P370_GARANTIA,',
'                                         p_ind_delivery     => :P370_IND_DELIVERY,',
'                                         p_total_ot_call    => :P370_TOTAL_OT,',
'                                         p_cod_cliente      => :P370_COD_CLIENTE,',
'                                         p_celular_contacto => :P370_CELULAR_CONTACTO,',
'                                         p_correo_contacto  => :P370_CORREO_CONTACTO);*/',
'    :P370_IND_CORREO_PRESU := ''S'';',
'  END IF;',
'  -------------------------------------------------------------------------- ',
'',
'  -------------------------------------------------------------------------- ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P370_GARANTIA, ''N'') <> ''S'' AND',
'       NVL(:P370_PRESUPUESTO, ''N'') <> ''S'' THEN',
'      IF :P370_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''32'') THEN',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Para Guardar debe Seleccionar si es garantia o presupuesto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  -------------------------------------------------------------------------- ',
'',
'  -------------------------------------------------------------------------- ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P370_CERRADO, ''N'') = ''S'' AND',
'       NVL(:P370_TIPO_CIERRE, ''N'') = ''CPR'' AND',
'       NVL(:P370_TOT_REPUESTOS, 0) > 0 THEN',
'      IF :P370_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'') THEN',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Para Cerrar debe realizar la devolucion de los repuestos!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  -------------------------------------------------------------------------- ',
'  --------------------------------------------------------------------------      ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_ESTADO_PRESU IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el estado de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  :P370_ESTADO_PRESU_REAL := :P370_ESTADO_PRESU;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P370_PRESUPUESTO, ''N'') = ''S'' AND',
'       NVL(:P370_GARANTIA, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe tildar garantia o particular antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------    ',
'',
'  --------------------------------------------------------------------------    ',
'  IF NVL(:P370_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P370_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF NVL(:P370_PRESUPUESTO, ''N'') = ''S'' AND',
'         NVL(:P370_TOT_REPUESTOS_CALL, 0) = 0 AND',
'         NVL(:P370_CERRADO, ''N'') = ''S'' AND',
'         NVL(:P370_TIPO_CIERRE, ''N'') NOT IN (''CPR'', ''CSS'', ''CSR'') AND',
'         NVL(:P370_IND_RECLAMO, ''N'') <> ''S'' AND',
'         :P370_COD_ORIGEN NOT IN (''20'') THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''1) Debe Cargar un presupuesto antes de guardar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------  ',
'  IF NVL(:P370_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P370_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF NVL(:P370_PRESUPUESTO, ''N'') = ''S'' AND',
'         :P370_FEC_RECHAZO IS NULL AND',
'         :P370_FEC_APROBACION IS NULL AND',
'         NVL(:P370_TOT_REPUESTOS_CALL, 0) > 0 AND',
'         NVL(:P370_TIPO_CIERRE, ''N'') NOT IN (''CPR'', ''CSS'', ''CSR'') AND',
'         NVL(:P370_IND_RECLAMO, ''N'') <> ''S'' AND',
'         :P370_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'', ''32'', ''36'') AND',
'         NVL(:P370_CERRADO, ''N'') = ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe aprobar o rechazar un presupuesto antes de guardar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  IF NVL(:P370_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P370_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P370_FEC_RECHAZO IS NOT NULL AND',
'         NVL(:P370_TIPO_CIERRE, ''N'') NOT IN (''CPR'') AND',
'         :P370_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'', ''32'') AND',
'         NVL(:P370_CERRADO, ''N'') = ''S'' AND',
'         NVL(:P370_GARANTIA, ''N'') <> ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''El cierre debe ser presupuesto rechazado!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------    ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_IND_RECLAMO = ''S'' AND',
'       :P370_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'', ''32'') AND',
'       (:P370_COD_PROBLEMA IS NULL OR',
'       :P370_ESTADO_RECLAMO IS NULL) AND',
'       :P370_TIPO_RECLAMO = ''RMO'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe Cargar datos del reclamo!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------    ',
'  --------------------------------------------------------------------------',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_MOTIVO_RECLAMO_JEFE IS NULL AND',
'       NVL(:P370_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P370_CERRADO, ''P'') = ''S'' AND',
'       :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') AND',
'       :P370_ESTADO_RECLAMO = ''FINALIZADO'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''EL motivo de reclamo debe validarse por el jefe tecnico antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------        ',
'',
'  --------------------------------------------------------------------------        ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_MOTIVO_RECLAMO_SPP IS NULL AND',
'       NVL(:P370_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P370_CERRADO, ''P'') = ''S'' AND',
'       :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') AND',
'       :P370_ESTADO_RECLAMO = ''FINALIZADO'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''EL motivo de reclamo debe validarse antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------    ',
'  IF NVL(:P370_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P370_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P370_COD_MOTIVO_RECHAZO_PRESU IS NULL AND',
'         :P370_FEC_RECHAZO IS NOT NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe Cargar el motivo de rechazo!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  IF NVL(:P370_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P370_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF NVL(:P370_GARANTIA, ''N'') <> ''S'' THEN',
'        IF ((NVL(:P370_TOT_MOBRA, 0) +',
'           NVL(:P370_TOT_REPUESTOS, 0) -',
'           NVL(:P370_TOT_REPUESTOS_CALL, 0) > 10000 OR',
'           NVL(:P370_TOT_MOBRA, 0) +',
'           NVL(:P370_TOT_REPUESTOS, 0) -',
'           NVL(:P370_TOT_REPUESTOS_CALL, 0) < -10000) AND',
'           NVL(:P370_TOT_REPUESTOS_CALL, 0) > 0) AND',
'           NVL(:P370_TIPO_CIERRE, ''CR'') IN (''CR'') AND',
'           NVL(:P370_CERRADO, ''N'') = ''S'' AND',
'           NVL(:P370_TOT_REPUESTOS_CALL, 0) > 0 AND',
'           NVL(:P370_IND_RECLAMO, ''N'') <> ''S'' AND',
'           NVL(:P370_IND_RECLAMO, ''N'') <> ''S'' AND',
'           :P370_FEC_RECHAZO IS NULL THEN',
'          RAISE VERROR;',
'        END IF;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''La ot no puede ser finalizada, existe diferencia entre el presupuesto y el cierre...'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------  ',
'  DECLARE',
'    VTIP_CLIENTE CC_CLIENTES.TIP_CLIENTE%TYPE;',
'  BEGIN',
'    IF NVL(:P370_GARANTIA, ''N'') = ''N'' THEN',
'      BEGIN',
'        SELECT C.TIP_CLIENTE',
'          INTO VTIP_CLIENTE',
'          FROM CC_CLIENTES C',
'         WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P370_COD_CLIENTE',
'           AND NVL(C.ESTADO, ''A'') <> ''I'';',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          VTIP_CLIENTE := NULL;',
'        WHEN OTHERS THEN',
'          VTIP_CLIENTE := NULL;',
'      END;',
'    ',
'      --SI EL CLIENTE ES COLABORADOR DE LA EMPRESA',
'      --DEBE REGISTRAR CONDICION DE VENTA',
'      --LAURAVE AL 09032020',
'      IF VTIP_CLIENTE = BS_BUSCA_PARAMETRO(''VT'', ''VT_TIPO_PERS_EMP'') THEN',
'        IF :P370_COD_CONDICION_VENTA IS NULL THEN',
unistr('          RAISE_APPLICATION_ERROR(-20001, ''Debe registrar la condici\00F3n de venta. El dato no puede ser nulo. '');'),
'        END IF;',
'      END IF;',
'    END IF;',
'  END;',
'  --------------------------------------------------------------------------  ',
'',
'  --------------------------------------------------------------------------  ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF F_VERIFICA_CONTROL_CALIDAD_OT(P_TIP_COMPROBANTE => :P370_TIP_COMPROBANTE,',
'                                     P_SER_COMPROBANTE => :P370_SER_COMPROBANTE,',
'                                     P_NRO_COMPROBANTE => :P370_NRO_COMPROBANTE) <> ''S'' AND',
'       :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') AND',
'       :P370_IND_RETIRADO = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Se debe cargar los valores del control de calidad para entregar la ot!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'  --------------------------------------------------------------------------      ',
'  DECLARE',
'    VERROR EXCEPTION;',
'    VTIPO VARCHAR2(60) := ''N'';',
'  BEGIN',
'    BEGIN',
'      SELECT ''S''',
'        INTO VTIPO',
'        FROM CA_ENTSAL_CAB     C,',
'             CA_ENTSAL_DET     D,',
'             ST_ARTICULOS      A,',
'             ST_MOTIVO_ENT_SAL MO',
'       WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.TIP_COMPROBANTE_REF = :P370_TIP_COMPROBANTE',
'         AND C.SER_COMPROBANTE_REF = :P370_SER_COMPROBANTE',
'         AND C.NRO_COMPROBANTE_REF = :P370_NRO_COMPROBANTE',
'         AND C.COD_EMPRESA = D.COD_EMPRESA',
'         AND NVL(C.TIP_ENT_SAL, ''DFL'') = D.TIP_ENT_SAL',
'         AND NVL(C.SER_ENT_SAL, ''D'') = D.SER_ENT_SAL',
'         AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'         AND A.COD_EMPRESA = D.COD_EMPRESA',
'         AND A.COD_ARTICULO = D.COD_ARTICULO',
'         AND NVL(D.ANULADO, ''N'') <> ''S''',
'         AND C.COD_MOTIVO_ENT_SAL = MO.COD_MOTIVO_ENT_SAL(+)',
'         AND D.COD_ARTICULO = ''109''',
'         AND ROWNUM = 1;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VTIPO := ''N'';',
'    END;',
'  ',
'    IF NVL(VTIPO, ''N'') = ''S'' AND :P370_COD_ORIGEN IN (''1'', ''3'') AND',
'       :P370_COD_MOTIVO_COMPRA_NUEVA IS NULL AND',
'       :P370_CERRADO = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Se debe cargar el motivo de la compra nueva del producto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------   ',
'  --------------------------------------------------------------------------   ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P370_COD_MOTIVO_RECLAMO_SPP IS NULL AND',
'       NVL(:P370_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P370_CERRADO, ''P'') = ''S'' AND',
'       :P370_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'', ''40'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''EL motivo de reclamo debe cargarse  antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------   ',
'  inv.caordtra.pr_valida_motivos_guardar(p_estado_presu            =>  :P370_ESTADO_PRESU,',
'                                        p_fec_aprobacion           =>  :P370_FEC_APROBACION,',
'                                        p_presupuesto              =>  :P370_PRESUPUESTO,',
'                                        p_ind_garantia             => :P370_GARANTIA,',
'                                        p_anulado                  =>  :P370_ANULADO,',
'                                        p_cod_motivo_anu           => :P370_COD_MOTIVO_ANU,',
'                                        p_cod_origen               => :P370_COD_ORIGEN,',
'                                        p_cod_motivo_rechazo_presu => :P370_COD_MOTIVO_RECHAZO_PRESU,',
'                                        p_ind_reclamo_sta          => :P370_IND_RECLAMO_STA,',
'                                        p_cod_motivo_reclamo_sta   => :P370_COD_MOTIVO_RECLAMO_STA,',
'                                        p_tipo_reclamo             => :P370_TIPO_RECLAMO,',
'                                        p_cod_motivo_reclamo_spp   => :P370_COD_MOTIVO_RECLAMO_SPP,',
'                                        p_cerrado                  => :P370_CERRADO,',
'                                        p_cod_proveedor            => :P370_COD_PROVEEDOR,',
'                                        p_mensaje_error            => :P0_ERROR);',
'  --------------------------------------------------------------------------    ',
'',
'  --------------------------------------------------------------------------',
'  IF :P370_CERRADO = ''S'' OR :P370_TIENE_REPUESTOS = ''S'' THEN',
'    IF :P370_COD_ARTICULO <> :P370_COD_ARTICULO2 THEN',
'      inv.caordtra.pr_valida_codigo_art(p_cod_origen    => :P370_COD_ORIGEN,',
'                                         p_cod_articulo  => :P370_COD_ARTICULO,',
'                                         p_cod_articulo2 =>  :P370_COD_ARTICULO2,',
'                                         p_cod_empresa   => :P_COD_EMPRESA,',
'                                         p_mensaje_error => :P0_ERROR);',
'    END IF;',
'  END IF;',
'  --------------------------------------------------------------------------',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P370_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110097252545168000)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda_ot'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_nro_ot NUMBER;',
'p_cod_cliente  varchar2(50);',
'p_retorno   varchar2(3500);',
'vmensaje    varchar2(3500);',
'error exception;',
'vcantps number;',
'BEGIN  ',
'select count(*) ',
'into vcantps',
'from apex_collections',
'where collection_name = ''VT_ORDENES_PROBLEMA'';',
'if vcantps>0 then',
'    if :P370_TIPO in (''CSS'',''CSR'') then ',
'        :P370_IND_SNC :=  ''S'';',
'    ELSE ',
'        :P370_IND_SNC :=  ''N'';',
'    END IF;',
'',
'    if :P370_NRO_COMPROBANTE is null then',
'    ---- Crea OT',
'           inv.caordtra.pr_crea_ot_apex(pci_cliente => nvl(:P370_NCI,:P370_RUC),',
'                                        p_nombre => :P370_NOM_CLIENTE,',
'                                        p_direccion => :P370_DIR_CLIENTE,',
'                                        p_telefono => :P370_TEL_CLIENTE,',
'                                        p_articulo => :P370_COD_ARTICULO_OT,',
'                                        p_garantia_ot => :P370_NRO_GARANTIA,',
'                                        p_serie =>  :P370_SERIE_PRODUCTO,',
'                                        p_fecha_ot  => to_char(sysdate,''dd/mm/yyyy''),',
'                                        p_fecha_dist => :P370_FECHA_FACTURA,-- p_fecha_dist => :p_fecha_dist,',
'                                        p_nro_comprobante_dist => :P370_NRO_FACTURA  ,--p_nro_comprobante_dist => :p_nro_comprobante_dist,',
'                                        p_cod_distribuidor => :P370_COD_DISTRIBUIDOR ,--p_cod_distribuidor => :p_cod_distribuidor,',
'                                        p_cod_proveedor => :P370_COD_PROVEEDOR ,--p_cod_proveedor => :p_cod_proveedor,',
'                                        p_articulo_mo =>  NULL,---p_articulo_mo => :p_articulo_mo,',
'                                        p_tecnico => NULL,---p_tecnico => :p_tecnico,',
'                                        p_cod_problema =>  NULL,-- p_cod_problema => :p_cod_problema,',
'                                        p_cod_solucion =>  NULL, --p_cod_solucion => :p_cod_solucion,',
'                                        p_condicion => :P370_COMENTARIO ,--p_condicion => :p_condicion,',
'                                        p_nro_ot_proveedor =>  :P370_NRO_BOLETA_AM, --p_nro_ot_proveedor => :p_nro_ot_proveedor,',
'                                        p_nro_ot => p_nro_ot ,',
'                                        p_cod_cliente => :P370_COD_CLIENTE,',
'                                        p_retorno => p_retorno,',
'                                        p_repcant => NULL, --p_repcant => :p_repcant,',
'                                        p_estado => ''I'',--p_estado => :p_estado,',
'                                        p_serie_ot => :P370_SER_COMPROBANTE,-- p_serie_ot => :p_serie_ot,',
'                                        p_ot_ngo => :P370_NRO_COMPROBANTE, --p_ot_ngo => :p_ot_ngo,',
'                                        p_km_flete => NULL,--p_km_flete => :p_km_flete,',
'                                        p_tipo_gas => NULL,--p_tipo_gas => :p_tipo_gas,',
'                                        p_diagnostico => :P370_OBSERV,--p_cantidad_gas => :p_cantidad_gas,',
'                                        p_informe =>  :P370_CONCLUSION,--p_informe => :p_informe,',
'                                        p_departamento => :P370_DEPARTAMENTO,--p_departamento => :p_departamento,',
'                                        p_ciudad => :P370_CIUDAD,--p_ciudad => :p_ciudad,',
'                                        p_email =>  :P370_EMAIL,--p_email => :p_email,',
'                                        p_celular => :P370_TEL_CLIENTE,--p_celular => :p_celular,',
'                                        p_fecha_reparacion => NULL,-- p_fecha_reparacion => :p_fecha_reparacion,',
'                                        p_reparado_por => NULL,--p_reparado_por => :p_reparado_por,',
'                                        p_fecha_retiro => NULL,--p_fecha_retiro => :p_fecha_retiro',
'                                        p_origen => :P370_COD_ORIGEN,',
'                                        p_usuario => v(''app_user''),',
'                                        p_garantia => :P370_IND_GARANTIA,',
'                                        p_ind_zona  =>  :P370_IND_ZONA,',
'                                        p_presupuesto   => :P370_PRESUPUESTO,',
'                                        p_ind_delivery  => :P370_IND_DELIVERY,',
'                                        p_ind_retirado  =>  :P370_IND_RETIRADO,',
'                                        p_fecha_co_distribuidor =>  :P370_FECHA_CO_DISTRIBUIDOR,',
'                                        p_nro_comprobante_distr  =>  :P370_NRO_COMPROBANTE_DISTR,',
'                                        p_contador_fact_art_dist    => :P370_CONTADOR_FACT_ART_DIST,',
'                                        p_tipo_cierre           =>  :P370_TIPO_CIERRE,',
'                                        p_fec_estado  => :P370_FEC_ESTADO,',
'                                         p_verificado_por  =>  :P370_VERIFICADO_POR,',
'                                         p_fec_verificado =>  :P370_FEC_VERIFICADO,',
'                                         p_hora_verificacion  => :P370_HORA_VERIFICACION,',
'                                         p_ind_correo_presu   => :P370_IND_CORREO_PRESU,',
'                                         p_retirado_por        => :P370_RETIRADO_POR,',
'                                         p_fecha_retirado      => :P370_FECHA_RETIRADO,',
'                                         p_hora_retirado       =>  :P370_HORA_RETIRADO,',
'                                         p_fec_retirado        => :P370_FEC_RETIRADO,',
'                                         p_ind_entrega         =>  :P370_IND_ENTREGA,',
'                                         p_mensaje_proceso     => :P0_MENSAJE,',
'                                         p_cont_ot             => :P370_CONT_OT,',
'                                         p_creado_por          => :P370_CREADO_POR,',
'                                         p_fec_creacion        => :P370_FEC_CREACION,',
'                                         p_hora_creacion        => :P370_HORA_CREACION,',
'                                         p_presupuestado_por    => :P370_PRESUPUESTADO_POR,',
'                                         p_fec_presupuestado     =>  :P370_FEC_PRESUPUESTADO,',
'                                         p_hora_presupuesto       =>  :P370_HORA_PRESUPUESTO,',
'                                          p_pendiente_por         => :P370_PENDIENTE_POR,',
'                                          p_fec_pendiente         =>  :P370_FEC_PENDIENTE,',
'                                          p_hora_pendiente        => :P370_HORA_PENDIENTE,',
'                                          p_rechazado_por         =>  :P370_RECHAZADO_POR,',
'                                          p_fec_rechazo           =>  :P370_FEC_RECHAZO,',
'                                          p_hora_rechazado         => :P370_HORA_RECHAZADO,',
'                                          p_entregado_por          => :P370_ENTREGADO_POR,',
'                                          p_fec_entregado         => :P370_FEC_ENTREGADO,',
'                                          p_hora_entregado         =>  :P370_HORA_ENTREGADO,',
'                                          p_cod_usuario_sin_rp      => :P370_COD_USUARIO_SIN_RP,',
'                                          p_fec_sin_repuesto        => :P370_FEC_SIN_REPUESTO,',
'                                          p_hora_sin_repuesto        => :P370_HORA_SIN_REPUESTO,',
'                                          p_cod_sucursal             => :P370_COD_SUCURSAL,',
'                                          p_cod_motivo_reclamo_jefe  =>  :P370_COD_MOTIVO_RECLAMO_JEFE,',
'                                          p_cod_condicion_venta      => :P370_COD_CONDICION_VENTA,',
'                                          p_fec_aprobacion           => :P370_FEC_APROBACION,',
'                                          p_anulado                  =>  :P370_ANULADO,',
'                                          p_cod_motivo_anu           => :P370_COD_MOTIVO_ANU,',
'                                          p_cod_motivo_rechazo_presu =>  :P370_COD_MOTIVO_RECHAZO_PRESU,',
'                                          p_ind_reclamo_sta          => :P370_IND_RECLAMO_STA,',
'                                          p_cod_motivo_reclamo_sta   =>  :P370_COD_MOTIVO_RECLAMO_STA,',
'                                          p_tipo_reclamo             =>  :P370_TIPO_RECLAMO,',
'                                          p_cod_motivo_reclamo_spp   => :P370_COD_MOTIVO_RECLAMO_SPP,',
'                                          p_cod_articulo_call        => :P370_COD_ARTICULO_CALL,',
'                                          p_aprobado_por             => :P370_APROBADO_POR,',
'                                          p_hora_aprobada            =>  :P370_HORA_APROBADA,',
'                                          p_fec_modif_aprobado       => :P370_FEC_MODIF_APROBADO,',
'                                          p_fec_modif_presupuesto    => :P370_FEC_MODIF_PRESUPUESTO,',
'                                          p_fec_modif_pendiente      => :P370_FEC_MODIF_PENDIENTE,',
'                                          p_fec_modif_rechazado      => :P370_FEC_MODIF_RECHAZADO,',
'                                          p_fec_modif_verificado     => :P370_FEC_MODIF_VERIFICADO,',
'                                          p_ind_liquida              => :P370_IND_LIQUIDA,',
'                                          p_ind_abandonado           => :P370_IND_ABANDONADO,',
'                                          p_tot_repuestos_call       => :P370_TOT_REPUESTOS_CALL,',
'                                          p_cod_motivo_compra_nueva  => :P370_COD_MOTIVO_COMPRA_NUEVA,',
'                                          p_celular_contacto         =>  :P370_CELULAR_CONTACTO,',
'                                          p_correo_contacto          => :P370_CORREO_CONTACTO,',
'                                          p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'                                          p_fecha_estado_complicado  => :P370_FECHA_ESTADO_COMPLICADO,',
'                                          p_ind_adicional            => :P370_IND_ADICIONAL,',
'                                          p_sitio                    => :P370_SITIO,',
'                                          p_ind_correo_pe            => :P370_IND_CORREO_PE,',
'                                          p_ind_enviado              => :P370_IND_ENVIADO,',
'                                          P_FEC_IM                   => :P370_FEC_IM,',
'                                            P_REPARADO_IM_POR         => :P370_REPARADO_IM_POR,',
'                                            P_HORA_IM                 => :P370_HORA_IM,',
'                                            p_finalizado_por          => :P370_FINALIZADO_POR,',
'                                            p_fec_modif_cerrado      => :P370_FEC_MODIF_CERRADO,',
'                                            p_hora_finalizado        => :P370_HORA_FINALIZADO,',
'                                            p_ncr                   => :P370_NCR,',
'                                            p_cambio                => :P370_CAMBIO,',
'                                            p_ind_carneo            => :P370_IND_CARNEO,',
'                                            p_estado_presu          =>  :P370_ESTADO_PRESU,',
'                                            p_FEC_FINALIZADO        => :P370_FEC_FINALIZADO,',
'                                             p_USUARIO_PED_REP      =>  :P370_USUARIO_PED_REP,',
'                                             p_FECHA_PED_REP        =>  :P370_FECHA_PED_REP,',
'                                             p_HORA_PED_REP          => :P370_HORA_PED_REP,',
'                                             p_COD_USUARIO_ESTADO_COMPLI   => :P370_COD_USUARIO_ESTADO_COMPLI,',
'                                             p_COD_USUARIO_RENDICION           =>  :P370_COD_USUARIO_RENDICION,',
'                                             p_FEC_RENDIDO                     =>  :P370_FEC_RENDIDO,',
'                                             p_IND_RENDIDO                     => :P370_IND_RENDIDO,',
'                                             p_FECHA_LIQUIDA                   =>  :P370_FECHA_LIQUIDA,',
'                                             p_USUARIO_LIQUIDA                 =>  :P370_USUARIO_LIQUIDA,',
'                                             p_COD_USUARIO_MOD_GAR             => :P370_COD_USUARIO_MOD_GAR,',
'                                             p_FECHA_ABANDONADO                =>  :P370_FECHA_ABANDONADO,',
'                                             p_COD_USUARIO_ABANDONADO          => :P370_COD_USUARIO_ABANDONADO,',
'                                             p_cod_sta                         => :P370_COD_STA,',
'                                             P_COD_SUCURSAL_DIST                => :P370_COD_SUCURSAL_DIST,',
'                                            P_IND_SNC                           => :P370_IND_SNC);  ',
'                    :P370_NRO_COMPROBANTE := p_nro_ot;',
'                   ',
'                   ',
'                    if nvl(p_retorno,''nn'')<>''OK'' then',
'                        raise error; ',
'                    end if;',
'',
'',
'    else',
'    ---- Actualiza OT  ',
'                inv.caordtra.pr_crea_ot_apex(nvl(:P370_NCI,:P370_RUC),',
'                :P370_NOM_CLIENTE,',
'                :P370_DIR_CLIENTE,',
'                :P370_TEL_CLIENTE,',
'                :P370_COD_ARTICULO_OT,',
'                :P370_NRO_GARANTIA,',
'                :P370_SERIE_PRODUCTO,',
'                to_char(sysdate,''dd/mm/yyyy''),',
'                :P370_FECHA_FACTURA,-- p_fecha_dist => :p_fecha_dist,',
'                 :P370_NRO_FACTURA  ,--p_nro_comprobante_dist => :p_nro_comprobante_dist,',
'                :P370_COD_DISTRIBUIDOR ,--p_cod_distribuidor => :p_cod_distribuidor,',
'                :P370_COD_PROVEEDOR ,--p_cod_proveedor => :p_cod_proveedor,',
'                NULL,---p_articulo_mo => :p_articulo_mo,',
'                NULL,---p_tecnico => :p_tecnico,',
'                NULL,-- p_cod_problema => :p_cod_problema,',
'                NULL, --p_cod_solucion => :p_cod_solucion,',
'                :P370_COMENTARIO ,--p_condicion => :p_condicion,',
'                :P370_NRO_BOLETA_AM, --p_nro_ot_proveedor => :p_nro_ot_proveedor,',
'                p_nro_ot ,',
'                p_cod_cliente  ,',
'                p_retorno,',
'                NULL, --p_repcant => :p_repcant,',
'                ''U'',--p_estado => :p_estado,',
'                :P370_SER_COMPROBANTE,-- p_serie_ot => :p_serie_ot,',
'                :P370_NRO_COMPROBANTE, --p_ot_ngo => :p_ot_ngo,',
'                NULL,--p_km_flete => :p_km_flete,',
'                NULL,--p_tipo_gas => :p_tipo_gas,',
'                :P370_OBSERV,--p_cantidad_gas => :p_cantidad_gas,',
'                :P370_CONCLUSION,--p_informe => :p_informe,',
'                :P370_DEPARTAMENTO,--p_departamento => :p_departamento,',
'                :P370_CIUDAD,--p_ciudad => :p_ciudad,',
'                :P370_EMAIL,--p_email => :p_email,',
'                :P370_TEL_CLIENTE,--p_celular => :p_celular,',
'                NULL,-- p_fecha_reparacion => :p_fecha_reparacion,',
'                NULL,--p_reparado_por => :p_reparado_por,',
'                NULL--p_fecha_retiro => :p_fecha_retiro',
'                ,:P370_COD_ORIGEN',
'                ,v(''app_user'')',
'                ,:P370_IND_GARANTIA,',
'                p_ind_zona  =>  :P370_IND_ZONA,',
'                p_presupuesto   => :P370_PRESUPUESTO,',
'                p_ind_delivery  => :P370_IND_DELIVERY,',
'                p_ind_retirado  =>  :P370_IND_RETIRADO,',
'                p_fecha_co_distribuidor =>  :P370_FECHA_CO_DISTRIBUIDOR,',
'                p_nro_comprobante_distr  =>  :P370_NRO_COMPROBANTE_DISTR,',
'                p_contador_fact_art_dist    => :P370_CONTADOR_FACT_ART_DIST,',
'                p_tipo_cierre           =>  :P370_TIPO_CIERRE,',
'                p_fec_estado  => :P370_FEC_ESTADO,',
'                 p_verificado_por  =>  :P370_VERIFICADO_POR,',
'                 p_fec_verificado =>  :P370_FEC_VERIFICADO,',
'                 p_hora_verificacion  => :P370_HORA_VERIFICACION,',
'                 p_ind_correo_presu   => :P370_IND_CORREO_PRESU,',
'                 p_retirado_por        => :P370_RETIRADO_POR,',
'                 p_fecha_retirado      => :P370_FECHA_RETIRADO,',
'                 p_hora_retirado       =>  :P370_HORA_RETIRADO,',
'                 p_fec_retirado        => :P370_FEC_RETIRADO,',
'                 p_ind_entrega         =>  :P370_IND_ENTREGA,',
'                 p_mensaje_proceso     => :P0_MENSAJE,',
'                 p_cont_ot             => :P370_CONT_OT,',
'                 p_creado_por          => :P370_CREADO_POR,',
'                 p_fec_creacion        => :P370_FEC_CREACION,',
'                 p_hora_creacion        => :P370_HORA_CREACION,',
'                 p_presupuestado_por    => :P370_PRESUPUESTADO_POR,',
'                 p_fec_presupuestado     =>  :P370_FEC_PRESUPUESTADO,',
'                 p_hora_presupuesto       =>  :P370_HORA_PRESUPUESTO,',
'                  p_pendiente_por         => :P370_PENDIENTE_POR,',
'                  p_fec_pendiente         =>  :P370_FEC_PENDIENTE,',
'                  p_hora_pendiente        => :P370_HORA_PENDIENTE,',
'                  p_rechazado_por         =>  :P370_RECHAZADO_POR,',
'                  p_fec_rechazo           =>  :P370_FEC_RECHAZO,',
'                  p_hora_rechazado         => :P370_HORA_RECHAZADO,',
'                  p_entregado_por          => :P370_ENTREGADO_POR,',
'                  p_fec_entregado         => :P370_FEC_ENTREGADO,',
'                  p_hora_entregado         =>  :P370_HORA_ENTREGADO,',
'                  p_cod_usuario_sin_rp      => :P370_COD_USUARIO_SIN_RP,',
'                  p_fec_sin_repuesto        => :P370_FEC_SIN_REPUESTO,',
'                  p_hora_sin_repuesto        => :P370_HORA_SIN_REPUESTO,',
'                  p_cod_sucursal             => :P370_COD_SUCURSAL,',
'                  p_cod_motivo_reclamo_jefe  =>  :P370_COD_MOTIVO_RECLAMO_JEFE,',
'                  p_cod_condicion_venta      => :P370_COD_CONDICION_VENTA,',
'                  p_fec_aprobacion           => :P370_FEC_APROBACION,',
'                  p_anulado                  =>  :P370_ANULADO,',
'                  p_cod_motivo_anu           => :P370_COD_MOTIVO_ANU,',
'                  p_cod_motivo_rechazo_presu =>  :P370_COD_MOTIVO_RECHAZO_PRESU,',
'                  p_ind_reclamo_sta          => :P370_IND_RECLAMO_STA,',
'                  p_cod_motivo_reclamo_sta   =>  :P370_COD_MOTIVO_RECLAMO_STA,',
'                  p_tipo_reclamo             =>  :P370_TIPO_RECLAMO,',
'                  p_cod_motivo_reclamo_spp   => :P370_COD_MOTIVO_RECLAMO_SPP,',
'                  p_cod_articulo_call        => :P370_COD_ARTICULO_CALL,',
'                  p_aprobado_por             => :P370_APROBADO_POR,',
'                  p_hora_aprobada            =>  :P370_HORA_APROBADA,',
'                  p_fec_modif_aprobado       => :P370_FEC_MODIF_APROBADO,',
'                  p_fec_modif_presupuesto    => :P370_FEC_MODIF_PRESUPUESTO,',
'                  p_fec_modif_pendiente      => :P370_FEC_MODIF_PENDIENTE,',
'                  p_fec_modif_rechazado      => :P370_FEC_MODIF_RECHAZADO,',
'                  p_fec_modif_verificado     => :P370_FEC_MODIF_VERIFICADO,',
'                  p_ind_liquida              => :P370_IND_LIQUIDA,',
'                  p_ind_abandonado           => :P370_IND_ABANDONADO,',
'                  p_tot_repuestos_call       => :P370_TOT_REPUESTOS_CALL,',
'                  p_cod_motivo_compra_nueva  => :P370_COD_MOTIVO_COMPRA_NUEVA,',
'                  p_celular_contacto         =>  :P370_CELULAR_CONTACTO,',
'                  p_correo_contacto          => :P370_CORREO_CONTACTO,',
'                  p_fecha_modificado_garantia => :P370_FECHA_MODIFICADO_GARANTIA,',
'                  p_fecha_estado_complicado  => :P370_FECHA_ESTADO_COMPLICADO,',
'                  p_ind_adicional            => :P370_IND_ADICIONAL,',
'                  p_sitio                    => :P370_SITIO,',
'                  p_ind_correo_pe            => :P370_IND_CORREO_PE,',
'                  p_ind_enviado              => :P370_IND_ENVIADO,',
'                  P_FEC_IM                   => :P370_FEC_IM,',
'                    P_REPARADO_IM_POR         => :P370_REPARADO_IM_POR,',
'                    P_HORA_IM                 => :P370_HORA_IM,',
'                    p_finalizado_por          => :P370_FINALIZADO_POR,',
'                    p_fec_modif_cerrado      => :P370_FEC_MODIF_CERRADO,',
'                    p_hora_finalizado        => :P370_HORA_FINALIZADO,',
'                    p_ncr                   => :P370_NCR,',
'                    p_cambio                => :P370_CAMBIO,',
'                    p_ind_carneo            => :P370_IND_CARNEO,',
'                    p_estado_presu          =>  :P370_ESTADO_PRESU,',
'                    p_FEC_FINALIZADO        => :P370_FEC_FINALIZADO,',
'                 p_USUARIO_PED_REP      =>  :P370_USUARIO_PED_REP,',
'                 p_FECHA_PED_REP        =>  :P370_FECHA_PED_REP,',
'                 p_HORA_PED_REP          => :P370_HORA_PED_REP,',
'                 p_COD_USUARIO_ESTADO_COMPLI   => :P370_COD_USUARIO_ESTADO_COMPLI,',
'                 p_COD_USUARIO_RENDICION           =>  :P370_COD_USUARIO_RENDICION,',
'                 p_FEC_RENDIDO                     =>  :P370_FEC_RENDIDO,',
'                 p_IND_RENDIDO                     => :P370_IND_RENDIDO,',
'                 p_FECHA_LIQUIDA                   =>  :P370_FECHA_LIQUIDA,',
'                 p_USUARIO_LIQUIDA                 =>  :P370_USUARIO_LIQUIDA,',
'                 p_COD_USUARIO_MOD_GAR             => :P370_COD_USUARIO_MOD_GAR,',
'                 p_FECHA_ABANDONADO                =>  :P370_FECHA_ABANDONADO,',
'                 p_COD_USUARIO_ABANDONADO          => :P370_COD_USUARIO_ABANDONADO,',
'                 p_cod_sta                         => :P370_COD_STA,',
'                 P_COD_SUCURSAL_DIST               => :P370_COD_SUCURSAL_DIST,',
'                 P_IND_SNC                           => :P370_IND_SNC);',
' ',
'                    if nvl(p_retorno,''OK'')<>''OK'' then',
'                        raise error; ',
'                    end if;',
'    ',
'    end if;',
'',
'   --------------------------- Inserta Problemas Solucion ',
'    declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_PROB_CLI,',
'                    c003 COD_PROBLEMA,',
'                    c005 COD_SOLUCION',
'                from apex_collections',
'                where collection_name = ''VT_ORDENES_PROBLEMA''',
'              --  AND c008=''I''',
'                order by 1 asc;',
'    begin',
'    BEGIN ',
'        DELETE FROM inv.vt_ordenes_trabajo_prob_gen',
'        WHERE SER_COMPROBANTE  = :P370_SER_COMPROBANTE',
'        AND NRO_COMPROBANTE =  :P370_NRO_COMPROBANTE;',
'        EXCEPTION',
'        WHEN OTHERS THEN ',
'            NULL;',
'    END;',
'            for x in REG loop',
'                insert into inv.vt_ordenes_trabajo_prob_gen',
'                    (cod_empresa,',
'                    tip_comprobante,',
'                    ser_comprobante,',
'                    nro_comprobante,      ',
'                    cod_problema,',
'                    cod_solucion, ',
'                    cod_problema_cliente)',
'                    values',
'                    (''1'',''ORT'',:P370_SER_COMPROBANTE,NVL(p_nro_ot,NVL(:P370_NRO_COMPROBANTE,:P370_PARAM_NRO_OT)),  ',
'                    X.cod_problema,',
'                    X.COD_SOLUCION,',
'                    X.COD_PROB_CLI);',
'            end loop;',
'            COMMIT;',
'',
'            apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PROBLEMA'');',
'    exception',
'        when others then',
'                p_retorno:=''No se ha podido cargar el Problema/Solucion'';',
'                raise error; ',
'    end;',
'',
'',
'    ------------------------ Inserta Mano de Obra',
'    declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_ARTICULO,',
'                    c003 PRECIO_UNITARIO,',
'                    c004 MONTO_TOTAL,',
'                    c005 COD_TECNICO,',
'                    c008 PORC_CLIENTE , ',
'                    c009 TIPO_CAMBIO,',
'                    c010 COM_TEC, ',
'                    c011 COM_JEF , ',
'                    c012 MON_GAR,',
'                    c013 MON_ADICIONAL',
'                from apex_collections',
'                where collection_name = ''VT_MANO_OBRA''',
'                AND c014=''I''',
'                order by 1 asc;',
'    begin',
'            for x in REG loop',
'                insert into inv.vt_ordenes_trabajo_mo',
'                        (cod_empresa,tip_comprobante,ser_comprobante,nro_comprobante,  ',
'                        cod_articulo,',
'                        cantidad,',
'                        cod_moneda,',
'                        tip_cambio,',
'                        monto,',
'                        cod_tecnico,',
'                        ind_reclamo, ',
'                        garantia,',
'                        monto_venta,',
'                        monto_comision_tecnico,',
'                        monto_comision_jefe_tecnico,',
'                        monto_adicional, ',
'                        porcentaje_cliente,',
'                        monto_gar_jt)',
'                        values',
'                        (''1'',''ORT'',:P370_SER_COMPROBANTE,NVL(p_nro_ot,NVL(:P370_NRO_COMPROBANTE,:P370_PARAM_NRO_OT)),  ',
'                        X.COD_ARTICULO,1,1,x.TIPO_CAMBIO,x.PRECIO_UNITARIO,x.cod_tecnico,''N'',',
'                        nvl(:P370_GARANTIA,''N''),x.MONTO_TOTAL,x.COM_TEC ,x.COM_JEF, x.MON_ADICIONAL,',
'                        X.PORC_CLIENTE,x.MON_GAR);',
'            end loop;',
'            COMMIT;',
'',
'        apex_collection.create_OR_TRUNCATE_collection(''VT_MANO_OBRA'');',
'    exception',
'        when others then',
'                p_retorno:=''No se ha podido cargar la Mano de Obra'';',
'                raise error; ',
'    end;',
'',
'',
'------------------------ Inserta PRESUPUESTO',
'    declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_ARTICULO,',
'                    c003 CANTIDAD,',
'                    c004 PRECIO_UNITARIO,',
'                    c005 MONTO_TOTAL,',
'                    (SELECT COSTO_PROM FROM ST_ARTICULOS  WHERE COD_EMPRESA=''1'' AND COD_ARTICULO=c001) AS COSTO',
'                ',
'                from apex_collections',
'                where collection_name = ''VT_ORDENES_PRESUPUESTO''',
'                AND c006=''I''',
'                order by 1 asc;',
'        v_num_ent_sal NUMBER;',
'    begin',
'           BEGIN    ',
'            SELECT NVL(MAX(num_ent_sal),0)+1',
'            INTO v_num_ent_sal',
'            FROM inv.ca_entsal_cab',
'            WHERE cod_empresa=''1''',
'            AND   ser_ent_sal=''A''',
'            AND   tip_ent_sal=''AJS'';',
'',
'           EXCEPTION',
'            WHEN OTHERS THEN',
'                        V_num_ent_sal:=1;',
'           END;',
'',
'',
'            insert into inv.ca_entsal_cab',
'                        (cod_empresa,cod_sucursal,num_ent_sal,fec_ent_sal,',
'                            cod_motivo_ent_sal,cod_moneda,ser_ent_sal,tip_ent_sal,',
'                            fec_alta,tip_comprobante_ref,ser_comprobante_ref,',
'                            nro_comprobante_ref,hora_alta,cod_tecnico,cod_usuario )',
'                        values',
'                        (''1'',''01'',v_num_ent_sal,TRUNC(SYSDATE),''8'',''1'',''A'',''AJS'',',
'                         TRUNC(SYSDATE),''ORT'',:P370_SER_COMPROBANTE,:P370_NRO_COMPROBANTE, ',
'                        TO_CHAR(SYSDATE,''HH24:MI:SS''),:P370_COD_PROVEEDOR,v(''app_user'') );',
'',
'            for x in REG loop',
'                insert into inv.ca_entsal_det',
'                (cod_empresa, tip_ent_sal, ser_ent_sal, num_ent_sal, cod_articulo, ',
'                costo, cantidad, cod_sucursal, cod_unidad_medida, cantidad_ub, confirmado,',
'                cod_iva, nro_lote, fec_vencimiento,  precio_venta, costo_gs, ',
'                anulado,  cantidad_confirmada, precio_lista)',
'                values',
'                (''1'', ''AJS'', ''A'', v_num_ent_sal, X.cod_articulo, ',
'                X.costo, X.cantidad, ''01'', ''UN'', X.Cantidad , ''S'', ',
'                ''1'', ''1'', TRUNC(SYSDATE+15),   X.precio_UNITARIO, X.costo ,',
'                ''N'',  0, X.precio_UNITARIO);',
'            end loop;',
'            COMMIT;',
'',
'        apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PRESUPUESTO'');',
'    exception',
'        when others then',
'                p_retorno:=''No se ha podido cargar el Presupuesto'';',
'                raise error; ',
'    end;',
'',
'    if :P370_PARAM_ID_TKT  is not null then',
'       begin',
'            update CA_TICKET_ATENCION',
'            set nro_ort = p_nro_ot,',
'                ser_ort = :P370_SER_COMPROBANTE,',
'                FECHA_CIERRE=SYSDATE,',
'                USER_CIERRE = v(''app_user''),',
'                LATITUDE_1 = decode(LATITUDE_1,null,:P370_LATITUDE,LATITUDE_1),			',
'                LONGITUDE_1	= decode(LONGITUDE_1,null,:P370_LONGITUDE,LONGITUDE_1),',
'                FEC_UBI_1	= decode(FEC_UBI_1,null,sysdate,FEC_UBI_1),',
'                LATITUDE_2	= decode(LATITUDE_2,null,decode(LATITUDE_1,null,null,:P370_LATITUDE),LATITUDE_2),',
'                LONGITUDE_2	= decode(LONGITUDE_2,null,decode(LONGITUDE_1,null,null,:P370_LONGITUDE) ,LONGITUDE_2),',
'                FEC_UBI_2	= decode(FEC_UBI_2,null,decode(FEC_UBI_1,null,null,sysdate) ,FEC_UBI_2)',
'            where cod_empresa= ''1''',
'            and   ID_ticket = :P370_PARAM_ID_TKT ',
'            ;',
'       exception ',
'            when others then',
'                    null;',
'       end;',
'    end if;',
'',
'   ',
'else',
' apex_error.add_error',
'                (p_message               => ''Debe cargar al menos un problema'',',
'                    p_display_location      => apex_error.c_inline_in_notification',
'                );',
'end if;',
'exception     ',
'when error then',
'apex_error.add_error',
'       (p_message               => p_retorno,',
'        p_display_location      => apex_error.c_inline_in_notification',
'       );',
'----apex_application.g_print_success_message := ''<span class="notification">---Error---</span>'';',
'when others then',
'    apex_error.add_error',
'                (p_message               => ''Debe cargar al intentar guardar la OT'',',
'                    p_display_location      => apex_error.c_inline_in_notification',
'                );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110075081385167981)
,p_process_success_message=>'&P0_MENSAJE.'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110096473757168000)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear_collection_nuevo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P370_PARAM_NRO_OT:=null;',
':P370_PARAM_SER_OT:=null;',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110074659132167981)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110097652308168002)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear_collection_cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P370_PARAM_NRO_OT:=null;',
':P370_PARAM_SER_OT:=null;',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(110073849875167981)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(114142009272544442)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crea coleccion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_PROBLEMA''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_PRESUPUESTO''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_REG_SEGUIMIENTOS''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_REG_CALL'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_UBICACIONES'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_B_DETALLE'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PRODUCTOS'');',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(117499238815342239)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE FORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P370_TIP_ORDEN_TRABAJO    := inv.f_BUSCA_PARAMETRO(''CA'', ''TIPO_ORDEN_TRAB'');',
':P370_SER_ORDEN_TRABAJO    := inv.f_BUSCA_PARAMETRO(''CA'', ''SERIE_ORDEN_TRAB'');',
':P370_RUBRO_MO             := inv.f_BUSCA_PARAMETRO(''CA'', ''RUBRO_MANO_OBRA'');',
':P370_CLIENTE_CONTADO     := inv.f_BUSCA_PARAMETRO(''CA'', ''CLIENTE_CONTADO'');',
':P370_RUBRO_SERV_TECNICO   := inv.f_BUSCA_PARAMETRO(''CM'', ''RUBRO_SERV_TECNICO'');',
':P370_COD_MONEDA_BASE      := inv.f_BUSCA_PARAMETRO(''CA'', ''COD_MONEDA_BASE'');',
':P370_TIP_MOTIVO_ANULACION := inv.f_BUSCA_PARAMETRO(''CA'', ''TIP_ANULACION_OT'');',
':P370_PERMITE_ANULAR := inv.f_BUSCA_PARAMETRO(''CA'', ''PERMITE_ANULAR'');',
'',
':P370_MODIFICA_FECHA_CIERRE    := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA FECHA CIERRE'');',
'',
':P370_ESTADO_COMPLICADO        := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''ESTADO_COMPLICADO'');',
'                                                   ',
'                                                    ',
':P370_REPUESTO                 := busca_permiso(:P_COD_EMPRESA, ',
'						                                         ''CAORDTRA'', ',
'						                                         :APP_USER, ',
'						                                         ''PIDE REPUESTO'');',
'                                                  ',
':P370_AGREGA_REPUESTOS_OT_PRE  := busca_permiso(:P_COD_EMPRESA, ',
'																										 ''CAORDTRA'', ',
'																										 :APP_USER, ',
'																										 ''AGREGA_REP_PRE'');  ',
'                                                      ',
':P370_MODIFICA_CLIENTE         := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''CAMBIA_CLIENTEE'');     ',
'                                                                                               ',
unistr(':P370_ACTUALIZA_COD_ARTICULO   := busca_permiso(:P_COD_EMPRESA,   --Se agrega esto a pedido de Alma y Adriana, de forma a que solo ellas puedan editar los art\00EDculos de ots finalizadas o'),
unistr('                                                     ''CAORDTRA'',     --que tengan art\00EDculos con pedido de repuesto. Gaspar M. 06/04/2022   '),
'                                                     :APP_USER, ',
'                                                     ''ACTUALIZA_COD_ARTICULO'');                                                      ',
'                                                     ',
'--REABRE_OT_TECNICO',
'--* solo permite modificar fecha de entrega de ot anteriores al 2003',
':P370_MODIFICA_FECHA_ENTREGA   := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''VTORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA FECHA ENTREGA'' ) ;',
'                                                    ',
':P370_REIMPRIME                := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''REIMPRIME'');  ',
'',
':P370_FECHAOT                 := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA_FECHAOT'');  ',
'                                                    ',
':P370_CONSULTA_FECHAOT         := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''CONSULTA_FECHAOT'');  ',
'',
':P370_CONSULTA_FEC_CIERRE      := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''CONSULTA_FEC_CIERRE'');',
'',
':P370_CARGA_NROOT              := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CARGA_NROOT'');    ',
'                                                    ',
':P370_MODIFICA_GARANTIA        := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''MODIFICA_GARANTIA'');                                                                                                ',
'       ',
':P370_TICKET                   := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CARGA_TICKET'');                                                                                                ',
'  ',
':P370_CARGA_MO_GARANTIA        := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CARGAS_VARIAS_MO_GAR'');',
'                                                       ',
':P370_MODIFICA_PRECIO_MO       := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''MODIFICA_PRECIO_MO'');',
'                                                          ',
':P370_CIERRA_LINEA_CRITICA    := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CIERRA_LINEA_CRITICA'');',
'                                                       ',
':P370_MODIFICA_FECHA_CIERRE    := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA FECHA CIERRE'');      ',
'                                                   ',
'',
'                                                                                                                                                                                                 ',
':P370_RECLAMO_JEFE     := 	busca_permiso ( :P_COD_EMPRESA,',
'                                                  ''CAORDTRA'', ',
'                                                  :APP_USER,',
'                                                  ''RECLAMO_JEFE'' ) ;        ',
'',
'declare',
'		viva VARCHAR2(5) ;',
'begin',
'		viva := inv.f_BUSCA_PARAMETRO( ''CA'', ''COD_IVA_GRAVADA''  ) ;',
'		select porc_iva_venta',
'		  into :P370_PORC_IVA',
'		  from st_iva',
'		 where cod_iva = viva ;',
'exception',
'		when others then',
'				:P370_PORC_IVA := 0 ;',
'end ;',
'',
'',
'',
'',
'',
':P370_ARTICULO :=  :P370_COD_ARTICULO_OT;',
'',
'BEGIN ',
' SELECT cod_linea, cod_categoria',
' into :P370_LINEA_ARTICULOS, :P370_CATEGORIA_ARTICULO',
'   FROM st_articulos',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'    AND cod_articulo = :P370_COD_ARTICULO_OT;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P370_LINEA_ARTICULOS :=  null;',
'        :P370_CATEGORIA_ARTICULO := null;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
