prompt --application/shared_components/user_interface/lovs/lv_dpto_pedidos
begin
--   Manifest
--     LV_DPTO_PEDIDOS
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
 p_id=>wwv_flow_imp.id(136542203056384271)
,p_lov_name=>'LV_DPTO_PEDIDOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  cod_departamento || '' - '' || descripcion d, ',
'                cod_departamento r',
' from rh_departamentos',
' where cod_empresa = :p_cod_empresa',
' and cod_area = :p461_cod_area;',
''))
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
