prompt --application/shared_components/user_interface/lovs/lv_tecnicos_smotobra
begin
--   Manifest
--     LV_TECNICOS_SMOTOBRA
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
 p_id=>wwv_flow_imp.id(95660564946292445)
,p_lov_name=>'LV_TECNICOS_SMOTOBRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_proveedor ||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_proveedor R, ',
'       c.cod_rubro',
'  FROM cm_proveedores c, personas p',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_rubro = :P258_RUBRO_SERV_TECNICO',
'   AND c.cod_persona = p.cod_persona',
'',
'UNION ALL',
'   SELECT c.cod_proveedor ||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'          c.cod_proveedor R,',
'          ''99''',
'  FROM cm_proveedores c, personas p',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND nvl(c.cod_rubro,''99'') <> :P258_RUBRO_SERV_TECNICO',
'   AND c.cod_persona = p.cod_persona',
' ORDER BY 3,1'))
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
