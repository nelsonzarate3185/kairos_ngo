prompt --application/shared_components/user_interface/lovs/ngo_umed0100_act
begin
--   Manifest
--     NGO$UMED0100_ACT
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
 p_id=>wwv_flow_imp.id(216454417323864045)
,p_lov_name=>'NGO$UMED0100_ACT'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'NGO$UMED0100'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EMPR0100$ID = :P_COD_EMPRESA',
'AND DM$ACTI = 1',
'AND DM$ESED = 2'))
,p_return_column_name=>'ID'
,p_display_column_name=>'NOMB'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMB'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
