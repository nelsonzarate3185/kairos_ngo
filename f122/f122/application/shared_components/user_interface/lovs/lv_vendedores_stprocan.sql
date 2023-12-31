prompt --application/shared_components/user_interface/lovs/lv_vendedores_stprocan
begin
--   Manifest
--     LV_VENDEDORES_STPROCAN
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
 p_id=>wwv_flow_imp.id(157250257339079226)
,p_lov_name=>'LV_VENDEDORES_STPROCAN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.nombre,',
'           v.cod_vendedor',
'from st_vendedor_promo v, personas p, ST_CANJEADOS_PROM_CAB c',
'where v.cod_empresa= c.cod_empresa',
'and v.cod_persona= p.cod_persona',
'and v.cod_vendedor = c.COD_VENDEDOR',
'AND  NVL(ACTIVO,''A'')<>''I'';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VENDEDOR'
,p_display_column_name=>'COD_VENDEDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(157250609690073143)
,p_query_column_name=>'COD_VENDEDOR'
,p_heading=>'Cod Vendedor'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(157251045389073143)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
