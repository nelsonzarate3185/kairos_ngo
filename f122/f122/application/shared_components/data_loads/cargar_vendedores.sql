prompt --application/shared_components/data_loads/cargar_vendedores
begin
--   Manifest
--     DATA LOAD: cargar_vendedores
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(50559231185752626)
,p_name=>'cargar_vendedores'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(50559529237752652)
,p_data_profile_id=>wwv_flow_imp.id(50559231185752626)
,p_name=>'C001'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'C28'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(50559818916752653)
,p_data_profile_id=>wwv_flow_imp.id(50559231185752626)
,p_name=>'C003'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector_type=>'NAME'
,p_selector=>'C9991358227'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(50560087689752653)
,p_name=>'cargar_vendedores'
,p_static_id=>'cargar_vendedores'
,p_target_type=>'COLLECTION'
,p_collection_name=>'VENDEDOR_CONCEPTO_AUX'
,p_data_profile_id=>wwv_flow_imp.id(50559231185752626)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
