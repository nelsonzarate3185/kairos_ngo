prompt --application/shared_components/user_interface/lovs/lv_vendedores_vtnotcre
begin
--   Manifest
--     LV_VENDEDORES_VTNOTCRE
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
 p_id=>wwv_flow_imp.id(16622667575000425)
,p_lov_name=>'LV_VENDEDORES_VTNOTCRE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( ltrim( v.descripcion ), ltrim( p.nomb_fantasia ) ) D, ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
