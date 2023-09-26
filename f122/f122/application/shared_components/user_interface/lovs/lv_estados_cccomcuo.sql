prompt --application/shared_components/user_interface/lovs/lv_estados_cccomcuo
begin
--   Manifest
--     LV_ESTADOS_CCCOMCUO
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
 p_id=>wwv_flow_imp.id(212931948502916112)
,p_lov_name=>'LV_ESTADOS_CCCOMCUO'
,p_lov_query=>'.'||wwv_flow_imp.id(212931948502916112)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(212932275804916104)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PENDIENTE'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(212932625100916103)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CONFIRMADO'
,p_lov_return_value=>'C'
);
wwv_flow_imp.component_end;
end;
/
