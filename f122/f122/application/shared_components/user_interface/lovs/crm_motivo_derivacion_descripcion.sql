prompt --application/shared_components/user_interface/lovs/crm_motivo_derivacion_descripcion
begin
--   Manifest
--     CRM_MOTIVO_DERIVACION.DESCRIPCION
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
 p_id=>wwv_flow_imp.id(190731827475790373)
,p_lov_name=>'CRM_MOTIVO_DERIVACION.DESCRIPCION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'CRM_MOTIVO_DERIVACION'
,p_return_column_name=>'COD_MOTIVO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
