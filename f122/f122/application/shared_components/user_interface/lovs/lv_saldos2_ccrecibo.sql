prompt --application/shared_components/user_interface/lovs/lv_saldos2_ccrecibo
begin
--   Manifest
--     LV_SALDOS2_CCRECIBO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(116598432954171417)
,p_lov_name=>'LV_SALDOS2_CCRECIBO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule */',
'     c.tipo_comprobante TIPO_COMPROBANTE,',
'     c.ser_comprobante SER_COMPROBANTE,',
'     c.nro_comprobante,',
'     c.nro_cuota,',
'     c.nro_valor,',
'     c.saldo_cuota - nvl(c.rec_pendientes, 0) as saldo_cuota,',
'     c.monto_cuota,',
'     c.cod_moneda_cuota,',
'     c.fec_vencimiento,',
'     c.fec_acobrar,',
'     c.cod_custodio,',
'     c.rowid ROW_ID',
'  from cc_saldos c',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_cliente = :P394_CLIENTE',
'   AND C.FEC_VENCIMIENTO > ADD_MONTHS(SYSDATE, -900)',
'   and nvl(c.saldo_cuota, 0) - nvl(rec_pendientes, 0) <> 0',
'   and (c.cod_custodio = :P394_CUSTODIO or',
'       c.cod_custodio in',
'       (select cod_custodio',
'           from usuarios_custodios',
'          where cod_empresa = :P_COD_EMPRESA',
'            and cod_usuario = :P_COD_USUARIO))',
' order by fec_vencimiento'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ROW_ID'
,p_display_column_name=>'TIPO_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116642628162184677)
,p_query_column_name=>'TIPO_COMPROBANTE'
,p_heading=>'Tipo Comprobante'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116642987900184677)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Ser Comprobante'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116643357185184677)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>'Nro Comprobante'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116643788419184677)
,p_query_column_name=>'NRO_CUOTA'
,p_heading=>'Nro Cuota'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116644180549184678)
,p_query_column_name=>'NRO_VALOR'
,p_heading=>'Nro Valor'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116644530188184678)
,p_query_column_name=>'SALDO_CUOTA'
,p_heading=>'Saldo Cuota'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116644917373184678)
,p_query_column_name=>'MONTO_CUOTA'
,p_heading=>'Monto Cuota'
,p_display_sequence=>70
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116645379221184678)
,p_query_column_name=>'COD_MONEDA_CUOTA'
,p_heading=>'Cod Moneda Cuota'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116645749323184678)
,p_query_column_name=>'FEC_VENCIMIENTO'
,p_heading=>'Fec Vencimiento'
,p_display_sequence=>90
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116646136103184678)
,p_query_column_name=>'FEC_ACOBRAR'
,p_heading=>'Fec Acobrar'
,p_display_sequence=>100
,p_data_type=>'DATE'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116646505856184678)
,p_query_column_name=>'COD_CUSTODIO'
,p_heading=>'Cod Custodio'
,p_display_sequence=>110
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136363779537508426)
,p_query_column_name=>'ROW_ID'
,p_heading=>'Row Id'
,p_display_sequence=>120
,p_data_type=>'ROWID'
);
wwv_flow_imp.component_end;
end;
/
