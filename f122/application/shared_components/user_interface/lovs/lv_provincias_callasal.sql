prompt --application/shared_components/user_interface/lovs/lv_provincias_callasal
begin
--   Manifest
--     LV_PROVINCIAS_CALLASAL
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
 p_id=>wwv_flow_imp.id(131542258180713331)
,p_lov_name=>'LV_PROVINCIAS_CALLASAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_provincia || '' - '' || descripcion D, cod_provincia R',
'from provincias ',
'--where cod_provincia = :P425_COD_PROVINCIA_CR_ED',
'WHERE COD_PAIS = :COD_PAIS',
'--order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
