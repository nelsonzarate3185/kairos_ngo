prompt --application/shared_components/user_interface/lovs/lv_articulos_stperepr_modal
begin
--   Manifest
--     LV_ARTICULOS - STPEREPR_MODAL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(143045192854737178)
,p_lov_name=>'LV_ARTICULOS - STPEREPR_MODAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||''-''||descripcion descripcion, cod_articulo ',
'from st_articulos',
'where cod_empresa = :p_cod_empresa ',
'and ( estado is null or estado <> ''I'' )',
'AND COD_RUBRO=''PR'' order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/