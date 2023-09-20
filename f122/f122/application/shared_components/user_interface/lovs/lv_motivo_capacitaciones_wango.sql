prompt --application/shared_components/user_interface/lovs/lv_motivo_capacitaciones_wango
begin
--   Manifest
--     LV_MOTIVO_CAPACITACIONES_WANGO
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
 p_id=>wwv_flow_imp.id(206220137519308338)
,p_lov_name=>'LV_MOTIVO_CAPACITACIONES_WANGO'
,p_lov_query=>'.'||wwv_flow_imp.id(206220137519308338)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206220453709308336)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Acorde a las funciones desempe\00F1adas')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(206220863591308336)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Formaci\00F3n personal')
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
