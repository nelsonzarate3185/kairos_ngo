prompt --application/shared_components/user_interface/lovs/lv_lineas_calintec
begin
--   Manifest
--     LV_LINEAS_CALINTEC
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
 p_id=>wwv_flow_imp.id(76021867252235607)
,p_lov_name=>'LV_LINEAS_CALINTEC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_LINEA||'' - ''||DESCRIPCION D, ',
'       COD_LINEA R',
' FROM st_linea ',
'WHERE COD_EMPRESA= :P_COD_EMPRESA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
