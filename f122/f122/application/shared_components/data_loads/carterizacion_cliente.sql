prompt --application/shared_components/data_loads/carterizacion_cliente
begin
--   Manifest
--     DATA LOAD: CARTERIZACION_CLIENTE
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
 p_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'CARTERIZACION_CLIENTE'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177679785618211796)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C001'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COD__MARCA'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177680079896211795)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C002'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'CODIGO_CAT'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177680354401211795)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C003'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'CODIGO_CLIENTE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177680612783211795)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C004'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COD__VEND'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177680913840211795)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C005'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'OBJETIVO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177681227042211795)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C006'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'FECHA_INICIO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(177681542774211795)
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_name=>'C007'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'FECHA_FIN'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(177681708551211795)
,p_name=>'CARTERIZACION_CLIENTE'
,p_static_id=>'CARTERIZACION_CLIENTE'
,p_target_type=>'COLLECTION'
,p_collection_name=>'CARTERIZACION_CLIENTE'
,p_data_profile_id=>wwv_flow_imp.id(177679425004211797)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
