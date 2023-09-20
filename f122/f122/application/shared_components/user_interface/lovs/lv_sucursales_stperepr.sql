prompt --application/shared_components/user_interface/lovs/lv_sucursales_stperepr
begin
--   Manifest
--     LV_SUCURSALES_STPEREPR
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
 p_id=>wwv_flow_imp.id(141811778308516180)
,p_lov_name=>'LV_SUCURSALES_STPEREPR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal ||'' - ''||descripcion dis, cod_sucursal  cod',
'from sucursales ',
'where cod_empresa = :P_cod_empresa ',
'and ( (cod_sucursal in (''190'',''209'',''01'',''262'') and :p_cod_usuario not in (''VTAOFERTAS'',''VTAOFERTA2'')) or (cod_sucursal in (''105'',''247'',''96'') AND :p_cod_usuario In (''VTAOFERTAS'',''VTAOFERTA2'')))',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD'
,p_display_column_name=>'DIS'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
