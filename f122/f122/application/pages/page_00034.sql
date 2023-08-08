prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pedido Nuevo'
,p_alias=>'PEDIDO-NUEVO'
,p_step_title=>'Pedido Nuevo'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: yellow !important;',
'   border-color: red !important;',
'}'))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230807153605'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12525879857514420)
,p_plug_name=>'Productos a Entregar'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>70
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12526986760514431)
,p_name=>'Detalle Entrega Articulos'
,p_region_name=>'detalle_entrega_articulo'
,p_parent_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'c003 as cod_articulo,',
'(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as product_name,        ',
'        to_number(c004) as cantidad,',
'         (c005) as fecha_entrega,',
'         (select p.nombre',
'	from cc_clientes         c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P34_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal= c006) as sucursal_distribuidor,  TO_NUMBER(c012) as id_promo, null as remove',
'  from apex_collections',
' where collection_name = ''VT_PEDIDO_DETALLE_ENTREGA''',
' order by 1 asc '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P34_NRO_COMPROBANTE,P34_SER_COMPROBANTE,P34_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(12527063909514432)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Or.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12527102364514433)
,p_query_column_id=>2
,p_column_alias=>'SER_PEDIDO'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12527313361514435)
,p_query_column_id=>3
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12527208422514434)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>30
,p_column_heading=>'Codigo Corto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12527457175514436)
,p_query_column_id=>5
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>50
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12527590463514437)
,p_query_column_id=>6
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12528679858514448)
,p_query_column_id=>7
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>170
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12528788241514449)
,p_query_column_id=>8
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>180
,p_column_heading=>'Fecha Entrega'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12528805367514450)
,p_query_column_id=>9
,p_column_alias=>'SUCURSAL_DISTRIBUIDOR'
,p_column_display_sequence=>190
,p_column_heading=>'Sucursal Distribuidor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12528337013514445)
,p_query_column_id=>10
,p_column_alias=>'ID_PROMO'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12528597614514447)
,p_query_column_id=>11
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>600
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note-ent" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73910520669791353)
,p_plug_name=>'Pedido'
,p_region_name=>'pedido'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(73962410168791193)
,p_name=>'Detalle'
,p_region_name=>'detalle'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'SEQ_ID,  SER_PEDIDO , NRO_PEDIDO , CODIGO_CORTO,  COD_ARTICULO,  PRODUCT_NAME , UNIT_PRICE,  QUANTITY , PORC_DESCUENTO,  TOTAL_IVA,  MONTO_TOTAL,  TOTAL ,',
'PRODUCTO_ARMADO , ID_PEDIDO,  ID_PROMO,  REMOVE , COSTO_UNITARIO,  COSTO_UNITARIO*QUANTITY COSTO_TOTAL,',
'case when nvl(MONTO_TOTAL,0)>0 then',
'ROUND((MONTO_TOTAL-COSTO_UNITARIO*QUANTITY)/MONTO_TOTAL*100,2) else 0 end ',
'MARGEN',
'',
'FROM (select ',
'seq_id,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'c003 as cod_articulo,',
'(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as product_name,',
'        to_number(c005) as unit_price,',
'        to_number(c004) as quantity,',
'        to_number(c006) as porc_descuento,',
'        to_number(c007) as total_iva,',
'       to_number(c008) as monto_total,',
'        to_number(c009) as total,',
'         NVL(c020,''N'') producto_armado,',
'       C010 AS ID_PEDIDO, TO_NUMBER(c012) as id_promo, null as remove,',
'',
'(  ',
'      select nvl(costo_prom_nue,0)/ decode(:P34_COD_MONEDA,''2'',:P34_TIP_CAMBIO, 1)',
'    ',
'        from st_costos_art',
'       where cod_empresa = :P_COD_EMPRESA',
'         and cod_articulo = c003',
'         and tip_comprobante <> ''INI''',
'         and  nvl(fec_proceso,fec_comprobante) <= :P34_FEC_COMPROBANTE',
'         and to_char(nvl(fec_proceso, fec_comprobante),''yyyy/mm/dd'') || rowid =',
'                               ( select max(to_char(nvl(fec_proceso, fec_comprobante),''yyyy/mm/dd'')||rowid)',
'                                  from st_costos_art',
'                                 where cod_empresa =:P_COD_EMPRESA',
'                                   and cod_articulo = c003',
'                                   and tip_comprobante <> ''INI''',
'                                   and nvl(fec_proceso, fec_comprobante) <= :P34_FEC_COMPROBANTE) )COSTO_UNITARIO ',
'',
'  from apex_collections',
' where collection_name = ''VT_PEDIDOS_DETALLE''',
' order by 1 asc)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P34_NRO_COMPROBANTE,P34_SER_COMPROBANTE'
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
 p_id=>wwv_flow_imp.id(11278163043862774)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Or.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11278557022862774)
,p_query_column_id=>2
,p_column_alias=>'SER_PEDIDO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11278946821862774)
,p_query_column_id=>3
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11279340054862774)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>3
,p_column_heading=>'Codigo Corto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11279770257862774)
,p_query_column_id=>5
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11280192643862775)
,p_query_column_id=>6
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11280542431862775)
,p_query_column_id=>7
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Precion Unitario'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11280997497862775)
,p_query_column_id=>8
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>8
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11281332637862775)
,p_query_column_id=>9
,p_column_alias=>'PORC_DESCUENTO'
,p_column_display_sequence=>9
,p_column_heading=>'% Descuento'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11281764072862775)
,p_query_column_id=>10
,p_column_alias=>'TOTAL_IVA'
,p_column_display_sequence=>10
,p_column_heading=>'Total Iva'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11282108584862776)
,p_query_column_id=>11
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>11
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11282519145862776)
,p_query_column_id=>12
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>12
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
 p_id=>wwv_flow_imp.id(11282996434862776)
,p_query_column_id=>13
,p_column_alias=>'PRODUCTO_ARMADO'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11283372567862776)
,p_query_column_id=>14
,p_column_alias=>'ID_PEDIDO'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11283793954862776)
,p_query_column_id=>15
,p_column_alias=>'ID_PROMO'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11284166599862776)
,p_query_column_id=>16
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>36
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(187368373596765333)
,p_query_column_id=>17
,p_column_alias=>'COSTO_UNITARIO'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(187368404642765334)
,p_query_column_id=>18
,p_column_alias=>'COSTO_TOTAL'
,p_column_display_sequence=>56
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(187368500960765335)
,p_query_column_id=>19
,p_column_alias=>'MARGEN'
,p_column_display_sequence=>26
,p_column_heading=>'Margen'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84553359352466206)
,p_plug_name=>'Datos de Entrega'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(205375949849296825)
,p_plug_name=>'Detalle de Articulos'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_region_attributes=>'Style="background:#DCDCDC;width:100%;"'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(410607856243162441)
,p_name=>'Stock'
,p_parent_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_sucursal, ',
'       v.desc_sucursal, ',
'       v.desc_rubro, ',
'       v.desc_division, ',
'       v.desc_categogira, ',
'       v.desc_familia, ',
'       v.marca,',
'       v.cod_art_corto, ',
'       v.cod_articulo, ',
'       v.desc_articulo, ',
'       v.cant_dispon, ',
'       v.volumen,',
'       (SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion=''AUTORIZADO''',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL)PEDIDOS_AUTORIZADOS,',
'       (SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion=''PENDIENTE''',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL) PEDIDOS_PENIENTES,',
'       (v.cant_dispon -nvl((SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion in (''AUTORIZADO'',''PENDIENTE'')',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL),0) ) STOCK_DISPONIBLE',
'          from v_stock_apex v',
'WHERE ( COD_ARTICULO  = :P34_COD_ARTICULO_det )',
'/*AND COD_SUCURSAL IN (''190'',''275'',''07'',''01'',''209'',''262'',''02'')*/'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P34_COD_ARTICULO_DET'
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
 p_id=>wwv_flow_imp.id(156547804778056406)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod Sucursal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156548217604056406)
,p_query_column_id=>2
,p_column_alias=>'DESC_SUCURSAL'
,p_column_display_sequence=>20
,p_column_heading=>'Desc Sucursal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156548690896056405)
,p_query_column_id=>3
,p_column_alias=>'DESC_RUBRO'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156549060041056405)
,p_query_column_id=>4
,p_column_alias=>'DESC_DIVISION'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156549450881056405)
,p_query_column_id=>5
,p_column_alias=>'DESC_CATEGOGIRA'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156549866704056404)
,p_query_column_id=>6
,p_column_alias=>'DESC_FAMILIA'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156550259123056404)
,p_query_column_id=>7
,p_column_alias=>'MARCA'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156550686681056403)
,p_query_column_id=>8
,p_column_alias=>'COD_ART_CORTO'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156551038272056403)
,p_query_column_id=>9
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156551452046056403)
,p_query_column_id=>10
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156551872540056403)
,p_query_column_id=>11
,p_column_alias=>'CANT_DISPON'
,p_column_display_sequence=>110
,p_column_heading=>'Cant Dispon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156552210637056403)
,p_query_column_id=>12
,p_column_alias=>'VOLUMEN'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156552607589056402)
,p_query_column_id=>13
,p_column_alias=>'PEDIDOS_AUTORIZADOS'
,p_column_display_sequence=>130
,p_column_heading=>'Pedidos Autorizados'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156553061068056402)
,p_query_column_id=>14
,p_column_alias=>'PEDIDOS_PENIENTES'
,p_column_display_sequence=>140
,p_column_heading=>'Pedidos Penientes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(156553404007056402)
,p_query_column_id=>15
,p_column_alias=>'STOCK_DISPONIBLE'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(247462632034605241)
,p_plug_name=>'Datos Clientes'
,p_region_name=>'Datos_Clientes'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(247468883548603053)
,p_plug_name=>'Filtros Datos de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(247469788965601654)
,p_plug_name=>'Saldo Datos de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.tipo_comprobante||'' ''||a.ser_comprobante||'' ''|| a.nro_comprobante comprobante,',
'a.fec_vencimiento,a.siglas, sum(a.monto_cuota)cuota,sum(a.saldo)saldo ,',
'TO_CHAR(fec_vencimiento,''MM/YYYY'')PERIODO',
'from V_SALDOS_APEX a',
'where cod_cliente = :P34_COD_CLIENTE',
'and fec_vencimiento between :P34_FECHA_INICIO',
'AND :P34_FECHA_FIN',
'group by a.tipo_comprobante, a.ser_comprobante,a.nro_comprobante,a.fec_vencimiento, a.siglas',
'',
'order by a.fec_vencimiento'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P34_COD_CLIENTE,P34_FECHA_INICIO,P34_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(247469900185601655)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>247469900185601655
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162926215992452775)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162926661253452774)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162927095050452773)
,p_db_column_name=>'SIGLAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162927427191452773)
,p_db_column_name=>'CUOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162927811494452773)
,p_db_column_name=>'SALDO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162928211475452773)
,p_db_column_name=>'PERIODO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(247561480295438525)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'620568'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPROBANTE:FEC_VENCIMIENTO:SIGLAS:CUOTA:SALDO:PERIODO'
,p_sort_column_1=>'FEC_VENCIMIENTO'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'SALDO:CUOTA'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(162928931463452770)
,p_report_id=>wwv_flow_imp.id(247561480295438525)
,p_group_by_columns=>'PERIODO:SIGLAS'
,p_function_01=>'SUM'
,p_function_column_01=>'CUOTA'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cuota'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'SALDO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Saldo'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_sort_column_01=>'PERIODO'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11261148206862766)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
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
 p_id=>wwv_flow_imp.id(11261532916862766)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_button_name=>'VerClientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Datos de Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161537696498493215)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_button_name=>'Cerrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(162924732721454171)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(247468883548603053)
,p_button_name=>'go'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'go'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11261923566862766)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_button_name=>'Adjunta_imagen_OC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adjunta Imagen'
,p_button_redirect_url=>'f?p=&APP_ID.:183:&SESSION.::&DEBUG.::P183_SER_COMPROBANTE,P183_NRO_COMPROBANTE,P183_COD_USUARIO:&P34_SER_COMPROBANTE.,&P34_NRO_COMPROBANTE.,&P34_USUARIO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11262360828862767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,12::'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156536484310057726)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
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
 p_id=>wwv_flow_imp.id(157923644674337801)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11262747932862767)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-paper-plane-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12526660960514428)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_button_name=>'Cargar_detalle_entrega'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Detalle Entrega'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38187923601756508)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_button_name=>'Eliminar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Detalles'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156536811033057725)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_button_name=>'Agregar_DET_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11284591626862777)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73962410168791193)
,p_button_name=>'Add_item'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11263164996862767)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Pedido'
,p_button_position=>'EDIT'
,p_button_condition=>'P34_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11305500666862786)
,p_branch_name=>'IR_PAGINA_41'
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_COD_CLIENTE,P41_COD_CONDICION_VENTA,P41_COD_LISTA_PRECIO,P41_COD_MONEDA,P41_COD_SUCURSAL:&P34_COD_CLIENTE.,&P34_COD_CONDICION_VENTA.,&P34_COD_LISTA_PRECIO.,&P34_COD_MONEDA.,&P34_SUCURSAL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11284591626862777)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11305981592862786)
,p_branch_name=>'IR_PAGINA_42'
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP,:P42_COD_CLIENTE:&P34_COD_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11261532916862766)
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P34_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11263570657862767)
,p_name=>'P34_ID_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P34_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11263989036862767)
,p_name=>'P34_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11264365651862768)
,p_name=>'P34_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11264734388862768)
,p_name=>'P34_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Numero de Pedido'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11265178965862768)
,p_name=>'P34_FEC_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11265586894862768)
,p_name=>'P34_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'01'
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||''(''||cod_sucursal||'')'' D, cod_sucursal C',
'from sucursales ',
'where cod_empresa=''1''',
'and cod_sucursal in (''01'',''105.1'',''105'') '))
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
 p_id=>wwv_flow_imp.id(11265908523862768)
,p_name=>'P34_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="width:60px"'
,p_colspan=>3
,p_grid_column=>1
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11266378356862768)
,p_name=>'P34_NOM_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11266737888862769)
,p_name=>'P34_COD_DIRECCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11267107549862769)
,p_name=>'P34_DIR_CLIENTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11267574496862769)
,p_name=>'P34_TEL_CLIENTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(11267945603862769)
,p_name=>'P34_RUC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11268374699862769)
,p_name=>'P34_COD_SUCURSAL_DIST'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Sucursal Cliente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, P.cod_SUCURSAL',
'',
'	from cc_clientes         c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P34_cod_cliente',
'	and c.cod_persona=p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P34_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="min-width:150px;"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-home'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11268747905862769)
,p_name=>'P34_LUGAR_ENTREGA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Lugar Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-map-marker'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11269144116862770)
,p_name=>'P34_TELEFONO_DIST'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Telefono Dist'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-credit-card-terminal'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11269530876862770)
,p_name=>'P34_NRO_ORDEN_COMPRA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Nro OC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_colspan=>2
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11269930778862770)
,p_name=>'P34_COD_VENDEDOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and :P34_SUCURSAL=''01''',
'UNION ALL',
'SELECT  P.NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and :P34_SUCURSAL in(''105.1'',''105'')',
'AND F.COD_VENDEDOR IN (''18'',''164'',''222'',''164'')',
'order by 1'))
,p_lov_cascade_parent_items=>'P34_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11270355435862770)
,p_name=>'P34_COD_CONDICION_VENTA'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Condicion de Venta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION_VENTA_PEDIDO_34'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||'' (''||COD_CONDICION_VENTA||'')'' d, COD_CONDICION_VENTA , DESCRIPCION FROM CC_CONDICIONES_VENTAS',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'and :P34_SUCURSAL=''01''',
' union all',
' select DESCRIPCION||'' (''||COD_CONDICION_VENTA||'')'' d, COD_CONDICION_VENTA, DESCRIPCION FROM CC_CONDICIONES_VENTAS',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'and :P34_SUCURSAL in(''105.1'',''105'')',
'and cod_condicion_venta in (''178'')',
' ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P34_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
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
 p_id=>wwv_flow_imp.id(11270747407862770)
,p_name=>'P34_COD_LISTA_PRECIO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_LISTA_PRECIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-industry'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11271138033862770)
,p_name=>'P34_COD_MONEDA'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LVMONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MONEDA R, ',
'	   SIGLAS, ',
'	   TIPO_CAMBIO_DIA, ',
'	   DESCRIPCION D',
'  FROM MONEDAS ',
' ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11271585100862770)
,p_name=>'P34_TIP_CAMBIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Tip Cambio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-dollar'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11271922898862771)
,p_name=>'P34_TIP_CAMBIO_COMPRA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11272372118862771)
,p_name=>'P34_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11272743474862771)
,p_name=>'P34_TIPO_ENTREGA'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Tipo Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''CAPITAL'' NOMBRE, ''CA''',
'FROM DUAL',
'UNION ALL',
'SELECT ''INTERIOR'' NOMBRE, ''IN''',
'FROM DUAL',
'UNION ALL',
'SELECT ''CLIENTE RETIRA'' NOMBRE, ''CR''',
'FROM DUAL',
'UNION ALL',
'SELECT ''ARREGLO ADMINISTRATIVO'' NOMBRE, ''AD''',
'FROM DUAL',
'UNION ALL',
'SELECT ''PROVEEDOR'' NOMBRE, ''PO''',
'FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Tipo de Entrega-'
,p_cHeight=>1
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11273160465862771)
,p_name=>'P34_COD_FLETE'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Flete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete',
'	 ',
'	  from  vt_fletes',
'	  where cod_empresa = ''1''',
'          AND TIPO_ENTREGA=:p34_TIPO_ENTREGA',
'	   and ACTIVO=''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Flete-'
,p_lov_cascade_parent_items=>'P34_TIPO_ENTREGA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-truck'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11273595493862771)
,p_name=>'P34_COMENTARIO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Instrucciones de Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-clipboard-edit'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11273949148862771)
,p_name=>'P34_OBSERVACION_INTERNA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Observacion Uso Interno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-clipboard-edit'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11274322320862771)
,p_name=>'P34_COD_ARTICULO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11274702935862772)
,p_name=>'P34_COMO_ENTREGAR'
,p_is_required=>true
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'Enviar'
,p_prompt=>'Entrega:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Enviar''D,  ''Enviar''c from dual union all',
'select  ''En Guarda''D,''GUARDA'' C from dual /*union all',
'select ''Por Transportadora''D,''TRANSPORTADORA'' C  from dual*/'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11275164333862772)
,p_name=>'P34_FECHA_ENTREGA'
,p_is_required=>true
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Entrega'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11275530784862772)
,p_name=>'P34_ENTREGA_REMISION'
,p_is_required=>true
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Entrega con Remision'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11275971912862772)
,p_name=>'P34_IND_CLIENTE_FINAL'
,p_is_required=>true
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'N'
,p_prompt=>'Cliente Final'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11276392778862772)
,p_name=>'P34_IND_CONFIRMA_FACTURA'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'N'
,p_prompt=>'A Confirmar Para Envio'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11276645975862772)
,p_name=>'P34_IND_ECOMMERCE'
,p_is_required=>true
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'N'
,p_prompt=>'Ventas Ecommerce'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11277086618862772)
,p_name=>'P34_MOTIVO_BLOQUEO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11277473517862773)
,p_name=>'P34_IND_LLEVA_OC'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11284925479862777)
,p_name=>'P34_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73962410168791193)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11285358181862777)
,p_name=>'P34_DELETE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73962410168791193)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11285707672862777)
,p_name=>'P34_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73962410168791193)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11286474098862778)
,p_name=>'P34_FORMA_COBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(84553359352466206)
,p_prompt=>'Forma Cobro'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''EFECTIVO'' d, ''EFECTIVO'' c from dual union all',
'select ''CHEQUE AL DIA'' d, ''CHEQUE AL DIA'' from dual union all',
'select ''VALORES A DEPOSITAR'' d, ''VALORES A DEPOSITAR'' from dual union all',
'select ''CHEQUE DE TERCERO'' d, ''CHEQUE DE TERCERO'' from dual union all',
'select ''CANJE PARA NOTA DE CREDITO'' d, ''CANJE PARA NOTA DE CREDITO'' from dual union all',
'select ''TARJETA DE DEBITO'' d, ''TARJETA DE DEBITO'' from dual union all',
'select ''TARJETA DE CREDITO'' d, ''TARJETA DE CREDITO'' from dual union all',
'select ''TRANSFERENCIA'' d, ''TRANSFERENCIA'' from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11286802763862778)
,p_name=>'P34_NOMBRE_AUTORIZADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(84553359352466206)
,p_prompt=>'Nombre Autorizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(11287293662862778)
,p_name=>'P34_CROQUIS_HABLADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(84553359352466206)
,p_prompt=>'Croquis Hablado'
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
 p_id=>wwv_flow_imp.id(12526035634514422)
,p_name=>'P34_COD_ARTICULO_ENTREGA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_prompt=>'Cod Articulo Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c003)||'' ''||',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c003)  as product_name,',
'  c003  codigo_corto ',
'  from apex_collections',
' where collection_name = ''VT_PEDIDOS_DETALLE''',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12526279664514424)
,p_name=>'P34_CANTIDAD_ENTREGA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12526327147514425)
,p_name=>'P34_SUCURSAL_DIST_ENTREGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_prompt=>'Sucursal Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, P.cod_SUCURSAL',
'',
'	from cc_clientes         c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P34_cod_cliente',
'	and c.cod_persona=p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P34_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(12526508653514427)
,p_name=>'P34_FECHA_ENTREGA_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12525879857514420)
,p_prompt=>'Fecha Entrega Detalle'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(108924601862676445)
,p_name=>'P34_FECHA_CONFIRMACION_ENVIO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_prompt=>'Fecha Conf. Envio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
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
 p_id=>wwv_flow_imp.id(153258585270869725)
,p_name=>'P34_COD_ARTICULO_DET'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion ||'' '' ||s.cod_articulo||'' '' ||S.COD_ART_CORTO DESCRIPCION ,s.cod_articulo',
'from st_articulos s, st_existencia_art e, sucursal_zona sz',
'where s.cod_empresa=''1''',
'and s.cod_empresa=e.cod_empresa',
'and s.cod_articulo=e.cod_articulo',
'and e.cod_sucursal=sz.cod_sucursal',
'AND COD_RUBRO=''PR''',
'',
'AND NVL(S.ESTADO,''A'') NOT IN (''I'',''N'')',
'AND S.PRECIO_BASE>0',
'and (s.COD_ART_CORTO = :P34_COD_ART_CORTO OR :P34_COD_ART_CORTO IS NULL)',
'',
'GROUP BY',
's.cod_articulo, s.descripcion, S.COD_ART_CORTO',
'ORDER BY DESCRIPCION '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
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
 p_id=>wwv_flow_imp.id(153260971532869749)
,p_name=>'P34_ESTADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153261078528869750)
,p_name=>'P34_PERMITE_RUC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156538779414057720)
,p_name=>'P34_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156539184782057720)
,p_name=>'P34_SER_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156539994106057720)
,p_name=>'P34_NRO_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156540308361057719)
,p_name=>'P34_COD_ART_CORTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-transform:uppercase"'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156541138270057717)
,p_name=>'P34_DESC_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156541543624057717)
,p_name=>'P34_CANTIDAD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999999999999'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156541905473057717)
,p_name=>'P34_PRECIO_UNITARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156542389847057717)
,p_name=>'P34_PORC_DESCUENTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Descuento %'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156542795892057716)
,p_name=>'P34_DESCUENTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Descuento:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156543176932057716)
,p_name=>'P34_PORC_RECARGO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'% Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156543515302057716)
,p_name=>'P34_RECARGO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Recargo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156543958951057716)
,p_name=>'P34_TOTAL_IVA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Total Iva'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156544397070057716)
,p_name=>'P34_MONTO_TOTAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Monto Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156544727075057716)
,p_name=>'P34_TOTAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_prompt=>'Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156545197954057716)
,p_name=>'P34_COD_IVA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156545579427057715)
,p_name=>'P34_PORC_IVA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156545921372057715)
,p_name=>'P34_MONTO_GRAVADA_10'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156546370768057715)
,p_name=>'P34_MONTO_GRAVADA_5'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156546722673057715)
,p_name=>'P34_MONTO_EXENTA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156547146507057714)
,p_name=>'P34_REQUIERE_ARMADO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(205375949849296825)
,p_item_default=>'NO'
,p_prompt=>'Requiere Armado'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'SI'
,p_attribute_04=>'N'
,p_attribute_05=>'NO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156803739456017209)
,p_name=>'P34_NRO_CI_ENTREGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(84553359352466206)
,p_prompt=>'CI RETIRA FACT/REM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156803891349017210)
,p_name=>'P34_CHAPA_ENTREGA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(84553359352466206)
,p_prompt=>'Nro Chapa Retira'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>7
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
 p_id=>wwv_flow_imp.id(156804447506017216)
,p_name=>'P34_CORREO_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(84553359352466206)
,p_prompt=>'Email Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156827104365866565)
,p_name=>'P34_COD_PAIS'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'PAR'
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156827788322864027)
,p_name=>'P34_COD_PROVINCIA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'18'
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION, P.COD_PROVINCIA',
'FROM PROVINCIAS P',
'WHERE COD_PAIS = :P34_COD_PAIS'))
,p_lov_cascade_parent_items=>'P34_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Departamento'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156828598947862147)
,p_name=>'P34_COD_CIUDAD'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_item_default=>'1'
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = :P34_COD_PAIS',
'AND COD_PROVINCIA = :P34_COD_PROVINCIA'))
,p_lov_cascade_parent_items=>'P34_COD_PAIS,P34_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Ciudades'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161538002250493219)
,p_name=>'P34_CLIENTE_SOBREGIRADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73910520669791353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado Cliente'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162920431312456370)
,p_name=>'P34_COD_CLIENTE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162920807585456367)
,p_name=>'P34_TIPO_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162921229502456367)
,p_name=>'P34_LINEA_CREDITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Linea Credito Usd'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162921650992456367)
,p_name=>'P34_SALDO_GS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Saldo Gs'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162922039488456367)
,p_name=>'P34_SALDO_US'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Saldo Us'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162922497795456367)
,p_name=>'P34_VALORES_ADEPOSITAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Valores Adepositar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162922819904456367)
,p_name=>'P34_SALDO_TOTAL_USD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Saldo Total Usd'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162923250964456366)
,p_name=>'P34_POSIBLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Posible Usd'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162923626830456366)
,p_name=>'P34_CALIFICACION_COBRANZA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Calificacion Cobranza'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162924098335456366)
,p_name=>'P34_SOBREGIRADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(247462632034605241)
,p_prompt=>'Sobregirado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162925158151454167)
,p_name=>'P34_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(247468883548603053)
,p_item_default=>'ADD_MONTHS(SYSDATE,-120)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162925520341454167)
,p_name=>'P34_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(247468883548603053)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187368690994765336)
,p_name=>'P34_COSTO_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73962410168791193)
,p_prompt=>'Costo Total'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187368776269765337)
,p_name=>'P34_MARGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73962410168791193)
,p_prompt=>'Margen Pedido'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11287780575862778)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P34_COD_CLIENTE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(11265908523862768)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11288164919862778)
,p_validation_name=>'validar_sucursal_dist'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	select  p.cod_sucursal',
'	',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P34_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P34_cod_sucursal_dist',
'AND ROWNUM=1'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Es Obligatorio la sucursal'
,p_associated_item=>wwv_flow_imp.id(11268374699862769)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11288566664862779)
,p_validation_name=>'New'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete	 ',
'	  from  vt_fletes',
'	  where cod_empresa = ''1''        ',
'	   and ACTIVO=''S''',
'AND COD_FLETE=:P34_COD_FLETE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Es obligatorio cargar el flete'
,p_associated_item=>wwv_flow_imp.id(11273160465862771)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11288923896862779)
,p_validation_name=>'FORMA_COBRO'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P34_COD_CONDICION_VENTA IN (''36'',''60'') AND',
' :P34_FORMA_COBRO IS NULL THEN',
' RETURN FALSE;',
' ELSE RETURN TRUE;',
' END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Es Obligatorio agregar una forma de cobro'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11289359610862779)
,p_validation_name=>'cliente_retira_bloqueado'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     ',
'      	DECLARE  ',
'  vestado      varchar2(  1 ); ',
'BEGIN',
'  ',
'   select   ',
'         c.estado ',
'    into  ',
'         vestado ',
'    from cc_clientes c ',
'    where c.cod_empresa = ''1'' ',
'      and c.cod_cliente = :P34_cod_cliente     ',
'      and rownum = 1;',
'  ',
'   ',
'  if NVL(vestado,''X'') <> ''A''  and :P34_tipo_entrega=''CR'' then ',
'RETURN FALSE;   ',
'elsif nvl(vestado,''X'') in(''B'',''I'') THEN',
'RETURN FALSE;',
'  ',
'   	ELSE RETURN TRUE;',
'   END IF ;',
'END ;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'No se pueden cargar pedidos de CLIENTE RETIRA para este estado de Cliente'
,p_associated_item=>wwv_flow_imp.id(11272743474862771)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11289712596862779)
,p_validation_name=>'Valida_lleva_oc'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P34_IND_LLEVA_OC = ''S'' then',
'  if :P34_NRO_ORDEN_COMPRA is null then',
'    return(false);',
'  else',
'    return(true);',
'  end if;',
'else',
'  return(true);',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Debe ingresar un n\00FAmero de OC para continuar')
,p_associated_item=>wwv_flow_imp.id(11269530876862770)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(108924756953676446)
,p_validation_name=>'valida_fecha'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'    if NVL(:P34_IND_CONFIRMA_FACTURA, ''N'') = ''S'' AND',
'       :P34_fecha_confirmacion_envio IS NULL THEN',
'        RETURN false;',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Es obligatorio agregar la fecha limite de confirmacion no superior a 3 dias'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(108924601862676445)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(108924998613676448)
,p_validation_name=>'valida_3dias'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'    if NVL(:P34_IND_CONFIRMA_FACTURA, ''N'') = ''S'' AND',
'                  to_number(to_date(:P34_fecha_confirmacion_envio,''DD/MM/YYYY'') - trunc(sysdate)) > 3 THEN',
'        RETURN false;',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha limite de confirmacion no debe ser superior 3 dias!'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(108924601862676445)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(153259291039869732)
,p_validation_name=>'mayor_80'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P34_PORC_DESCUENTO>80 THEN',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'El descuento no puede ser mayor a 80%'
,p_associated_item=>wwv_flow_imp.id(156542389847057717)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(153260412702869744)
,p_validation_name=>'TOTAL_NULO'
,p_validation_sequence=>130
,p_validation=>'P34_TOTAL'
,p_validation2=>'0'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'El total no puede ser nulo'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(156536811033057725)
,p_associated_item=>wwv_flow_imp.id(156544727075057716)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(174251260390975421)
,p_validation_name=>'Nuevo'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_valor NUMBER := 0;',
'begin ',
'v_valor :=  length(:P34_DIR_CLIENTE);',
'',
'IF v_valor < 5 then ',
'    RETURN ''Debe ingresar la direccion correcta'';',
'END  IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(11267107549862769)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11291672190862780)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>20
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11292197576862781)
,p_event_id=>wwv_flow_imp.id(11291672190862780)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= user;',
'begin',
':P34_SER_COMPROBANTE:=''P'';',
':P34_FEC_COMPROBANTE:=SYSDATE;',
'',
'end;'))
,p_attribute_03=>'P34_SER_COMPROBANTE,P34_FEC_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11292536930862781)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11293018252862781)
,p_event_id=>wwv_flow_imp.id(11292536930862781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  begin',
'    select d.cod_direccion cod_dir,',
'           d.detalle || ''-'' || ci.descripcion dir_cliente,',
'           t.codigo_area || '' '' || t.num_telefono,',
'           i.numero,',
'           COD_VENDEDOR,',
'           case ',
'                when :P34_SUCURSAL  in(''105.1'',''105'')then',
'                    ''182''',
'                else',
'                    COD_CONDICION_VENTA',
'                end,',
'           case ',
'                when :P34_SUCURSAL  in(''105.1'',''105'') then',
'                    ''1''',
'                else',
'                    COD_LISTA_PRECIO',
'                end,',
'           case ',
'                when :P34_SUCURSAL  in(''105.1'',''105'') then',
'                    ''CR''',
'                else',
'                    NULL',
'                end,',
'           case ',
'                when :P34_SUCURSAL  in(''105.1'',''105'') then',
'                    ''1''',
'                else',
'                    NULL',
'                end,',
'           NVL(IND_CONFIRMA_ENVIO, ''N''),',
'           nvl(c.ind_lleva_oc,''N''),nombre',
'      INTO :P34_COD_DIRECCION,',
'           :P34_DIR_CLIENTE,',
'           :P34_TEL_CLIENTE,',
'           :P34_RUC,',
'           :P34_COD_VENDEDOR,',
'           :P34_COD_CONDICION_VENTA,',
'           :P34_COD_LISTA_PRECIO,',
'           :P34_TIPO_ENTREGA,',
'           :P34_COD_FLETE,',
'           :P34_IND_CONFIRMA_FACTURA,',
'           :P34_IND_LLEVA_OC, :P34_NOM_CLIENTE',
'      from cc_clientes    c,',
'           personas       p,',
'           cc_causales    b,',
'           direc_personas d,',
'           telef_personas t,',
'           ident_personas i,',
'           CIUDADES       CI',
'     where c.cod_empresa = ''1''',
'       and c.cod_cliente = :P34_cod_cliente',
'       and c.cod_persona = p.cod_persona',
'       and c.cod_causal = b.cod_causal(+)',
'       and c.cod_persona = d.cod_persona(+)',
'       and nvl(d.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = t.cod_persona(+)',
'       and nvl(t.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = i.cod_persona(+)',
'       and nvl(i.cod_ident(+), ''X'') = ''RUC''',
'       AND CI.COD_PAIS(+) = D.COD_PAIS',
'       AND CI.COD_PROVINCIA(+) = D.COD_PROVINCIA',
'       AND CI.COD_CIUDAD(+) = D.COD_CIUDAD',
'       and rownum = 1;',
'  END;',
'',
'BEGIN',
'select CC.EMAIL',
'into :P34_CORREO_CLIENTE',
'                 from CC_CONTACTOS_CLIENTES CC',
'',
'                where CC.COD_EMPRESA = :P_COD_EMPRESA',
'',
'                  AND CC.COD_CLIENTE = :P34_cod_cliente',
'',
'                  and CC.COD_CONTACTO = ''FA''',
'',
'                  AND CC.EMAIL IS NOT NULL',
'',
'                  AND ROWNUM = 1;',
'                  EXCEPTION WHEN OTHERS THEN ',
'                  :P34_CORREO_CLIENTE:=NULL;',
'                  END;',
'',
'  BEGIN',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''VT_PEDIDOS_CABECERA'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION(''VT_PEDIDOS_DETALLE'');',
'		  apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDO_DETALLE_ENTREGA'');',
'  END;',
'  :P34_MOTIVO_BLOQUEO := null;',
'  declare',
'    vcausa      varchar2(400);',
'    vestado     varchar2(400);',
'    vdescestado varchar2(400);',
'  begin',
'    select c.estado,',
'           cau.descripcion,',
'           case',
'             when c.estado = ''B'' THEN',
'              '' BLOQUEADO''',
'             when c.estado = ''C'' then',
'              ''CREDITO BLOQUEADO''',
'             WHEN C.ESTaDO = ''I'' THEN',
'              ''INACTIVO''',
'             ELSE',
'              ''ACTIVO''',
'           END',
'      into vestado, vcausa, vdescestado',
'      from cc_clientes c, CC_CAUSALES cau',
'     where c.cod_empresa = ''1''',
'       and c.cod_cliente = :P34_cod_cliente',
'       and c.cod_causal = cau.cod_causal(+)',
'       and rownum = 1;',
'    if vestado in (''C'', ''B'', ''I'') AND VCAUSA IS NOT NULL THEN',
'      :P34_MOTIVO_BLOQUEO := ''Cliente estado '' || vdescestado ||',
'                             '' Motivo: '' || VCAUSA;',
'    ELSIF vestado in (''C'', ''B'', ''I'') AND VCAUSA IS NULL THEN',
'      :P34_MOTIVO_BLOQUEO := ''Cliente estado '' || vdescestado;',
'    else',
'      :P34_MOTIVO_BLOQUEO := null;',
'    END IF;',
'  exception',
'    when others then',
'      :P34_MOTIVO_BLOQUEO := null;',
'  end;',
'end;',
''))
,p_attribute_02=>'P34_COD_CLIENTE'
,p_attribute_03=>'P34_DIR_CLIENTE,P34_TEL_CLIENTE,P34_RUC,P34_COD_VENDEDOR,P34_COD_CONDICION_VENTA, P34_COD_LISTA_PRECIO,P34_MOTIVO_BLOQUEO,P34_IND_CONFIRMA_FACTURA,P34_TIPO_ENTREGA,P34_COD_FLETE,P34_IND_LLEVA_OC,P34_NOM_CLIENTE,P34_CORREO_CLIENTE'
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
 p_id=>wwv_flow_imp.id(11293538511862782)
,p_event_id=>wwv_flow_imp.id(11292536930862781)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P34_COD_CLIENTE=''00000'' THEN',
':P34_COD_SUCURSAL_DIST :=''1'';',
':P34_TIPO_ENTREGA:=''CR'';',
':P34_COD_FLETE:=''1'';',
':P34_COD_CONDICION_VENTA:=''178'';',
'END IF;',
''))
,p_attribute_02=>'P34_COD_CLIENTE'
,p_attribute_03=>'P34_TIPO_ENTREGA,P34_COD_SUCURSAL_DIST,P34_COD_FLETE,P34_COD_CONDICION_VENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11294052477862782)
,p_event_id=>wwv_flow_imp.id(11292536930862781)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') not in ''I'' ',
'and c.cod_cliente=:P34_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre'))
,p_attribute_07=>'P34_COD_CLIENTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161537916584493218)
,p_event_id=>wwv_flow_imp.id(11292536930862781)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	if  f_linea_credito_cliente(:P34_cod_cliente )	>100 then',
'	 :P34_CLIENTE_SOBREGIRADO:=''SOBREGIRADO'';',
'    :P0_MENSAJE_VALIDACION := ''CLIENTE SOBREGIRADO''; ',
'    else ',
'     :P34_CLIENTE_SOBREGIRADO:=null;',
'    :P0_MENSAJE_VALIDACION := null; ',
' ',
'end if;'))
,p_attribute_02=>'P34_COD_CLIENTE'
,p_attribute_03=>'P34_CLIENTE_SOBREGIRADO,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11294459015862782)
,p_name=>'datos_sucursales'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_SUCURSAL_DIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11294953878862782)
,p_event_id=>wwv_flow_imp.id(11294459015862782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select  p.direccion, p.telefono, P.COD_PAIS, P.COD_PROVINCIA, P.COD_CIUDAD',
'	 into  :P34_lugar_entrega, :P34_telefono_dist,',
'   :P34_COD_PAIS, :P34_COD_PROVINCIA, :P34_COD_CIUDAD',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P34_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P34_cod_sucursal_dist',
'	;',
'exception',
'	when others then ',
'	',
'	 NULL;',
'end;'))
,p_attribute_02=>'P34_COD_SUCURSAL_DIST'
,p_attribute_03=>'P34_LUGAR_ENTREGA,P34_TELEFONO_DIST,P34_COD_PROVINCIA, P34_COD_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11295370653862782)
,p_name=>'datos_plazo'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_CONDICION_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11295811207862782)
,p_event_id=>wwv_flow_imp.id(11295370653862782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		BEGIN',
'			  select  ',
'			  			 lp.cod_moneda',
'			    into  ',
'			    		 :P34_cod_moneda',
'			    from cc_condiciones_ventas c,  ',
'			    		 vt_listas_precios_cab lp',
'			   where c.cod_empresa = ''1''',
'			     and c.estado      = ''A''',
'					',
'			     and c.cod_condicion_venta = :P34_cod_condicion_venta',
'			     and lp.cod_empresa        = c.cod_empresa',
'			     and lp.cod_lista_precio   = c.cod_lista_precio;',
'		',
'		EXCEPTION',
'				',
'				when others then',
'						 NULL;',
'		END;'))
,p_attribute_02=>'P34_COD_CONDICION_VENTA'
,p_attribute_03=>'P34_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11296222983862783)
,p_name=>'tipo_cambio'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11296768339862783)
,p_event_id=>wwv_flow_imp.id(11296222983862783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  tipo_cambio_dia,  tipo_cambio_compra',
'    into :P34_tip_cambio, :P34_tip_cambio_compra',
'    from monedas',
'   where cod_moneda = :P34_cod_moneda;',
'   ',
'   ',
'   BEGIN',
'  Select  m.tipo_cambio_credito',
'    into :P34_CAMBIO_MONEDA_PRECIO',
'    from monedas m, parametros_generales p',
'   where p.cod_modulo = ''ST''',
'     and p.parametro = ''COD_MONEDA_PREC''',
'     and p.valor = m.cod_moneda;',
'EXCEPTION',
'  when others then',
'    :P34_CAMBIO_MONEDA_PRECIO:= 1 ;',
'END;  ',
'   ',
'EXCEPTION',
'  when others then',
'  ',
'  NULL;',
'  END;'))
,p_attribute_02=>'P34_COD_MONEDA,P34_CAMBIO_MONEDA_PRECIO'
,p_attribute_03=>'P34_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11298014935862783)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11298516037862783)
,p_event_id=>wwv_flow_imp.id(11298014935862783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11299010218862783)
,p_event_id=>wwv_flow_imp.id(11298014935862783)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11299532015862784)
,p_event_id=>wwv_flow_imp.id(11298014935862783)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P34_DELETE_ID)<>0 THEN',
'Begin',
'',
'    apex_collection.delete_members( ',
'        p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P34_DELETE_ID );',
'        exception when others then null;',
'    ',
'End;',
'END IF;',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'        p_seq => TO_NUMBER(:P34_DELETE_ID));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P34_DELETE_ID,P34_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187368904931765339)
,p_event_id=>wwv_flow_imp.id(11298014935862783)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT',
'  ',
'   sum(COSTO_UNITARIO * QUANTITY) COSTO_TOTAL,',
'   case',
'     when nvl(sum(MONTO_TOTAL),0) > 0 then',
'      ROUND((sum(MONTO_TOTAL) - sum(COSTO_UNITARIO * QUANTITY)) /',
'            sum(MONTO_TOTAL) * 100,',
'            2)',
'     else',
'      0',
'   end MARGEN',
'    into :P34_COSTO_TOTAL, :P34_MARGEN',
'    FROM (select seq_id,',
'                 to_number(c004) as quantity,',
'                 to_number(c008) as monto_total,',
'                 ',
'                 (select nvl(costo_prom_nue, 0) /',
'                         decode(:P34_COD_MONEDA, ''2'', :P34_TIP_CAMBIO, 1)',
'                  ',
'                    from st_costos_art',
'                   where cod_empresa = :P_COD_EMPRESA',
'                     and cod_articulo = c003',
'                     and tip_comprobante <> ''INI''',
'                     and nvl(fec_proceso, fec_comprobante) <=',
'                         :P34_FEC_COMPROBANTE',
'                     and to_char(nvl(fec_proceso, fec_comprobante),',
'                                 ''yyyy/mm/dd'') || rowid =',
'                         (select max(to_char(nvl(fec_proceso, fec_comprobante),',
'                                             ''yyyy/mm/dd'') || rowid)',
'                            from st_costos_art',
'                           where cod_empresa = :P_COD_EMPRESA',
'                             and cod_articulo = c003',
'                             and tip_comprobante <> ''INI''',
'                             and nvl(fec_proceso, fec_comprobante) <=',
'                                 :P34_FEC_COMPROBANTE)) COSTO_UNITARIO',
'          ',
'            from apex_collections',
'           where collection_name = ''VT_PEDIDOS_DETALLE''',
'           order by 1 asc);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P34_FEC_COMPROBANTE,P34_TIP_CAMBIO,P34_COD_MONEDA'
,p_attribute_03=>'P34_COSTO_TOTAL,P34_MARGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11300095105862784)
,p_event_id=>wwv_flow_imp.id(11298014935862783)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73962410168791193)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38187353742756502)
,p_name=>'DELETE_DETALLE_entrega'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note-ent'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38187464164756503)
,p_event_id=>wwv_flow_imp.id(38187353742756502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38187545566756504)
,p_event_id=>wwv_flow_imp.id(38187353742756502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38187620275756505)
,p_event_id=>wwv_flow_imp.id(38187353742756502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P34_DELETE_ID)<>0 THEN',
'Begin',
'',
'    apex_collection.delete_members( ',
'        p_collection_name => ''VT_PEDIDO_DETALLE_ENTREGA'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P34_DELETE_ID );',
'        exception when others then null;',
'    ',
'End;',
'END IF;',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''VT_PEDIDO_DETALLE_ENTREGA'',',
'        p_seq => TO_NUMBER(:P34_DELETE_ID));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P34_DELETE_ID,P34_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38187733409756506)
,p_event_id=>wwv_flow_imp.id(38187353742756502)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11301896674862784)
,p_name=>'crea_cliente'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11302318675862785)
,p_event_id=>wwv_flow_imp.id(11301896674862784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MODAL PAGE LOOKUP BUTTON'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11261148206862766)
,p_attribute_01=>'P34_COD_CLIENTE'
,p_attribute_02=>'92'
,p_attribute_03=>'P34_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11302720082862785)
,p_name=>'da_alerta'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_MOTIVO_BLOQUEO'
,p_condition_element=>'P34_MOTIVO_BLOQUEO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11303216783862785)
,p_event_id=>wwv_flow_imp.id(11302720082862785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert("Estado Cliente:  "+ $v("P34_MOTIVO_BLOQUEO"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11303697603862785)
,p_name=>'da_cliente'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_CLIENTE'
,p_condition_element=>'P34_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'00000'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11304190407862785)
,p_event_id=>wwv_flow_imp.id(11303697603862785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_COD_SUCURSAL_DIST'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11304554611862785)
,p_name=>'DA_TIPO_ENTREGA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_TIPO_ENTREGA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11305087896862785)
,p_event_id=>wwv_flow_imp.id(11304554611862785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P34_COD_CLIENTE=''00000'' AND :P34_TIPO_ENTREGA=''CR'' THEN',
'',
':P34_COD_FLETE:=''1'';',
'END IF;',
''))
,p_attribute_02=>'P34_TIPO_ENTREGA,P34_COD_CLIENTE'
,p_attribute_03=>'P34_COD_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12526722348514429)
,p_name=>'da_carga_detalle_entrega'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12526660960514428)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12526826720514430)
,p_event_id=>wwv_flow_imp.id(12526722348514429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_order_id    number;',
'    l_order_id_det    number;',
'    ',
'begin',
'     --create collections',
'    BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id',
'    FROM apex_collections',
'    WHERE collection_name=''VT_PEDIDO_DETALLE_ENTREGA''',
'  ;',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id := NULL ;',
'    END;',
'    IF l_order_id IS NULL THEN',
' ',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDO_DETALLE_ENTREGA'');',
'		END IF;',
'    ',
'if:P34_COD_ARTICULO_ENTREGA is null and l_order_id is null then',
'',
'DECLARE CURSOR CCAB IS ',
'select codigo_corto,cod_articulo,product_name, sum(cantidad)cantidad,FECHA_ENTREGA,COD_SUCURSAL_DIST',
'from (select ',
'seq_id,',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'c003 as cod_articulo,',
'(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as product_name,',
'     ',
'        to_number(c004) as cantidad, ',
'				:P34_FECHA_ENTREGA fecha_entrega,',
'				:P34_COD_SUCURSAL_DIST COD_SUCURSAL_DIST',
'  from apex_collections',
' where collection_name = ''VT_PEDIDOS_DETALLE'')',
' group by codigo_corto,product_name, FECHA_ENTREGA,COD_SUCURSAL_DIST,cod_articulo;',
' begin',
' for x in ccab loop ',
'  apex_collection.add_member(',
'            p_collection_name => ''VT_PEDIDO_DETALLE_ENTREGA'',',
'            p_c001            => :P34_SER_COMPROBANTE, ',
'            p_c002            => :P34_NRO_COMPROBANTE, ',
'            p_c003            => X.COD_ARTICULO,',
'            p_c004            => X.CANTIDAD,',
'            p_c005            => :P34_FECHA_ENTREGA,',
'            p_c006            => :P34_COD_SUCURSAL_DIST,',
'						p_c007            => X.CODIGO_CORTO  )  ;',
'                                          ',
'        ',
' end loop ; ',
' end ;',
' ',
'else',
'',
'IF :P34_SUCURSAL_DIST_ENTREGA is null',
'or :P34_CANTIDAD_ENTREGA is null',
'or : P34_COD_ARTICULO_ENTREGA is null  ',
'or :P34_FECHA_ENTREGA_DETALLE is null then',
' ',
' apex_error.add_error (',
'    p_message          => ''Debe cargar los detalles para la carga!'',',
'    p_display_location => apex_error.c_inline_in_notification );',
' sys.htp.p(''Debe cargar los detalles para la carga!'');',
'   raise_application_error(-20201, ''Debe cargar los detalles para la carga!'');',
'end if;',
'apex_collection.add_member(',
'            p_collection_name => ''VT_PEDIDO_DETALLE_ENTREGA'',',
'            p_c001            => :P34_SER_COMPROBANTE, ',
'            p_c002            => :P34_NRO_COMPROBANTE, ',
'            p_c003            => :P34_COD_ARTICULO_ENTREGA,',
'            p_c004            => :P34_CANTIDAD_ENTREGA,',
'            p_c005            => :P34_FECHA_ENTREGA_DETALLE,',
'            p_c006            => :P34_SUCURSAL_DIST_ENTREGA,',
'						p_c007            => NULL  )  ;',
'',
'end if;',
'END;'))
,p_attribute_02=>'P34_COD_ARTICULO_ENTREGA,P34_CANTIDAD_ENTREGA,P34_SUCURSAL_DIST_ENTREGA,P34_FECHA_ENTREGA_DETALLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38188511599756514)
,p_event_id=>wwv_flow_imp.id(12526722348514429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P34_COD_ARTICULO_ENTREGA:=null;',
':P34_CANTIDAD_ENTREGA:=null;',
':P34_SUCURSAL_DIST_ENTREGA:=null;'))
,p_attribute_03=>'P34_FECHA_ENTREGA_DETALLE,P34_COD_ARTICULO_ENTREGA,P34_CANTIDAD_ENTREGA,P34_SUCURSAL_DIST_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38187264966756501)
,p_event_id=>wwv_flow_imp.id(12526722348514429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12526986760514431)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38187800975756507)
,p_event_id=>wwv_flow_imp.id(12526722348514429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12525879857514420)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38188193325756510)
,p_name=>'New'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38187923601756508)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38188224664756511)
,p_event_id=>wwv_flow_imp.id(38188193325756510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'  apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDO_DETALLE_ENTREGA'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38188345810756512)
,p_event_id=>wwv_flow_imp.id(38188193325756510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12526986760514431)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138650663678528741)
,p_name=>'Nuevo'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138650760567528742)
,p_event_id=>wwv_flow_imp.id(138650663678528741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P34_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153257007532869710)
,p_name=>'levanta_detalle'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11284591626862777)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153260684799869746)
,p_event_id=>wwv_flow_imp.id(153257007532869710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_COD_ART_CORTO,P34_COD_ARTICULO_DET,P34_PRECIO_UNITARIO,P34_CANTIDAD'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P34_cod_articulo_DET := null;',
'  :P34_precio_unitario  := null;',
'  :P34_cantidad         := null;',
'  :P34_porc_descuento   := null;',
'  :P34_porc_recargo     := null;',
'  :P34_total_iva        := null;',
'  :P34_monto_total      := null;',
'  :P34_total            := null;',
'  :P34_descuento        := null;',
'  :P34_cod_iva          := null;',
'  :P34_recargo          := null;',
'  :P34_porc_iva         := null;',
'  :p34_requiere_armado  := null;',
'  :P34_monto_gravada_10 := null;',
'  :P34_monto_gravada_5  := null;',
'  :P34_monto_exenta     := null;',
'end;',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153257183282869711)
,p_event_id=>wwv_flow_imp.id(153257007532869710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(205375949849296825)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153257249636869712)
,p_name=>'cancelar'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156536484310057726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153257332928869713)
,p_event_id=>wwv_flow_imp.id(153257249636869712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(205375949849296825)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153257966815869719)
,p_name=>'AGREGA_DETALLE_ART'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156536811033057725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156807259639017244)
,p_event_id=>wwv_flow_imp.id(153257966815869719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VTIPO_IMPUESTO VARCHAR2(10);  VCOD_IVA   VARCHAR2(10);  vporc_iva  NUMBER;  vfec_vigencia  DATE;  vporcentaje    NUMBER(8, 2);  vexento_ad     varchar2(5);  vregimen_turismo   varchar2(5);  VDECIMALES     NUMBER;  vexenta_regimen    number;',
'  vgravada_regimen   number;  vtotal_regimen number;  viva_regimen   number;  vrecargo   number;  vdescuento     NUMBER;  viva_rec   NUMBER;  viva_des   NUMBER;  vunitario  number;  VMONTO_TOTAL   NUMBER;',
'  VTOTAL_IVA     NUMBER;  VTOTAL     NUMBER;  vunitario_c_iva    number;  vmonto_total_c_iva number;',
'',
'BEGIN',
'  IF :P34_COD_MONEDA = ''1'' THEN',
'    VDECIMALES := 0;',
'  ELSE',
'    VDECIMALES := 2;',
'  END IF;',
'  Vdecimales:=50;',
'  BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = ''1''',
'       AND C.COD_CLIENTE = :P34_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'  BEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = ''1''',
'       and a.cod_articulo = :P34_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'  IF nvl(VTIPO_IMPUESTO, ''G'') = ''E'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND  nvl(vexento_ad, ''N'') = ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  if nvl(Vporc_iva, 0) = 0 then',
'    vunitario := round(nvl(:P34_precio_unitario, 0), nvl(Vdecimales, 0));',
'  else',
'    vunitario := round(nvl(:P34_precio_unitario, 0) / (1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'  ',
'  end if;',
'  ',
'  vdescuento   := vunitario * :P34_CANTIDAD * (:P34_PORC_DESCUENTO / 100);',
'  vrecargo     := NVL(vunitario * :P34_CANTIDAD * (:P34_PORC_recargo / 100),0);',
'  VMONTO_TOTAL := round((VUNITARIO * :P34_CANTIDAD) - nvl(vdescuento, 0) + nvl(vrecargo, 0), nvl(Vdecimales, 0));',
'  VTOTAL_IVA   := round(VMONTO_TOTAL * VPORC_IVA, nvl(Vdecimales, 0));',
'  ',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' then',
'    vtotal_regimen := nvl(vmonto_total, 0) + nvl(vtotal_iva, 0);',
'    vgravada_regimen :=0; ',
'    vexenta_regimen:=vtotal_regimen;',
'   ',
'     vgravada_regimen:=0;',
'              viva_regimen:=  0 ; ',
'    Vmonto_total := round(nvl(vgravada_regimen, 0) +',
'                          nvl(vexenta_regimen, 0),',
'                          nvl(vdecimales, 0));',
'    Vtotal_iva   := round(nvl(viva_regimen, 0), nvl(vdecimales, 0));',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'IF :P34_COD_MONEDA = ''1'' THEN',
'    VDECIMALES := 0;',
'  ELSE',
'    VDECIMALES := 2;',
'  END IF;',
'  :P34_DESCUENTO   := ROUND(NVL(VDESCUENTO, 0), nvl(vdecimales, 0));',
'  :P34_PORC_IVA    := nvl(VPORC_IVA,0.1);',
'  :P34_RECARGO     := NVL(VRECARGO, 0);',
'  :P34_COD_IVA     := VCOD_IVA;',
'  :P34_MONTO_TOTAL := ROUND(VMONTO_TOTAL, nvl(vdecimales, 0));',
'  :P34_TOTAL_IVA   := ROUND(VTOTAL_IVA, nvl(vdecimales, 0));',
'  :P34_TOTAL       := ROUND(VMONTO_TOTAL + VTOTAL_IVA, nvl(vdecimales, 0));',
'END;',
''))
,p_attribute_02=>'P34_COD_ARTICULO_DET,P34_PORC_DESCUENTO,P34_CANTIDAD,P34_PRECIO_UNITARIO,P34_COD_MONEDA,P34_PORC_RECARGO'
,p_attribute_03=>'P34_TOTAL_IVA,P34_MONTO_TOTAL,P34_TOTAL,P34_COD_IVA,P34_PORC_IVA,P34_DESCUENTO,P34_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156807347488017245)
,p_event_id=>wwv_flow_imp.id(153257966815869719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_MONTO_GRAVADA_10 NUMBER;',
'vporcentaje number;',
'VTIPO_IMPUESTO varchar2(100);',
'vregimen_turismo  varchar2(100);',
'vexento_ad varchar2(100);',
'vcod_iva varchar2(100); ',
'vporc_iva varchar2(100); ',
'BEGIN',
'',
' BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = ''1''',
'       AND C.COD_CLIENTE = :P34_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'',
'bEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = ''1''',
'       and a.cod_articulo = :P34_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    ',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'',
'',
' IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' THEN',
'',
'  --if (:P34_PORC_IVA = round(1.5 / 100, 2) or :P34_PORC_IVA = round(1.5 / 100, 3)) then',
'    :P34_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10 := :0;',
'    :P34_MONTO_GRAVADA_5  := 0;',
'    ',
'    :P34_MONTO_exenta     := :P34_MONTO_TOTAL ;',
'  elsif :P34_TOTAL_IVA > 0 and :P34_PORC_IVA = 0.1 then',
'    :P34_MONTO_GRAVADA_10 := :P34_monto_total;',
'    :P34_MONTO_GRAVADA_5  := 0;',
'    :P34_MONTO_exenta     := 0;',
'  elsif :P34_TOTAL_IVA > 0 and :P34_PORC_IVA = 0.05 then',
'    :P34_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10:=0;',
'    :P34_MONTO_GRAVADA_5  := :P34_monto_total;',
'    :P34_MONTO_exenta     := :P34_monto_total - V_MONTO_GRAVADA_10;',
'  elsif nvl(:P34_TOTAL_IVA, 0) = 0 and :P34_PORC_IVA = 0 then',
'    :P34_MONTO_GRAVADA_10 := 0;',
'    :P34_MONTO_GRAVADA_5  := 0;',
'    :P34_MONTO_exenta     := :P34_monto_total;',
'  end if;',
'END;'))
,p_attribute_02=>'P34_MONTO_TOTAL,P34_TOTAL_IVA,P34_TOTAL,P34_COD_IVA,P34_PORC_IVA,P34_COD_ARTICULO_DET,P34_COD_CLIENTE'
,p_attribute_03=>'P34_MONTO_GRAVADA_10,P34_MONTO_GRAVADA_5,P34_MONTO_EXENTA'
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
 p_id=>wwv_flow_imp.id(153258047842869720)
,p_event_id=>wwv_flow_imp.id(153257966815869719)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :P34_PORC_DESCUENTO>80 THEN',
' 	raise_application_error(-20000,''El porcentaje de descuento no puede ser superior a 80%'');',
'     end if;',
'  if  nvl(:P34_total,0)>0 then ',
'  vtpedido_add_det(p12_ser_comprobante => :P34_ser_comprobante,',
'                       p12_nro_comprobante => :P34_nro_comprobante,',
'                       p12_cod_cliente => :P34_cod_cliente,',
'                       p12_nom_cliente => :P34_nom_cliente,',
'                       p12_cod_sucursal_dist => :P34_cod_sucursal_dist,',
'                       p12_lugar_entrega => :P34_lugar_entrega,',
'                       p12_cod_vendedor => :P34_cod_vendedor,',
'                       p12_cod_condicion_venta => :P34_cod_condicion_venta,',
'                       p12_cod_lista_precio => :P34_cod_lista_precio,',
'                       p12_id_pedido => :P34_id_pedido,',
'                       p12_cod_moneda => :P34_cod_moneda,',
'                       p12_cod_flete => :P34_cod_flete,',
'                       p12_tipo_entrega => :P34_tipo_entrega,',
'                       p12_comentario => :P34_comentario,',
'                       p12_tip_cambio => :P34_tip_cambio,',
'                       p12_tip_cambio_compra => :P34_tip_cambio_compra,',
'                       p12_cod_articulo => :P34_cod_articulo_DET,',
'                       p12_precio_unitario => :P34_precio_unitario,',
'                       p12_cantidad => :P34_cantidad,',
'                       p12_porc_descuento => :P34_porc_descuento,',
'                       p12_porc_recargo => :P34_porc_recargo,',
'                       p12_total_iva => :P34_total_iva,',
'                       p12_monto_total => :P34_monto_total,',
'                       p12_total => :P34_total,',
'                       p12_descuento => :P34_descuento,',
'                       p12_cod_iva => :P34_cod_iva,',
'                       p12_recargo => :P34_recargo,',
'                       p12_porc_iva => :P34_porc_iva,',
'                       p12_requiere_armado => :P34_requiere_armado,',
'                       p12_monto_gravada_10 => :P34_monto_gravada_10,',
'                       p12_monto_gravada_5 => :P34_monto_gravada_5,',
'                       p12_monto_exenta => :P34_monto_exenta);',
'                       :P34_CANTIDAD_DETALLE:=1;',
'                      else',
'        	raise_application_error(-20000,''El total del detalle debe ser mayor a 0'');',
'        end if;',
'end;',
''))
,p_attribute_02=>'P34_SER_COMPROBANTE, P34_NRO_COMPROBANTE P34_COD_CLIENTE , P34_COD_SUCURSAL_DIST ,P34_LUGAR_ENTREGA,P34_COD_VENDEDOR, P34_COD_CONDICION_VENTA, P34_COD_LISTA_PRECIO, P34_ID_PEDIDO, P34_COD_MONEDA, P34_COD_FLETE, P34_TIPO_ENTREGA,P34_COMENTARIO,P34_TIP'
||'_CAMBIO,              P34_TIP_CAMBIO_COMPRA,P34_COD_ARTICULO_DET,P34_PRECIO_UNITARIO,P34_CANTIDAD,P34_PORC_DESCUENTO,P34_PORC_RECARGO,P34_TOTAL_IVA,        P34_MONTO_TOTAL,P34_TOTAL,P34_DESCUENTO,P34_COD_IVA,P34_RECARGO,P34_PORC_IVA,P34_REQUIERE_ARMA'
||'DO,P34_MONTO_GRAVADA_10,P34_MONTO_GRAVADA_5,P34_MONTO_EXENTA,P34_CANTIDAD_DETALLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187368835722765338)
,p_event_id=>wwv_flow_imp.id(153257966815869719)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT',
'  ',
'   sum(COSTO_UNITARIO * QUANTITY) COSTO_TOTAL,',
'   case',
'     when nvl(sum(MONTO_TOTAL),0) > 0 then',
'      ROUND((sum(MONTO_TOTAL) - sum(COSTO_UNITARIO * QUANTITY)) /',
'            sum(MONTO_TOTAL) * 0,',
'            2)',
'     else',
'      100',
'   end MARGEN',
'    into :P34_COSTO_TOTAL, :P34_MARGEN',
'    FROM (select seq_id,',
'                 to_number(c004) as quantity,',
'                 to_number(c008) as monto_total,',
'                 ',
'                 (select nvl(costo_prom_nue, 0) /',
'                         decode(:P34_COD_MONEDA, ''2'', :P34_TIP_CAMBIO, 1)',
'                  ',
'                    from st_costos_art',
'                   where cod_empresa = :P_COD_EMPRESA',
'                     and cod_articulo = c003',
'                     and tip_comprobante <> ''INI''',
'                     and nvl(fec_proceso, fec_comprobante) <=',
'                         :P34_FEC_COMPROBANTE',
'                     and to_char(nvl(fec_proceso, fec_comprobante),',
'                                 ''yyyy/mm/dd'') || rowid =',
'                         (select max(to_char(nvl(fec_proceso, fec_comprobante),',
'                                             ''yyyy/mm/dd'') || rowid)',
'                            from st_costos_art',
'                           where cod_empresa = :P_COD_EMPRESA',
'                             and cod_articulo = c003',
'                             and tip_comprobante <> ''INI''',
'                             and nvl(fec_proceso, fec_comprobante) <=',
'                                 :P34_FEC_COMPROBANTE)) COSTO_UNITARIO',
'          ',
'            from apex_collections',
'           where collection_name = ''VT_PEDIDOS_DETALLE''',
'           order by 1 asc);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P34_FEC_COMPROBANTE,P34_COD_MONEDA,P34_COD_MONEDA'
,p_attribute_03=>'P34_COSTO_TOTAL,P34_MARGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153258363341869723)
,p_event_id=>wwv_flow_imp.id(153257966815869719)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(205375949849296825)
,p_client_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_client_condition_element=>'P34_TOTAL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153258431242869724)
,p_event_id=>wwv_flow_imp.id(153257966815869719)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73962410168791193)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153258782322869727)
,p_name=>'obtiene_precio'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_ARTICULO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153258844512869728)
,p_event_id=>wwv_flow_imp.id(153258782322869727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PRECIO_web_APEX(:P34_COD_ARTICULO_DET,',
'                         :P34_COD_CLIENTE,',
'                         :P34_COD_LISTA_PRECIO,',
'                         0) PROCESO',
'    INTO :P34_PRECIO_UNITARIO',
'    FROM DUAL;',
'  ',
'  IF :P34_COD_SUCURSAL = ''105'' THEN',
'    BEGIN',
'        SELECT DESCUENTO',
'        INTO :P34_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'        WHERE COD_EMPRESA  = ''1''',
'        AND COD_ARTICULO = :P34_COD_ARTICULO_DET;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P34_PORC_DESCUENTO := 0;',
'    END;',
'  END IF;',
'  IF :P34_COD_SUCURSAL = ''105.1'' THEN',
'    BEGIN',
'        SELECT DESCUENTO',
'        INTO :P34_PORC_DESCUENTO',
'        FROM VT_OFERTAS_feria',
'        WHERE COD_EMPRESA  = ''1''',
'        AND COD_ARTICULO = :P34_COD_ARTICULO_DET;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P34_PORC_DESCUENTO := 0;',
'    END;',
'  END IF;',
'',
'  IF :P34_COD_ARTICULO_DET = ''FLETE'' THEN',
'    begin',
'      select SUM(to_number(c007) + to_number(c008)) * 3 / 100',
'        INTO :P34_PRECIO_UNITARIO',
'        from apex_collections',
'       where collection_name = ''VT_PEDIDOS_DETALLE'';',
'    exception',
'      when others then',
'        :P34_PRECIO_UNITARIO := 0;',
'    end;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P34_COD_LISTA_PRECIO,P34_COD_CLIENTE,P34_COD_ARTICULO_DET,P34_COD_SUCURSAL'
,p_attribute_03=>'P34_PRECIO_UNITARIO,P34_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153259038124869730)
,p_name=>'OBTIENE_DESCUENTO'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153259163011869731)
,p_event_id=>wwv_flow_imp.id(153259038124869730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_PORC_DESCUENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'',
'',
'nvl(f_descuento_tipo_cliente(:P34_cod_cliente, :P34_cod_condicion_venta,:P34_cod_lista_precio,:P34_cantidad ,:P34_cod_articulo_det, NULL),0)',
'',
'',
'descuento',
'',
'from dual',
'WHERE NVL(:P34_COD_SUCURSAL,''01'') NOT IN (''105'',''105.1'')',
'UNION ALL',
'	 ',
'				 ',
'								SELECT descuento',
'							',
'								  FROM VT_ofertas_OUTLET ',
'								 WHERE COD_EMPRESA  = ''1''',
'									 AND COD_ARTICULO = :P34_cod_articulo_det',
'									 AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'								 	 and fec_alta    <= TRUNC(SYSDATE)',
'AND NVL(:P34_COD_SUCURSAL,''01'')   IN (''105'') ',
'UNION ALL',
'	 ',
'				 ',
'								SELECT descuento',
'							',
'								  FROM VT_OFERTAS_feria ',
'								 WHERE COD_EMPRESA  = ''1''',
'									 AND COD_ARTICULO = :P34_cod_articulo_det',
'									 AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'								 	 and fec_alta    <= TRUNC(SYSDATE)',
'AND NVL(:P34_COD_SUCURSAL,''01'')   IN (''105.1'') '))
,p_attribute_07=>'P34_COD_LISTA_PRECIO,P34_COD_ARTICULO_DET,P34_COD_CLIENTE,P34_COD_CONDICION_VENTA,P34_CANTIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153259313425869733)
,p_name=>'obtiene_monto_total'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153259449940869734)
,p_event_id=>wwv_flow_imp.id(153259313425869733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VTIPO_IMPUESTO VARCHAR2(10);  VCOD_IVA   VARCHAR2(10);  vporc_iva  NUMBER;  vfec_vigencia  DATE;  vporcentaje    NUMBER(8, 2);  vexento_ad     varchar2(5);  vregimen_turismo   varchar2(5);  VDECIMALES     NUMBER;  vexenta_regimen    number;',
'  vgravada_regimen   number;  vtotal_regimen number;  viva_regimen   number;  vrecargo   number;  vdescuento     NUMBER;  viva_rec   NUMBER;  viva_des   NUMBER;  vunitario  number;  VMONTO_TOTAL   NUMBER;',
'  VTOTAL_IVA     NUMBER;  VTOTAL     NUMBER;  vunitario_c_iva    number;  vmonto_total_c_iva number;',
'',
'BEGIN',
'  IF :P34_COD_MONEDA = ''1'' THEN',
'    VDECIMALES := 0;',
'  ELSE',
'    VDECIMALES := 2;',
'  END IF;',
'  Vdecimales:=50;',
'  BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = ''1''',
'       AND C.COD_CLIENTE = :P34_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'  BEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = ''1''',
'       and a.cod_articulo = :P34_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'  IF nvl(VTIPO_IMPUESTO, ''G'') = ''E'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND  nvl(vexento_ad, ''N'') = ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  if nvl(Vporc_iva, 0) = 0 then',
'    vunitario := round(nvl(:P34_precio_unitario, 0), nvl(Vdecimales, 0));',
'  else',
'    vunitario := round(nvl(:P34_precio_unitario, 0) / (1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'  ',
'  end if;',
'  ',
'  vdescuento   := vunitario * :P34_CANTIDAD * (:P34_PORC_DESCUENTO / 100);',
'  vrecargo     := NVL(vunitario * :P34_CANTIDAD * (:P34_PORC_recargo / 100),0);',
'  VMONTO_TOTAL := round((VUNITARIO * :P34_CANTIDAD) - nvl(vdescuento, 0) + nvl(vrecargo, 0), nvl(Vdecimales, 0));',
'  VTOTAL_IVA   := round(VMONTO_TOTAL * VPORC_IVA, nvl(Vdecimales, 0));',
'  ',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' then',
'    vtotal_regimen := nvl(vmonto_total, 0) + nvl(vtotal_iva, 0);',
'    vgravada_regimen :=0; ',
'    vexenta_regimen:=vtotal_regimen;',
'   ',
'     vgravada_regimen:=0;',
'              viva_regimen:=  0 ; ',
'    Vmonto_total := round(nvl(vgravada_regimen, 0) +',
'                          nvl(vexenta_regimen, 0),',
'                          nvl(vdecimales, 0));',
'    Vtotal_iva   := round(nvl(viva_regimen, 0), nvl(vdecimales, 0));',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'IF :P34_COD_MONEDA = ''1'' THEN',
'    VDECIMALES := 0;',
'  ELSE',
'    VDECIMALES := 2;',
'  END IF;',
'  :P34_DESCUENTO   := ROUND(NVL(VDESCUENTO, 0), nvl(vdecimales, 0));',
'  :P34_PORC_IVA    := nvl(VPORC_IVA,0.1);',
'  :P34_RECARGO     := NVL(VRECARGO, 0);',
'  :P34_COD_IVA     := VCOD_IVA;',
'  :P34_MONTO_TOTAL := ROUND(VMONTO_TOTAL, nvl(vdecimales, 0));',
'  :P34_TOTAL_IVA   := ROUND(VTOTAL_IVA, nvl(vdecimales, 0));',
'  :P34_TOTAL       := ROUND(VMONTO_TOTAL + VTOTAL_IVA, nvl(vdecimales, 0));',
'END;',
''))
,p_attribute_02=>'P34_COD_ARTICULO_DET,P34_PORC_DESCUENTO,P34_CANTIDAD,P34_PRECIO_UNITARIO,P34_COD_MONEDA,P34_PORC_RECARGO'
,p_attribute_03=>'P34_TOTAL_IVA,P34_MONTO_TOTAL,P34_TOTAL,P34_COD_IVA,P34_PORC_IVA,P34_DESCUENTO,P34_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153259500791869735)
,p_event_id=>wwv_flow_imp.id(153259313425869733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_MONTO_GRAVADA_10 NUMBER;',
'vporcentaje number;',
'VTIPO_IMPUESTO varchar2(100);',
'vregimen_turismo  varchar2(100);',
'vexento_ad varchar2(100);',
'vcod_iva varchar2(100); ',
'vporc_iva varchar2(100); ',
'BEGIN',
'',
' BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = ''1''',
'       AND C.COD_CLIENTE = :P34_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'',
'bEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = ''1''',
'       and a.cod_articulo = :P34_cod_articulo_det',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    ',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'',
'',
' IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' THEN',
'',
'  --if (:P34_PORC_IVA = round(1.5 / 100, 2) or :P34_PORC_IVA = round(1.5 / 100, 3)) then',
'    :P34_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10 := :0;',
'    :P34_MONTO_GRAVADA_5  := 0;',
'    ',
'    :P34_MONTO_exenta     := :P34_MONTO_TOTAL ;',
'  elsif :P34_TOTAL_IVA > 0 and :P34_PORC_IVA = 0.1 then',
'    :P34_MONTO_GRAVADA_10 := :P34_monto_total;',
'    :P34_MONTO_GRAVADA_5  := 0;',
'    :P34_MONTO_exenta     := 0;',
'  elsif :P34_TOTAL_IVA > 0 and :P34_PORC_IVA = 0.05 then',
'    :P34_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10:=0;',
'    :P34_MONTO_GRAVADA_5  := :P34_monto_total;',
'    :P34_MONTO_exenta     := :P34_monto_total - V_MONTO_GRAVADA_10;',
'  elsif nvl(:P34_TOTAL_IVA, 0) = 0 and :P34_PORC_IVA = 0 then',
'    :P34_MONTO_GRAVADA_10 := 0;',
'    :P34_MONTO_GRAVADA_5  := 0;',
'    :P34_MONTO_exenta     := :P34_monto_total;',
'  end if;',
'END;'))
,p_attribute_02=>'P34_MONTO_TOTAL,P34_TOTAL_IVA,P34_TOTAL,P34_COD_IVA,P34_PORC_IVA,P34_COD_ARTICULO_DET,P34_COD_CLIENTE'
,p_attribute_03=>'P34_MONTO_GRAVADA_10,P34_MONTO_GRAVADA_5,P34_MONTO_EXENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153259622758869736)
,p_name=>'OBTIENE_MONTO_RECARGO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153259732846869737)
,p_event_id=>wwv_flow_imp.id(153259622758869736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VTIPO_IMPUESTO VARCHAR2(10);',
'VCOD_IVA VARCHAR2(10);',
'     vporc_iva       NUMBER;',
'     vfec_vigencia DATE;',
'     vporcentaje   NUMBER(8,2);',
'     vexento_ad varchar2(5);',
'     vregimen_turismo       varchar2(5);',
'     VDECIMALES NUMBER;',
'      vexenta_regimen number;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'		',
'		viva_rec           NUMBER;',
'		viva_des           NUMBER;',
'		vunitario          number;',
'                VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'		vunitario_c_iva    number;',
'		vmonto_total_c_iva number;',
'',
'BEGIN',
'IF :P34_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES C',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_CLIENTE=:P34_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos a, st_iva i',
'      where a.cod_empresa = ''1''',
'        and a.cod_articulo = :P34_cod_articulo_DET',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'     vporcentaje := vporc_iva;',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN',
'       vporcentaje := 0;',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''  ',
'            AND  nvl(vregimen_turismo,''N'') = ''S''       THEN',
'      vporcentaje := 0;',
'       vporc_iva := 0;',
'      END IF;',
'',
'',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(:P34_precio_unitario, 0),nvl(Vdecimales, 0));           ',
'		else		',
'				vunitario       := round(nvl(:P34_precio_unitario, 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'				',
'		end if;',
'                ',
'                ',
'        vdescuento:= vunitario * :P34_CANTIDAD*(:P34_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P34_CANTIDAD*(:P34_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P34_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) or vporc_iva=0 then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:=0; ',
'              vexenta_regimen:=vtotal_regimen;',
'              vgravada_regimen:=0;',
'              viva_regimen:=  0 ;    ',
'              Vporc_iva:=0;',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
'',
':P34_DESCUENTO:=ROUND(NVL(VDESCUENTO,0),nvl(vdecimales, 0));',
':P34_PORC_IVA:=nvl(VPORC_IVA,0.1);',
':P34_RECARGO:=NVL(VRECARGO,0);',
':P34_COD_IVA:=VCOD_IVA;',
':P34_MONTO_TOTAL:= ROUND(VMONTO_TOTAL,nvl(vdecimales, 0));',
':P34_TOTAL_IVA := ROUND(VTOTAL_IVA,nvl(vdecimales, 0));',
':P34_TOTAL:= ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0));',
'END;'))
,p_attribute_02=>'P34_COD_ARTICULO_DET,P34_PORC_DESCUENTO,P34_CANTIDAD,P34_PRECIO_UNITARIO,P34_COD_MONEDA,P34_PORC_RECARGO'
,p_attribute_03=>'P34_TOTAL_IVA,P34_MONTO_TOTAL,P34_TOTAL,P34_COD_IVA,P34_PORC_IVA,P34_DESCUENTO,P34_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153259817768869738)
,p_name=>'obtiene_articulo'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153259906754869739)
,p_event_id=>wwv_flow_imp.id(153259817768869738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_COD_ARTICULO_DET'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo',
'from st_articulos a where cod_empresa=''1''',
'and cod_Art_corto=UPPER(:P34_COD_ART_CORTO)',
'and rownum=1'))
,p_attribute_07=>'P34_COD_ART_CORTO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153260013288869740)
,p_event_id=>wwv_flow_imp.id(153259817768869738)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(410607856243162441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153260131652869741)
,p_name=>'OBTIENE_DESCRIPCION'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_COD_ARTICULO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153260235714869742)
,p_event_id=>wwv_flow_imp.id(153260131652869741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_DESC_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'from st_articulos a where cod_empresa=''1''',
'and cod_articulo=:P34_cod_Articulo_DET',
'and rownum=1'))
,p_attribute_07=>'P34_COD_ARTICULO_DET'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11300455274862784)
,p_name=>'expandir_region'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156536811033057725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11300934833862784)
,p_event_id=>wwv_flow_imp.id(11300455274862784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_CANTIDAD_DETALLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) ',
'from apex_collections',
' where collection_name = ''VT_PEDIDOS_DETALLE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156806862966017240)
,p_event_id=>wwv_flow_imp.id(11300455274862784)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910520669791353)
,p_attribute_01=>'document.getElementById("pedido").classList.add("is-collapsed");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11301471909862784)
,p_event_id=>wwv_flow_imp.id(11300455274862784)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73910520669791353)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P34_CANTIDAD_DETALLE"),',
'    npedido = $v("P34_NRO_COMPROBANTE")',
'',
'   , $region = $(this.affectedElements[0]);',
'  ',
' if (numEntries >0 && $region.hasClass(''is-expanded'') && npedido !== ''undefined'' ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries <1  && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'//expanded',
'//collapsed'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153260737947869747)
,p_name=>'verifica_ruc'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153260869721869748)
,p_event_id=>wwv_flow_imp.id(153260737947869747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P34_PERMITE_RUC:=''S'';',
'',
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  VDIREC               VARCHAR2(32000);',
'  V_DETALLE            VARCHAR2(10000);',
'  V_CABECERA           VARCHAR2(10000);',
'  VDATOS_RETORNO       VARCHAR2(32000);',
'  P_JSON               VARCHAR2(4000);',
'  P_DATOS              VARCHAR2(4000);',
'  L_MSJ                VARCHAR2(4000);',
'  L_PATH               VARCHAR2(200);',
'  L_ESTADO             VARCHAR2(200);',
'  NOMBRE               VARCHAR2(1);',
'  VDATOS2              VARCHAR2(5000);',
'  V_DESCRIPCION_ESTADO VARCHAR2(500);',
'BEGIN',
'  :P0_MENSAJE_VALIDACION := NULL;',
'  IF :P34_RUC IS NOT NULL THEN',
'    DECLARE',
'      T_HTTP_REQ     UTL_HTTP.REQ;',
'      T_HTTP_RESP    UTL_HTTP.RESP;',
'      T_REQUEST_BODY VARCHAR2(30000);',
'    BEGIN',
'      BEGIN',
'        VDIREC := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      END;',
'      VDATOS := ''{"ruc":["'' || :P34_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      P_JSON := ''{"ruc":["'' || :P34_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'    ',
'      T_REQUEST_BODY := VDATOS;',
'      T_HTTP_REQ     := UTL_HTTP.BEGIN_REQUEST(VDIREC, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Type'', ''application/json'');',
'    ',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Length'', LENGTH(VDATOS));',
'    ',
'      UTL_HTTP.WRITE_TEXT(T_HTTP_REQ, T_REQUEST_BODY);',
'      P_JSON := T_REQUEST_BODY;',
'      DBMS_OUTPUT.PUT_LINE(''t_request_body: '' || T_REQUEST_BODY);',
'    ',
'      T_HTTP_RESP := UTL_HTTP.GET_RESPONSE(T_HTTP_REQ);',
'      UTL_HTTP.READ_TEXT(T_HTTP_RESP, P_DATOS);',
'      UTL_HTTP.END_RESPONSE(T_HTTP_RESP);',
'      BEGIN',
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00D1'', ''\005Cu00D1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
'      ',
'        APEX_JSON.PARSE(VDATOS2);',
'        :P34_ESTADO            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].codigoRespuesta'',',
'                                                         P0     => 1);',
'        :P0_MENSAJE_VALIDACION := CONVERT(REPLACE(APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].mensajeError'',',
'                                                                         P0     => 1),',
'                                                  ''"'',',
'                                                  ''''),',
'                                          ''WE8MSWIN1252'',',
'                                          ''UTF8'');',
'        V_DESCRIPCION_ESTADO   := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].descripcionEstadoRuc'',',
'                                                         P0     => 1);',
'        IF :P34_ESTADO = ''EXISTE'' AND V_DESCRIPCION_ESTADO <> ''ACTIVO'' THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 '' ||'),
'                                    V_DESCRIPCION_ESTADO ||'' para el codigo de cliente ''||:P34_COD_CLIENTE;',
'                                    :P34_PERMITE_RUC:=''N'';',
'                                        :P34_COD_CLIENTE:=NULL;',
'          ',
'        ELSIF :P34_ESTADO <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc ingresado no existe para el codigo de cliente ''||:P34_COD_CLIENTE; '),
'           :P34_PERMITE_RUC:=''N''; ',
'             :P34_COD_CLIENTE:=NULL;',
'        END IF;',
'        if :P34_COD_CLIENTE =''2144'' THEN',
'           :P34_PERMITE_RUC:=''S''; ',
'        END IF;',
'      END;',
'    END;',
'  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P34_RUC,P34_COD_CLIENTE'
,p_attribute_03=>'P34_ESTADO,P0_MENSAJE_VALIDACION,P34_PERMITE_RUC'
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
 p_id=>wwv_flow_imp.id(157923714513337802)
,p_name=>'llama_imprimir'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157923644674337801)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157923823734337803)
,p_event_id=>wwv_flow_imp.id(157923714513337802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P34_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = apex.item("P34_COD_EMPRESA").getValue();',
'var tip_comprobante = apex.item("P34_TIP_COMPROBANTE").getValue();',
'var ser_comprobante = apex.item("P34_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P34_NRO_COMPROBANTE").getValue();',
'var cliente = ''&P34_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "VTPEDIDO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161537319523493212)
,p_name=>'levantar_cliente'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11261532916862766)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161537553628493214)
,p_event_id=>wwv_flow_imp.id(161537319523493212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vjerarquia varchar2(100);',
'vtot number;',
' VMONEDA VARCHAR2(10);',
'				vtip number;',
'begin',
':P34_COD_CLIENTE_1:=:P34_COD_CLIENTE;',
'	BEGIN   	',
'				SELECT TC.DESCRIPCION, cc.nro_jerarquia, Cc.LIMITE_CREDITO, cc.cod_moneda_limite',
'				  INTO :P34_TIPO_CLIENTE, VJERARQUIA,     	:P34_LINEA_CREDITO, VMONEDA',
'',
'				  FROM CC_TIPO_CLIENTE TC, CC_CLIENTES CC',
'				 WHERE TC.COD_TIP_CLIENTE=CC.TIP_CLIENTE',
'                                 AND CC.COD_EMPRESA=''1''',
'                                 AND CC.COD_CLIENTE = :P34_COD_CLIENTE;  ',
'		EXCEPTION',
'				WHEN OTHERS THEN',
'			      :P34_TIPO_CLIENTE:=NULL;',
'		END ;',
'                ',
'begin',
'				select descripcion',
'				  into :P34_CALIFICACION_COBRANZA',
'				  from cc_jerarquias',
'				 where cod_empresa   = ''1''',
'				   and nro_jerarquia = vjerarquia ;',
'		exception',
'				when others then',
'				:P34_CALIFICACION_COBRANZA:= null ;          ',
'		end;                ',
'                ',
'                ',
'',
'	Begin',
'				select nvl( sum( ',
'                                CASE WHEN COD_MONEDA_CUOTA=''2'' THEN        saldo_cuota ELSE 0 END',
'                                ), 0 ) ,',
'                                nvl( sum( ',
'                                CASE WHEN COD_MONEDA_CUOTA=''1'' THEN        saldo_cuota ELSE 0 END',
'                                ), 0 ) ',
'				  into :P34_SALDO_US, :P34_SALDO_GS',
'				  from cc_saldos',
'				 where cod_empresa      = ''1''',
'				   and cod_cliente      = :P34_cod_cliente;',
'		exception',
'				when others then',
'						:P34_SALDO_US := 0;',
'		end;',
'                ',
'                ',
'        	 ',
'				',
'		begin',
'				select tipo_cambio_dia',
'				  into vtip',
'				  from monedas',
'				 where cod_moneda = ''2'';',
'				 ',
'				begin',
'						select sum(nvl(SAL.monto_valor, 0) * nvl(mON.tipo_cambio_dia, 1)/ vtip)',
'						  into :P34_VALORES_ADEPOSITAR',
'						  from CC_VALORES sal,    ',
'						  		 monedas mon,         ',
'						  		 CC_FORMAS_COBROS CO',
'						 where SAL.cod_empresa = ''1''',
'							 and sal.cod_cliente = :P34_cod_CLIENTE',
'							 and nvl(SAL.ESTADO_VALOR,''P'' ) <> ''D''',
'							 AND nvl(SAL.ESTADO_VALOR,''P'' ) NOT IN (''CR'',''CP'',''C'',''R'')',
'							 and (SAL.FEC_EMISION >TO_DATE(''01/01/2000'') )',
'							 and SAL.COD_MONEDA = mon.cod_moneda',
'							 AND SAL.COD_EMPRESA = CO.COD_EMPRESA',
'							 AND SAL.COD_PER_JURIDICA = CO.COD_PER_JURIDICA',
'							 AND SAL.TIP_DOCUMENTO = CO.TIP_DOCUMENTO',
'							 AND SAL.NRO_VALOR = CO.NRO_VALOR',
'							 AND SAL.FEC_EMISION <> SAL.FEC_VENCIMIENTO ',
'							 AND CO.SUB_TIPO_TRANS=''16'';',
'				EXCEPTION',
'						WHEN OTHERS THEN ',
'								:P34_VALORES_ADEPOSITAR:=0;',
'				END;',
'               IF vmoneda=''1''       then          ',
'     	:P34_LINEA_CREDITO := nvl( :P34_LINEA_CREDITO, 0 ) * nvl( vtip, 1 );                           ',
'        end if;',
'        ',
'	vtot := nvl( :P34_saldo_gs, 0 ) / nvl( vtip, 1 );  ',
'				:P34_saldo_total_usd := nvl( vtot, 0 ) + nvl( :P34_saldo_us, 0 );                                ',
'',
'	:P34_posible := nvl( :P34_lINEA_credito, 0 ) - nvl( :P34_saldo_total_usd,0 )-nvl(:P34_VALORES_ADEPOSITAR,0);',
'',
'	if  f_linea_credito_cliente(:P34_cod_cliente )	>100 then',
'	:P34_sobregirado:=''SOBREGIRADO'';',
'else                                   ',
'	:P34_sobregirado:=NULL;',
'end if;',
':P34_saldo_gs:= to_char(:P34_saldo_gs,''999G999G999G990'');',
':P34_saldo_US:= to_char(:P34_saldo_US,''999G999G999G990D00'');',
':P34_linea_credito:= to_char(:P34_linea_credito,''999G999G999G990D00'');',
':P34_posible:= to_char(:P34_posible,''999G999G999G990D00'');',
':P34_saldo_total_usd:= to_char(:P34_saldo_total_usd,''999G999G999G990D00'');',
'',
'END;	        ',
'end;'))
,p_attribute_02=>'P34_COD_CLIENTE'
,p_attribute_03=>'P34_TIPO_CLIENTE,P34_LINEA_CREDITO,P34_SALDO_GS,P34_SALDO_US,P34_VALORES_ADEPOSITAR,P34_SALDO_TOTAL_USD,P34_POSIBLE,P34_CALIFICACION_COBRANZA,P34_SOBREGIRADO,P34_COD_CLIENTE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161537492280493213)
,p_event_id=>wwv_flow_imp.id(161537319523493212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(247462632034605241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161537708995493216)
,p_name=>'Cerrar_datos_clientes'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161537696498493215)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161537860644493217)
,p_event_id=>wwv_flow_imp.id(161537708995493216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(247462632034605241)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11290089614862779)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11262360828862767)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11290832795862780)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NUEVO_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_CABECERA'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'  apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDO_DETALLE_ENTREGA'');',
'	:P34_NRO_COMPROBANTE:=null;',
'	:P34_cod_cliente:=null;',
'	:P34_NRO_ORDEN_COMPRA:=null;',
'	:P34_DIR_CLIENTE:=null;',
'	:P34_COD_VENDEDOR:=null;',
'	:P34_COD_SUCURSAL_DIST:=null;',
'	:P34_TEL_CLIENTE:=null;',
'	:P34_RUC:=null;',
'	:P34_COD_CONDICION_VENTA:=null;',
'	:P34_COD_LISTA_PRECIO:=null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11262747932862767)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138650585624528740)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11263164996862767)
,p_process_when=>'P34_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(175480717724656545)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR_pedido'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11262747932862767)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11291258319862780)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_PAGINA'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'12'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11262747932862767)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174253861547975447)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Valida detalles'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_valor NUMBER := 0;',
'BEGIN ',
'    BEGIN ',
'        select COUNT(*)',
'        INTO v_valor',
'          from apex_collections',
'         where collection_name = ''VT_PEDIDOS_DETALLE'';',
'         EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_valor := 0;',
'    END;',
'',
'    IF v_valor = 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''El pedido no se puede guardar sin detalles'');',
'    END IF;',
'END;',
'',
' ',
'IF :P34_TIPO_ENTREGA = ''CR'' AND NVL(:P34_ENTREGA_REMISION,''N'')=''S'' THEN ',
'   IF :P34_NRO_CI_ENTREGA IS NULl  THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar C.I. RETIRA FACURA'');',
'    END IF;',
'    IF :P34_CHAPA_ENTREGA IS NULL AND :P34_TIPO_ENTREGA = ''CR'' AND NVL(:P34_ENTREGA_REMISION,''N'')=''S'' THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar Chapa Entrega'');',
'    END IF;',
'END IF;',
' ',
'if :P34_CROQUIS_HABLADO is null    ',
'		and :P34_cod_lista_precio in (''5'',''32'') and :P34_tipo_entrega IN (''CA'',''IN'') then     ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar la forma de cobro y datos de entrega'');',
'    END IF;',
'     '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156803699370017208)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'valida_pedido'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P34_ENTREGA_REMISION=''S'' AND :P34_TIPO_ENTREGA=''CR'' ',
'AND (:P34_NRO_CI_ENTREGA IS NULL OR :P34_CHAPA_ENTREGA IS NULL  ) then',
'',
'	raise_application_error(-20000,''Debe Ingresar los datos de Entrega'');',
'  END IF;',
'',
'',
'  DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P34_CORREO_CLIENTE is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P34_CORREO_CLIENTE,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN             ',
'            	raise_application_error(-20000,''Formato de Correo no valido ''||v_mensaje);',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11263164996862767)
,p_process_when=>'P34_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11290441568862779)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P34_PERMITE_RUC=''S'' or :P34_COD_CLIENTE =''2144'' THEN',
'IF :P34_COD_PAIS=''PAR''  THEN',
'BEGIN',
'  IF :P34_NRO_COMPROBANTE IS NULL THEN',
'    BEGIN',
'      DECLARE',
'        VNRO_PEDIDO           NUMBER;',
'        VMONTO_TOTAL          NUMBER := 0;',
'        VTOTAL_IVA            NUMBER := 0;',
'        VMONTO_TOTAL_EX       NUMBER := 0;',
'        VNOMBRE               VARCHAR2(500);',
'        VIND_GUARDA           VARCHAR2(60) := ''N'';',
'        VIND_TRANSPORTADORA   VARCHAR2(60) := ''N'';',
'        VIND_ENVIAR           VARCHAR2(60) := ''S'';',
'        vCAMBIO_MONEDA_PRECIO number;',
'      BEGIN',
'        begin',
'          select max(nro_comprobante) + 1',
'            into :P34_NRO_COMPROBANTE',
'            from VT_PEDIDOS_CABECERA a',
'           where cod_empresa = ''1''',
'             and a.tip_comprobante = ''PED''',
'             and a.ser_comprobante = :P34_SER_COMPROBANTE',
'             and :P34_NRO_COMPROBANTE is   null;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            :P34_NRO_COMPROBANTE := 1;',
'        end;',
'        VNRO_PEDIDO := :P34_NRO_COMPROBANTE;',
'        IF :P34_NRO_COMPROBANTE IS NOT NULL THEN',
'          BEGIN',
'            SELECT P.NOMBRE',
'              INTO VNOMBRE',
'              FROM CC_CLIENTES C, PERSONAS P',
'             WHERE C.COD_EMPRESA = ''1''',
'               AND C.COD_CLIENTE = :P34_COD_CLIENTE',
'               AND C.COD_PERSONA = P.COD_PERSONA;',
'          EXCEPTION',
'            WHEN OTHERS THEN',
'              NULL;',
'          END;',
'        ',
'          BEGIN',
'            Select m.tipo_cambio_credito',
'              into vCAMBIO_MONEDA_PRECIO',
'              from monedas m, parametros_generales p',
'             where p.cod_modulo = ''ST''',
'               and p.parametro = ''COD_MONEDA_PREC''',
'               and p.valor = m.cod_moneda;',
'          EXCEPTION',
'            when others then',
'              vCAMBIO_MONEDA_PRECIO := 1;',
'          END;',
'        ',
'          IF vnro_pedido IS NULL THEN',
'            vnro_pedido := ''1'';',
'          END IF;',
'          IF :P34_COMO_ENTREGAR = ''ENVIAR'' THEN',
'            VIND_GUARDA         := ''N'';',
'            VIND_TRANSPORTADORA := ''N'';',
'            VIND_ENVIAR         := ''S'';',
'          ELSIF :P34_COMO_ENTREGAR = ''GUARDA'' THEN',
'            VIND_GUARDA         := ''S'';',
'            VIND_TRANSPORTADORA := ''N'';',
'            VIND_ENVIAR         := ''N'';',
'          ELSIF :P34_COMO_ENTREGAR = ''TRANSPORTADORA'' THEN',
'            VIND_GUARDA         := ''N'';',
'            VIND_TRANSPORTADORA := ''S'';',
'            VIND_ENVIAR         := ''N'';',
'          else',
'            VIND_GUARDA         := ''N'';',
'            VIND_TRANSPORTADORA := ''N'';',
'            VIND_ENVIAR         := ''S'';',
'          end if;',
'          begin',
'          ',
'            INSERT INTO vt_pedidos_cabecera',
'              (cod_empresa,',
'               TIP_COMPROBANTE,',
'               SER_COMPROBANTE,',
'               NRO_COMPROBANTE,',
'               COD_SUCURSAL,',
'               FEC_COMPROBANTE,',
'               COD_CLIENTE,',
'               COD_VENDEDOR,',
'               COD_CONDICION_VENTA,',
'               COD_LISTA_PRECIO,',
'               DESCUENTO,',
'               COD_MONEDA,',
'               TIP_CAMBIO,',
'               TOT_GRAVADAS,',
'               TOT_EXENTAS,',
'               TOT_IVA,',
'               ESTADO,',
'               FEC_ESTADO,',
'               COD_USUARIO,',
'               FEC_ALTA,',
'               NRO_AUTORIZACION,',
'               CAMBIO_MONEDA_PRECIO,',
'               TIP_CAMBIO_COMPRA,',
'               FEC_VENCIMIENTO,',
'               TOT_DESCUENTO_DET,',
'               TIP_COMPROBANTE_REF,',
'               TEL_CLIENTE,',
'               RUC,',
'               PROCESADO,',
'               NRO_COMPROBANTE_REF,',
'               NOM_CLIENTE,',
'               NOMBRE_CAB,',
'               GRU_COMPROBANTE,',
'               FEC_NACIMIENTO,',
'               DIR_CLIENTE,',
'               DIAS,',
'               DESCUENTO_DET,',
'               COMENTARIO,',
'               COLUMNA,',
'               COD_SECTOR,',
'               CAMBIO_DOLAR,',
'               COD_DIRECCION,',
'               TIP_COMPROBANTE_PET,',
'               SER_COMPROBANTE_PET,',
'               NRO_COMPROBANTE_PET,',
'               NRO_INSCRIPCION_AD,',
'               IND_EXENTO_AD,',
'               COD_USUARIO_AUTORIZACION,',
'               FECHA_AUTORIZACION,',
'               AUTORIZADO,',
'               TOT_COMPROBANTE,',
'               RECARGO,',
'               cod_flete,',
'               COD_SUCURSAL_DIST,',
'               LUGAR_ENTREGA,',
'               tipo_entrega,',
'               derivado,',
'               FECHA_ENTREGA,',
'               IND_ENVIAR,',
'               IND_GUARDA,',
'               ENTREGA_REMISION,',
'               ind_cliente_final,',
'               OBSERVACION_INTERNA,',
'               ind_confirmar_factura,',
'               nro_orden_compra,',
'               IND_TRANSPORTADORA,',
'               cod_pais_entrega,',
'               cod_provincia_entrega,',
'               cod_ciudad_entrega,',
'               NRO_CI_ENTREGA,',
'               CHAPA_ENTREGA,',
'               CORREO_CLIENTE)',
'',
'            VALUES',
'              (''1'',',
'               ''PED'',',
'               ''P'',',
'               vnro_pedido,',
'               NVL(:P34_SUCURSAL, ''01''),',
'               TRUNC(SYSDATE),',
'               :P34_COD_CLIENTE,',
'               :P34_COD_VENDEDOR,',
'               :P34_COD_CONDICION_VENTA,',
'               :P34_COD_LISTA_PRECIO,',
'               0,',
'               :P34_COD_MONEDA,',
'               :P34_TIP_CAMBIO,',
'               0,',
'               0,',
'               0,',
'               ''P'',',
'               TRUNC(SYSDATE),',
'               :P34_USUARIO,',
'               TRUNC(SYSDATE),',
'               NULL,',
'               vCAMBIO_MONEDA_PRECIO,',
'               1,',
'               NULL,',
'               NULL,',
'               NULL,',
'               :P34_TEL_CLIENTE,',
'               :P34_RUC,',
'               ''S'',',
'               NULL,',
'               NVL(:P34_NOM_CLIENTE, VNOMBRE),',
'               NVL(:P34_NOM_CLIENTE, VNOMBRE),',
'               NULL,',
'               NULL,',
'               :P34_DIR_CLIENTE,',
'               NULL,',
'               0,',
'               :P34_COMENTARIO,',
'               NULL,',
'               NULL,',
'               1,',
'               ''0'',',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               NULL,',
'               ''P'',',
'               NULL,',
'               NULL,',
'               :P34_cod_flete,',
'               :P34_COD_SUCURSAL_DIST,',
'               :P34_LUGAR_ENTREGA,',
'               :P34_tipo_entrega,',
'               ''F'',',
'               :P34_FECHA_ENTREGA,',
'               VIND_ENVIAR,',
'               VIND_GUARDA,',
'               ',
'               :P34_ENTREGA_REMISION,',
'               :P34_IND_CLIENTE_FINAL,',
'               :P34_OBSERVACION_INTERNA,',
'               :P34_IND_CONFIRMA_FACTURA,',
'               :P34_NRO_ORDEN_COMPRA,',
'               :P34_IND_ECOMMERCE,',
'               :P34_cod_pais,',
'               :P34_COD_PROVINCIA,',
'               :P34_COD_CIUDAD,',
'               :P34_NRO_CI_ENTREGA,',
'               :P34_CHAPA_ENTREGA,',
'               :P34_CORREO_CLIENTE',
'               ',
'               );',
'            COMMIT;',
'          ',
'            :P34_NRO_COMPROBANTE := vnro_pedido;',
'          ',
'            if :P34_CROQUIS_HABLADO IS NOT NULL OR',
'               :P34_FORMA_COBRO IS NOT NULL THEN',
'              begin',
'                INSERT INTO VT_CROQUIS_PEDIDO',
'                  (cod_empresa,',
'                   TIP_COMPROBANTE,',
'                   SER_COMPROBANTE,',
'                   NRO_COMPROBANTE,',
'                   CROQUIS_HABLADO,',
'                   NOMBRE_AUTORIZADO,',
'                   ind_croquis,',
'                   forma_cobro)',
'                values',
'                  (''1'',',
'                   ''PED'',',
'                   ''P'',',
'                   vnro_pedido,',
'                   :P34_CROQUIS_HABLADO,',
'                   :P34_NOMBRE_AUTORIZADO,',
'                   ''S'',',
'                   :P34_FORMA_COBRO);',
'              EXCEPTION',
'                when others then',
'                  null;',
'              end;',
'            END IF;',
'            ----DETALLE_ENTREGA',
'          ',
'            BEGIN',
'              declare',
'                cursor ccab is',
'                  select seq_id,',
'                         c001 ser_pedido,',
'                         c002 nro_pedido,',
'                         (select cod_art_corto',
'                            from st_articulos p',
'                           where cod_empresa = ''1''',
'                             and cod_articulo = c003) as codigo_corto,',
'                         c003 as cod_articulo,',
'                         (select descripcion',
'                            from st_articulos p',
'                           where cod_empresa = ''1''',
'                             and cod_articulo = c003) as product_name,',
'                         to_number(c004) as cantidad,',
'                         (c005) as fecha_entrega,',
'                         (select p.nombre',
'                            from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'                           where c.cod_empresa = ''1''',
'                             and c.cod_cliente = :P34_cod_cliente',
'                             and c.cod_persona = p.cod_persona',
'                             and p.cod_sucursal = c006) as sucursal_distribuidor,',
'                         C006 COD_SUCURSAL_DIST',
'                    from apex_collections',
'                   where collection_name = ''VT_PEDIDO_DETALLE_ENTREGA''',
'                   order by 1 asc;',
'              begin',
'                for x in ccab loop',
'                  INSERT INTO VT_PEDIDOS_DETALLE_ENTREGA',
'                    (COD_EMPRESA,',
'                     TIP_COMPROBANTE,',
'                     SER_COMPROBANTE,',
'                     NRO_COMPROBANTE,',
'                     cod_art_corto,',
'                     COD_ARTICULO,',
'                     CANTIDAD,',
'                     fecha_entrega,',
'                     cod_cliente,',
'                     cod_sucursal_dist,',
'                     detalle_entrega)',
'                  values',
'                    (''1'',',
'                     ''PED'',',
'                     ''P'',',
'                     VNRO_PEDIDO,',
'                     x.codigo_corto,',
'                     x.COD_ARTICULO,',
'                     x.CANTIDAD,',
'                     x.fecha_entrega,',
'                     :P34_COD_CLIENTE,',
'                     X.COD_SUCURSAL_DIST,',
'                     NULL);',
'                ',
'                end loop;',
'                COMMIT;',
'              end;',
'            ',
'            end;',
'            if :P34_COMO_ENTREGAR = ''GUARDA'' THEN',
'              DECLARE',
'                VCANTIDAD_DETALLE         NUMBER;',
'                VCANTIDAD_DETALLE_ENTREGA NUMBER;',
'                VERROR EXCEPTION;',
'              BEGIN',
'                BEGIN',
'                  select SUM(to_number(V.c004))',
'                    INTO VCANTIDAD_DETALLE',
'                    from apex_collections V',
'                   where collection_name = ''VT_PEDIDOS_DETALLE'';',
'                ',
'                  select SUM(to_number(A.c004))',
'                    INTO VCANTIDAD_DETALLE_ENTREGA',
'                    from apex_collections A',
'                   where A.collection_name = ''VT_PEDIDO_DETALLE_ENTREGA'';',
'                  IF NVL(VCANTIDAD_DETALLE_ENTREGA, 0) = 0 THEN',
'                    apex_error.add_error(p_message          => ''Debe cargar la planificacion de entrega  antes de grabar!'',',
'                                         p_display_location => apex_error.c_inline_in_notification);',
'                  END IF;',
'                  IF NVL(VCANTIDAD_DETALLE_ENTREGA, 0) <>',
'                     NVL(VCANTIDAD_DETALLE, 0) THEN',
'                    apex_error.add_error(p_message          => ''La cantidad a entregar es distinta a la cantidad del pedido!'',',
'                                         p_display_location => apex_error.c_inline_in_notification);',
'                    RAISE VERROR;',
'                  END IF;',
'                EXCEPTION',
'                  WHEN VERROR THEN',
'                    sys.htp.p(''La cantidad a entregar es distinta a la cantidad del pedido!'');',
'                    raise_application_error(-20201,',
'                                            ''La cantidad a entregar es distinta a la cantidad del pedido!'');',
'                  WHEN OTHERS THEN',
'                    NULL;',
'                END;',
'              END;',
'            END IF;',
'          ',
'            ---DETALLE PEDIDO   ',
'            declare',
'              cursor ccab is',
'                select seq_id,',
'                       c001 ser_pedido,',
'                       c002 nro_pedido,',
'                       (select cod_art_corto',
'                          from st_articulos p',
'                         where cod_empresa = ''1''',
'                           and cod_articulo = c003) as codigo_corto,',
'                       ',
'                       to_number(c005) as precio_unitario,',
'                       to_number(c004) as cantidad,',
'                       to_number(c006) as porc_descuento,',
'                       to_number(c007) as total_iva,',
'                       to_number(c008) as monto_total,',
'                       to_number(c009) as total,',
'                       C010 AS ID_PEDIDO,',
'                       TO_NUMBER(c012) as id_promo,',
'                       c011 articulo_par,',
'                       c013 nro_promo,',
'                       C014 PORC_RECARgO,',
'                       c003 cod_Articulo,',
'                       c015 descuento,',
'                       c016 recargo,',
'                       c017 cod_iva,',
'                       c018 porc_iva,',
'                       NVL(c020, ''N'') IND_ARMADO,',
'                       c021 MONTO_GRAVADA_10,',
'                       c022 MONTO_GRAVADA_5,',
'                       c023 MONTO_EXENTA',
'                ',
'                  from apex_collections',
'                 where collection_name = ''VT_PEDIDOS_DETALLE''',
'                 order by 1 asc;',
'            begin',
'              for x in ccab loop',
'                INSERT INTO VT_PEDIDOS_DETALLE',
'                  (COD_EMPRESA,',
'                   TIP_COMPROBANTE,',
'                   SER_COMPROBANTE,',
'                   NRO_COMPROBANTE,',
'                   COD_ARTICULO,',
'                   CANTIDAD,',
'                   CANTIDAD_FACTURADA,',
'                   PRECIO_UNITARIO,',
'                   MONTO_TOTAL,',
'                   TOTAL_IVA,',
'                   PRECIO_LISTA,',
'                   DESCUENTO,',
'                   PRECIO_REAL,',
'                   PORC_DESCUENTO,',
'                   COSTO_PROMEDIO_REF,',
'                   COSTO_PROMEDIO,',
'                   COSTO_CON,',
'                   COD_UNIDAD_MEDIDA,',
'                   CANTIDAD_UB,',
'                   PORC_RECARGO,',
'                   RECARGO,',
'                   COD_ARTICULO_REL_BON,',
'                   PORC_IVA,',
'                   ORDEN,',
'                   COD_IVA,',
'                   nro_promo,',
'                   COD_ART_CORTO,',
'                   articulo_par,',
'                   IND_PRODUCTO_ARMADO,',
'                   MONTO_GRAVADA_10,',
'                   MONTO_GRAVADA_5,',
'                   MONTO_EXENTA,',
'                   orden_producto_principal)',
'                values',
'                  (''1'',',
'                   ''PED'',',
'                   ''P'',',
'                   VNRO_PEDIDO,',
'                   x.COD_ARTICULO,',
'                   x.CANTIDAD,',
'                   0,',
'                   x.PRECIO_UNITARIO,',
'                   x.MONTO_TOTAL,',
'                   x.TOTAL_IVA,',
'                   x.precio_unitario,',
'                   x.DESCUENTO,',
'                   x.precio_unitario,',
'                   x.PORC_DESCUENTO,',
'                   0,',
'                   0,',
'                   0,',
'                   null,',
'                   x.cantidad,',
'                   x.PORC_RECARGO,',
'                   x.RECARGO,',
'                   null,',
'                   x.PORC_IVA,',
'                   x.seq_id,',
'                   x.COD_IVA,',
'                   x.nro_promo,',
'                   X.codigo_corto,',
'                   x.articulo_par,',
'                   X.IND_ARMADO,',
'                   X.MONTO_GRAVADA_10,',
'                   X.MONTO_GRAVADA_5,',
'                   X.MONTO_EXENTA,',
'                   x.id_promo);',
'                VMONTO_TOTAL := NVL(vMONTO_TOTAL, 0) +',
'                                nvl(X.MONTO_TOTAL, 0);',
'                VTOTAL_IVA   := NVL(VTOTAL_IVA, 0) + nvl(X.TOTAL_IVA, 0);',
'                IF VTOTAL_IVA = 0 THEN',
'                  VMONTO_TOTAL_EX := VMONTO_TOTAL_EX +',
'                                     nvl(X.MONTO_TOTAL, 0);',
'                END IF;',
'                COMMIT;',
'              end loop;',
'            ',
'              BEGIN',
'                UPDATE VT_PEDIDOS_CABECERA',
'                   SET TOT_COMPROBANTE = VMONTO_TOTAL + VTOTAL_IVA,',
'                       TOT_GRAVADAS    = VMONTO_TOTAL,',
'                       TOT_EXENTAS     = VMONTO_TOTAL_EX',
'                 WHERE COD_EMPRESA = ''1''',
'                   AND TIP_COMPROBANTE = ''PED''',
'                   AND SER_COMPROBANTE = ''P''',
'                   AND NRO_COMPROBANTE = VNRO_PEDIDO;',
'              ',
'              END;',
'            ',
'            end;',
'          ',
'          end;',
'        END IF;',
'      END;',
'    ',
'    END;',
'  END IF;',
'END;',
'ELSE ',
'	raise_application_error(-20000,''EL PAIS HABILITADO PARA LA ENTREGA DEBER SER PARAGUAY'');',
'  END IF;',
'ELSE ',
'	raise_application_error(-20000,''RUC NO HABILITADO PARA LA CARGA DE PEDIDO'');',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11263164996862767)
,p_process_when=>'P34_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Pedido Generado &P34_NRO_COMPROBANTE.'
);
wwv_flow_imp.component_end;
end;
/
