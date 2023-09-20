prompt --application/shared_components/user_interface/lovs/lvclientes_ccclimod
begin
--   Manifest
--     LVCLIENTES_CCCLIMOD
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
 p_id=>wwv_flow_imp.id(208925545893803439)
,p_lov_name=>'LVCLIENTES_CCCLIMOD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, nomb_fantasia, cod_cliente, codigo_area, num_telefono, cod_ident, numero ',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :P_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and c.TIP_CLIENTE IN (''18'',''5'', ''16'') ',
'order by nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208931422309748697)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208931891504748697)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208932251578748696)
,p_query_column_name=>'NOMB_FANTASIA'
,p_heading=>'Nomb Fantasia'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208932664624748696)
,p_query_column_name=>'CODIGO_AREA'
,p_heading=>'Codigo Area'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208933037167748696)
,p_query_column_name=>'NUM_TELEFONO'
,p_heading=>'Num Telefono'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208933406133748696)
,p_query_column_name=>'COD_IDENT'
,p_heading=>'Cod Ident'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(208933857819748696)
,p_query_column_name=>'NUMERO'
,p_heading=>'Numero'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
