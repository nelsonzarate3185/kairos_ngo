prompt --application/shared_components/user_interface/lovs/lv_cuerpos_stposici
begin
--   Manifest
--     LV_CUERPOS_STPOSICI
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
 p_id=>wwv_flow_imp.id(218474453027649215)
,p_lov_name=>'LV_CUERPOS_STPOSICI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select desc_cuerpo, cod_cuerpo',
'      from st_cuerpo',
'     where cod_empresa  = :P_COD_EMPRESA      ',
'       and cod_estante   = :P_COD_ESTANTE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CUERPO'
,p_display_column_name=>'COD_CUERPO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CUERPO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218474854100651143)
,p_query_column_name=>'COD_CUERPO'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218475229177651143)
,p_query_column_name=>'DESC_CUERPO'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
