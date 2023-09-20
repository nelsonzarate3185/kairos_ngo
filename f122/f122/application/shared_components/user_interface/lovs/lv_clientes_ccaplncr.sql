prompt --application/shared_components/user_interface/lovs/lv_clientes_ccaplncr
begin
--   Manifest
--     LV_CLIENTES_CCAPLNCR
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
 p_id=>wwv_flow_imp.id(206343887597936167)
,p_lov_name=>'LV_CLIENTES_CCAPLNCR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(p.nombre))||'' (''||ltrim(rtrim(p.nomb_fantasia))||'')'' nombre, cc.cod_cliente,0 codigo_area, 0 num_telefono, pi.cod_ident, pi.numero ',
'from cc_clientes cc, personas p, ident_personas pi ',
'where cc.cod_empresa = :P_COD_EMPRESA ',
'and cc.cod_persona = p.cod_persona ',
'and p.cod_persona = pi.cod_persona(+) ',
'order by ltrim(p.nombre), ltrim(p.nomb_fantasia)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(206344486940929493)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(206344809851929493)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
