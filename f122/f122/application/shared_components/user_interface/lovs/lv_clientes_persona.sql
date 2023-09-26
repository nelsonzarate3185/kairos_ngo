prompt --application/shared_components/user_interface/lovs/lv_clientes_persona
begin
--   Manifest
--     LV_CLIENTES_PERSONA
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
 p_id=>wwv_flow_imp.id(6220104513588210)
,p_lov_name=>'LV_CLIENTES_PERSONA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre||'' - ''||COD_CLIENTE D,',
'     ',
'       cod_cliente',
'  FROM cc_clientes c, personas p ',
' WHERE c.cod_empresa = ''1''',
'   AND c.cod_persona = p.cod_persona',
'  ',
' ORDER BY nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
