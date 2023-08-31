prompt --application/shared_components/user_interface/lovs/prueba
begin
--   Manifest
--     PRUEBA
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
 p_id=>wwv_flow_imp.id(198808546756589727)
,p_lov_name=>'PRUEBA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DESCRIPCION, A.COD_ARTICULO, 1 CANTIDAD, COD_RUBRO',
'  FROM ST_ARTICULOS A, VT_ORIGENES T, VT_ORDENES_TRABAJO V',
' WHERE A.COD_EMPRESA = :P_COD_EMPRESA',
'   AND COD_RUBRO = ''MO''',
'   AND NVL(ESTADO, ''S'') NOT IN (''I'', ''N'')',
'   AND T.COD_ORIGEN = V.COD_ORIGEN',
'   AND T.COD_EMPRESA = V.COD_EMPRESA',
'   AND V.COD_EMPRESA = A.COD_EMPRESA',
'   AND V.TIP_COMPROBANTE = :P342_TIP_COMPROBANTE_REF',
'   AND V.SER_COMPROBANTE = :P342_SER_COMPROBANTE_REF',
'   AND V.NRO_COMPROBANTE = :P342_NRO_COMPROBANTE_REF',
'   AND NVL(T.ORIGEN, ''X'') NOT IN ''STNGO''',
'   AND A.TIPO_MO NOT IN ''STNGO''',
'   AND TIPO_MO IS NOT NULL',
'   AND NVL(COD_MARCA, :P342_COD_MARCA) = :P342_COD_MARCA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
