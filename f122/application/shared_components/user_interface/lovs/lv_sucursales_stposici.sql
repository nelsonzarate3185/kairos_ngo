prompt --application/shared_components/user_interface/lovs/lv_sucursales_stposici
begin
--   Manifest
--     LV_SUCURSALES_STPOSICI
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
 p_id=>wwv_flow_imp.id(218466148700586849)
,p_lov_name=>'LV_SUCURSALES_STPOSICI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, s.cod_sucursal',
'        from sucursales s, st_sub_bloques sb',
'     where s.cod_empresa = :P_COD_EMPRESA',
'     and s.cod_empresa=sb.cod_empresa',
'     and s.cod_sucursal=sb.cod_sucursal',
'     group by  s.descripcion, s.cod_sucursal',
'       order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_SUCURSAL'
,p_display_column_name=>'COD_SUCURSAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218466818036590066)
,p_query_column_name=>'COD_SUCURSAL'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218467228989590067)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/