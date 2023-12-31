prompt --application/shared_components/user_interface/lovs/lov_motivo_devolucion_caordtra
begin
--   Manifest
--     LOV_MOTIVO_DEVOLUCION_CAORDTRA
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
 p_id=>wwv_flow_imp.id(125149690319777145)
,p_lov_name=>'LOV_MOTIVO_DEVOLUCION_CAORDTRA'
,p_lov_query=>'SELECT cod_motivo||'' - ''||descripcion descripcion, cod_motivo codigo FROM ca_motivos_devolucion_repuesto'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
