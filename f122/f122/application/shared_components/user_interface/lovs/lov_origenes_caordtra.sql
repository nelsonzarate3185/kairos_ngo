prompt --application/shared_components/user_interface/lovs/lov_origenes_caordtra
begin
--   Manifest
--     LOV_ORIGENES_CAORDTRA
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
 p_id=>wwv_flow_imp.id(137693943152196856)
,p_lov_name=>'LOV_ORIGENES_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.cod_origen||'' - ''||o.descripcion descripcion, o.cod_origen, o.descripcion  descri',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'') not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.cod_origen||'' -  ''||o.descripcion descripcion, o.cod_origen, o.descripcion decri',
'from vt_origenes o  ',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa=''1'' ',
'      and p.ind_servicio_tecnico is not null',
'      and p.cod_persona=u.cod_persona',
'      and u.cod_usuario=v(''APP_USER'')',
'     )'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ORIGEN'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(137701734948187268)
,p_query_column_name=>'COD_ORIGEN'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(137702131564187267)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('C\00F3digo  - Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(137702551696187267)
,p_query_column_name=>'DESCRI'
,p_heading=>'Descri'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
