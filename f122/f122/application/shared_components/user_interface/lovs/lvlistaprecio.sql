prompt --application/shared_components/user_interface/lovs/lvlistaprecio
begin
--   Manifest
--     LVLISTAPRECIO
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
 p_id=>wwv_flow_imp.id(6213743790463832)
,p_lov_name=>'LVLISTAPRECIO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.cod_lista_precio||'' - ''||l.descripcion D, ',
'       l.cod_lista_precio R ',
'  FROM vt_listas_precios_cab l, monedas m ',
' WHERE l.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_moneda = m.cod_moneda ',
'   AND l.estado = ''A'';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
