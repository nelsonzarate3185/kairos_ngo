prompt --application/pages/page_00559
begin
--   Manifest
--     PAGE: 00559
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
 p_id=>559
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Generacion de Inventario Movil'
,p_alias=>'GENERACION-DE-INVENTARIO-MOVIL'
,p_step_title=>'Generacion de Inventario Movil'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230802145928'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179015664441383928)
,p_plug_name=>'Generacion de Inventario Movil'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'COD_EMPRESA , TIP_COMPROBANTE , SER_COMPROBANTE,  NRO_COMPROBANTE , COD_SUCURSAL , FEC_COMPROBANTE,',
'  POLITICA_INVENTARIO , ID_INVENTURY , FECHA_ACTUALIZA,  USUARIO_ACTUALIZA , USUARIO_CIERRE , FECHA_CIERRE  ,SUCURSAL , OBSERVACION,',
'    ID_INVENTURY_LOC , INVENTARIOOT , EMPRESA  ,IND_ABIERTO,  USUARIO,  NRO_PLAN_INVENTARIO  ,NRO_INVENTARIO_RECONTEO,  ES_RECONTEO  ,',
'    SELECCIONAR,  ELIMINAR,  DETALLE , ESTADO_INVENTARIO , ARTICULOS_CONTADOS_DIST,  ARTICULOS_INVENTARIOS_DIS,  ARTICULOS_CONTADOS_CANT,  ARTICULOS_INVENTARIOS_CANT,',
'case when nvl(ARTICULOS_CONTADOS_DIST,0)>0 then ',
'nvl(round( ARTICULOS_CONTADOS_DIST*100/ARTICULOS_INVENTARIOS_DIS ,2),0)',
'else 0',
'  end   ',
' avance_sku , ',
' ',
' case when nvl(ARTICULOS_INVENTARIOS_CANT,0)>0 then ',
'nvl(round( ARTICULOS_CONTADOS_CANT*100/ARTICULOS_INVENTARIOS_CANT ,2),0)',
'else 0',
'  end  ',
'avance_cantidades',
'FROM(',
'',
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       TO_NUMBER(NRO_COMPROBANTE)NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       POLITICA_INVENTARIO,',
'       ID_INVENTURY,',
'       FECHA_ACTUALIZA,',
'       USUARIO_ACTUALIZA,',
'       USUARIO_CIERRE,',
'       FECHA_CIERRE,',
'       SUCURSAL,',
'       OBSERVACION,',
'       ID_INVENTURY_LOC,',
'       INVENTARIOOT,',
'       case when IND_INVENTARIO_CPH=''S'' THEN ''CPH''',
'       WHEN IND_INVENTARIO_CPH=''T'' THEN ''TF''',
'        ELSE  ''NGO'' END EMPRESA,',
'       IND_ABIERTO,',
'       USUARIO,',
'       NRO_PLAN_INVENTARIO,',
'       NRO_INVENTARIO_RECONTEO,',
'       ES_RECONTEO,',
'       NULL SELECCIONAR,',
'       NULL ELIMINAR,',
'       NULL DETALLE,   (DECODE(FECHA_CIERRE,NULL,DECODE(FECHA_ACTUALIZA,NULL,''CREADO'',''ABIERTO''),''CERRADO'')) estado_inventario,',
'  ',
'(select count(distinct(cod_articulo))',
'from sm_inventario_det D where d.inventory_area=g.nro_comprobante)ARTICULOS_CONTADOS_DIST,',
'',
'',
'(select count(distinct(cod_articulo))',
'from  st_generacion_inventario_det gd',
'  where  g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante) ARTICULOS_INVENTARIOS_DIS,',
'   ',
'   (select SUM(CANTIDAD)',
'from sm_inventario_det D where d.inventory_area=g.nro_comprobante)ARTICULOS_CONTADOS_CANT,',
'',
'(select SUM(GD.CANTIDAD)',
'from  st_generacion_inventario_det gd',
'  where  g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante) ARTICULOS_INVENTARIOS_CANT',
'',
'  from ST_GENERACION_INVENTARIO g',
'  WHERE G.FEC_COMPROBANTE>SYSDATE-780',
'  AND G.COD_EMPRESA=:P_COD_EMPRESA',
'  ORDER BY TO_NUMBER(NRO_COMPROBANTE) DESC )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Generacion de Inventario Movil'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(179015735655383929)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>179015735655383929
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179015847723383930)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179015999377383931)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016015398383932)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016228481383934)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016359059383935)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016482981383936)
,p_db_column_name=>'POLITICA_INVENTARIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Politica Inventario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016542922383937)
,p_db_column_name=>'ID_INVENTURY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id Inventury'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016606658383938)
,p_db_column_name=>'FECHA_ACTUALIZA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha  Generacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016713468383939)
,p_db_column_name=>'USUARIO_ACTUALIZA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016836353383940)
,p_db_column_name=>'USUARIO_CIERRE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Usuario Cierre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179016919667383941)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017053669383942)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017164236383943)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017251943383944)
,p_db_column_name=>'ID_INVENTURY_LOC'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Id Inventury Loc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017385750383945)
,p_db_column_name=>'INVENTARIOOT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Inventario OT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017565110383947)
,p_db_column_name=>'IND_ABIERTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ind Abierto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017617998383948)
,p_db_column_name=>'USUARIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017792174383949)
,p_db_column_name=>'NRO_PLAN_INVENTARIO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Plan Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179017808339383950)
,p_db_column_name=>'NRO_INVENTARIO_RECONTEO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Inventario Reconteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179067374976145301)
,p_db_column_name=>'ES_RECONTEO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Es Reconteo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179068882761145316)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179068903306145317)
,p_db_column_name=>'DETALLE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181155761214495109)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Seleccionar'
,p_column_link=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.:RP,556:P556_NRO_COMPROBANTE,P556_SER_COMPROBANTE,P556_TIP_COMPROBANTE,P556_ACCION_CONSULTA:#NRO_COMPROBANTE#,#SER_COMPROBANTE#,#TIP_COMPROBANTE#,1'
,p_column_linktext=>'<span class="fa fa-address-card" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(183046274986013023)
,p_db_column_name=>'ESTADO_INVENTARIO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Estado Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(183047863255013039)
,p_db_column_name=>'EMPRESA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(183048351988013044)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915575312833234)
,p_db_column_name=>'ARTICULOS_CONTADOS_DIST'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Articulos Contados Dist'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915697374833235)
,p_db_column_name=>'ARTICULOS_INVENTARIOS_DIS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Articulos Inventarios Dis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915702089833236)
,p_db_column_name=>'ARTICULOS_CONTADOS_CANT'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Articulos Contados Cant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915848629833237)
,p_db_column_name=>'ARTICULOS_INVENTARIOS_CANT'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Articulos Inventarios Cant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172915952297833238)
,p_db_column_name=>'AVANCE_SKU'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Avance por Articulo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172916059531833239)
,p_db_column_name=>'AVANCE_CANTIDADES'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Avance Sobre Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(179079989882143393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1790800'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'SELECCIONAR:NRO_COMPROBANTE:COD_SUCURSAL:SUCURSAL:FEC_COMPROBANTE:USUARIO_ACTUALIZA:FECHA_ACTUALIZA:USUARIO_CIERRE:FECHA_CIERRE:ESTADO_INVENTARIO:EMPRESA:INVENTARIOOT:AVANCE_SKU:AVANCE_CANTIDADES:'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FEC_COMPROBANTE'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179069032138145318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(179015664441383928)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Inventario'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.:RP,556:P556_ACCION_CONSULTA:3'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp.component_end;
end;
/
