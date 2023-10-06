prompt --application/shared_components/user_interface/lovs/ngo_ccla0100_act
begin
--   Manifest
--     NGO$CCLA0100_ACT
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
 p_id=>wwv_flow_imp.id(215362801853505521)
,p_lov_name=>'NGO$CCLA0100_ACT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(NOMB) D,',
'       ID R',
'FROM NGO$CCLA0100',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(217039736062189882)
,p_query_column_name=>'D'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(217040127782189882)
,p_query_column_name=>'R'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
