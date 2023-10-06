prompt --application/shared_components/user_interface/lovs/lv_rhbeneficios
begin
--   Manifest
--     LV_RHBENEFICIOS
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
 p_id=>wwv_flow_imp.id(217624622026878467)
,p_lov_name=>'LV_RHBENEFICIOS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'RH_BENEFICIO_CREDITO'
,p_return_column_name=>'COD_BENEFICIO'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
