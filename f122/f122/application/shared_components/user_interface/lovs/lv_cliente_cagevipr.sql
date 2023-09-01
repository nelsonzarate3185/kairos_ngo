prompt --application/shared_components/user_interface/lovs/lv_cliente_cagevipr
begin
--   Manifest
--     LV_CLIENTE_CAGEVIPR
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
 p_id=>wwv_flow_imp.id(200139055139345454)
,p_lov_name=>'LV_CLIENTE_CAGEVIPR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nom, c.cod_cliente ',
'		  from cc_clientes c, personas p',
'		 where c.cod_empresa = :P_cod_empresa',
'		   and c.cod_persona = p.cod_persona		',
'		   AND p.nombre NOT LIKE ''%NO USAR%''',
'		   AND NVL(C.ESTADO,''A'')=''A''	'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_CLIENTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CLIENTE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(200140798752335238)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(200141106807335238)
,p_query_column_name=>'NOM'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
