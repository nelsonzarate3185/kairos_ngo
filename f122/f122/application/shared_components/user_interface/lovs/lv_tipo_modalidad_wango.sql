prompt --application/shared_components/user_interface/lovs/lv_tipo_modalidad_wango
begin
--   Manifest
--     LV_TIPO_MODALIDAD_WANGO
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
 p_id=>wwv_flow_imp.id(206219171030312664)
,p_lov_name=>'LV_TIPO_MODALIDAD_WANGO'
,p_lov_query=>'.'||wwv_flow_imp.id(206219171030312664)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206219430747312663)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Presencial'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206219817427312662)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Virtual'
,p_lov_return_value=>'V'
);
wwv_flow_imp.component_end;
end;
/
