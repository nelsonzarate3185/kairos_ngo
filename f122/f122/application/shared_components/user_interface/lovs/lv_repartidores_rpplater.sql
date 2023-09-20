prompt --application/shared_components/user_interface/lovs/lv_repartidores_rpplater
begin
--   Manifest
--     LV_REPARTIDORES_RPPLATER
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
 p_id=>wwv_flow_imp.id(205790290479224746)
,p_lov_name=>'LV_REPARTIDORES_RPPLATER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, r.cod_repartidor ',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_cod_empresa ',
'and r.cod_persona = p.cod_persona order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_REPARTIDOR'
,p_display_column_name=>'COD_REPARTIDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205794647055201720)
,p_query_column_name=>'COD_REPARTIDOR'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205794907474201720)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
