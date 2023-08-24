prompt --application/shared_components/data_loads/cargar_respuestos_caarticu
begin
--   Manifest
--     DATA LOAD: CARGAR_RESPUESTOS_CAARTICU
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
 p_id=>wwv_flow_imp.id(110732973388297839)
,p_name=>'CARGAR_RESPUESTOS_CAARTICU'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_skip_rows=>2
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110733226464297840)
,p_data_profile_id=>wwv_flow_imp.id(110732973388297839)
,p_name=>'C001'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_decimal_char=>'.'
,p_selector_type=>'NAME'
,p_selector=>'POSICION'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110733582810297840)
,p_data_profile_id=>wwv_flow_imp.id(110732973388297839)
,p_name=>'C002'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_decimal_char=>'.'
,p_selector_type=>'NAME'
,p_selector=>'CODIGO_DE_ORIGEN'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110733844783297840)
,p_data_profile_id=>wwv_flow_imp.id(110732973388297839)
,p_name=>'C003'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'DESCRIPCION'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110734131638297841)
,p_data_profile_id=>wwv_flow_imp.id(110732973388297839)
,p_name=>'C004'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'CANTIDAD'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110734471211297841)
,p_data_profile_id=>wwv_flow_imp.id(110732973388297839)
,p_name=>'C005'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'DESCRIPCION2'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(110734664338297841)
,p_name=>'CARGAR_RESPUESTOS_CAARTICU'
,p_static_id=>'CARGAR_RESPUESTOS_CAARTICU'
,p_target_type=>'COLLECTION'
,p_collection_name=>'REPUESTOS_CSV'
,p_data_profile_id=>wwv_flow_imp.id(110732973388297839)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/