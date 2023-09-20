prompt --application/shared_components/user_interface/lovs/lv_area_vale
begin
--   Manifest
--     LV_AREA_VALE
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
 p_id=>wwv_flow_imp.id(202744320552249040)
,p_lov_name=>'LV_AREA_VALE'
,p_lov_query=>'.'||wwv_flow_imp.id(202744320552249040)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(202744668934249036)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'COMERCIAL'
,p_lov_return_value=>'COMERCIAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(202745034121249035)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'MARKETING'
,p_lov_return_value=>'MARKETING'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(202745496552249035)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'ADMINISTRACION'
,p_lov_return_value=>'ADMINISTRACION'
);
wwv_flow_imp.component_end;
end;
/
