prompt --application/shared_components/user_interface/lovs/lv_bloque_stgeinmo
begin
--   Manifest
--     LV_BLOQUE_STGEINMO
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
 p_id=>wwv_flow_imp.id(178744795987122558)
,p_lov_name=>'LV_BLOQUE_STGEINMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_bloque, cod_bloque',
'      from st_bloques',
'     where cod_empresa  = :P_cod_empresa',
'       and cod_sucursal = :P556_cod_sucursal_aux   ',
'',
'    order by 1  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_BLOQUE'
,p_display_column_name=>'COD_BLOQUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179001247594586401)
,p_query_column_name=>'COD_BLOQUE'
,p_heading=>'Cod.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(179001632307586400)
,p_query_column_name=>'DESC_BLOQUE'
,p_heading=>'Desc Bloque'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
