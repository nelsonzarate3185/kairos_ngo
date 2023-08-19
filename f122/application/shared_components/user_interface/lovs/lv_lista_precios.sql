prompt --application/shared_components/user_interface/lovs/lv_lista_precios
begin
--   Manifest
--     LV_LISTA_PRECIOS
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
 p_id=>wwv_flow_imp.id(11355674804933799)
,p_lov_name=>'LV_LISTA_PRECIOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_LISTA_PRECIO'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
