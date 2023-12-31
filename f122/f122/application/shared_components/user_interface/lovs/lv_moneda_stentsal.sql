prompt --application/shared_components/user_interface/lovs/lv_moneda_stentsal
begin
--   Manifest
--     LV_MONEDA_STENTSAL
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
 p_id=>wwv_flow_imp.id(154470946963851537)
,p_lov_name=>'LV_MONEDA_STENTSAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda,',
'       descripcion',
'  from monedas ',
'  order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_MONEDA'
,p_display_column_name=>'COD_MONEDA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(154471313134848669)
,p_query_column_name=>'COD_MONEDA'
,p_heading=>'Cod Moneda'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(154471720579848669)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
