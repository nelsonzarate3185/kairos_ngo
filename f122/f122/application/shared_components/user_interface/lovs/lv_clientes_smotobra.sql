prompt --application/shared_components/user_interface/lovs/lv_clientes_smotobra
begin
--   Manifest
--     LV_CLIENTES_SMOTOBRA
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
 p_id=>wwv_flow_imp.id(66993889950061053)
,p_lov_name=>'LV_CLIENTES_SMOTOBRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente ||''  - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) ||''  - '' || I.NUMERO D,',
'       c.cod_cliente R',
'FROM   cc_clientes c, personas p, ident_personas i',
'WHERE  c.cod_empresa = :p_cod_empresa',
'AND    c.cod_persona = p.cod_persona ',
'AND    i.cod_persona(+) = p.cod_persona',
'AND    i.cod_ident(+) = ''CI''',
'ORDER BY 1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
