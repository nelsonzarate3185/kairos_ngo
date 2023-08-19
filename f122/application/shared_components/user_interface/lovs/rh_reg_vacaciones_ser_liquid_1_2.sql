prompt --application/shared_components/user_interface/lovs/rh_reg_vacaciones_ser_liquid_1_2
begin
--   Manifest
--     RH_REG_VACACIONES.SER_LIQUID_1_2
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
 p_id=>wwv_flow_imp.id(190015829389924149)
,p_lov_name=>'RH_REG_VACACIONES.SER_LIQUID_1_2'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'RH_REG_VACACIONES'
,p_return_column_name=>'PERIODO'
,p_display_column_name=>'SER_LIQUID'
,p_default_sort_column_name=>'SER_LIQUID'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
