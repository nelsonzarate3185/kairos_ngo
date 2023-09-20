prompt --application/shared_components/user_interface/lovs/lv_articulos_stperepr
begin
--   Manifest
--     LV_ARTICULOS - STPEREPR
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
 p_id=>wwv_flow_imp.id(141509167982966178)
,p_lov_name=>'LV_ARTICULOS - STPEREPR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo , cod_art_corto',
'from st_articulos AA',
'where cod_empresa = :p_cod_empresa ',
'and ( estado is null or estado <> ''I'' )',
'AND COD_RUBRO=''PR'' ',
'AND EXISTS (SELECT DISTINCT ''1'' ',
'            FROM ST_EXISTENCIA_ART E ',
'            WHERE NVL(E.CANT_DISPON,0) >0 ',
'            AND E.COD_EMPRESA= :p_cod_empresa ',
'            AND E.COD_SUCURSAL= :P474_COD_SUCURSAL_SAL',
'            AND E.COD_ARTICULO= AA.COD_ARTICULO',
'            )',
'            order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208254947087094861)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208255301180094860)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Codigo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208255716740094860)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod. Corto'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
