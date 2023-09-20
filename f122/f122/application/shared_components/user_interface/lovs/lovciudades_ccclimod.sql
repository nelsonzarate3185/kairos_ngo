prompt --application/shared_components/user_interface/lovs/lovciudades_ccclimod
begin
--   Manifest
--     LOVCIUDADES_CCCLIMOD
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
 p_id=>wwv_flow_imp.id(208927400850782036)
,p_lov_name=>'LOVCIUDADES_CCCLIMOD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_ciudad from ciudades where cod_pais = :P613_cod_pais ',
'and cod_provincia = :P613_cod_provincia order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CIUDAD'
,p_display_column_name=>'COD_CIUDAD'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208937398115739110)
,p_query_column_name=>'COD_CIUDAD'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208937789147739110)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
