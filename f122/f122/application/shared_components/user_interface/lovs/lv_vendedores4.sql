prompt --application/shared_components/user_interface/lovs/lv_vendedores4
begin
--   Manifest
--     LV_VENDEDORES4
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
 p_id=>wwv_flow_imp.id(45684779729622869)
,p_lov_name=>'LV_VENDEDORES4'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
