prompt --application/shared_components/user_interface/lovs/lv_clientes_ccautrec
begin
--   Manifest
--     LV_CLIENTES_CCAUTREC
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
 p_id=>wwv_flow_imp.id(201154345114819076)
,p_lov_name=>'LV_CLIENTES_CCAUTREC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente,nombre',
'from cc_clientes, personas ',
'where cc_clientes.cod_empresa = :P_COD_EMPRESA ',
'and cc_clientes.cod_persona = personas.cod_persona ',
'order by nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NOMBRE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(201169205398815860)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(201169667002815860)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
