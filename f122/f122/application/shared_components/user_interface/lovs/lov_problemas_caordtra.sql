prompt --application/shared_components/user_interface/lovs/lov_problemas_caordtra
begin
--   Manifest
--     LOV_PROBLEMAS_CAORDTRA
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
 p_id=>wwv_flow_imp.id(194555046264596919)
,p_lov_name=>'LOV_PROBLEMAS_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA ,''1'' T',
'FROM  CA_PROBLEMAS P, CA_PROBLEMAS_ARTICULOS A, ST_ARTICULOS AR',
'WHERE P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL) ',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'UNION ALL',
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA,''2''',
'FROM  CA_PROBLEMAS P ,ST_ARTICULOS AR',
'WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'AND P.COD_PROBLEMA NOT IN NVL((SELECT A.COD_PROBLEMA',
'FROM   CA_PROBLEMAS_ARTICULOS A ',
' WHERE  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND A.COD_ARTICULO  = NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'),''1'')',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'',
'UNION ALL',
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA ,''1'' T',
'FROM  CA_PROBLEMAS P, CA_PROBLEMAS_ARTICULOS A, ST_ARTICULOS AR, CA_CATEGORIAS_PRO_SOL CPS',
'WHERE P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL) ',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND AR.COD_EMPRESA=CPS.COD_EMPRESA',
'AND AR.COD_CATEGORIA= CPS.COD_CATEGORIA',
'AND P.COD_PROBLEMA=CPS.COD_PROBLEMA',
'GROUP BY P.DESCRIPCION, P.COD_PROBLEMA',
'UNION ALL',
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA,''2''',
'FROM  CA_PROBLEMAS P ,ST_ARTICULOS AR, CA_CATEGORIAS_PRO_SOL CPS',
'WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'AND P.COD_PROBLEMA NOT IN NVL((SELECT A.COD_PROBLEMA',
'FROM   CA_PROBLEMAS_ARTICULOS A ',
' WHERE  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'',
'',
'AND A.COD_ARTICULO  = NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'),''1'')',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'',
'',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND AR.COD_EMPRESA=CPS.COD_EMPRESA',
'AND AR.COD_CATEGORIA= CPS.COD_CATEGORIA',
'AND P.COD_PROBLEMA=CPS.COD_PROBLEMA',
'GROUP BY P.DESCRIPCION, P.COD_PROBLEMA',
'ORDER BY 3,1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PROBLEMA'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/
