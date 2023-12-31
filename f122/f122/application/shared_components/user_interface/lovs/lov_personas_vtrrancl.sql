prompt --application/shared_components/user_interface/lovs/lov_personas_vtrrancl
begin
--   Manifest
--     LOV_PERSONAS_VTRRANCL
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
 p_id=>wwv_flow_imp.id(52827239712287822)
,p_lov_name=>'LOV_PERSONAS_VTRRANCL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_persona, c.cod_persona||'' - ''||p.nombre nombre',
'  from cc_clientes c, personas p',
' where c.cod_empresa = :P230_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_PERSONA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(52827822260292485)
,p_query_column_name=>'COD_PERSONA'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(52828284022292485)
,p_query_column_name=>'NOMBRE'
,p_heading=>unistr('C\00F3digo - Nombre y Apellido')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
