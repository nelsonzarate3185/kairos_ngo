prompt --application/shared_components/user_interface/lovs/lv_nivel_stposici
begin
--   Manifest
--     LV_NIVEL_STPOSICI
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
 p_id=>wwv_flow_imp.id(218475578790661222)
,p_lov_name=>'LV_NIVEL_STPOSICI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_nivel , COD_NIVEL',
'',
'      from st_niveles',
'     where cod_empresa  = :P_COD_EMPRESA     ',
'       and cod_estante   = :p_cod_estante',
'       and cod_cuerpo   = :p_cod_cuerpo'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_NIVEL'
,p_display_column_name=>'COD_NIVEL'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_NIVEL'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218476213194663101)
,p_query_column_name=>'COD_NIVEL'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218476655419663102)
,p_query_column_name=>'DESC_NIVEL'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
