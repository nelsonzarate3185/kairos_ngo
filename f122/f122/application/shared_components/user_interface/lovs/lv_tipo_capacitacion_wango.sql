prompt --application/shared_components/user_interface/lovs/lv_tipo_capacitacion_wango
begin
--   Manifest
--     LV_TIPO_CAPACITACION_WANGO
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
 p_id=>wwv_flow_imp.id(206216996414318418)
,p_lov_name=>'LV_TIPO_CAPACITACION_WANGO'
,p_lov_query=>'.'||wwv_flow_imp.id(206216996414318418)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206217228021318413)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Taller'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206217647304318412)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Seminario'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206218024076318412)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Congreso'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206218410098318412)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Diplomado'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206218844468318411)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Otros'
,p_lov_return_value=>'5'
);
wwv_flow_imp.component_end;
end;
/
