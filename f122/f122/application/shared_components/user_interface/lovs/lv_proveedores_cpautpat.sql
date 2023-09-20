prompt --application/shared_components/user_interface/lovs/lv_proveedores_cpautpat
begin
--   Manifest
--     LV_PROVEEDORES_CPAUTPAT
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
 p_id=>wwv_flow_imp.id(205666068344859016)
,p_lov_name=>'LV_PROVEEDORES_CPAUTPAT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nomb_fantasia, ',
'       p.nombre,',
'       pr.cod_proveedor',
'from cm_proveedores pr, personas p',
'where pr.cod_empresa = :P_cod_empresa',
'  and p.cod_persona = pr.cod_persona',
'order by p.nomb_fantasia'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'COD_PROVEEDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205666540556854702)
,p_query_column_name=>'COD_PROVEEDOR'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(205666941754854702)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
