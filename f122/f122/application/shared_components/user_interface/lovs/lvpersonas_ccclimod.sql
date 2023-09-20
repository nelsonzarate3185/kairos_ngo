prompt --application/shared_components/user_interface/lovs/lvpersonas_ccclimod
begin
--   Manifest
--     LVPERSONAS_CCCLIMOD
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
 p_id=>wwv_flow_imp.id(208925206393808378)
,p_lov_name=>'LVPERSONAS_CCCLIMOD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona, ',
'       nvl( ltrim( nombre ), ltrim( nomb_fantasia ) ) nombre,',
'       i.cod_ident,',
'       i.numero',
' from personas p , ident_personas i',
' where p.cod_persona = i.cod_persona',
' order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'COD_PERSONA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208928498787768120)
,p_query_column_name=>'COD_PERSONA'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208928776005768120)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208929180480768120)
,p_query_column_name=>'COD_IDENT'
,p_heading=>'Cod Ident'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208929571190768120)
,p_query_column_name=>'NUMERO'
,p_heading=>'Numero'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
