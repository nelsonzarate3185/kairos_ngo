prompt --application/pages/page_00388
begin
--   Manifest
--     PAGE: 00388
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>388
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Generaci\00F3n de Paquetes, Refinanciaci\00F3n y Cheques - CCCOMCUO')
,p_alias=>'CCCOMCUO'
,p_step_title=>unistr('Generaci\00F3n de Paquetes, Refinanciaci\00F3n y Cheques - CCCOMCUO')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230926155810'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110666793326965245)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111548891727674109)
,p_plug_name=>'B_CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111548913258674110)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111549042482674111)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111550414845674125)
,p_plug_name=>'Datos para Comprobantes Nuevos'
,p_parent_plug_id=>wwv_flow_imp.id(111549042482674111)
,p_region_css_classes=>'u-color-3-background'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111550500995674126)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(111549042482674111)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111549143258674112)
,p_plug_name=>'BUSCAR COMPROBANTE'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111588265363113042)
,p_plug_name=>'RESULTADO BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'        NULL    SELECCIONAR,',
'        seq_id  ROW_ID_COMP_BUSQ,',
'        c001    COD_EMPRESA,',
'        c002    TIP_COMPROBANTE,',
'        c003    SER_COMPROBANTE,',
'        n001    NRO_COMPROBANTE,',
'        n002    nro_cuota,',
'        n003    saldo_cuota,',
'        d001    fec_vencimiento,',
'        d002    fec_origen,',
'        c004    cod_moneda_cuota,',
'        c005    tipo_cambio_dia',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COMP_NUEVO''',
'AND   NVL(C019, ''X'') <> ''B''',
'--AND :P388_INDICADOR_REPORTE_BUSQ = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P388_INDICADOR_REPORTE_BUSQ'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADO BUSQUEDA'
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
 p_id=>wwv_flow_imp.id(111962113248898008)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>111962113248898008
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111962931958898016)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_SELEC_COMP_NUEVO'',''#ROW_ID_COMP_BUSQ#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209492879651343330)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>90
,p_column_identifier=>'T'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209492913772343331)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'U'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209493006582343332)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'V'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209493112930343333)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>120
,p_column_identifier=>'W'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209493290439343334)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>130
,p_column_identifier=>'X'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209493382358343335)
,p_db_column_name=>'SALDO_CUOTA'
,p_display_order=>140
,p_column_identifier=>'Y'
,p_column_label=>'Saldo Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209493427992343336)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>150
,p_column_identifier=>'Z'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209493983777343341)
,p_db_column_name=>'ROW_ID_COMP_BUSQ'
,p_display_order=>160
,p_column_identifier=>'AA'
,p_column_label=>'Row Id Comp Busq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210348561357732422)
,p_db_column_name=>'COD_MONEDA_CUOTA'
,p_display_order=>170
,p_column_identifier=>'AB'
,p_column_label=>'Cod Moneda Cuota'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210348659325732423)
,p_db_column_name=>'TIPO_CAMBIO_DIA'
,p_display_order=>180
,p_column_identifier=>'AC'
,p_column_label=>'Tipo Cambio Dia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210349275106732429)
,p_db_column_name=>'FEC_ORIGEN'
,p_display_order=>190
,p_column_identifier=>'AD'
,p_column_label=>'Fec Origen'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(112035899972290305)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1120359'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_ORIGEN:FEC_VENCIMIENTO:NRO_CUOTA:SALDO_CUOTA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111965604176898043)
,p_plug_name=>'FECHAS'
,p_parent_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111965747545898044)
,p_plug_name=>unistr('Emisi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(111965604176898043)
,p_region_css_classes=>'u-color-3-background'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111965875391898045)
,p_plug_name=>'Vencimiento'
,p_parent_plug_id=>wwv_flow_imp.id(111965604176898043)
,p_region_css_classes=>'u-color-3-background'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111552454462674145)
,p_plug_name=>'Comprobantes a Reemplazar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111965242278898039)
,p_plug_name=>'REPORTE COMPROBANTES A REEMPLAZAR'
,p_parent_plug_id=>wwv_flow_imp.id(111552454462674145)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   ',
'',
'       NULL     ELIMINAR,',
'       NULL     EDITAR_SALDO,',
'       SEQ_ID   SEQ_ID_COMP_NUEVO,',
'       C001     COD_EMPRESA,',
'       C002     TIP_COMPROBANTE,',
'       C003     SER_COMPROBANTE,',
'       N001     NRO_COMPROBANTE,',
'       C004     TIP_COMPROBANTE_REF,',
'       C005     SER_COMPROBANTE_REF,',
'       N002     NRO_COMPROBANTE_REF,',
'       N003     NRO_CUOTA,',
'       N004     SALDO_CUOTA,',
'       D001     FEC_VENCIMIENTO,',
'       C006     COD_MONEDA_CUOTA,',
'       C007     TIP_CAMBIO,',
'       D002     FEC_ORIGEN',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COMP_A_REEMPLAZAR''',
'AND nvl(c020, ''O'') <> ''B''',
'ORDER BY N001, N002, N003',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE COMPROBANTES A REEMPLAZAR'
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
 p_id=>wwv_flow_imp.id(114294393943304615)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>114294393943304615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114294411377304616)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114294849032304620)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114294999215304621)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114295141691304623)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_COMP_REEMP_ELI'',''#SEQ_ID_COMP_NUEVO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114295645666304628)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114295706849304629)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116648973124214115)
,p_db_column_name=>'SEQ_ID_COMP_NUEVO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id Comp Nuevo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209494221879343344)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209494381049343345)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209494495533343346)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209494548125343347)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209494799469343349)
,p_db_column_name=>'SALDO_CUOTA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Saldo Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210348760542732424)
,p_db_column_name=>'COD_MONEDA_CUOTA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Moneda Cuota'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(11429983188001511)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210348894008732425)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210348926077732426)
,p_db_column_name=>'FEC_ORIGEN'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fec Origen'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210349888248732435)
,p_db_column_name=>'EDITAR_SALDO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Editar Saldo'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_COMP_REEMP_EDI'',''#SEQ_ID_COMP_NUEVO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(116156807865602452)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1161569'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:NRO_CUOTA:COD_MONEDA_CUOTA:TIP_CAMBIO:SALDO_CUOTA:FEC_ORIGEN:FEC_VENCIMIENTO:EDITAR_SALDO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116652057919214146)
,p_plug_name=>'TOTAL_COMPROBANTE'
,p_parent_plug_id=>wwv_flow_imp.id(111965242278898039)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114295293175304624)
,p_plug_name=>'AGREGAR/EDITAR COMPROBANTE NUEVO'
,p_parent_plug_id=>wwv_flow_imp.id(111552454462674145)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210349687539732433)
,p_plug_name=>'EDITAR SALDO'
,p_parent_plug_id=>wwv_flow_imp.id(111552454462674145)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111552594100674146)
,p_plug_name=>'Comprobantes Nuevos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117610271243947303)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(111552594100674146)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        C001  COD_MONEDA,',
'        C002  COD_PER_JURIDICA,',
'        D001  FEC_VENCIMIENTO,',
'        D001  FEC_EMISION,',
'        N001  IMPORTE,',
'        N002  IMPORTE_VALOR,',
'        C003  COD_SUCURSAL,',
'        C004  COD_EMPRESA,',
'        C005  TIP_COMPROBANTE,',
'        C006  SER_COMPROBANTE,',
'        N003  NRO_COMPROBANTE,',
'        C007  TIP_COMPROBANTE_REF,',
'        C008  SER_COMPROBANTE_REF,',
'        N004  NRO_COMPROBANTE_REF,',
'        N005  NRO_VALOR,',
'        C009  TIP_CAMBIO,',
'        C010  NRO_CUOTA,',
'        NULL  DETALLES,',
'        NULL  EDITAR,',
'        NULL  ELIMINAR,',
'        SEQ_ID SEQ_ID_COMP_NUEVO',
'',
'FROM    APEX_COLLECTIONS',
'WHERE   COLLECTION_NAME = ''COMPROBANTES_NUEVOS''',
'AND     NVL(C020, ''X'') <> ''B'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(212095974819198203)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>212095974819198203
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096089385198204)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096138233198205)
,p_db_column_name=>'COD_PER_JURIDICA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Per Juridica'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096259001198206)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096326234198207)
,p_db_column_name=>'IMPORTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096480995198208)
,p_db_column_name=>'IMPORTE_VALOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Importe Valor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096594217198209)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096629428198210)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096758372198211)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096878632198212)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212096956933198213)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097021581198214)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097178248198215)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097286402198216)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097301401198217)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro Valor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097425628198218)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097511443198219)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Cuota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212097833273198222)
,p_db_column_name=>'DETALLES'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_COMP_NUEVO_DET'',''#SEQ_ID_COMP_NUEVO#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212098225429198226)
,p_db_column_name=>'SEQ_ID_COMP_NUEVO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Seq Id Comp Nuevo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212098849300198232)
,p_db_column_name=>'EDITAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_COMP_NUEVO_EDI'',''#SEQ_ID_COMP_NUEVO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212098956428198233)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_COMP_NUEVO_ELI'',''#SEQ_ID_COMP_NUEVO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212099415759198238)
,p_db_column_name=>'FEC_EMISION'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fec Emision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(212110674305119097)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2121107'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:NRO_CUOTA:COD_MONEDA:TIP_CAMBIO:FEC_EMISION:FEC_VENCIMIENTO:IMPORTE:IMPORTE_VALOR:DETALLES:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117610134035947302)
,p_plug_name=>'B_DETALLE_PIE'
,p_parent_plug_id=>wwv_flow_imp.id(117610271243947303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121623205143550630)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(117610134035947302)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121623384459550631)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(117610134035947302)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212100295945198246)
,p_plug_name=>'EDITAR COMPROBANTE NUEVO'
,p_parent_plug_id=>wwv_flow_imp.id(111552594100674146)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111552657858674147)
,p_plug_name=>'B_CABECERA_PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111961869515898005)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112852313002303806)
,p_plug_name=>'CONSULTA DE COMPROBANTES'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112852464368303807)
,p_plug_name=>'COMPROBANTES'
,p_parent_plug_id=>wwv_flow_imp.id(112852313002303806)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    seq_id SEQ_ID_COMP_NUEVO,',
'    c004 tipo_comprobante,',
'    c005 ser_comprobante,',
'    n002 nro_comprobante,',
'    n003 nro_cuota,',
'    n004 importe,',
'    d001 fec_vencimiento',
'',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COMP_NUEVO''',
'AND :P388_INDICADOR_REP_COMP_NUEVOS = ''1''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P388_INDICADOR_REP_COMP_NUEVOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COMPROBANTES'
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
 p_id=>wwv_flow_imp.id(112852573147303808)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>112852573147303808
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112852621453303809)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112852748172303810)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112852866869303811)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112852965663303812)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112853016133303813)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114293265469304604)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P388_SEQ_ID_COMP_NUEVO'',''#SEQ_ID_COMP_NUEVO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114293534167304607)
,p_db_column_name=>'SEQ_ID_COMP_NUEVO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Seq Id Comp Nuevo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(114296109960304633)
,p_db_column_name=>'IMPORTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(113012193981478671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1130122'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIPO_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:IMPORTE:FEC_VENCIMIENTO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114293325021304605)
,p_plug_name=>'SEQ_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117610401861947305)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(111552594100674146)
,p_button_name=>'BTN_GENERAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212740023604476521)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:628:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-circle-right'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116649072971214116)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_button_name=>'BTN_BUSCAR_COMP_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210347336852732410)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(111965875391898045)
,p_button_name=>'BTN_BUSCAR_POR_VENCIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210347416875732411)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(111965875391898045)
,p_button_name=>'BTN_BORRAR_FECHAS_VENCIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210347180684732408)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(111965747545898044)
,p_button_name=>'BTN_BUSCAR_POR_EMISION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210347263079732409)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(111965747545898044)
,p_button_name=>'BTN_BORRAR_FECHAS_EMISION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114297469504304646)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_button_name=>'BTN_CERRAR_CR_ED_COMP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210350575956732442)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(210349687539732433)
,p_button_name=>'BTN_CERRAR_EDITAR_SALDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212738193481476502)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(212100295945198246)
,p_button_name=>'BTN_EDITAR_COMP_NUEVO_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111588861236113048)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_button_name=>'BTN_CERRAR_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114297501215304647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_button_name=>'BTN_ACEPTAR_CR_COMP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114297638748304648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_button_name=>'BTN_ACEPTAR_ED_COMP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210350451674732441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(210349687539732433)
,p_button_name=>'BTN_ACEPTAR_EDITAR_SALDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212738007705476501)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(212100295945198246)
,p_button_name=>'BTN_EDITAR_COMP_NUEVO_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111588654600113046)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111588743588113047)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_button_name=>'BTN_LIMPIAR_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-recycle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114293879136304610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(111965242278898039)
,p_button_name=>'BTN_AGREGAR_COMP_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209490535856343307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_button_name=>'BTN_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212740133995476522)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_button_name=>'BTN_ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212098630421198230)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_button_name=>'BTN_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212098767044198231)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(111548891727674109)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110666899248965246)
,p_name=>'P388_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110666980567965247)
,p_name=>'P388_SECTOR_BANCARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110667041906965248)
,p_name=>'P388_TIPOS_CANC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110667124952965249)
,p_name=>'P388_TIPOS_AJUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110667209830965250)
,p_name=>'P388_TIPO_AJUSTE_CREDITO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548010838674101)
,p_name=>'P388_TIPO_AJUSTE_DEBITO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548101919674102)
,p_name=>'P388_COD_MONEDA_US'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548291373674103)
,p_name=>'P388_GENERA_MD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111550500995674126)
,p_prompt=>'Genera movimiento de documentos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548381914674104)
,p_name=>'P388_MAX_ACAD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548497697674105)
,p_name=>'P388_GENERAR_FUERA_PERIODO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548533483674106)
,p_name=>'P388_REIMPRIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548625347674107)
,p_name=>'P388_IND_ACUERDO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111548707252674108)
,p_name=>'P388_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549222608674113)
,p_name=>'P388_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante || '' - '' || descripcion D, ',
'       tip_comprobante R',
'from tipos_comprobantes ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_modulo = :P388_COD_MODULO',
'and instr( :P388_TIPOS_CANC,''/''|| tip_comprobante || ''/'' ) > 0 ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549306734674114)
,p_name=>'P388_COD_SECTOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_sector || '' - '' || descripcion D, ',
'       cod_sector R ',
'FROM sectores ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549470956674115)
,p_name=>'P388_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549574466674116)
,p_name=>'P388_FEC_ESTADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Fecha Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549638093674117)
,p_name=>'P388_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Nro. Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549721439674118)
,p_name=>'P388_TIP_CAMBIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Cot.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549814539674119)
,p_name=>'P388_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1 -  PENDIENTE;P,2 - CONFIRMADO;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'SELECCIONE'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111549927962674120)
,p_name=>'P388_FECHA_ALTA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Fec. Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550015976674121)
,p_name=>'P388_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Ser Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550158569674122)
,p_name=>'P388_FEC_CANCELACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550210949674123)
,p_name=>'P388_COD_MONEDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550604773674127)
,p_name=>'P388_COD_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cl.cod_cliente || '' - '' || nvl( nombre, p.nomb_fantasia ) D, ',
'       cl.cod_cliente R',
'  FROM personas p,cc_clientes cl ',
' WHERE cl.cod_empresa= :P_COD_EMPRESA',
'   AND cl.cod_persona = p.cod_persona ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550758710674128)
,p_name=>'P388_COD_CUSTODIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_custodio || '' - '' || c.descripcion D, ',
'       c.cod_custodio R',
'FROM usuarios_custodios u, cc_custodios c ',
'WHERE u.cod_empresa = :P_COD_EMPRESA',
'AND u.cod_usuario = :P388_COD_USUARIO',
'AND u.cod_empresa = c.cod_empresa ',
'AND u.cod_custodio = c.cod_custodio ',
'AND u.cod_custodio <> :P_COD_CUSTODIO ',
'',
'UNION ALL',
'',
'SELECT c.cod_custodio || '' - '' || c.descripcion D, ',
'       c.cod_custodio R ',
'FROM cc_custodios c ',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.cod_custodio = :P388_COD_CUSTODIO',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550818094674129)
,p_name=>'P388_COD_COBRADOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(111548913258674110)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cobrador || '' - '' || nvl( ltrim(p.nombre), ltrim(p.nomb_fantasia)) D,',
'       c.cod_cobrador R',
'FROM cc_cobradores c, personas p ',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.cod_persona = p.cod_persona ',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111550950866674130)
,p_name=>'P388_CANT_CUOTAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111550414845674125)
,p_prompt=>'Cuotas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551033569674131)
,p_name=>'P388_INTERVALO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111550414845674125)
,p_prompt=>'Intervalo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551166791674132)
,p_name=>'P388_FEC_INICIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111550414845674125)
,p_prompt=>'Venc. Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551371602674134)
,p_name=>'P388_COD_BANCO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111550414845674125)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_persona || '' - '' || nvl( nombre, nomb_fantasia ) D, ',
'       cod_persona R',
'from personas ',
'where cod_sector = :P388_SECTOR_BANCARIO',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551446155674135)
,p_name=>'P388_IMPORTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111550414845674125)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551681063674137)
,p_name=>'P388_PLAN_GESTORES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111550500995674126)
,p_prompt=>'P. Gest.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551741514674138)
,p_name=>'P388_COD_CUSTODIO_ENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111550500995674126)
,p_prompt=>'Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_custodio || '' - '' || descripcion D,',
'       cod_custodio R ',
'from cc_custodios ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_custodio <> :P388_COD_CUSTODIO',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111551892512674139)
,p_name=>'P388_NRO_PLANILLA_ENVIADA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111550500995674126)
,p_prompt=>'Nro. planilla enviada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111552858664674149)
,p_name=>'P388_ALTA_POR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111552657858674147)
,p_prompt=>'Alta Por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111552942481674150)
,p_name=>'P388_FEC_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111552657858674147)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584184938113001)
,p_name=>'P388_ACTUALIZADO_POR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111552657858674147)
,p_prompt=>'Actualizado Por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584287686113002)
,p_name=>'P388_FEC_ACTUALIZACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111552657858674147)
,p_prompt=>unistr('Fecha Actualizaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584349010113003)
,p_name=>'P388_CANTIDAD_IMPRESION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111552657858674147)
,p_prompt=>'Cant. Impresiones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584456650113004)
,p_name=>'P388_TIP_GENERAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584509252113005)
,p_name=>'P388_NOM_PAGARE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584674984113006)
,p_name=>'P388_DIR_PAGARE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584859194113008)
,p_name=>'P388_IMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111584902784113009)
,p_name=>'P388_VER_OTRAS_CARGAS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111585096628113010)
,p_name=>'P388_CARGA_SUCURSAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111585115993113011)
,p_name=>'P388_CUSTODIOS_ALT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111586180627113021)
,p_name=>'P388_DECIMALES'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111586641877113026)
,p_name=>'P388_OBS_CLIENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121623384459550631)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:#D2423B;font-weight:650;"readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111587989501113039)
,p_name=>'P388_TIP_COMPROBANTE_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111588008157113040)
,p_name=>'P388_SER_COMPROBANTE_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111588144787113041)
,p_name=>'P388_NRO_COMPROBANTE_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111588477352113044)
,p_name=>'P388_FECHA_DESDE_BUSQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111588518894113045)
,p_name=>'P388_FECHA_HASTA_BUSQ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111961461630898001)
,p_name=>'P388_COD_CLIENTE_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111961599763898002)
,p_name=>'P388_COD_SUCURSAL_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(111549143258674112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111961914218898006)
,p_name=>'P388_INDICADOR_REPORTE_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111961869515898005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111964567066898032)
,p_name=>'P388_MENSAJE_ALERT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111961869515898005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111965946077898046)
,p_name=>'P388_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111965747545898044)
,p_prompt=>'Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111966088763898047)
,p_name=>'P388_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111965747545898044)
,p_prompt=>'Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111966135906898048)
,p_name=>'P388_FECHA_VENCIMIENTO_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111965875391898045)
,p_prompt=>'Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111966204926898049)
,p_name=>'P388_FECHA_VENCIMIENTO_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111965875391898045)
,p_prompt=>'Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112853119082303814)
,p_name=>'P388_INDICADOR_REP_COMP_NUEVOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111961869515898005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114293176703304603)
,p_name=>'P388_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114293436797304606)
,p_name=>'P388_SEQ_ID_COMP_NUEVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114296058803304632)
,p_name=>'P388_TIP_COMP_REF_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114296335446304635)
,p_name=>'P388_NRO_COMP_REF_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>unistr('N\00FAmero Comprobante')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114296472005304636)
,p_name=>'P388_SER_COMP_REF_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>'Serie Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114296504172304637)
,p_name=>'P388_COD_MONEDA_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>unistr('C\00F3digo Moneda')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114296684457304638)
,p_name=>'P388_TIP_CAMBIO_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>'Tipo Cambio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114296747374304639)
,p_name=>'P388_FEC_VENCIMIENTO_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>'Fecha de vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116648194695214107)
,p_name=>'P388_NRO_CUOTA_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>'Nro. Cuota'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116648267240214108)
,p_name=>'P388_IMPORTE_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(114295293175304624)
,p_prompt=>'Importe'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116648321559214109)
,p_name=>'P388_SEQ_ID_COMP_NUEVO_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116648400014214110)
,p_name=>'P388_SEQ_ID_COMP_NUEVO_EL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117610500904947306)
,p_name=>'P388_TOTAL_IMPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(116652057919214146)
,p_prompt=>'Total Importe'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align:right";'
,p_colspan=>3
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117610892333947309)
,p_name=>'P388_IND_CHEQUE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117611303826947314)
,p_name=>'P388_GENERANDO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119768785429483221)
,p_name=>'P388_TIP_CAMBIO_US'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623160811550629)
,p_name=>'P388_ENTREGA_INICIAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623499683550632)
,p_name=>'P388_COD_PER_JURIDICA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121623384459550631)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623523856550633)
,p_name=>'P388_DESC_BANCO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121623384459550631)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623645895550634)
,p_name=>'P388_NRO_VALOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121623384459550631)
,p_prompt=>'Nro. Valor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623757797550635)
,p_name=>'P388_TOTAL_PAGARE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121623205143550630)
,p_prompt=>'Total a Pagar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623890183550636)
,p_name=>'P388_DIFERENCIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121623205143550630)
,p_prompt=>'Diferencia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121623943265550637)
,p_name=>'P388_REDONDEO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121623205143550630)
,p_prompt=>'Redondeo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,1;1,2;2,3;3'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Moneda'
,p_cHeight=>1
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209490834052343310)
,p_name=>'P388_MSG_ALERT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(110666793326965245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209493623297343338)
,p_name=>'P388_SEQ_ID_SELEC_COMP_NUEVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210346492993732401)
,p_name=>'P388_SEQ_ID_COMP_REEMP_ELI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210349971721732436)
,p_name=>'P388_SEQ_ID_COMP_REEMP_EDI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210350260104732439)
,p_name=>'P388_SALDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210349687539732433)
,p_prompt=>'Actual Saldo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210350351205732440)
,p_name=>'P388_SALDO_A_MODIFICAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(210349687539732433)
,p_prompt=>'Nuevo Saldo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212097948057198223)
,p_name=>'P388_SEQ_ID_COMP_NUEVO_DET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212099518043198239)
,p_name=>'P388_SEQ_ID_COMP_NUEVO_EDI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212099633523198240)
,p_name=>'P388_SEQ_ID_COMP_NUEVO_ELI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212100582162198249)
,p_name=>'P388_COD_BANCO_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(212100295945198246)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_persona || '' - '' || nvl( nombre, nomb_fantasia ) D, ',
'       cod_persona R',
'from personas ',
'where cod_sector = :P388_SECTOR_BANCARIO',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212100633523198250)
,p_name=>'P388_DESC_BANCO_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(212100295945198246)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212384938167376001)
,p_name=>'P388_FEC_VENCIMIENTO_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(212100295945198246)
,p_prompt=>'Fecha de Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212385052564376002)
,p_name=>'P388_NRO_VALOR_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(212100295945198246)
,p_prompt=>'Nro. Valor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212835938550087343)
,p_name=>'P388_ROW_ID_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(114293325021304605)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(209489929717343301)
,p_validation_name=>'VL_FEC_CANCELACION'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  vmensaje  varchar2( 150 ) ;',
'         xerror    exception ;',
'         xfecha    varchar2( 50 ) ;',
'begin',
'   xfecha   := :P388_FEC_CANCELACION;/*to_char( :P388_FEC_CANCELACION, ''DD/MM/YYYY'' ) ;*/',
'   vmensaje := ver_fecha (:P_COD_EMPRESA, :P388_COD_MODULO, xfecha) ;',
'   if vmensaje is not null then',
'      RETURN  vmensaje;',
'   end if;',
'exception',
'   /*when xerror then',
'      mensaje( vmensaje ) ;',
'      if nvl( :variables.generar_fuera_periodo, ''N'' ) = ''N'' then',
'         raise form_trigger_failure ;',
'      end if ;*/',
'   when others then ',
'        APEX_DEBUG.ERROR (''Error en VL_FEC_CANCELACION - '' || SQLERRM);',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212738951879476510)
,p_validation_name=>'VL_FEC_CANCELACION_NULL'
,p_validation_sequence=>20
,p_validation=>'P388_FEC_CANCELACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('La fecha de cancelaci\00F3n no puede ser nula.')
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111550158569674122)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(209490013047343302)
,p_validation_name=>'VL_FEC_INICIAL_CANCELACION'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--No se debe permitir ingresar una fecha de vencimiento',
'--anterior al de la emision(fec_cancelacion)',
'-- Agregado el 22/10/2003 by Blasman',
'BEGIN',
'    if TO_DATE(:P388_FEC_INICIAL, ''DD/MM/YYYY'') is not null and ',
'       TO_DATE(:P388_FEC_CANCELACION, ''DD/MM/YYYY'') is not null then',
'        if TO_DATE(:P388_FEC_INICIAL, ''DD/MM/YYYY'')  < TO_DATE(:P388_FEC_CANCELACION, ''DD/MM/YYYY'') then',
unistr('            RETURN ''La fecha del nuevo comprobante no puede ser anterior a la fecha de Emisi\00F3n'';'),
'        end if;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en VL_FEC_INICIAL_CANCELACION. '' || SQLERRM);',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212099007773198234)
,p_validation_name=>'VL_TOTAL_IMPORTE_PAGARE'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if nvl( :P388_TOTAL_PAGARE, 0 ) <> nvl( :P388_TOTAL_IMPORTE, 0 ) then',
'        RETURN ''El total de comprobantes a reemplazar debe ser igual al total de comprobantes nuevos. '';',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en VL_TOTAL_IMPORTE_PAGARE. '' || SQLERRM);',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212738766495476508)
,p_validation_name=>'VL_TIP_COMPROBANTE'
,p_validation_sequence=>50
,p_validation=>'P388_TIP_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El tipo de comprobante no puede ser nulo.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111549222608674113)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212738889065476509)
,p_validation_name=>'VL_SER_COMPROBANTE'
,p_validation_sequence=>60
,p_validation=>'P388_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La serie del comprobante no puede ser nula.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111550015976674121)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739078398476511)
,p_validation_name=>'VL_COD_SUCURSAL'
,p_validation_sequence=>70
,p_validation=>'P388_COD_SUCURSAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('El c\00F3digo de la sucursal no puede ser nula.'),
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111549470956674115)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739128015476512)
,p_validation_name=>'VL_COD_MONEDA'
,p_validation_sequence=>80
,p_validation=>'P388_COD_MONEDA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('El c\00F3digo de moneda no puede ser nulo.'),
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111550210949674123)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739201762476513)
,p_validation_name=>'VL_COD_SECTOR'
,p_validation_sequence=>90
,p_validation=>'P388_COD_SECTOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('El c\00F3digo de sector no puede ser nulo.'),
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111549306734674114)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739385732476514)
,p_validation_name=>'VL_ESTADO'
,p_validation_sequence=>100
,p_validation=>'P388_ESTADO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Debe seleccionar un estado.',
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111549814539674119)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739427438476515)
,p_validation_name=>'VL_FEC_ESTADO'
,p_validation_sequence=>110
,p_validation=>'P388_FEC_ESTADO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La fecha del estado no puede ser nula.',
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111549574466674116)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739511266476516)
,p_validation_name=>'VL_FECHA_ALTA'
,p_validation_sequence=>120
,p_validation=>'P388_FECHA_ALTA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La fecha de alta no puede ser nula.',
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111549927962674120)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739699769476517)
,p_validation_name=>'VL_COD_CLIENTE'
,p_validation_sequence=>130
,p_validation=>'P388_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('El c\00F3digo del cliente no puede ser nulo.'),
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111550604773674127)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739705182476518)
,p_validation_name=>'VL_COD_CUSTODIO'
,p_validation_sequence=>140
,p_validation=>'P388_COD_CUSTODIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('El c\00F3digo del custodio no puede ser nulo.'),
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111550758710674128)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(212739818529476519)
,p_validation_name=>'VL_COD_COBRADOR'
,p_validation_sequence=>150
,p_validation=>'P388_COD_COBRADOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('El c\00F3digo del cobrador no puede ser nulo.'),
''))
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(111550818094674129)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111585228628113012)
,p_name=>'DA_HABILITAR_SUCURSAL'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111585351313113013)
,p_event_id=>wwv_flow_imp.id(111585228628113012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_COD_SUCURSAL'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P388_CARGA_SUCURSAL'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111585648169113016)
,p_name=>'DA_HABILITAR_CUSTODIO'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111585729896113017)
,p_event_id=>wwv_flow_imp.id(111585648169113016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_COD_CUSTODIO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P388_CUSTODIOS_ALT'
,p_client_condition_expression=>'/'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111585953182113019)
,p_name=>'DA_SETEAR_TIP_CAMBIO_CR_ED'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_MONEDA_CR_ED'
,p_condition_element=>'P388_COD_MONEDA_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111586079416113020)
,p_event_id=>wwv_flow_imp.id(111585953182113019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   select tipo_cambio_dia',
'     into :P388_TIP_CAMBIO_CR_ED',
'     from monedas ',
'     where cod_moneda = :P388_COD_MONEDA_CR_ED;',
'',
'EXCEPTION',
'',
'    WHEN NO_DATA_FOUND THEN',
'      :P388_TIP_CAMBIO_CR_ED :=NULL;',
'      APEX_DEBUG.ERROR(SQLERRM);',
'',
'    WHEN OTHERS THEN      ',
'      :P388_TIP_CAMBIO_CR_ED :=NULL;',
'      APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P388_COD_MONEDA_CR_ED'
,p_attribute_03=>'P388_TIP_CAMBIO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111586223181113022)
,p_name=>'DA_VALIDATE_FEC_ESTADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_ESTADO'
,p_condition_element=>'P388_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111586373935113023)
,p_event_id=>wwv_flow_imp.id(111586223181113022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P388_FEC_ESTADO := sysdate;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_VALIDATE_FEC_ESTADO. '' ||SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P388_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111586443871113024)
,p_name=>'DA_SETEAR_FEC_CANCELACION'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_FEC_ESTADO'
,p_condition_element=>'P388_FEC_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111586594881113025)
,p_event_id=>wwv_flow_imp.id(111586443871113024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P388_FEC_CANCELACION IS NULL THEN',
'       :P388_FEC_CANCELACION := sysdate ;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P388_FEC_CANCELACION'
,p_attribute_03=>'P388_FEC_CANCELACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111586751338113027)
,p_name=>'DA_VALIDATE_COD_CLIENTE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111586824417113028)
,p_event_id=>wwv_flow_imp.id(111586751338113027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    vcod_persona personas.cod_persona%type;',
'	vcod_persona_cph personas.cod_persona%type;',
'',
'BEGIN',
'',
'	BEGIN',
'		SELECT cl.cod_persona',
'		  INTO vcod_persona',
'		  FROM cc_clientes cl, ',
'		  		 personas pe',
'		 WHERE cl.cod_empresa = :P_COD_EMPRESA',
'		   AND cl.cod_cliente = :P388_COD_CLIENTE',
'		   AND cl.cod_persona = pe.cod_persona;',
'			',
'	EXCEPTION',
'		WHEN NO_DATA_FOUND THEN',
'			vcod_persona := NULL;		',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error en DA_VALIDATE_COD_CLIENTE. 01 - '' || SQLERRM);',
'			vcod_persona := NULL;',
'	END;',
'				',
'	IF vcod_persona IS NOT NULL THEN',
'',
'		BEGIN',
'			SELECT ''El cliente es un empleado activo de la empresa''',
'			  INTO :P388_OBS_CLIENT',
'			  FROM rh_empleados e',
'			 WHERE e.cod_empresa  = :P_COD_EMPRESA',
'			   AND e.cod_persona  = vcod_persona',
'			   AND nvl(e.activo, ''N'') = ''S'';',
'		EXCEPTION',
'    		WHEN NO_DATA_FOUND THEN',
'    			:P388_OBS_CLIENT := NULL;  ',
'',
'		    WHEN OTHERS THEN',
'		    	:P388_OBS_CLIENT := NULL;',
'                APEX_DEBUG.ERROR(''Error en DA_VALIDATE_COD_CLIENTE. 02 - '' || SQLERRM);',
'		END;',
'',
'        			',
'		IF :P388_OBS_CLIENT IS NULL THEN		',
'			BEGIN				',
'			  SELECT BS_BUSCA_PARAMETRO (''CC'',''MENSAJE_COL_GEMP_PAG'')------''El cliente es un empleado activo del grupo empresarial''',
'			    INTO :P388_OBS_CLIENT',
'				FROM v_correspondencia_emp_ngo_cph',
'				WHERE cod_cliente_ngo =  :P388_COD_CLIENTE; ',
'		',
'			EXCEPTION',
'        		WHEN NO_DATA_FOUND THEN',
'        			:P388_OBS_CLIENT := NULL;',
'',
'    		    WHEN OTHERS THEN',
'    		    	:P388_OBS_CLIENT := NULL;',
'                    APEX_DEBUG.ERROR(''Error en DA_VALIDATE_COD_CLIENTE. 03 - '' || SQLERRM);',
'			END;',
'',
'		END IF;				',
'	END IF;',
'		',
'	IF :P388_COD_COBRADOR IS NULL AND :P388_TIP_COMPROBANTE <> ''PG'' THEN',
'		BEGIN',
'			SELECT NVL(cod_cobrador,''19'')',
'			  INTO :P388_COD_COBRADOR',
'			  FROM cc_clientes',
'			 WHERE cod_empresa = :P_COD_EMPRESA',
'			   AND cod_cliente = :P388_COD_CLIENTE;',
'		EXCEPTION',
'		    WHEN OTHERS THEN',
'		        :P388_COD_COBRADOR := NULL;',
'                APEX_DEBUG.ERROR(''Error en DA_VALIDATE_COD_CLIENTE. 04 - '' || SQLERRM);',
'		END;',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error en DA_VALIDATE_COD_CLIENTE. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P388_COD_CLIENTE,P388_COD_COBRADOR,P388_TIP_COMPROBANTE'
,p_attribute_03=>'P388_OBS_CLIENT,P388_COD_COBRADOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111586993897113029)
,p_name=>'DA_SETEAR_FECHAS_INTERVALO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_INTERVALO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111587014209113030)
,p_event_id=>wwv_flow_imp.id(111586993897113029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --Asigna automaticamente a la fec_inicial el',
'    --valor de la fec_cancelacion + intervalo',
'    --Por ejemplo: 1ra. cuota a partir de los 30(intervalo) ',
'',
'    IF :P388_INTERVALO IS NOT NULL AND :P388_FEC_INICIAL IS NULL THEN',
'      :P388_FEC_INICIAL := TO_DATE(:P388_FEC_CANCELACION, ''DD/MM/YYYY'') + :P388_INTERVALO;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P388_INTERVALO,P388_FEC_INICIAL,P388_FEC_CANCELACION'
,p_attribute_03=>'P388_FEC_INICIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111587129511113031)
,p_name=>'DA_VALIDATE_FEC_INICIAL'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_FEC_INICIAL'
,p_condition_element=>'P388_FEC_INICIAL'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111587266272113032)
,p_event_id=>wwv_flow_imp.id(111587129511113031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   :P388_FEC_INICIAL := :P388_FEC_CANCELACION;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P388_FEC_CANCELACION'
,p_attribute_03=>'P388_FEC_INICIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111588975723113049)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQUEDA'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111588743588113047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111589071698113050)
,p_event_id=>wwv_flow_imp.id(111588975723113049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_TIP_COMPROBANTE_BUSQ,P388_SER_COMPROBANTE_BUSQ,P388_NRO_COMPROBANTE_BUSQ,P388_FECHA_DESDE_BUSQ,P388_FECHA_HASTA_BUSQ,P388_COD_SUCURSAL_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111963915770898026)
,p_event_id=>wwv_flow_imp.id(111588975723113049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''CANCEL_COMPROB'');',
'    :P388_INDICADOR_REPORTE_BUSQ := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P388_INDICADOR_REPORTE_BUSQ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111964088560898027)
,p_event_id=>wwv_flow_imp.id(111588975723113049)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111588265363113042)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111961687388898003)
,p_name=>'DA_BUSCAR_COMPROBANTES'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111588654600113046)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111961734089898004)
,p_event_id=>wwv_flow_imp.id(111961687388898003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P388_FECHA_DESDE_BUSQ IS NULL OR ',
'        :P388_FECHA_HASTA_BUSQ IS NULL OR',
'        :P388_COD_CLIENTE_BUSQ IS NULL THEN',
'    ',
'            :P388_MENSAJE_ALERT := ''Compruebe que los datos obligatorios no se encuentren vacios.'';',
'            :P388_INDICADOR_REPORTE_BUSQ := ''0'';',
'    ELSE',
'        CCCOMCUO.PR_CARGAR_BUSQUEDA_COMPROBANTE (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                                 PI_TIP_COMPROBANTE => :P388_TIP_COMPROBANTE_BUSQ,',
'                                                 PI_SER_COMPROBANTE => :P388_SER_COMPROBANTE_BUSQ,',
'                                                 PI_NRO_COMPROBANTE => :P388_NRO_COMPROBANTE_BUSQ,',
'                                                 PI_FEC_CANCELACION_DESDE => :P388_FECHA_DESDE_BUSQ,',
'                                                 PI_FEC_CANCELACION_HASTA => :P388_FECHA_HASTA_BUSQ,',
'                                                 PI_COD_CLIENTE => :P388_COD_CLIENTE_BUSQ,',
'                                                 PI_COD_SUCURSAL => :P388_COD_SUCURSAL_BUSQ);',
'',
'        :P388_MENSAJE_ALERT := NULL;',
'        :P388_INDICADOR_REPORTE_BUSQ := ''1'';',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
' END;'))
,p_attribute_02=>'P_COD_EMPRESA,P388_TIP_COMPROBANTE_BUSQ,P388_SER_COMPROBANTE_BUSQ,P388_NRO_COMPROBANTE_BUSQ,P388_FECHA_DESDE_BUSQ,P388_FECHA_HASTA_BUSQ,P388_COD_CLIENTE_BUSQ,P388_COD_SUCURSAL_BUSQ'
,p_attribute_03=>'P388_INDICADOR_REPORTE_BUSQ,P388_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111964130928898028)
,p_event_id=>wwv_flow_imp.id(111961687388898003)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111964290092898029)
,p_event_id=>wwv_flow_imp.id(111961687388898003)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111964648801898033)
,p_event_id=>wwv_flow_imp.id(111961687388898003)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P388_MENSAJE_ALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111962046099898007)
,p_event_id=>wwv_flow_imp.id(111961687388898003)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111588265363113042)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111963230318898019)
,p_name=>'DA_SETEAR_COMP_BUSQ'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_ROW_ID_COMP_BUSQ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111963384273898020)
,p_event_id=>wwv_flow_imp.id(111963230318898019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111549143258674112)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111963547352898022)
,p_event_id=>wwv_flow_imp.id(111963230318898019)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT TIP_COMPROBANTE,',
'           SER_COMPROBANTE,',
'           NRO_COMPROBANTE,',
'           FEC_CANCELACION,',
'           COD_CLIENTE,',
'           COD_MONEDA,',
'           COD_SUCURSAL,',
'           TIP_CAMBIO,',
'           ESTADO,',
'           FEC_ESTADO,',
'           COD_CUSTODIO,',
'           COD_SECTOR,',
'           FEC_ACTUALIZACION,',
'           ACTUALIZADO_POR,',
'           FEC_ALTA,',
'           ALTA_POR',
'           ',
'',
'    INTO   :P388_TIP_COMPROBANTE,',
'           :P388_SER_COMPROBANTE,',
'           :P388_NRO_COMPROBANTE,',
'           :P388_FEC_CANCELACION,',
'           :P388_COD_CLIENTE,',
'           :P388_COD_MONEDA,',
'           :P388_COD_SUCURSAL,',
'           :P388_TIP_CAMBIO,',
'           :P388_ESTADO,',
'           :P388_FEC_ESTADO,',
'           :P388_COD_CUSTODIO,',
'           :P388_COD_SECTOR,',
'           :P388_FEC_ACTUALIZACION,',
'           :P388_ACTUALIZADO_POR,',
'           :P388_FEC_ALTA,',
'           :P388_ALTA_POR',
'',
'    FROM CC_CANCELA_COMPROB_CAB',
'    WHERE ROWID = :P388_ROW_ID_COMP_BUSQ;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P388_ROW_ID_COMP_BUSQ'
,p_attribute_03=>'P388_TIP_COMPROBANTE,P388_SER_COMPROBANTE,P388_NRO_COMPROBANTE,P388_FEC_CANCELACION,P388_COD_CLIENTE,P388_COD_MONEDA_CR_ED,P388_COD_SUCURSAL,P388_TIP_CAMBIO,P388_ESTADO,P388_FEC_ESTADO,P388_COD_CUSTODIO,P388_COD_SECTOR,P388_FEC_ACTUALIZACION,P388_ACT'
||'UALIZADO_POR,P388_FEC_ALTA,P388_ALTA_POR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111963665831898023)
,p_name=>'DA_CERRAR_BUSQUEDA'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111588861236113048)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111963780900898024)
,p_event_id=>wwv_flow_imp.id(111963665831898023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111549143258674112)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114293683413304608)
,p_name=>'DA_AGREGAR_COMP_NUEVO_IND'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_NUEVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114294033114304612)
,p_event_id=>wwv_flow_imp.id(114293683413304608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCOMCUO.PR_AGREGAR_COMP_NUEVO (PI_SEQ_ID_SELECCION_COMP => :P388_SEQ_ID_COMP_NUEVO,',
'                                    PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_COD_MONEDA => :P388_COD_MONEDA,',
'                                    PI_TIPOS_AJUST => :P388_TIPOS_AJUS,',
'                                    PI_TIP_CAMBIO => :P388_TIP_CAMBIO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P388_SEQ_ID_COMP_NUEVO,P_COD_EMPRESA,P388_COD_MONEDA_CR_ED,P388_TIPOS_AJUS,P388_TIP_CAMBIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114294191093304613)
,p_event_id=>wwv_flow_imp.id(114293683413304608)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116652122148214147)
,p_event_id=>wwv_flow_imp.id(114293683413304608)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT sum(n003) ',
'    INTO :P388_TOTAL_IMPORTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMP_NUEVO_SEL''',
'    AND nvl(c021, ''O'') <> ''B'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114294241600304614)
,p_event_id=>wwv_flow_imp.id(114293683413304608)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112852313002303806)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114297113141304643)
,p_name=>'DA_VALIDATE_COD_MONEDA'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_MONEDA'
,p_condition_element=>'P388_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114297369790304645)
,p_event_id=>wwv_flow_imp.id(114297113141304643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   select tipo_cambio_dia, nvl (decimales, 0)',
'     into :P388_TIP_CAMBIO, :P388_DECIMALES',
'     from monedas ',
'     where cod_moneda = :P388_COD_MONEDA;',
'',
'EXCEPTION',
'',
'    WHEN NO_DATA_FOUND THEN',
'      :P388_TIP_CAMBIO :=NULL;',
'      :P388_DECIMALES :=NULL;',
'      APEX_DEBUG.ERROR(SQLERRM);',
'',
'    WHEN OTHERS THEN      ',
'      :P388_TIP_CAMBIO :=NULL;',
'      :P388_DECIMALES :=NULL;',
'      APEX_DEBUG.ERROR(''Error en VALIDATE_COD_MONEDA. '' || SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P388_COD_MONEDA'
,p_attribute_03=>'P388_TIP_CAMBIO,P388_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114297750177304649)
,p_name=>'DA_CERRAR_CR_ED_COMP'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114297469504304646)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114297859587304650)
,p_event_id=>wwv_flow_imp.id(114297750177304649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114295293175304624)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116647745972214103)
,p_name=>'DA_AGREGAR_COMP_NUEVO'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114297501215304647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116648030591214106)
,p_event_id=>wwv_flow_imp.id(116647745972214103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P388_TIP_COMP_REF_CR_ED IS NULL OR :P388_SER_COMP_REF_CR_ED IS NULL OR',
'       :P388_NRO_COMP_REF_CR_ED IS NULL OR :P388_NRO_CUOTA_CR_ED IS NULL OR',
'       :P388_FEC_VENCIMIENTO_CR_ED IS NULL OR :P388_IMPORTE_CR_ED IS NULL OR',
'       :P388_COD_MONEDA_CR_ED IS NULL ',
'    THEN',
'        :P388_MENSAJE_ALERT := ''Compruebe que los campos obligatorios no estan vacios.'';   ',
'    ELSE',
'        :P388_MENSAJE_ALERT := NULL;',
'        CCCOMCUO.PR_AGREGAR_COMP_CERO (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                       PI_TIPO_COMPROBANTE => :P388_TIP_COMP_REF_CR_ED,',
'                                       PI_SER_COMPROBANTE => :P388_SER_COMP_REF_CR_ED,',
'                                       PI_NRO_COMPROBANTE => :P388_NRO_COMP_REF_CR_ED,',
'                                       PI_NRO_CUOTA => :P388_NRO_CUOTA_CR_ED,',
'                                       PI_IMPORTE => :P388_IMPORTE_CR_ED,',
'                                       PI_FEC_VENCIMIENTO => :P388_FEC_VENCIMIENTO_CR_ED,',
'                                       PI_COD_MONEDA => :P388_COD_MONEDA_CR_ED,',
'                                       PI_TIP_CAMBIO => :P388_TIP_CAMBIO_CR_ED); ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P388_TIP_COMP_REF_CR_ED,P388_SER_COMP_REF_CR_ED,P388_NRO_COMP_REF_CR_ED,P388_NRO_CUOTA_CR_ED,P388_IMPORTE_CR_ED,P388_FEC_VENCIMIENTO_CR_ED,P388_COD_MONEDA_CR_ED,P388_TIP_CAMBIO_CR_ED'
,p_attribute_03=>'P388_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116649490191214120)
,p_event_id=>wwv_flow_imp.id(116647745972214103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P388_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116652359501214149)
,p_event_id=>wwv_flow_imp.id(116647745972214103)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT sum(n003) ',
'    INTO :P388_TOTAL_IMPORTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMP_NUEVO_SEL''',
'    AND nvl(c021, ''O'') <> ''B'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116647941589214105)
,p_event_id=>wwv_flow_imp.id(116647745972214103)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116647867446214104)
,p_event_id=>wwv_flow_imp.id(116647745972214103)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114295293175304624)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116648540853214111)
,p_name=>'DA_ELIMINAR_COMP_NUEVO'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_NUEVO_EL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116648614271214112)
,p_event_id=>wwv_flow_imp.id(116648540853214111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116648736159214113)
,p_event_id=>wwv_flow_imp.id(116648540853214111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCOMCUO.PR_BORRAR_COMP_NUEVO (PI_SEQ_ID_ELIMINAR => :P388_SEQ_ID_COMP_NUEVO_EL);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P388_SEQ_ID_COMP_NUEVO_EL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116652296255214148)
,p_event_id=>wwv_flow_imp.id(116648540853214111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT sum(n003) ',
'    INTO :P388_TOTAL_IMPORTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMP_NUEVO_SEL''',
'    AND nvl(c021, ''O'') <> ''B'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116648827139214114)
,p_event_id=>wwv_flow_imp.id(116648540853214111)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116649104885214117)
,p_name=>'DA_SETEAR_COMP_NUEVO'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116649072971214116)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116649244501214118)
,p_event_id=>wwv_flow_imp.id(116649104885214117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT FEC_VENCIMIENTO,',
'           SALDO_CUOTA,',
'           COD_MONEDA_CUOTA',
'',
'    INTO :P388_FEC_VENCIMIENTO_CR_ED,',
'         :P388_IMPORTE_CR_ED,',
'         :P388_COD_MONEDA_CR_ED',
'    FROM CC_SALDOS',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND TIPO_COMPROBANTE = :P388_TIP_COMP_REF_CR_ED',
'    AND SER_COMPROBANTE = :P388_SER_COMP_REF_CR_ED',
'    AND NRO_COMPROBANTE = :P388_NRO_COMP_REF_CR_ED',
'    AND NRO_CUOTA  = :P388_NRO_CUOTA_CR_ED;',
'',
'    :P388_MENSAJE_ALERT := NULL;  ',
'',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P388_MENSAJE_ALERT := ''El comprobante ingresado no existe'';',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P388_TIP_COMP_REF_CR_ED,P388_SER_COMP_REF_CR_ED,P388_NRO_COMP_REF_CR_ED,P388_NRO_CUOTA_CR_ED'
,p_attribute_03=>'P388_MENSAJE_ALERT,P388_FEC_VENCIMIENTO_CR_ED,P388_IMPORTE_CR_ED,P388_COD_MONEDA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116649312488214119)
,p_event_id=>wwv_flow_imp.id(116649104885214117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P388_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116650040087214126)
,p_name=>'DA_EDITAR_REG_COMP_NUEVO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_NUEVO_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116651884142214144)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_IMPORTE_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116651691097214142)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_TIP_COMP_REF_CR_ED,P388_SER_COMP_REF_CR_ED,P388_NRO_COMP_REF_CR_ED,P388_NRO_CUOTA_CR_ED,P388_FEC_VENCIMIENTO_CR_ED,P388_COD_MONEDA_CR_ED,P388_TIP_CAMBIO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116650375655214129)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(114297501215304647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116651341245214139)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(116649072971214116)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116650427215214130)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(114297638748304648)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116650556024214131)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'         c002,',
'         c003,',
'         n001,',
'         n002,',
'         n003,',
'         d001,',
'         c004,',
'         c005',
'',
'    INTO :P388_TIP_COMP_REF_CR_ED,',
'         :P388_SER_COMP_REF_CR_ED,',
'         :P388_NRO_COMP_REF_CR_ED,',
'         :P388_NRO_CUOTA_CR_ED,',
'         :P388_IMPORTE_CR_ED,',
'         :P388_FEC_VENCIMIENTO_CR_ED,',
'         :P388_COD_MONEDA_CR_ED,',
'         :P388_TIP_CAMBIO_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMP_NUEVO_SEL''',
'    AND SEQ_ID = :P388_SEQ_ID_COMP_NUEVO_ED;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P388_SEQ_ID_COMP_NUEVO_ED'
,p_attribute_03=>'P388_TIP_COMP_REF_CR_ED,P388_SER_COMP_REF_CR_ED,P388_NRO_COMP_REF_CR_ED,P388_NRO_CUOTA_CR_ED,P388_IMPORTE_CR_ED,P388_FEC_VENCIMIENTO_CR_ED,P388_COD_MONEDA_CR_ED,P388_TIP_CAMBIO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116650690159214132)
,p_event_id=>wwv_flow_imp.id(116650040087214126)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114295293175304624)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116650775954214133)
,p_name=>'DA_EDITAR_COMP_NUEVO'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114297638748304648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116650953104214135)
,p_event_id=>wwv_flow_imp.id(116650775954214133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vsaldo VARCHAR2(100);',
'BEGIN',
'',
'    BEGIN',
'        select saldo_cuota',
'          into vsaldo',
'          from cc_saldos',
'         where cod_empresa      = :P_COD_EMPRESA',
'           and tipo_comprobante = :P388_TIP_COMP_REF_CR_ED',
'           and ser_comprobante  = :P388_SER_COMP_REF_CR_ED',
'           and nro_comprobante  = :P388_NRO_COMP_REF_CR_ED',
'           and nro_cuota        = :P388_NRO_CUOTA_CR_ED;',
'',
'           APEX_DEBUG.ERROR(''SALDO '' || vsaldo);',
'',
'           IF nvl(vsaldo,0) > 0 then',
'             IF :P388_IMPORTE_CR_ED > vsaldo then',
'                :P388_MENSAJE_ALERT := ''Monto a cancelar mayor que el saldo.'';',
'             ELSE',
'                :P388_MENSAJE_ALERT := NULL; ',
'             END IF;',
'            END IF;',
'            ',
'            IF nvl(vsaldo,0) < 0 THEN',
'                 IF :P388_IMPORTE_CR_ED < vsaldo THEN',
'                    :P388_MENSAJE_ALERT := ''Monto a cancelar menor que el saldo'';',
'                 ELSE',
'                    :P388_MENSAJE_ALERT := NULL;     ',
'                 END IF;             ',
'            END IF;',
'',
'        apex_debug.error(:P388_MENSAJE_ALERT);',
'',
'    EXCEPTION',
'        WHEN no_data_found then',
unistr('          APEX_DEBUG.ERROR(''No se encuentra n\00FAmero de factura en saldos'' || SQLERRM);'),
'         ',
'        WHEN OTHERS THEN',
'           APEX_DEBUG.ERROR(''Error en la tabla de saldos '' || SQLERRM) ;',
'    END;',
'',
'IF :P388_MENSAJE_ALERT IS NULL THEN',
'    IF :P388_TIP_COMP_REF_CR_ED IS NULL OR :P388_SER_COMP_REF_CR_ED IS NULL OR',
'       :P388_NRO_COMP_REF_CR_ED IS NULL OR :P388_NRO_CUOTA_CR_ED IS NULL OR',
'       :P388_FEC_VENCIMIENTO_CR_ED IS NULL OR :P388_IMPORTE_CR_ED IS NULL OR',
'       :P388_COD_MONEDA_CR_ED IS NULL ',
'    THEN',
'        :P388_MENSAJE_ALERT := ''Compruebe que los campos obligatorios no estan vacios.'';   ',
'    ELSE        ',
'       ',
'        :P388_MENSAJE_ALERT := NULL;',
'        CCCOMCUO.PR_EDITAR_COMP_NUEVO (PI_SEQ_ID_EDITAR => :P388_SEQ_ID_COMP_NUEVO_ED,',
'                                       PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                       PI_TIPO_COMPROBANTE => :P388_TIP_COMP_REF_CR_ED,',
'                                       PI_SER_COMPROBANTE => :P388_SER_COMP_REF_CR_ED,',
'                                       PI_NRO_COMPROBANTE => :P388_NRO_COMP_REF_CR_ED,',
'                                       PI_NRO_CUOTA => :P388_NRO_CUOTA_CR_ED,',
'                                       PI_IMPORTE => :P388_IMPORTE_CR_ED,',
'                                       PI_FEC_VENCIMIENTO => :P388_FEC_VENCIMIENTO_CR_ED,',
'                                       PI_COD_MONEDA => :P388_COD_MONEDA_CR_ED,',
'                                       PI_TIP_CAMBIO => :P388_TIP_CAMBIO_CR_ED);',
'    END IF;',
'END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P388_TIP_COMP_REF_CR_ED,P388_SER_COMP_REF_CR_ED,P388_NRO_COMP_REF_CR_ED,P388_NRO_CUOTA_CR_ED,P388_FEC_VENCIMIENTO_CR_ED,P388_IMPORTE_CR_ED,P388_COD_MONEDA_CR_ED,P388_SEQ_ID_COMP_NUEVO_ED,P_COD_EMPRESA,P388_TIP_COMP_REF_CR_ED,P388_SER_COMP_REF_CR_ED,P'
||'388_NRO_COMP_REF_CR_ED,P388_NRO_CUOTA_CR_ED,P388_IMPORTE_CR_ED,P388_FEC_VENCIMIENTO_CR_ED,P388_COD_MONEDA_CR_ED,P388_TIP_CAMBIO_CR_ED'
,p_attribute_03=>'P388_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116651099779214136)
,p_event_id=>wwv_flow_imp.id(116650775954214133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P388_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116652441256214150)
,p_event_id=>wwv_flow_imp.id(116650775954214133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT sum(n003) ',
'    INTO :P388_TOTAL_IMPORTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMP_NUEVO_SEL''',
'    AND nvl(c021, ''O'') <> ''B'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116651138181214137)
,p_event_id=>wwv_flow_imp.id(116650775954214133)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116651276142214138)
,p_event_id=>wwv_flow_imp.id(116650775954214133)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114295293175304624)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117610938503947310)
,p_name=>'DA_VALIDATE_TIP_COMPROBANTE'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_TIP_COMPROBANTE'
,p_condition_element=>'P388_TIP_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117611036346947311)
,p_event_id=>wwv_flow_imp.id(117610938503947310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'    	SELECT ',
'    	       ind_cheque',
'    	  INTO :P388_IND_CHEQUE',
'    	  FROM tipos_comprobantes',
'    	 WHERE cod_empresa      = :P_COD_EMPRESA',
'    	   AND cod_modulo       = :P388_COD_MODULO',
'    	   AND tip_comprobante  = :P388_TIP_COMPROBANTE;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P388_IND_CHEQUE := NULL;',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'    :P388_ESTADO     := ''P'';',
'    :P388_FEC_ESTADO := sysdate;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error en VALIDATE_TIP_COMPROBANTE. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P388_COD_MODULO,P388_TIP_COMPROBANTE'
,p_attribute_03=>'P388_IND_CHEQUE,P388_ESTADO,P388_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117611184660947312)
,p_name=>'DA_GENERAR'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(117610401861947305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211163840871061701)
,p_event_id=>wwv_flow_imp.id(117611184660947312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P388_TIP_COMPROBANTE IS NULL THEN',
'        :P388_MSG_ALERT := ''Debe ingresar un tipo de comprobante.'';',
'    ELSE',
'        IF :P388_COD_MONEDA IS NULL THEN',
unistr('            :P388_MSG_ALERT := ''Debe ingresar un c\00F3digo de moneda.'';'),
'        ELSE',
'            :P388_MSG_ALERT := NULL;',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GENERAR. 01 - '' || SQLERRM);',
'END PR_VALIDAR_GENERAR;',
'',
''))
,p_attribute_02=>'P388_TIP_COMPROBANTE,P388_COD_MONEDA'
,p_attribute_03=>'P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212738549983476506)
,p_event_id=>wwv_flow_imp.id(117611184660947312)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCOMCUO.PR_VALIDAR_GENERAR (PI_CABERA_IMPORTE   =>   :P388_IMPORTE,',
'                                  --------------------------------',
'                                  PO_MSG_ALERT       =>   :P388_MSG_ALERT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GENERAR. 02 - '' || SQLERRM);',
'END PR_VALIDAR_GENERAR;'))
,p_attribute_02=>'P388_IMPORTE'
,p_attribute_03=>'P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212095756530198201)
,p_event_id=>wwv_flow_imp.id(117611184660947312)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('        --- PROCEDIMIENTO AL PRESIONAR EL BOT\00D3N GENERAR ---                       '),
'    CCCOMCUO.PR_GENERAR (PI_P_COD_EMPRESA              => :P_COD_EMPRESA,',
'                         PI_CABECERA_TIP_COMPROBANTE   => :P388_TIP_COMPROBANTE,',
'                         PI_CABECERA_IND_CHEQUE        => :P388_IND_CHEQUE,',
'                         PI_CABECERA_COD_BANCO         => :P388_COD_BANCO,',
'                         PI_CABECERA_CANT_CUOTAS       => :P388_CANT_CUOTAS,',
'                         PI_CABECERA_INTERVALO         => :P388_INTERVALO,',
'                         PI_CABECERA_FEC_INICIAL       => :P388_FEC_INICIAL,',
'                         PI_CABECERA_FEC_CANCELACION   => :P388_FEC_CANCELACION,',
'                         PI_CABECERA_REDONDEO          => :P388_REDONDEO,',
'                         PI_CABECERA_DECIMALES         => :P388_DECIMALES,   ',
'                         PI_CABECERA_ENTREGA_INICIAL   => :P388_ENTREGA_INICIAL,',
'                         PI_CABECERA_TOTAL_IMPORTE     => :P388_TOTAL_IMPORTE,',
'                         PI_CABECERA_IMPORTE           => :P388_IMPORTE,',
'                         PI_CABECERA_COD_MONEDA        => :P388_COD_MONEDA,',
'                         PI_CABECERA_COD_SUCURSAL      => :P388_COD_SUCURSAL,',
'                         PI_CABECERA_SER_COMPROBANTE   => :P388_SER_COMPROBANTE,',
'                         PI_CABECERA_NRO_COMPROBANTE   => :P388_NRO_COMPROBANTE,',
'                         PI_CABECERA_TIP_CAMBIO        => :P388_TIP_CAMBIO,',
'                         -------------------------------------------',
'                         PO_VARIABLES_GENERANDO        => :P388_GENERANDO,',
'                         PO_CABECERA_TOTAL_PAGARE      => :P388_TOTAL_PAGARE,',
'                         PO_MSG_ALERT                  => :P388_MSG_ALERT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GENERAR. 03 - '' || SQLERRM);',
'END PR_VALIDAR_GENERAR;'))
,p_attribute_02=>'P388_TIP_COMPROBANTE,P388_IND_CHEQUE,P388_COD_BANCO,P388_CANT_CUOTAS,P388_INTERVALO,P388_FEC_INICIAL,P388_FEC_CANCELACION,P388_REDONDEO,P388_DECIMALES,P388_ENTREGA_INICIAL,P388_TOTAL_IMPORTE,P388_IMPORTE,P388_COD_MONEDA,P388_COD_SUCURSAL,P388_SER_COM'
||'PROBANTE,P388_NRO_COMPROBANTE,P388_TIP_CAMBIO'
,p_attribute_03=>'P388_GENERANDO,P388_TOTAL_PAGARE,P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212095860115198202)
,p_event_id=>wwv_flow_imp.id(117611184660947312)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(117610271243947303)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212098309748198227)
,p_event_id=>wwv_flow_imp.id(117611184660947312)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --- CALCULAR TOTAL_PAGARE ---',
'    CCCOMCUO.PR_CALCULAR_TOTAL_PAGARE  (PO_TOTAL_PAGARE  => :P388_TOTAL_PAGARE);    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GENERAR. 04 - '' || SQLERRM);',
'END PR_VALIDAR_GENERAR;'))
,p_attribute_03=>'P388_TOTAL_PAGARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209490137368343303)
,p_name=>'DA_VALIDATE_COD_SECTOR'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_SECTOR'
,p_condition_element=>'P388_COD_SECTOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209490268036343304)
,p_event_id=>wwv_flow_imp.id(209490137368343303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P388_COD_SECTOR = bs_busca_parametro(''CC'', ''CC_SECTOR_PERSONAL'') then',
unistr('        :P388_OBS_CLIENT := ''Pr\00E9stamo a personal de la empresa o empresas relacionadas'';'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error al validar COD_SECTOR. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_COD_SECTOR'
,p_attribute_03=>'P388_OBS_CLIENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209490663921343308)
,p_name=>'DA_AGREGAR_COMPROBANTE_NUEVO'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114293879136304610)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210349358517732430)
,p_event_id=>wwv_flow_imp.id(209490663921343308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_FECHA_VENCIMIENTO_INI,P388_FECHA_VENCIMIENTO_FIN,P388_FECHA_INI,P388_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209491702715343319)
,p_event_id=>wwv_flow_imp.id(209490663921343308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111588265363113042)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209490753153343309)
,p_event_id=>wwv_flow_imp.id(209490663921343308)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P388_CANT_CUOTAS IS NULL OR :P388_CANT_CUOTAS < 1 THEN',
'        :P388_MSG_ALERT := ''La cantidad de cuotas de los nuevos comprobantes no puede ser menor a 1 o nula.'';',
'    ELSE',
'        IF :P388_INTERVALO IS NULL OR :P388_INTERVALO <= 0 THEN',
'            :P388_MSG_ALERT := ''El intervalor de los nuevos comprobantes no puede ser menor a 1 o nulo.''; ',
'        ELSE',
'            IF :P388_FEC_INICIAL IS NULL THEN',
'                :P388_MSG_ALERT := ''La fecha inicial de los nuevos comprobantes no puede nula.'';',
'            ELSE',
'                IF :P388_COD_CLIENTE IS NULL THEN',
'                    :P388_MSG_ALERT := ''Debe seleccionar un cliente.'';',
'                ELSE',
'                    :P388_MSG_ALERT := NULL;',
'                END IF;    ',
'            END IF;',
'        END IF;       ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_AGREGAR_COMPROBANTE_NUEVO. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_CANT_CUOTAS,P388_INTERVALO,P388_FEC_INICIAL,P388_COD_CLIENTE'
,p_attribute_03=>'P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209491113487343313)
,p_event_id=>wwv_flow_imp.id(209490663921343308)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111549143258674112)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209490983270343311)
,p_name=>'DA_SHOW_MSG_ALERT'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_MSG_ALERT'
,p_condition_element=>'P388_MSG_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209491004975343312)
,p_event_id=>wwv_flow_imp.id(209490983270343311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P388_MSG_ALERT.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209491278216343314)
,p_name=>'DA_VALIDATE_COD_CUSTODIO_ENT'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_CUSTODIO_ENT'
,p_condition_element=>'P388_COD_CUSTODIO_ENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209491303796343315)
,p_event_id=>wwv_flow_imp.id(209491278216343314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P388_COD_CUSTODIO_ENT = :P388_COD_CUSTODIO then',
'        :P388_MSG_ALERT := ( ''El custodio de destino debe ser diferente al custodio actual'' );',
'    else',
'     begin',
'        select cod_custodio',
'           into :P388_COD_CUSTODIO_ENT',
'           from cc_custodios',
'           where cod_empresa  = :P_COD_EMPRESA',
'             and cod_custodio = :P388_COD_CUSTODIO_ENT;',
'',
'        :P388_MSG_ALERT := NULL;',
'',
'     exception',
'        when no_data_found then',
unistr('           :P388_MSG_ALERT := ''No se encuentra c\00F3digo de custodio'' || SQLERRM;'),
'           :P388_COD_CUSTODIO_ENT := NULL;',
'        when others then',
'           APEX_DEBUG.ERROR ( ''Error en la tabla de custodios '' || sqlerrm ) ;',
'     end;   ',
'    end if;',
'end ;'))
,p_attribute_02=>'P388_COD_CUSTODIO_ENT,P388_COD_CUSTODIO'
,p_attribute_03=>'P388_COD_CUSTODIO_ENT,P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209491464935343316)
,p_name=>'DA_CARGAR_COMPROBANTES_CLIENTE'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_CLIENTE'
,p_condition_element=>'P388_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209491664198343318)
,p_event_id=>wwv_flow_imp.id(209491464935343316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        ---------------- CREAR COLLECTIONS DEL FORM --------------------------',
'     APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''COMP_A_REEMPLAZAR'');',
'',
'',
'     CCCOMCUO.PR_CARGAR_COMPROBANTES_NUEVOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                             PI_COD_CLIENTE => :P388_COD_CLIENTE,',
'                                             PI_COD_CUSTODIO => :P388_COD_CUSTODIO,',
'                                             PI_COD_USUARIO => :APP_USER,',
'                                             PI_FECHA_INI => :P388_FECHA_INI,',
'                                             PI_FECHA_FIN => :P388_FECHA_FIN,',
'                                             PI_COD_SECTOR => :P388_COD_SECTOR,',
'                                             PI_TIP_COMPROBANTE => :P388_TIP_COMPROBANTE,',
'                                             PI_SER_COMPROBANTE => :P388_SER_COMPROBANTE,',
'                                             PI_NRO_COMPROBANTE => :P388_NRO_COMPROBANTE);',
'    --APEX_DEBUG.ERROR(''sale'');',
'',
'    --:P388_INDICADOR_REP_COMP_NUEVOS := ''1'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_CARGAR_COMPROBANTES_CLIENTE - '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P388_COD_CLIENTE,P388_COD_CUSTODIO,APP_USER,P388_FECHA_INI,P388_FECHA_FIN,P388_COD_SECTOR,P388_TIP_COMPROBANTE,P388_SER_COMPROBANTE,P388_NRO_COMPROBANTE'
,p_attribute_03=>'P388_INDICADOR_REP_COMP_NUEVOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209494629693343348)
,p_event_id=>wwv_flow_imp.id(209491464935343316)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209493792312343339)
,p_name=>'DA_AGREGAR_COMP_A_REEMPLAZAR'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_SELEC_COMP_NUEVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209493844993343340)
,p_event_id=>wwv_flow_imp.id(209493792312343339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111549143258674112)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209494008564343342)
,p_event_id=>wwv_flow_imp.id(209493792312343339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCOMCUO.PR_AGREGAR_COMP_A_REEMPLAZAR (PI_SEQ_ID_COMP_SELEC         =>   :P388_SEQ_ID_SELEC_COMP_NUEVO,',
'                                           PI_P_COD_EMPRESA             =>   :P_COD_EMPRESA,',
'                                           PI_CABECERA_TIP_COMPROBANTE  =>   :P388_TIP_COMPROBANTE,',
'                                           PI_CABECERA_SER_COMPROBANTE  =>   :P388_SER_COMPROBANTE,',
'                                           PI_CABECERA_NRO_COMPROBANTE  =>   :P388_NRO_COMPROBANTE);',
'',
'    --- OCULTA EL REGISTRO SELECCIONADO EN EL REPORTE DE LOS COMPROBANTES DEL CLIENTE --',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''COMP_NUEVO'',',
'        p_seq => :P388_SEQ_ID_SELEC_COMP_NUEVO,',
'        p_attr_number => ''19'',',
'        p_attr_value => ''B'');',
'',
'    --- CALCULAR TOTAL_IMPORTE ---',
'    CCCOMCUO.PR_CALCULAR_TOTAL_IMPORTE  (PO_TOTAL_IMPORTE  =>   :P388_TOTAL_IMPORTE);   ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_AGREGAR_COMP_A_REEMPLAZAR - '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_SEQ_ID_SELEC_COMP_NUEVO,P388_TIP_COMPROBANTE,P388_SER_COMPROBANTE,P388_NRO_COMPROBANTE'
,p_attribute_03=>'P388_TOTAL_IMPORTE'
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
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209494134176343343)
,p_event_id=>wwv_flow_imp.id(209493792312343339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209494877549343350)
,p_name=>'DA_BOTON_NUEVO'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209490535856343307)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209980179292435505)
,p_event_id=>wwv_flow_imp.id(209494877549343350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea crear un nuevo registro?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209979702525435501)
,p_event_id=>wwv_flow_imp.id(209494877549343350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'NUEVO'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209979909410435503)
,p_name=>'DA_VALIDATE_GENERA_MD'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_GENERA_MD'
,p_condition_element=>'P388_GENERA_MD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209980000852435504)
,p_event_id=>wwv_flow_imp.id(209979909410435503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P388_GENERA_MD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210346521133732402)
,p_name=>'DA_ELIMINAR_COMP_A_REEMPLAZAR'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_REEMP_ELI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210346627254732403)
,p_event_id=>wwv_flow_imp.id(210346521133732402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210346793105732404)
,p_event_id=>wwv_flow_imp.id(210346521133732402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SEQ_ID_A_REEMPLAZAR   VARCHAR2(10);',
'BEGIN',
'',
'    --- ELIMINAMOS EL REGISTRO DE COMPROBANTES A REEMPLAZAR ---',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''COMP_A_REEMPLAZAR'',',
'        p_seq => :P388_SEQ_ID_COMP_REEMP_ELI,',
'        p_attr_number => ''20'',',
'        p_attr_value => ''B'');',
'',
'    --- ACTUALIZAMOS EL REGISTRO PARA QUE SALGA EN LOS COMPROBANTES DEL CLIENTE ---',
'    SELECT C021 ',
'    INTO V_SEQ_ID_A_REEMPLAZAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COMP_A_REEMPLAZAR''',
'    AND SEQ_ID            =  :P388_SEQ_ID_COMP_REEMP_ELI;',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''COMP_NUEVO'',',
'        p_seq => V_SEQ_ID_A_REEMPLAZAR,',
'        p_attr_number => ''19'',',
'        p_attr_value => ''X'');',
'',
'',
'        --- CALCULAR TOTAL_IMPORTE ---',
'    CCCOMCUO.PR_CALCULAR_TOTAL_IMPORTE  (PO_TOTAL_IMPORTE  =>   :P388_TOTAL_IMPORTE);  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error al intentar eliminar un comprobante a reemplazar. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_SEQ_ID_COMP_REEMP_ELI'
,p_attribute_03=>'P388_TOTAL_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210346850076732405)
,p_event_id=>wwv_flow_imp.id(210346521133732402)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210347503849732412)
,p_name=>'DA_BORRAR_FECHA_EMISION'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210347263079732409)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210347639416732413)
,p_event_id=>wwv_flow_imp.id(210347503849732412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_FECHA_INI,P388_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210347776244732414)
,p_name=>'DA_BORRAR_FECHA_VENCIMIENTO'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210347416875732411)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210347954935732416)
,p_event_id=>wwv_flow_imp.id(210347776244732414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P388_FECHA_VENCIMIENTO_INI,P388_FECHA_VENCIMIENTO_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210348033449732417)
,p_name=>'DA_BUSCAR_POR_EMISION'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210347180684732408)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210348113598732418)
,p_event_id=>wwv_flow_imp.id(210348033449732417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P388_FECHA_INI IS NULL OR :P388_FECHA_FIN IS NULL THEN',
unistr('        :P388_MSG_ALERT := ''Compruebe que las fechas de inicio y fin del periodo de emisi\00F3n no sean nulas.'';'),
'    ELSE',
'        IF :P388_FECHA_INI > :P388_FECHA_FIN THEN',
unistr('            :P388_MSG_ALERT := ''La fecha inicial del periodo de emisi\00F3n no puede ser mayor a la fecha final.'';'),
'        ELSE',
'            :P388_MSG_ALERT := NULL;',
'',
'            CCCOMCUO.PR_COMP_FECHA_EMISION (PI_P_COD_EMPRESA                => :P_COD_EMPRESA,',
'                                            PI_CABECERA_COD_CLIENTE         => :P388_COD_CLIENTE,',
'                                            PI_P_COD_USUARIO                => :P_COD_USUARIO,',
'                                            PI_CABECERA_COD_CUSTODIO        => :P388_COD_CUSTODIO,',
'                                            PI_CABECERA_COD_SECTOR          => :P388_COD_SECTOR,                                     ',
'                                            PI_CABECERA_TIP_COMPROBANTE     => :P388_TIP_COMPROBANTE,',
'                                            PI_CABECERA_SER_COMPROBANTE     => :P388_SER_COMPROBANTE,',
'                                            PI_CABECERA_NRO_COMPROBANTE     => :P388_NRO_COMPROBANTE,',
'                                            PI_CABECERA_FECHA_INI           => :P388_FECHA_INI,',
'                                            PI_CABECERA_FECHA_FIN           => :P388_FECHA_FIN,',
'                                            ---------------------------------------------',
'                                            PO_MSG_ALERT                    => :P388_MSG_ALERT);',
'',
'                    --- CALCULAR TOTAL_IMPORTE ---',
'            CCCOMCUO.PR_CALCULAR_TOTAL_IMPORTE  (PO_TOTAL_IMPORTE  =>   :P388_TOTAL_IMPORTE); ',
'             ',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR (''Error al buscar comprobantes por fecha de emisi\00F3n. '' || SQLERRM);'),
'END;'))
,p_attribute_02=>'P388_FECHA_INI,P388_FECHA_FIN,P388_COD_CLIENTE,P388_COD_CUSTODIO,P388_TIP_COMPROBANTE,P388_SER_COMPROBANTE,P388_NRO_COMPROBANTE'
,p_attribute_03=>'P388_MSG_ALERT,P388_TOTAL_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210349051799732427)
,p_event_id=>wwv_flow_imp.id(210348033449732417)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211163989960061702)
,p_event_id=>wwv_flow_imp.id(210348033449732417)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111549143258674112)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210348213865732419)
,p_name=>'DA_BUSCAR_POR_VENCIMIENTO'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210347336852732410)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210348448431732421)
,p_event_id=>wwv_flow_imp.id(210348213865732419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P388_FECHA_VENCIMIENTO_INI IS NULL OR :P388_FECHA_VENCIMIENTO_FIN IS NULL THEN',
'        :P388_MSG_ALERT := ''Compruebe que las fechas de inicio y fin del periodo de vencimiento no sean nulas.'';',
'    ELSE',
'        IF :P388_FECHA_VENCIMIENTO_INI > :P388_FECHA_VENCIMIENTO_FIN THEN',
'            :P388_MSG_ALERT := ''La fecha inicial del periodo de vencimiento no puede ser mayor a la fecha final.'';',
'        ELSE',
'            :P388_MSG_ALERT := NULL;',
'',
'            CCCOMCUO.PR_COMP_FECHA_VENCIMIENTO (PI_P_COD_EMPRESA                => :P_COD_EMPRESA,',
'                                                PI_CABECERA_COD_CLIENTE         => :P388_COD_CLIENTE,',
'                                                PI_P_COD_USUARIO                => :P_COD_USUARIO,',
'                                                PI_CABECERA_COD_CUSTODIO        => :P388_COD_CUSTODIO,',
'                                                PI_CABECERA_COD_SECTOR          => :P388_COD_SECTOR,                                     ',
'                                                PI_CABECERA_TIP_COMPROBANTE     => :P388_TIP_COMPROBANTE,',
'                                                PI_CABECERA_SER_COMPROBANTE     => :P388_SER_COMPROBANTE,',
'                                                PI_CABECERA_NRO_COMPROBANTE     => :P388_NRO_COMPROBANTE,',
'                                                PI_CABECERA_FECHA_VENC_INI      => :P388_FECHA_VENCIMIENTO_INI,',
'                                                PI_CABECERA_FECHA_VENC_FIN      => :P388_FECHA_VENCIMIENTO_FIN,',
'                                                ---------------------------------------------',
'                                                PO_MSG_ALERT                    => :P388_MSG_ALERT);',
'',
'                                --- CALCULAR TOTAL_IMPORTE ---',
'            CCCOMCUO.PR_CALCULAR_TOTAL_IMPORTE  (PO_TOTAL_IMPORTE  =>   :P388_TOTAL_IMPORTE);',
'             ',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error al buscar comprobantes por fecha de vencimiento. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P388_FECHA_VENCIMIENTO_INI,P388_FECHA_VENCIMIENTO_FIN,P388_COD_CLIENTE,P388_COD_CUSTODIO,P388_TIP_COMPROBANTE,P388_SER_COMPROBANTE,P388_NRO_COMPROBANTE'
,p_attribute_03=>'P388_MSG_ALERT,P388_TOTAL_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210349470927732431)
,p_event_id=>wwv_flow_imp.id(210348213865732419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210349500705732432)
,p_event_id=>wwv_flow_imp.id(210348213865732419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111549143258674112)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210350052014732437)
,p_name=>'DA_EDITAR_SALDO'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_REEMP_EDI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210350820189732445)
,p_event_id=>wwv_flow_imp.id(210350052014732437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  n004',
'      INTO  :P388_SALDO  ',
'      FROM  APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME =   ''COMP_A_REEMPLAZAR''',
'      AND   SEQ_ID          =   :P388_SEQ_ID_COMP_REEMP_EDI;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''DA_EDITAR_SALDO - Error al seleccionar saldo. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_SEQ_ID_COMP_REEMP_EDI'
,p_attribute_03=>'P388_SALDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210350146414732438)
,p_event_id=>wwv_flow_imp.id(210350052014732437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210349687539732433)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210350621445732443)
,p_name=>'DA_CERRAR_EDITAR_SALDO'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210350575956732442)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210350738489732444)
,p_event_id=>wwv_flow_imp.id(210350621445732443)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210349687539732433)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210351032231732447)
,p_name=>'DA_ACEPTAR_EDITAR_SALDO'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210350451674732441)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210351297592732449)
,p_event_id=>wwv_flow_imp.id(210351032231732447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P388_SALDO_A_MODIFICAR > :P388_SALDO THEN',
'        :P388_MSG_ALERT := ''El nuevo saldo no puede ser mayor al anterior.'';',
'    ELSE',
'        IF :P388_SALDO_A_MODIFICAR <= 0 THEN',
'            :P388_MSG_ALERT := ''El nuevo saldo no puede ser menor o igual a cero.''; ',
'        ELSE',
'            :P388_MSG_ALERT := NULL;',
'',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => ''COMP_A_REEMPLAZAR'',',
'                p_seq => :P388_SEQ_ID_COMP_REEMP_EDI,',
'                p_attr_number => ''4'',',
'                p_number_value  => :P388_SALDO_A_MODIFICAR);',
'',
'            --- CALCULAR TOTAL_IMPORTE ---',
'            CCCOMCUO.PR_CALCULAR_TOTAL_IMPORTE  (PO_TOTAL_IMPORTE  =>   :P388_TOTAL_IMPORTE);',
'                  ',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR (''Error al buscar comprobantes por fecha de emisi\00F3n. '' || SQLERRM);'),
'END;',
'',
''))
,p_attribute_02=>'P388_SALDO_A_MODIFICAR,P388_SALDO,P388_SEQ_ID_COMP_REEMP_EDI'
,p_attribute_03=>'P388_MSG_ALERT,P388_TOTAL_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210675672352085201)
,p_event_id=>wwv_flow_imp.id(210351032231732447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111965242278898039)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210351355658732450)
,p_event_id=>wwv_flow_imp.id(210351032231732447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210349687539732433)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P388_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212097683310198220)
,p_name=>'DA_VALIDATE_COD_PER_JURIDICA'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_PER_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212097761733198221)
,p_event_id=>wwv_flow_imp.id(212097683310198220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select nvl( nombre, nomb_fantasia )',
'     into :P388_DESC_BANCO',
'   from personas',
'   where cod_persona = :P388_COD_PER_JURIDICA;',
'     and cod_sector  = :P388_SECTOR_BANCARIO;',
'   :P388_MSG_ALERT := NULL;',
'exception',
'  when no_data_found then',
'      :P388_DESC_BANCO := null;',
unistr('      :P388_MSG_ALERT := ''C\00F3digo de Banco no existe'' ;'),
unistr('      APEX_DEBUG.ERROR(''C\00F3digo de Banco no existe'' );'),
'  when others then',
'      :P388_DESC_BANCO := null;',
'      APEX_DEBUG.ERROR(''Error en la Tabla de Personas'' ||sqlerrm );',
' end;',
''))
,p_attribute_02=>'P388_COD_PER_JURIDICA,P388_SECTOR_BANCARIO'
,p_attribute_03=>'P388_DESC_BANCO,P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212385194348376003)
,p_name=>'DA_VALIDATE_COD_BANCO_DET'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_COD_BANCO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212385253218376004)
,p_event_id=>wwv_flow_imp.id(212385194348376003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select nvl( nombre, nomb_fantasia )',
'     into :P388_DESC_BANCO_DET',
'   from personas',
'   where cod_persona = :P388_COD_BANCO_DET',
'     and cod_sector  = :P388_SECTOR_BANCARIO;',
'   :P388_MSG_ALERT := NULL;',
'exception',
'  when no_data_found then',
'      :P388_DESC_BANCO_DET := null;',
unistr('      :P388_MSG_ALERT := ''C\00F3digo de Banco no existe'' ;'),
unistr('      APEX_DEBUG.ERROR(''C\00F3digo de Banco no existe'' );'),
'  when others then',
'      :P388_DESC_BANCO_DET := null;',
'      APEX_DEBUG.ERROR(''Error en la Tabla de Personas'' ||sqlerrm );',
' end;',
''))
,p_attribute_02=>'P388_COD_BANCO_DET,P388_SECTOR_BANCARIO'
,p_attribute_03=>'P388_DESC_BANCO_DET,P388_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212098045454198224)
,p_name=>'DA_MOSTRAR_DETALLES_COMP_NUEVO'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_NUEVO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212098116839198225)
,p_event_id=>wwv_flow_imp.id(212098045454198224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  C002,  --COD_PER_JURIDICA,',
'            N005  --NRO_VALOR,',
'    INTO    :P388_COD_PER_JURIDICA,',
'            :P388_NRO_VALOR',
'    FROM    APEX_COLLECTIONS',
'    WHERE   COLLECTION_NAME = ''COMPROBANTES_NUEVOS''',
'    AND     SEQ_ID          = :P388_SEQ_ID_COMP_NUEVO_DET;   ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_MOSTRAR_DETALLES_COMP_NUEVO. '' || SQLERRM);',
'END;',
'      '))
,p_attribute_02=>'P388_SEQ_ID_COMP_NUEVO_DET'
,p_attribute_03=>'P388_COD_PER_JURIDICA,P388_NRO_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212098490775198228)
,p_name=>'DA_SETEAR_DIFERENCIA'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_TOTAL_PAGARE,P388_TOTAL_IMPORTE'
,p_condition_element=>'P388_TOTAL_PAGARE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212098563711198229)
,p_event_id=>wwv_flow_imp.id(212098490775198228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P388_DIFERENCIA := nvl( :P388_TOTAL_PAGARE, 0 ) - nvl( :P388_TOTAL_IMPORTE, 0 );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_SETEAR_DIFERENCIA - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_TOTAL_PAGARE,P388_TOTAL_IMPORTE'
,p_attribute_03=>'P388_DIFERENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212099128890198235)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212098767044198231)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212099329147198237)
,p_event_id=>wwv_flow_imp.id(212099128890198235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212099274390198236)
,p_event_id=>wwv_flow_imp.id(212099128890198235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212099740278198241)
,p_name=>'DA_ELIMINAR_COMPROBANTE_NUEVO'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_NUEVO_ELI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212099981947198243)
,p_event_id=>wwv_flow_imp.id(212099740278198241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212100080753198244)
,p_event_id=>wwv_flow_imp.id(212099740278198241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''COMPROBANTES_NUEVOS'',',
'        p_seq => :P388_SEQ_ID_COMP_NUEVO_ELI,',
'        p_attr_number => ''20'',',
'        p_attr_value => ''B'');',
'',
'',
'        --- CALCULAR TOTAL_PAGARE ---',
'    CCCOMCUO.PR_CALCULAR_TOTAL_PAGARE  (PO_TOTAL_PAGARE  => :P388_TOTAL_PAGARE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error al intentar eliminar un comprobante nuevo. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P388_SEQ_ID_COMP_NUEVO_ELI'
,p_attribute_03=>'P388_TOTAL_PAGARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212100108488198245)
,p_event_id=>wwv_flow_imp.id(212099740278198241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(117610271243947303)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212100380048198247)
,p_name=>'DA_EDITAR_OMPROBANTE_NUEVO'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P388_SEQ_ID_COMP_NUEVO_EDI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212100443217198248)
,p_event_id=>wwv_flow_imp.id(212100380048198247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(212100295945198246)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212738215736476503)
,p_name=>'DA_CERRAR_EDITAR_COMP_NUEVO'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212738193481476502)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212738325632476504)
,p_event_id=>wwv_flow_imp.id(212738215736476503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(212100295945198246)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(111963815144898025)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P388_ROW_ID_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110666646900965244)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :P388_COD_MODULO := ''CC'';',
'  :P388_COD_FORMA := ''CCCOMCUO'';',
'  :P388_COD_USUARIO := :P_COD_USUARIO;',
'  ',
'',
'  :P388_COD_USUARIO := ''INV'';',
'  :P388_COD_CLIENTE := ''14719'';',
'',
'  :P388_INDICADOR_REPORTE_BUSQ := ''0'';',
'',
'  :P388_SECTOR_BANCARIO := BS_BUSCA_PARAMETRO (:P388_COD_MODULO,''SECTOR_BANCARIO'');',
'  :P388_TIPOS_CANC := BS_BUSCA_PARAMETRO(:P388_COD_MODULO,''TIPOS_CANC_COMP'');',
'  :P388_TIPOS_AJUS := BS_BUSCA_PARAMETRO(:P388_COD_MODULO,''TIPOS_AJU_CANC'');',
'  :P388_TIPO_AJUSTE_CREDITO := BS_BUSCA_PARAMETRO(:P388_COD_MODULO,''TIPO_AJUSTE_CREDITO'');',
'  :P388_TIPO_AJUSTE_DEBITO := BS_BUSCA_PARAMETRO(:P388_COD_MODULO,''TIPO_AJUSTE_DEBITO'');',
'  :P388_COD_MONEDA_US := BS_BUSCA_PARAMETRO(''CM'', ''COD_MONEDA_DOL'');',
'  :P388_GENERA_MD := ''N'';',
'  :P388_MAX_ACAD := BS_BUSCA_PARAMETRO(:P388_COD_MODULO, ''CC_TIPO_AC_AD'');',
'',
'  :P388_GENERAR_FUERA_PERIODO := busca_permiso( :P_COD_EMPRESA, ',
'    											:P388_COD_FORMA, ',
'    											:P388_COD_USUARIO, ',
'    											''GENERAR_FUERA_PERIODO'');',
'',
'   :P388_REIMPRIME := busca_permiso (:P_COD_EMPRESA, ',
'    								 :P388_COD_FORMA, ',
'    								 :P388_COD_USUARIO, ',
'    								 ''REIMPRIME_CANJE'');',
'																								',
'																								',
'																								',
'    :P388_IND_ACUERDO := busca_permiso(:P_COD_EMPRESA, ',
'    								   :P388_COD_FORMA, ',
'    								   :P388_COD_USUARIO, ',
'    								   ''IMPRIME_ACUERDO'');',
'',
'',
'    BEGIN',
'    		SELECT nvl( p.nombre, p.nomb_fantasia ), ',
'    					 d.detalle',
'    		  INTO :P388_NOM_PAGARE, ',
'    		 	   :P388_DIR_PAGARE',
'    		  FROM empresas e, ',
'    		 	   personas p, ',
'    		 	   direc_personas d',
'    		 WHERE e.cod_empresa  = :P_COD_EMPRESA',
'    		   AND e.cod_per_juridica = p.cod_persona',
'    		   AND d.cod_persona      = p.cod_persona',
'    		   AND nvl(d.por_defecto, ''N'') = ''S''',
'    		   AND rownum = 1 ;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'    		:P388_NOM_PAGARE := NULL;',
'    		:P388_DIR_PAGARE := NULL;',
'    END;',
'',
'    BEGIN',
'    		SELECT cod_custodio',
'    	    INTO   :P388_COD_CUSTODIO',
'    		  FROM usuarios',
'    		 WHERE cod_empresa = :P_COD_EMPRESA',
'    		   AND cod_usuario = :P388_COD_USUARIO;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM || ''BUSQUEDA CUSTODIO'');',
'            :P388_COD_CUSTODIO := NULL;',
'    END;',
'',
'    IF :P388_COD_CUSTODIO IS NULL AND :P_COD_EMPRESA <> ''1'' THEN',
'    		BEGIN',
'    				SELECT cod_custodio',
'    				  INTO :P388_COD_CUSTODIO',
'    				  FROM usuarios',
'    				 WHERE cod_empresa = :P_COD_EMPRESA',
'    				   AND cod_usuario = :P388_COD_USUARIO ;',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    :P388_COD_CUSTODIO := NULL;',
'            END;',
'    END IF;',
'',
'    --PR_CARGA_CUSTODIOS_ALT',
'    CCCOMCUO.PR_CARGA_CUSTODIOS_ALT (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                     PI_COD_USUARIO => :P388_COD_USUARIO,',
'                                     PO_COD_CUSTODIO_ALT => :P388_CUSTODIOS_ALT);',
'    --PROCEDURE VER_PERMISOS',
'',
'    :P388_CARGA_SUCURSAL := busca_permiso( :P_COD_EMPRESA, ',
'        								   :P388_COD_FORMA, ',
'        								   :P388_COD_USUARIO, ',
'                                           ''CARGA SUCURSAL'') ;',
'',
'',
'    ------------------------------------------',
'',
'    :P388_REDONDEO := 2;',
'    :P388_IMP :=''C'';',
'',
'   :P388_VER_OTRAS_CARGAS  := busca_permiso ( :P_COD_EMPRESA, ',
'                                              :P388_COD_FORMA, ',
'                                              :P388_COD_USUARIO, ',
'                                              ''VER_OTRAS_CARGAS'');',
'',
'        ---------------- CREAR COLLECTIONS DEL FORM --------------------------',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''COMP_A_REEMPLAZAR'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME   =>  ''COMPROBANTES_NUEVOS'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(111552384830674144)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SETEO_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P388_FECHA_ALTA := to_char (sysdate,''dd/mm/yyyy hh24:mi:ss'');',
'    ',
'    IF :P388_SER_COMPROBANTE IS NULL THEN',
'      IF :P_COD_EMPRESA = ''2'' then',
'        :P388_SER_COMPROBANTE := BS_BUSCA_PARAMETRO (:P388_COD_MODULO, ''SERIE_COMP_CANCEB'' ) ;',
'      ELSE',
'        :P388_SER_COMPROBANTE := BS_BUSCA_PARAMETRO (:P388_COD_MODULO, ''SERIE_COMP_CANCE'') ;',
'      END IF;',
'    END IF;',
'',
'    IF :P388_COD_SUCURSAL IS NULL THEN',
'       :P388_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    END IF;',
'',
'    IF :P388_CANT_CUOTAS IS NULL THEN',
'       :P388_CANT_CUOTAS := 1 ;',
'    END IF;',
'',
'    IF :P388_INTERVALO IS NULL THEN',
'       :P388_INTERVALO := 30 ;',
'    END IF;',
'',
'    :P388_TIP_GENERAR := BS_BUSCA_PARAMETRO ( ''CC'',''TIPO_PAGARE'' ) ;',
'',
'    :P388_FEC_INICIAL := NULL ;',
'    --:P388_COD_CUSTODIO := :P_COD_CUSTODIO;',
'',
'    :P388_ALTA_POR := :APP_USER;',
'    :P388_FEC_ALTA := sysdate;',
'',
'    --:P388_COD_CLIENTE := ''14719'';',
'    --:P_COD_USUARIO := ''INV'';',
'    --:P388_COD_CUSTODIO := ''145'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(114293908255304611)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREAR_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCCOMCUO.PR_CREAR_COL_COMP_NUE_SEL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(119768679729483220)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SETEAR_FEC_CANCELACION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P388_FEC_CANCELACION IS NULL THEN',
'     :P388_FEC_CANCELACION := trunc (trae_fecha(:P_COD_EMPRESA, :P388_COD_MODULO));',
'     begin',
'         select val_venta',
'            into :P388_TIP_CAMBIO_US',
'            from tipos_cambio',
'            where cod_moneda  = :P388_COD_MONEDA_US',
'              and tipo_cambio = ''D''',
'              and fec_tipo_cambio <= :P388_FEC_CANCELACION',
'              and fec_tipo_cambio =',
'                                    ( select max( fec_tipo_cambio )',
'                                         from tipos_cambio',
'                                         where cod_moneda = :P388_COD_MONEDA_US',
'                                           and tipo_cambio = ''D''',
'                                           and fec_tipo_cambio <= :P388_FEC_CANCELACION) ;',
'      exception',
'         when others then',
'            null ;',
'      end ;',
'   end if ;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209979815386435502)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_BOTON_NUEVO'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'NUEVO'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(212836046963087344)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        -------------- OPERACIONES EN BASE DE DATOS --------------    ',
'    --- GUARDAR CABECERA ---          ',
'    CCCOMCUO.PR_GUARDAR_CABECERA (ROW_ID_CANCELA_COMP             => :P388_ROW_ID_COMPROBANTE,',
'                                  PI_P_COD_EMPRESA                => :P_COD_EMPRESA,',
'                                  PI_CAB_TIP_COMPROBANTE          => :P388_TIP_COMPROBANTE,',
'                                  PI_CAB_SER_COMPROBANTE          => :P388_SER_COMPROBANTE,',
'                                  PI_CAB_NRO_COMPROBANTE          => :P388_NRO_COMPROBANTE,',
'                                  PI_CAB_FEC_CANCELACION          => :P388_FEC_CANCELACION,',
'                                  PI_CAB_COD_CLIENTE              => :P388_COD_CLIENTE,',
'                                  PI_CAB_COD_MONEDA               => :P388_COD_MONEDA,',
'                                  PI_CAB_COD_SUCURSAL             => :P388_COD_SUCURSAL,',
'                                  PI_CAB_ENTREGA_INICIAL          => :P388_ENTREGA_INICIAL,',
'                                  PI_CAB_TIP_CAMBIO               => :P388_TIP_CAMBIO,                                   ',
'                                  PI_CAB_PORC_GRAVADAS            => NULL,',
'                                  PI_CAB_PORC_IVA                 => NULL,',
'                                  PI_CAB_ESTADO                   => :P388_ESTADO,',
'                                  PI_CAB_FEC_ESTADO               => TO_DATE(:P388_FEC_ESTADO,''DD/YY/MMMM''),',
'                                  PI_CAB_TIP_CAMBIO_US            => :P388_TIP_CAMBIO_US,',
'                                  PI_CAB_COD_CUSTODIO             => :P388_COD_CUSTODIO,',
'                                  PI_CAB_COD_SECTOR               => :P388_COD_SECTOR,',
'                                  PI_CAB_FEC_EMISION              => SYSDATE,',
'                                  PI_CAB_FECHA_ALTA               => TO_DATE(:P388_FECHA_ALTA,''DD/YY/MMMM''),',
'                                  PI_CAB_COD_COBRADOR             => :P388_COD_COBRADOR,',
'                                  PI_CAB_COD_USUARIO              => :P388_COD_USUARIO,',
'                                  PI_CAB_FEC_ACTUALIZACION        => TO_DATE(:P388_FEC_ACTUALIZACION,''DD/YY/MMMM''),',
'                                  PI_CAB_ACTUALIZADO_POR          => :P388_ACTUALIZADO_POR,',
'                                  PI_CAB_FEC_ALTA                 => TO_DATE(:P388_FEC_ALTA,''DD/YY/MMMM''),',
'                                  PI_CAB_NRO_PLANILLA_ENVIADA     => :P388_NRO_PLANILLA_ENVIADA,',
'                                  PI_CAB_ALTA_POR                 => :P388_ALTA_POR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GUARDAR - '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209490424376343306)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_VALIDAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    if :P388_FEC_CANCELACION is null then',
'       :P388_FEC_CANCELACION := sysdate ;',
'    end if;',
'    ',
'    if :P388_INTERVALO is not null and :P388_FEC_INICIAL is null then',
'      :P388_FEC_INICIAL := :P388_FEC_CANCELACION + :P388_INTERVALO;',
'    end if;',
'',
'    IF NVL(:P388_GENERA_MD, ''N'') = ''S'' THEN',
'        :P388_GENERA_MD := ''S'';',
'    ELSE',
'        :P388_GENERA_MD := ''N'';',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_VALIDAR_DATOS. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(212738677543476507)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GENERAR_NRO_COMPROBANTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    if :P388_NRO_COMPROBANTE is  null then',
'      begin',
'           select nvl( max( nro_comprobante ), 0 ) + 1',
'              into :P388_NRO_COMPROBANTE',
'              from cc_cancela_comprob_cab',
'              where cod_empresa     = :P_COD_EMPRESA',
'                and tip_comprobante = :P388_TIP_COMPROBANTE',
'                and ser_comprobante = :P388_SER_COMPROBANTE;',
'',
'           if :P388_NRO_COMPROBANTE is null then',
'              :P388_NRO_COMPROBANTE := 1 ;',
'           end if;',
'      exception',
'       when no_data_found then',
'          :P388_NRO_COMPROBANTE := 1;',
'       when others then',
'          APEX_DEBUG.ERROR (''Error en la tabla cc_cancela_comprob_cab '' || sqlerrm ) ;',
'      end ;',
'    end if;',
'',
'    --APEX_DEBUG.ERROR (''P388_NRO_COMPROBANTE '' || :P388_NRO_COMPROBANTE) ;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GENERAR_NRO_COMPROBANTE. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
