prompt --application/shared_components/user_interface/lovs/lv_comprob_rpplater
begin
--   Manifest
--     LV_COMPROB_RPPLATER
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
 p_id=>wwv_flow_imp.id(205790644572211964)
,p_lov_name=>'LV_COMPROB_RPPLATER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.nro_comprobante, d.tip_comprobante, d.ser_comprobante,',
' to_char( v.fec_comprobante, ''DD/MM/YYYY'' ) fec_comprobante, v.cod_cliente,',
'  ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, d.nro_planilla ',
'  from rp_reparto_detalle d, vt_comprobantes_cabecera v, cc_clientes c, personas p ',
'  where d.cod_empresa = :P_cod_empresa and d.cod_empresa = v.cod_empresa ',
'  and d.tip_comprobante = v.tip_comprobante and d.ser_comprobante = v.ser_comprobante ',
'  and d.nro_comprobante = v.nro_comprobante and c.cod_empresa = v.cod_empresa ',
'  and c.cod_cliente = v.cod_cliente and c.cod_persona = p.cod_persona ',
'order by d.nro_comprobante, d.tip_comprobante, d.ser_comprobante'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205796105123198217)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>unistr('N\00FAmero Comprobante')
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205796421356198217)
,p_query_column_name=>'TIP_COMPROBANTE'
,p_heading=>'Tip Comprobante'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205796800301198217)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Ser Comprobante'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205797266163198217)
,p_query_column_name=>'FEC_COMPROBANTE'
,p_heading=>'Fec Comprobante'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205797675122198217)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Cod Cliente'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205798090321198217)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205798421809198217)
,p_query_column_name=>'NRO_PLANILLA'
,p_heading=>'Nro Planilla'
,p_display_sequence=>70
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
