prompt --application/shared_components/user_interface/lovs/lv_categorias_stcanpun
begin
--   Manifest
--     LV_CATEGORIAS_STCANPUN
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
 p_id=>wwv_flow_imp.id(70408700448231256)
,p_lov_name=>'LV_CATEGORIAS_STCANPUN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_categoria R',
'  from st_categorias',
'order by 1 '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70409141001242686)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70409512647242686)
,p_query_column_name=>'D'
,p_heading=>unistr('Categor\00EDa')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/