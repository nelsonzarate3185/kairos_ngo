prompt --application/shared_components/user_interface/lovs/lv_clientes_cpacueco
begin
--   Manifest
--     LV_CLIENTES_CPACUECO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(72791211879138964)
,p_lov_name=>'LV_CLIENTES_CPACUECO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, ',
'       pr.cod_cliente ',
'  from personas p,',
'       cc_clientes pr ',
' where pr.cod_empresa = :P_COD_EMPRESA',
'   and pr.cod_persona = p.cod_persona ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(497720454810492594)
,p_query_column_name=>'COD_CLIENTE'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(497720803761492595)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
