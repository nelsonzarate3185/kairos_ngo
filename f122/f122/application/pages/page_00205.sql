prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
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
 p_id=>205
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Comisiones'
,p_alias=>'COMISIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Comisiones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221116164634'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(151523770647020492)
,p_name=>'Comisiones'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Comision'' tipo,',
'       (SUM(ROUND(comision))) importe,',
'       PORCENTAJE porcentaje,',
'         sum(VENTA_ACUMULADA)VENTA_ACUMULADA',
'  from ( select A.COD_VENDEDOR,',
'               CASE',
'                 WHEN SUM(NVL(VENTA_TOTAL, 0)) >= MAX(META) AND',
'                      MAX(META) > 0 THEN',
'                 ',
'                  nvl((sum(VENTA_ACUMULADA) * max(porc_com)) / 100, 0)',
'               ',
'                 WHEN NVL(MAX(MONTO_MAX), 0) = 0 AND NVL(MAX(META), 0) = 0 AND',
'                      NVL(MAX(MONTO_MIN), 0) = 0 THEN',
'                 ',
'                  nvl((sum(VENTA_ACUMULADA) * max(porc_com)) / 100, 0)',
'               ',
'                 when NVL(max(MONTO_MIN), 0) <= NVL(venta_total, 0) AND',
'                      NVL(venta_total, 0) <=',
'                      nvl(max(MONTO_MAX), venta_total) THEN',
'                 ',
'                  nvl((sum(VENTA_ACUMULADA) * max(porc_com)) / 100, 0)',
'                 when NVL(MAX(MONTO_MIN), 0) <= NVL(venta_total, 0) AND',
'                      NVL(venta_total, 0) <=',
'                      nvl(MAX(MONTO_MAX), venta_total) THEN',
'                 ',
'                  nvl((sum(VENTA_ACUMULADA) * max(porc_com)) / 100, 0)',
'               ',
'                 when venta_total < MAX(META) AND MAX(META) > 0 THEN',
'                 ',
'                  nvl((NVL(sum(VENTA_ACUMULADA), 0) * max(porc_com_NM)) / 100, 0)',
'               ',
'                 ELSE',
'                  0',
'               END COMISION,',
'               max(porc_com),',
'               max(porc_com_NM),',
'               CASE',
'                 WHEN SUM(NVL(venta_total, 0)) >= MAX(META) AND',
'                      MAX(META) > 0 THEN',
'                 ',
'                  max(porc_com)',
'               ',
'                 WHEN NVL(MAX(MONTO_MAX), 0) = 0 AND NVL(MAX(META), 0) = 0 AND',
'                      NVL(MAX(MONTO_MIN), 0) = 0 THEN',
'                 ',
'                  max(porc_com)',
'               ',
'                 when NVL(max(MONTO_MIN), 0) <= NVL(venta_total, 0) AND',
'                      NVL(venta_total, 0) <=',
'                      nvl(max(MONTO_MAX), venta_total) THEN',
'                  max(porc_com)',
'                 when NVL(MAX(MONTO_MIN), 0) <= NVL(venta_total, 0) AND',
'                      NVL(venta_total, 0) <=',
'                      nvl(MAX(MONTO_MAX), venta_total) THEN',
'                 ',
'                  max(porc_com)',
'               ',
'                 when venta_total < MAX(META) AND MAX(META) > 0 THEN',
'                 ',
'                  max(porc_com_NM)',
'               ',
'                 ELSE',
'                  0',
'               END PORCENTAJE,',
'               0 PLUS,',
'               0 sueldo_base,',
'               sum(VENTA_ACUMULADA)VENTA_ACUMULADA,',
'                 (b.venta_total)venta_total',
'          from vw_comisiones_vendedores a , (select b.cod_vendedor, ',
'           sum(venta_acumulada)venta_total ',
'          from vw_comisiones_vendedores b',
'         where B.cod_vendedor = :P205_COD_VENDEDOR',
'              ',
'           AND B.num_periodo = :P205_PERIODO',
'           GROUP BY B.COD_VENDEDOR)B',
'         where A.cod_vendedor = :P205_COD_VENDEDOR',
'              ',
'           AND a.num_periodo = :P205_PERIODO',
'         GROUP BY A.COD_VENDEDOR,   sueldo_base,porc_com ,venta_total)',
' GROUP BY PORCENTAJE,  sueldo_base',
'union all',
'select ''PLUS'', SUM(PLUS) PLUS, 0, 0 venta_acumulado',
'  from (select COD_VENDEDOR,',
'               0            COMISION,',
'               max(porc_com),',
'               max(porc_com_NM),',
'               0            PORCENTAJE,',
'               ',
'               CASE',
'                 WHEN nvl(plus, 0) > 0 and MAX(META) > 0 then',
'                  CASE',
'                    WHEN NVL(SUM(VENTA_ACUMULADA), 0) >= MAX(META) then',
'                     plus',
'                    else',
'                     CASE',
'                       WHEN NVL(SUM(VENTA_ACUMULADA), 0) >= (MAX(META) * 0.85) then',
'                        plus',
'                       else',
'                        0',
'                     end',
'                  end',
'                 else',
'                  0',
'               end PLUS,',
'               0,   sum(VENTA_ACUMULADA)VENTA_ACUMULADA',
'          from vw_comisiones_vendedores a',
'         where a.cod_vendedor = :P205_COD_VENDEDOR',
'              ',
'           AND a.num_periodo = :P205_PERIODO',
'         GROUP BY COD_VENDEDOR,  PLUS, sueldo_base)',
'',
'union all',
'select ''SUELDO'', sueldo_base, 0, 0 venta_acumulada',
'  from (select COD_VENDEDOR,',
'               0             COMISION,',
'               max(porc_com),',
'               max(porc_com_NM),',
'               0             PORCENTAJE,',
'               0             PLUS,',
'               a.sueldo_base, 0 venta_acumulada',
'          from vw_comisiones_vendedores a',
'         where a.cod_vendedor = :P205_COD_VENDEDOR',
'           AND a.num_periodo = :P205_PERIODO',
'         GROUP BY COD_VENDEDOR,  PLUS, sueldo_base)',
' GROUP BY PORCENTAJE, PLUS, sueldo_base',
'UNION ALL',
'SELECT ''CUOTA '' || V.observacion, V.monto_cuota, 0 , 0 venta_acumulada',
'  FROM V_COMISIONES_CUOTAS  V,',
'       FV_VENDEDORES        FV,',
'       FV_PERIODOS_COMISION PER',
' WHERE FV.COD_EMPRESA = ''1''',
'   AND V.cod_persona = FV.cod_persona',
'   AND FV.COD_VENDEDOR = :P205_COD_VENDEDOR',
'   AND FV.COD_EMPRESA = PER.COD_EMPRESA',
'   AND PER.NUM_PERIODO = :P205_PERIODO',
'   AND V.fec_vencimiento BETWEEN PER.FEC_INICIAL AND PER.FEC_FINAL',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P205_PERIODO,P205_COD_VENDEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43932712674248493)
,p_query_column_id=>1
,p_column_alias=>'TIPO'
,p_column_display_sequence=>1
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43933116124248494)
,p_query_column_id=>2
,p_column_alias=>'IMPORTE'
,p_column_display_sequence=>3
,p_column_heading=>'Importe a Cobrar'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43933588261248494)
,p_query_column_id=>3
,p_column_alias=>'PORCENTAJE'
,p_column_display_sequence=>2
,p_column_heading=>'Porcentaje'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43933978882248494)
,p_query_column_id=>4
,p_column_alias=>'VENTA_ACUMULADA'
,p_column_display_sequence=>4
,p_column_heading=>'Venta'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43934359611248494)
,p_name=>'P205_PERIODO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(151523770647020492)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43934759233248495)
,p_name=>'P205_COD_VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(151523770647020492)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43935104230248495)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43935626439248496)
,p_event_id=>wwv_flow_imp.id(43935104230248495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_COD_VENDEDOR'
);
wwv_flow_imp.component_end;
end;
/
