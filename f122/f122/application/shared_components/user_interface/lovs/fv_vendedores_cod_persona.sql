prompt --application/shared_components/user_interface/lovs/fv_vendedores_cod_persona
begin
--   Manifest
--     FV_VENDEDORES.COD_PERSONA
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
 p_id=>wwv_flow_imp.id(137214938328642085)
,p_lov_name=>'FV_VENDEDORES.COD_PERSONA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'FV_VENDEDORES'
,p_return_column_name=>'COD_VENDEDOR'
,p_display_column_name=>'COD_PERSONA'
,p_default_sort_column_name=>'COD_PERSONA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
