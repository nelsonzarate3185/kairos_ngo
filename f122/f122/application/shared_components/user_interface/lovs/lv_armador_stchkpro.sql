prompt --application/shared_components/user_interface/lovs/lv_armador_stchkpro
begin
--   Manifest
--     LV_ARMADOR_STCHKPRO
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
 p_id=>wwv_flow_imp.id(141970958026789901)
,p_lov_name=>'LV_ARMADOR_STCHKPRO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  r.cod_armador ||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, r.cod_armador R',
'',
'    from RP_ARMADORES r, personas p',
'   where r.cod_empresa = :P_COD_EMPRESA',
'',
'     and nvl( r.activo, ''S'' ) = ''S''',
'     and r.cod_persona = p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
