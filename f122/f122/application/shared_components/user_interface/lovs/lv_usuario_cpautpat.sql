prompt --application/shared_components/user_interface/lovs/lv_usuario_cpautpat
begin
--   Manifest
--     LV_USUARIO_CPAUTPAT
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
 p_id=>wwv_flow_imp.id(205625068244953297)
,p_lov_name=>'LV_USUARIO_CPAUTPAT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario codigo_rapido,',
'                   cod_usuario nombre,',
'                   1 orden',
'            FROM CP_CABECERA_CAJAS v',
'            where cod_empresa= :P_COD_EMPRESA',
'            and fec_mov_caj between add_months(sysdate,-3) and sysdate+6 ',
'            and cod_usuario is not null',
'            group by cod_usuario',
'            ',
'        UNION ALL',
'        ',
'            SELECT ''T'' codigo_rapido,''TODOS'' nombre ,2 ',
'            FROM DUAL',
'            ORDER BY 3 desc ,1 asc;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
