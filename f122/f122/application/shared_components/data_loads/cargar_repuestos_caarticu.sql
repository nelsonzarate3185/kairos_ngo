prompt --application/shared_components/data_loads/cargar_repuestos_caarticu
begin
--   Manifest
--     DATA LOAD: CARGAR_REPUESTOS_CAARTICU
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
 p_id=>wwv_flow_imp.id(110730988461283704)
,p_name=>'CARGAR_REPUESTOS_CAARTICU'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110731262567283725)
,p_data_profile_id=>wwv_flow_imp.id(110730988461283704)
,p_name=>'C001'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COLUMN_'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110731575325283725)
,p_data_profile_id=>wwv_flow_imp.id(110730988461283704)
,p_name=>'C002'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'AACM14CV_48CHR'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110731878105283726)
,p_data_profile_id=>wwv_flow_imp.id(110730988461283704)
,p_name=>'C003'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COLUMN_2'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110732102803283726)
,p_data_profile_id=>wwv_flow_imp.id(110730988461283704)
,p_name=>'C004'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COLUMN_3'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(110732473782283726)
,p_data_profile_id=>wwv_flow_imp.id(110730988461283704)
,p_name=>'C005'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COLUMN_4'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(110732663797283726)
,p_name=>'CARGAR_REPUESTOS_CAARTICU'
,p_static_id=>'CARGAR_REPUESTOS_CAARTICU'
,p_target_type=>'COLLECTION'
,p_collection_name=>'REPUESTOS_CSV'
,p_data_profile_id=>wwv_flow_imp.id(110730988461283704)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
