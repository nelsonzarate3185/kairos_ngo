prompt --application/shared_components/user_interface/lovs/lv_iva
begin
--   Manifest
--     LV_IVA
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
 p_id=>wwv_flow_imp.id(30122339818808243)
,p_lov_name=>'LV_IVA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion || '' - '' || COD_IVA D, cod_iva R',
'from st_iva ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
