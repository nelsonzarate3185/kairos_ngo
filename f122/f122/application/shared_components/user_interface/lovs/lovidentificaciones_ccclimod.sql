prompt --application/shared_components/user_interface/lovs/lovidentificaciones_ccclimod
begin
--   Manifest
--     LOVIDENTIFICACIONES_CCCLIMOD
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
 p_id=>wwv_flow_imp.id(208927917586771054)
,p_lov_name=>'LOVIDENTIFICACIONES_CCCLIMOD'
,p_lov_query=>'select descripcion, cod_ident from identificaciones order by 1'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_IDENT'
,p_display_column_name=>'COD_IDENT'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208936428981741247)
,p_query_column_name=>'COD_IDENT'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208936804646741247)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
