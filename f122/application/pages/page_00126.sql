prompt --application/pages/page_00126
begin
--   Manifest
--     PAGE: 00126
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>126
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta Precio Stock'
,p_alias=>'CONSULTA-PRECIO-STOCK'
,p_step_title=>'Consulta Precio Stock'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*   .t-Body-contentInner {     ',
'                background-color: #F1EDFF;',
'                background-image: linear-gradient(180deg, #d5e3ec 0%, #c3d6eb 50%, #8daebb 100%);',
' ',
'         } ',
'*/',
'.imgart {       ',
'    width:auto;',
'    height:450px;',
'} ',
'',
'#P126_IMG3, #P126_IMG4, #P126_IMG1, #P126_IMG2 {',
'    margin: 0 auto;   ',
'}',
'',
'   .t-Form-fieldContainer--floatingLabel .t-Form-label {',
'        color: black; ',
'        font-weight: bold;',
'   }',
'   ',
'  /* colores de la tabla*/ ',
'   #STK_ARTICULOS thead{ ',
'	  font-weight: bold;',
'	  color: darkblue;    ',
'   }',
'   #STK_ARTICULOS tbody{',
'        color: darkblue;  ',
'   }',
'',
'    .t-Report-colHead , .t-Report-cell{',
'      border:1px solid black;',
'      }',
'    .t-Report-report tr:last-child .t-Report-cell {',
'        border-bottom: 1px solid black;',
'    }',
'',
'    .t-Report-report tr .t-Report-cell:last-child, .t-Report-report tr .t-Report-colHead:last-child {',
'        border-right: 1px solid black;',
'    }',
'',
'    .t-Report-report, .t-Report-wrap{float: none;',
'                     margin: 0 auto;   }',
'',
'/*--------------------------',
'*/',
'',
'    .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only { ',
'             color: darkblue/*#eeebc0 */!important;  ',
'            border-color:rgb(252, 244, 136);',
'            border-style: solid; ',
'            border-radius: 0.5rem;',
'           /* background-color:  #003a85;             ',
'            box-shadow: inset 20px 20px 60px  #003a85,',
'		                inset -20px -20px 60px  #001531;*/',
'                         ',
'        }',
'   #REG_IMG{ ',
' /*background: white;*/',
' border-radius: 30px;',
' box-shadow: 0 0  0 1px #003a85,',
'             0.3em 0.3em 1em #667e91;',
'}',
'',
'',
'  #DAT_ART, #STK_ARTICULOS{       ',
'            border-radius: 1rem; ',
'            box-shadow: /*inset 20px 20px 60px #f3f5fa,',
'		                inset -20px -20px 60px #ffffff,*/',
'                        0.3em 0.3em 1em #667e91;',
'}',
'',
'#DAT_ART {',
'     background:  #003a85;   ',
'}',
'',
'',
'  #REG_DET{',
'     background:  #3f5e86b2;   ',
'}',
'',
'#P126_ARTICULO_LABEL, #P126_RUBRO_LABEL{ color: darkblue;}',
'',
'.lbl_reg_stk {',
'        color:darkblue;/* #2C6676;  */',
'        font-weight: bold; ',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'        margin: 0 auto;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20240228154630'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(263333715649507439)
,p_name=>'Ubicaciones'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT E.COD_ARTICULO, SU.COD_SUCURSAL, SU.DESCRIPCION,',
'		NVL(COD_POSICION,U.COD_SUCURSAL||''-''||PASILLO||''-''||U.CUERPO||''-''|| U.BANDEJA)POSICION',
'		FROM ST_EXISTENCIA_ART E, ST_UBIC_ARTICULOS U, SUCURSALES SU',
'		WHERE E.COD_EMPRESA=:P_COD_EMPRESA',
'		AND E.COD_ARTICULO=:P126_ARTICULO',
'		AND U.COD_EMPRESA =E.COD_EMPRESA',
'		AND U.COD_ARTICULO =E.COD_ARTICULO',
'		AND SU.COD_EMPRESA=E.COD_EMPRESA',
'		AND SU.COD_SUCURSAL=E.COD_SUCURSAL',
'		and e.cod_sucursal=:P126_SUC_UBI',
'		AND E.CANT_DISPON>0				',
'		AND E.COD_SUCURSAL=U.COD_SUCURSAL(+)',
'		GROUP BY E.COD_ARTICULO, SU.COD_SUCURSAL, SU.DESCRIPCION, U.BANDEJA, U.PASILLO, U.CUERPO,',
'			NVL(COD_POSICION,U.COD_SUCURSAL||''-''||PASILLO||''-''||U.CUERPO||''-''|| U.BANDEJA);'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P126_SUC_UBI,P126_ARTICULO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('Sin ubicaci\00F3n definida.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263333946577507441)
,p_query_column_id=>1
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263334006777507442)
,p_query_column_id=>2
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>20
,p_column_heading=>'Suc'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263334199629507443)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263334241168507444)
,p_query_column_id=>4
,p_column_alias=>'POSICION'
,p_column_display_sequence=>40
,p_column_heading=>'Posicion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(267420059313303604)
,p_name=>'TRANSITO'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'A.CANT cantidad_transito, nvl(TO_CHAR(A.fecha_ingreso,''dd/mm/yyyy''),''A DEFINIR'') fec_llegada',
' from  v_en_transito_sabana a',
' where a.cant>0',
' and cod_articulo=:P126_ARTICULO',
' UNION ALL',
'			select  ',
'A.CANT cantidad_transito, TO_CHAR(A.fecha_ingreso,''dd/mm/yyyy'') fec_llegada',
' from  V_EN_TRANSITO_SABANA_rep a',
' where a.cant>0',
' AND FECHA>SYSDATE-90',
' and codIGO_articulo=:P126_ARTICULO',
' union all',
' select sum(round(a.cantidad-nvl(a.cantidad_confirmada,0)))stock, ''ZONA_PRIMARIA'' from v_articulos_zona_primaria a',
'where   (round(a.cantidad-nvl(a.cantidad_confirmada,0)))>0',
' and cod_articulo=:P126_ARTICULO',
' having sum(round(a.cantidad-nvl(a.cantidad_confirmada,0)))>0',
'				 order by 2 asc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P126_ARTICULO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'El Articulo &P126_ARTICULO. no cuenta con registros de Transito.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267420178551303605)
,p_query_column_id=>1
,p_column_alias=>'CANTIDAD_TRANSITO'
,p_column_display_sequence=>10
,p_column_heading=>'Cantidad Transito'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267420249901303606)
,p_query_column_id=>2
,p_column_alias=>'FEC_LLEGADA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha Llegada'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268974406001593496)
,p_plug_name=>'Consulta de Articulos'
,p_region_name=>'DAT_ART'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-sm:margin-bottom-md:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(263334617166507448)
,p_name=>'SEGUIMIENTO VENTA PERDIDA'
,p_region_name=>'seg_vta_perd'
,p_parent_plug_id=>wwv_flow_imp.id(268974406001593496)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMENTARIO     ,FECHA_ALTA FECHA     ',
'  from ST_REPUESTOS_VENTA_PERDIDA_SEG',
'  WHERE COD_REPUESTO = :P126_ARTICULO',
'  AND ( nvl((select sum(nvl(cant_dispon,0))',
'        from ST_EXISTENCIA_ART',
'        where cod_empresa = :P_COD_EMPRESA',
'        and cod_articulo =  :P126_ARTICULO',
'        and cant_dispon>0),0)=0',
'     or ',
'          exists (select distinct ''1''',
'from ST_REPUESTOS_VENTA_PERDIDA c',
'where c.fecha_reposicion is null',
'and   c.cod_repuesto= :P126_ARTICULO',
')',
'  )',
'',
'',
'  order by FECHA_ALTA desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P126_ARTICULO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263334881852507450)
,p_query_column_id=>1
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>10
,p_column_heading=>'OBSERVACIONES'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267419812901303602)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268974538997593497)
,p_plug_name=>'Detalles'
,p_region_name=>'REG_DET'
,p_parent_plug_id=>wwv_flow_imp.id(268974406001593496)
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(268976116042593513)
,p_name=>'STOCK DE ARTICULOS'
,p_region_name=>'STK_ARTICULOS'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_template_options=>'t-Region--hideHeader:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_sucursal,',
'       s.descripcion,',
'       a.nro_lote,',
'       a.cant_dispon,',
'       null ubicacion',
'from ST_EXISTENCIA_ART   a',
'     ,sucursales s',
'where A.cod_empresa = ''1''',
'AND  :P126_ARTICULO is not null ',
'AND   A.COD_ARTICULO= :P126_ARTICULO',
'and s.cod_empresa  = a.cod_empresa',
'and s.cod_sucursal = a.cod_sucursal ',
'AND NVL(IND_FACTURA,''S'')=''S''',
'and a.cant_dispon<>0',
'order by S.COD_SUCURSAL_CENTRAL ASC, cant_dispon desc,lpad(ltrim(rtrim(cod_sucursal)),5,'' '')'))
,p_header=>unistr('<span class="lbl_reg_stk">Existencia de Art\00EDculos</span>')
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P126_ARTICULO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Sin existencia'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27271319839031480)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27271766023031480)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion Sucursal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27272187455031480)
,p_query_column_id=>3
,p_column_alias=>'NRO_LOTE'
,p_column_display_sequence=>30
,p_column_heading=>'Lote'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27272566696031480)
,p_query_column_id=>4
,p_column_alias=>'CANT_DISPON'
,p_column_display_sequence=>40
,p_column_heading=>'Cant.'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263333603952507438)
,p_query_column_id=>5
,p_column_alias=>'UBICACION'
,p_column_display_sequence=>50
,p_column_heading=>'Ubic'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P126_SUC_UBI'',''#COD_SUCURSAL#'');'
,p_column_linktext=>'<span aria-label="ver"><span class="fa fa-search" aria-hidden="true" title="ver"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268976803355593520)
,p_plug_name=>'IMAGENES'
,p_region_name=>'REG_IMG'
,p_region_template_options=>'t-Region--showCarouselControls:t-Region--carouselSlide:i-h480:t-Region--removeHeader:t-Region--hiddenOverflow:margin-top-sm:margin-bottom-md:margin-left-sm:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(40101059980263654)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268976905682593521)
,p_plug_name=>'IMG2'
,p_parent_plug_id=>wwv_flow_imp.id(268976803355593520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268977018634593522)
,p_plug_name=>'IMG1'
,p_parent_plug_id=>wwv_flow_imp.id(268976803355593520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268977166816593523)
,p_plug_name=>'IMG3'
,p_parent_plug_id=>wwv_flow_imp.id(268976803355593520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268977232954593524)
,p_plug_name=>'IMG4'
,p_parent_plug_id=>wwv_flow_imp.id(268976803355593520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(267420683138303610)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(263334617166507448)
,p_button_name=>'VTA_PERDIDA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Venta Perdida'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:711:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-21-bg  u-color-43-text'
,p_icon_css_classes=>'fa-thumbs-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(267419972357303603)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(263334617166507448)
,p_button_name=>'TRANSITO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Transito'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-bg'
,p_icon_css_classes=>'fa-battleship'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27266340693031476)
,p_name=>'P126_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268974406001593496)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.DESCRIPCION ||'' ''||A.COD_ARTICULO||'' ''|| A.Cod_Art_Corto desc_art, A.COD_ARTICULO',
'from st_articulos a',
'where a.cod_empresa=''1''',
'and (( a.cod_rubro in (''RE'',''PR'') AND NVL(:P126_RUBRO,''T'')=''T'') OR (a.cod_rubro=:P126_RUBRO ))',
'--and   upper(a.descripcion) not like ''%NO%FACT%''',
'order by DECODE(A.ESTADO,''A'',''1'',''2'') ,A.DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P126_RUBRO'
,p_ajax_items_to_submit=>'P126_RUBRO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'3'
,p_attribute_08=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27266764767031476)
,p_name=>'P126_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(268974406001593496)
,p_item_default=>'PR'
,p_prompt=>'RUBRO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRODUCTOS;PR,REPUESTOS;RE,TODOS;T'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27267422824031477)
,p_name=>'P126_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'CODIGO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27267858681031478)
,p_name=>'P126_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'CODIGO ARTICULO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27268230978031478)
,p_name=>'P126_PRECIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'PRECIO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27268664918031478)
,p_name=>'P126_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>unistr('DESCRIPCION ART\00CDCULO')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27269049958031478)
,p_name=>'P126_LINEA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'LINEA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27269465199031478)
,p_name=>'P126_CATEGORIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'CATEGORIA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27269887989031478)
,p_name=>'P126_FAMILIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'FAMILIA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27270250704031479)
,p_name=>'P126_DIVISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'DIVISION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27270601730031479)
,p_name=>'P126_MARCA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(268974538997593497)
,p_prompt=>'MARCA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27273552222031481)
,p_name=>'P126_IMG2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268976905682593521)
,p_item_default=>'<img class="imgart" src="https://ngosaeca.com.py/storage/banner-23-1-1644319374.png">'
,p_prompt=>'Img'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27274290747031481)
,p_name=>'P126_IMG1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268977018634593522)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img class="imgart" src="https://ngosaeca.com.py/storage/banner-33-1-1652533056.jpg">',
''))
,p_prompt=>'Img1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27274980171031482)
,p_name=>'P126_IMG3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268977166816593523)
,p_item_default=>'<img class="imgart" src="https://ngosaeca.com.py/storage/banner-40-1-1657748019.png">'
,p_prompt=>'Img'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27275662917031482)
,p_name=>'P126_IMG4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268977232954593524)
,p_item_default=>'<img class="imgart" src="https://ngosaeca.com.py/storage/banner-39-1-1657747449.jpg">'
,p_prompt=>'Img'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263333838910507440)
,p_name=>'P126_SUC_UBI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(263333715649507439)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27276405149031483)
,p_name=>'da_datos_art'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_ARTICULO'
,p_condition_element=>'P126_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27279413100031484)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO NUMBER;',
'BEGIN',
'        select A.DESCRIPCION,',
'                A.COD_ARTICULO,',
'                A.Cod_Art_Corto,',
'                To_char(precio_web( COD_ARTICULO,''1'',0),''999G999G999G990'')',
'        INTO  :P126_DESCRIPCION,',
'              :P126_COD_ARTICULO,',
'              :P126_COD_ART_CORTO,',
'              :P126_PRECIO',
'        from st_articulos a',
'        where a.cod_empresa=''1''',
'        AND   A.COD_ARTICULO= :P126_ARTICULO',
'        and   a.cod_rubro in (''RE'',''PR'')',
'        order by DECODE(A.ESTADO,''A'',''1'',''2'') ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'            NULL;',
'END;'))
,p_attribute_02=>'P126_ARTICULO'
,p_attribute_03=>'P126_COD_ART_CORTO,P126_COD_ARTICULO,P126_DESCRIPCION,P126_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27279954742031484)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_COD_ART_CORTO,P126_COD_ARTICULO,P126_PRECIO,P126_DESCRIPCION,P126_LINEA,P126_CATEGORIA,P126_FAMILIA,P126_DIVISION,P126_MARCA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27276965022031483)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'                select NVL(( SELECT L.DESCRIPCION',
'               	     FROM ST_LINEA L',
'                     WHERE L.COD_LINEA =A.COD_LINEA),'''')LINEA,',
'               NVL((SELECT C.DESCRIPCION',
'                    FROM ST_CATEGORIAS C',
'                    WHERE C.COD_EMPRESA= A.COD_EMPRESA',
'                    AND   c.cod_categoria=A.COD_CATEGORIA',
'                    AND   C.COD_FAMILIA=A.COD_FAMILIA),'''')CATEGORIA,',
'               NVL(( SELECT F.DESCRIPCION',
'                     FROM ST_FAMILIA F',
'                      WHERE F.COD_FAMILIA=A.COD_FAMILIA',
'                      AND   F.COD_DIVISION=A.COD_DIVISION ',
'                      AND   F.COD_EMPRESA= A.COD_EMPRESA ),'''')FAMILIA,',
'               NVL(( SELECT D.DESC_DIVISION',
'                      FROM ST_DIVISION_ARTICULOS D',
'                      WHERE D.COD_DIVISION=A.COD_DIVISION ),'''')DIVISION,',
'               NVL(( SELECT M.DESCRIPCION',
'                      FROM ST_MARCAS M',
'                      WHERE M.COD_MARCA=A.COD_MARCA ),'''')MARCA',
'        into :P126_LINEA,',
'             :P126_CATEGORIA,',
'             :P126_FAMILIA,',
'             :P126_DIVISION,',
'             :P126_MARCA  ',
'        from st_articulos a',
'        where a.cod_empresa=''1''',
'        AND   A.COD_ARTICULO= :P126_ARTICULO',
'        and   a.cod_rubro in (''RE'',''PR'')',
'        order by DECODE(A.ESTADO,''A'',''1'',''2'') ;',
'        ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'            :P126_LINEA:=null;',
'             :P126_CATEGORIA:=null;',
'             :P126_FAMILIA:=null;',
'             :P126_DIVISION:=null;',
'             :P126_MARCA  :=null;',
'END;'))
,p_attribute_02=>'P126_ARTICULO'
,p_attribute_03=>'P126_LINEA,P126_CATEGORIA,P126_FAMILIA,P126_DIVISION,P126_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27277424217031483)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'            select ',
'            ''<img class=imgart src="https://ngosaeca.com.py/api/files/imagenes/productos/''|| CASE',
'                    WHEN COD_RUBRO = ''PR'' THEN',
'                    REPLACE((s.path_img_pro), ''O:\APLIC\IMAGENES\productos\'', '''')',
'                    ELSE',
'                    REPLACE((path_img_pro), ''O:\APLIC\IMAGENES\repuestos\'', '''')',
'                END||''" >'' Imagen1--- style="width:10%"',
'                ',
'            into :P126_IMG1     ',
'            from st_articulos s',
'            where cod_empresa = ''1''',
'            and (s.cod_articulo = :P126_ARTICULO OR',
'                S.COD_ARTICULO = :P126_ARTICULO|| ''-N'')',
'                AND ( TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%JPG'' OR',
'                    TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%JPEG'' OR',
'                    TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%BMP'' OR',
'                    TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%PNG'' OR ',
'                    TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%TIF''  ',
'                )',
'            AND ROWNUM = 1',
'            ;',
'exception',
'    when others then',
'           :P126_IMG1 := null;',
'end;'))
,p_attribute_02=>'P126_ARTICULO'
,p_attribute_03=>'P126_IMG1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27277975154031484)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select ''<img  class=imgart src="https://ngosaeca.com.py/api/files/imagenes/productos/''||  CASE',
'         WHEN COD_RUBRO = ''PR'' THEN',
'          REPLACE((s.path_img_pro_1), ''O:\APLIC\IMAGENES\productos\'', '''')',
'         ELSE',
'          REPLACE((path_img_pro_1), ''O:\APLIC\IMAGENES\repuestos\'', '''')',
'       END ||''">''Imagen4 ',
'   into :P126_IMG2',
'  from st_articulos s',
' where cod_empresa = ''1''',
'   and (s.cod_articulo = :P126_ARTICULO OR',
'       S.COD_ARTICULO = :P126_ARTICULO || ''-N'')',
'  AND ( TRIM(UPPER(S.PATH_IMG_PRO_1)) LIKE ''%JPG'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO_1)) LIKE ''%JPEG'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO_1)) LIKE ''%BMP'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO_1)) LIKE ''%PNG'' OR ',
'         TRIM(UPPER(S.PATH_IMG_PRO_1)) LIKE ''%TIF''  ',
'       )',
'   AND ROWNUM = 1 ;',
'',
' exception',
' when others then',
'        :P126_IMG2:=null;',
'end;'))
,p_attribute_02=>'P126_ARTICULO'
,p_attribute_03=>'P126_IMG2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27278407911031484)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ''<img  class=imgart src="https://ngosaeca.com.py/api/files/imagenes/productos/''||  CASE',
'         WHEN COD_RUBRO = ''PR'' THEN',
'          REPLACE((s.path_img_pro_2), ''O:\APLIC\IMAGENES\productos\'', '''')',
'         ELSE',
'          REPLACE((path_img_pro_2), ''O:\APLIC\IMAGENES\repuestos\'', '''')',
'       END ||''" >''Imagen4 ',
'  into :P126_IMG3',
'  from st_articulos s',
' where cod_empresa = ''1''',
'   and (s.cod_articulo = :P126_ARTICULO OR',
'       S.COD_ARTICULO = :P126_ARTICULO || ''-N'')',
'  AND ( TRIM(UPPER(S.PATH_IMG_PRO_2)) LIKE ''%JPG'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO_2)) LIKE ''%JPEG'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO_2)) LIKE ''%BMP'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO_2)) LIKE ''%PNG'' OR ',
'         TRIM(UPPER(S.PATH_IMG_PRO_2)) LIKE ''%TIF''  ',
'       )',
'   AND ROWNUM = 1 ;',
'    exception',
' when others then',
'        :P126_IMG3:=null;',
'end;'))
,p_attribute_02=>'P126_ARTICULO'
,p_attribute_03=>'P126_IMG3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27278936639031484)
,p_event_id=>wwv_flow_imp.id(27276405149031483)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ''<img  class=imgart src="https://ngosaeca.com.py/api/files/imagenes/productos/''|| CASE',
'         WHEN COD_RUBRO = ''PR'' THEN',
'          REPLACE((s.path_img_pro), ''O:\APLIC\IMAGENES\productos\'', '''')',
'         ELSE',
'          REPLACE((path_img_pro), ''O:\APLIC\IMAGENES\repuestos\'', '''')',
'       END||''">'' Imagen2',
'  into :P126_IMG4',
'  from st_articulos s, vt_combo_det d',
' where s.cod_empresa = ''1''',
'   and s.cod_empresa = d.cod_empresa',
'   and s.cod_articulo = d.cod_articulo',
'   and d.cod_combo = :P126_ARTICULO',
'          AND ( TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%JPG'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%JPEG'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%BMP'' OR',
'         TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%PNG'' OR ',
'         TRIM(UPPER(S.PATH_IMG_PRO)) LIKE ''%TIF''  ',
'       )',
'       and rownum=1;',
'        exception',
' when others then',
'        :P126_IMG4:=null;',
'end;'))
,p_attribute_02=>'P126_ARTICULO'
,p_attribute_03=>'P126_IMG4'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27280344641031484)
,p_name=>'DA_REFRESH_REG'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27280823615031484)
,p_event_id=>wwv_flow_imp.id(27280344641031484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("STK_ARTICULOS").refresh();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(267419701274303601)
,p_event_id=>wwv_flow_imp.id(27280344641031484)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263334617166507448)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263334377707507445)
,p_name=>'da_opn_reg'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_SUC_UBI'
,p_condition_element=>'P126_SUC_UBI'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263334444581507446)
,p_event_id=>wwv_flow_imp.id(263334377707507445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263333715649507439)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263334559939507447)
,p_event_id=>wwv_flow_imp.id(263334377707507445)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263333715649507439)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(267420314585303607)
,p_name=>'da_opn_trans'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(267419972357303603)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(267420424427303608)
,p_event_id=>wwv_flow_imp.id(267420314585303607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(267420059313303604)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(267420522115303609)
,p_event_id=>wwv_flow_imp.id(267420314585303607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(267420059313303604)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27276008173031482)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
