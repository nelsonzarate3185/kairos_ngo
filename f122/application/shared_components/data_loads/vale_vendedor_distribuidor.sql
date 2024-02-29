prompt --application/shared_components/data_loads/vale_vendedor_distribuidor
begin
--   Manifest
--     DATA LOAD: vale_vendedor_distribuidor
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'vale_vendedor_distribuidor'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(176409722946194512)
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'C001'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'CODIGO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(176410089895194511)
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'C002'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'TIPO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(176410316640194511)
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'C003'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'PROVEEDOR'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(176410672388194511)
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'C004'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'MONTO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(176410956825194511)
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'C005'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'FECHA_CREACION'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(176411267732194511)
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_name=>'C006'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'FECHA_VENCIMIENTO'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(176411403261194511)
,p_name=>'vale_vendedor_distribuidor'
,p_static_id=>'vale_vendedor_distribuidor'
,p_target_type=>'COLLECTION'
,p_collection_name=>'vale_vendedor_distribuidor'
,p_data_profile_id=>wwv_flow_imp.id(176409404739194541)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/