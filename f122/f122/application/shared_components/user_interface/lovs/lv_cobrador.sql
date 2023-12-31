prompt --application/shared_components/user_interface/lovs/lv_cobrador
begin
--   Manifest
--     LV_COBRADOR
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
 p_id=>wwv_flow_imp.id(13659162274998285)
,p_lov_name=>'LV_COBRADOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE as d,',
'       C.COD_COBRADOR as r',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
