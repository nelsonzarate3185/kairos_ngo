prompt --application/shared_components/user_interface/lovs/lv_monedas_caentsal
begin
--   Manifest
--     LV_MONEDAS_CAENTSAL
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
 p_id=>wwv_flow_imp.id(91612397972797839)
,p_lov_name=>'LV_MONEDAS_CAENTSAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda R, ',
'       cod_moneda||'' - ''||descripcion D',
'  from monedas '))
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
