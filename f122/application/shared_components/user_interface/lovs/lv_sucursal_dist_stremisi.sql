prompt --application/shared_components/user_interface/lovs/lv_sucursal_dist_stremisi
begin
--   Manifest
--     LV_SUCURSAL_DIST_STREMISI
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(37225078363564625)
,p_lov_name=>'LV_SUCURSAL_DIST_STREMISI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, p.direccion, p.telefono, P.cod_SUCURSAL R, P.cod_SUCURSAL D',
'  from cc_clientes c, BS_SUCURSAL_CLIENTE p',
' where c.cod_empresa=:P178_COD_EMPRESA',
'   and c.cod_cliente=:P178_COD_CLIENTE',
'   and c.cod_persona=p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(37228405225584584)
,p_query_column_name=>'R'
,p_heading=>'R'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(37226084564567998)
,p_query_column_name=>'DIRECCION'
,p_heading=>'Direccion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(37228857677584584)
,p_query_column_name=>'D'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
