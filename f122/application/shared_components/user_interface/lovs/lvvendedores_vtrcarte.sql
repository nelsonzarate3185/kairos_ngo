prompt --application/shared_components/user_interface/lovs/lvvendedores_vtrcarte
begin
--   Manifest
--     LVVENDEDORES_VTRCARTE
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
 p_id=>wwv_flow_imp.id(43398524365042142)
,p_lov_name=>'LVVENDEDORES_VTRCARTE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, v.cod_vendedor ',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl( v.estado, ''A'' ) = ''A'' ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_VENDEDOR'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
