prompt --application/shared_components/user_interface/lovs/lv_clientes_casos
begin
--   Manifest
--     LV_CLIENTES_CASOS
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
 p_id=>wwv_flow_imp.id(60039285927378412)
,p_lov_name=>'LV_CLIENTES_CASOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLIENTE,',
'       COD_CLIENTE,',
'       NCI,',
'       RUC,',
'       TELEFONO       ',
' from INV.VW_CLIENTES_CASOS',
'     ORDER BY 1 ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(82902298135858019)
,p_query_column_name=>'CLIENTE'
,p_heading=>'Cliente'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(60089610042080065)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81893825535091895)
,p_query_column_name=>'RUC'
,p_heading=>'RUC'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81894252381091895)
,p_query_column_name=>'NCI'
,p_heading=>unistr('N\00BA Ced.Ident.')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(82902641278858019)
,p_query_column_name=>'TELEFONO'
,p_heading=>unistr('Tel\00E9fono')
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
