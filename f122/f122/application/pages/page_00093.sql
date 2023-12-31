prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
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
 p_id=>93
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Lista de Precios'
,p_alias=>'LISTA-DE-PRECIOS1'
,p_step_title=>'Lista de Precios'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function detalle_LIST_PREC(id){',
'  console.log("detalle: ",id )',
'  apex.item("P93_COD_LISTA_PRECIO").setValue(id);',
'  apex.region("RDETA").refresh();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221118095711'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20111866285427423)
,p_plug_name=>'Lista de Precios Cabecera'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22170424358082422)
,p_plug_name=>'Lista de Precios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22169045267082408)
,p_plug_name=>'VT_LISTAS_PRECIOS_CAB'
,p_parent_plug_id=>wwv_flow_imp.id(22170424358082422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_LISTA_PRECIO,',
'       c003 DESCRIPCION,',
'       c004 COD_MONEDA,',
'       c005 ESTADO,',
'       c006 ABREVIATURA,',
'       c007 COD_GRUPO_USUARIO,',
'       c008 INSCRIPCTO,',
'       c009 TIPO_ENTREGA,',
'       c010 CONTROL,',
'       c011 DESC_MONEDA,       ',
'       NULL EDITAR,',
'       ''<a href="javascript:detalle_LIST_PREC(''||c002||'');">'' || ''<span class="fa fa-search"></span></a>'' Detalle',
'  from APEX_COLLECTIONS',
' where COLLECTION_NAME = ''COLEC_VT_LIST_PREC''',
'   and (c010 = ''U'' or c010 = ''I'' or c010 is NULL)',
' order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VT_LISTAS_PRECIOS_CAB'
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
 p_id=>wwv_flow_imp.id(22169405084082412)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>22169405084082412
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22169563698082413)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22169665506082414)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Lista Precio')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22169755800082415)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22169886941082416)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Moneda')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22169950610082417)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170093507082418)
,p_db_column_name=>'ABREVIATURA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Abreviatura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170101874082419)
,p_db_column_name=>'COD_GRUPO_USUARIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Grupo Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170271668082420)
,p_db_column_name=>'INSCRIPCTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Inscripcto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170311844082421)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170625472082424)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170849641082426)
,p_db_column_name=>'CONTROL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22170935192082427)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P93_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
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
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22171297408082430)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Descripci\00F3n Moneda')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22171408856082432)
,p_db_column_name=>'DETALLE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(23930920120843542)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239310'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_LISTA_PRECIO:DESCRIPCION:ABREVIATURA:COD_MONEDA:DESC_MONEDA:TIPO_ENTREGA:ESTADO:INSCRIPCTO:EDITAR:DETALLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22173232307082450)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22171626149082434)
,p_plug_name=>'VT_COEF_PRECIOS_GRUP'
,p_region_name=>'RDETA'
,p_parent_plug_id=>wwv_flow_imp.id(22173232307082450)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_LISTA_PRECIO,',
'       c003 COD_GRUPO_ART,',
'       c004 COEFICIENTE,',
'       c005 PORC_DESCUENTO,',
'       c006 COD_USUARIO,',
'       c007 CONTROL,',
'       c008 DESC_GRUP_ART,',
'       c009 ROW_ID,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  from APEX_COLLECTIONS ',
' where COLLECTION_NAME = ''COLEC_VT_COEF_PRECIOS_GRUP''',
'   and c002 = :P93_COD_LISTA_PRECIO',
'   and c001 = :P_COD_EMPRESA',
' order by seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P93_COD_LISTA_PRECIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VT_COEF_PRECIOS_GRUP'
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
 p_id=>wwv_flow_imp.id(22171826230082436)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>22171826230082436
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22171995297082437)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22172034853082438)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Lista Precio')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22172111493082439)
,p_db_column_name=>'COD_GRUPO_ART'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Grupo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22173076120082448)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24025476855733322)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24025565917733323)
,p_db_column_name=>'COEFICIENTE'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Coeficiente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24025684181733324)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Coeficiente Descuento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24025727209733325)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P93_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
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
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24025841961733326)
,p_db_column_name=>'BORRAR'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P93_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
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
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;  ',
'    ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24025972003733327)
,p_db_column_name=>'CONTROL'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24026509920733333)
,p_db_column_name=>'DESC_GRUP_ART'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>unistr('Descripci\00F3n  Grupo ')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20113813882427443)
,p_db_column_name=>'ROW_ID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(24018791348662233)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_LISTA_PRECIO:COD_GRUPO_ART:DESC_GRUP_ART:COEFICIENTE:PORC_DESCUENTO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23424079615742846)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24024691315733314)
,p_plug_name=>'Lista de Precios Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24025011994733318)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(24024691315733314)
,p_button_name=>'BTGUARDAR3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Detalle'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22171327136082431)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_button_name=>'BTGUARDAR2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro Cabecera'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22169164638082409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22170424358082422)
,p_button_name=>'BTCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
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
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24023355829733301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22173232307082450)
,p_button_name=>'BTAGREGAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
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
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24024594702733313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22170424358082422)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20111925135427424)
,p_name=>'P93_CODIGO_LISTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_prompt=>unistr('C\00F3digo Lista')
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
 p_id=>wwv_flow_imp.id(20112098442427425)
,p_name=>'P93_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(20112175235427426)
,p_name=>'P93_ABREV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_prompt=>'Abreviatura'
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
 p_id=>wwv_flow_imp.id(20112246692427427)
,p_name=>'P93_MONEDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS_VTLISTPR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_moneda R, ',
'         siglas||'' - ''||descripcion D',
'    from monedas ',
'order by cod_moneda'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20112411403427429)
,p_name=>'P93_INSCRIPCTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_item_default=>'''N'''
,p_prompt=>'Inscripto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20112685502427431)
,p_name=>'P93_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_item_default=>'''N'''
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20114053943427445)
,p_name=>'P93_CONTROL_LISTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22169045267082408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22171072494082428)
,p_name=>'P93_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22169045267082408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22171100538082429)
,p_name=>'P93_TIPO_ENTREGA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20111866285427423)
,p_prompt=>'Tipo de Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:INTERIOR;IN,CAPITAL;CA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22171551078082433)
,p_name=>'P93_COD_LISTA_PRECIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22169045267082408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24024799596733315)
,p_name=>'P93_COD_GRUPO_ART'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24024691315733314)
,p_prompt=>unistr('C\00F3digo de Grupo Art.')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_GRUPOS_ART'
,p_lov=>'SELECT DESCRIPCION, COD_GRUPO_ART FROM ST_GRUPOS_ART '
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24024876561733316)
,p_name=>'P93_COEFICIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24024691315733314)
,p_prompt=>'Coeficiente'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24024953454733317)
,p_name=>'P93_POR_DESCUENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24024691315733314)
,p_prompt=>'Porcetaje de Descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24026692789733334)
,p_name=>'P93_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22171626149082434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24026775109733335)
,p_name=>'P93_DELETE_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22171626149082434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37448868864992515)
,p_name=>'P93_CONTROL_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22171626149082434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43198639768889715)
,p_name=>'P93_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22170424358082422)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22169291600082410)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22169164638082409)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24023926624733307)
,p_event_id=>wwv_flow_imp.id(22169291600082410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P93_CODIGO_LISTA,P93_DESCRIPCION,P93_ABREV,P93_MONEDA,P93_TIPO_ENTREGA,P93_ESTADO,P93_INSCRIPCTO,P93_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22169310764082411)
,p_event_id=>wwv_flow_imp.id(22169291600082410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20111866285427423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24023455663733302)
,p_name=>'DA_AGREGAR_CAB'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22171327136082431)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24023554292733303)
,p_event_id=>wwv_flow_imp.id(24023455663733302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P93_CODIGO_LISTA,P93_DESCRIPCION,P93_ABREV,P93_MONEDA,P93_TIPO_ENTREGA,P93_ESTADO,P93_INSCRIPCTO,P93_CONTROL_LISTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24023694776733304)
,p_event_id=>wwv_flow_imp.id(24023455663733302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := VTLISTPR.BUSCAR_LIST(pcod_empresa      => :P_COD_EMPRESA,',
'                                     pcod_lista_precio => :P93_CODIGO_LISTA);',
'',
'    IF VCONTROL > 0 THEN',
'        :P93_CONTROL_LISTA := 1;',
'    ELSE',
'        :P93_CONTROL_LISTA := 0;',
'',
'        VTLISTPR.ADD_COL_CAB(pcod_lista_precio => :P93_CODIGO_LISTA, ',
'                             pdescripcion      => :P93_DESCRIPCION,',
'                             pcod_moneda       => :P93_MONEDA, ',
'                             pestado           => :P93_ESTADO, ',
'                             pabreviatura      => :P93_ABREV, ',
'                             pinscripto        => :P93_INSCRIPCTO,',
'                             ptipo_entrega     => :P93_TIPO_ENTREGA,',
'                             pcod_empresa      => :P_COD_EMPRESA);',
'    END IF;   ',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P93_CONTROL_LISTA := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_CAB ADD''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_CODIGO_LISTA,P93_DESCRIPCION,P93_ABREV,P93_MONEDA,P93_TIPO_ENTREGA,P93_ESTADO,P93_INSCRIPCTO'
,p_attribute_03=>'P93_CONTROL_LISTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P93_EDIT_DATA'
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
 p_id=>wwv_flow_imp.id(24024451722733312)
,p_event_id=>wwv_flow_imp.id(24023455663733302)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTLISTPR.EDIT_COL(pseq_id           => :P93_EDIT_DATA,',
'                      pcod_empresa      => :P_COD_EMPRESA,',
'                      pcod_lista_precio => :P93_CODIGO_LISTA, ',
'                      pdescripcion      => :P93_DESCRIPCION,',
'                      pcod_moneda       => :P93_MONEDA, ',
'                      pestado           => :P93_ESTADO, ',
'                      pabreviatura      => :P93_ABREV, ',
'                      pinscripto        => :P93_INSCRIPCTO,',
'                      ptipo_entrega     => :P93_TIPO_ENTREGA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_CAB EDIT COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_EDIT_DATA,P93_CODIGO_LISTA,P93_DESCRIPCION,P93_ABREV,P93_MONEDA,P93_TIPO_ENTREGA,P93_ESTADO,P93_INSCRIPCTO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P93_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20114114316427446)
,p_event_id=>wwv_flow_imp.id(24023455663733302)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El c\00F3digo de lista que agrega est\00E1 siendo utilizado, por favor coloque otro c\00F3digo.')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P93_CONTROL_LISTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24023725802733305)
,p_event_id=>wwv_flow_imp.id(24023455663733302)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20111866285427423)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P93_CONTROL_LISTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24023802623733306)
,p_event_id=>wwv_flow_imp.id(24023455663733302)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22169045267082408)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P93_CONTROL_LISTA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24024002609733308)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P93_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24024139022733309)
,p_event_id=>wwv_flow_imp.id(24024002609733308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P93_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24024286587733310)
,p_event_id=>wwv_flow_imp.id(24024002609733308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTLISTPR.CARGAR_DATOS_EDIT(pedit_data        => :P93_EDIT_DATA,',
'                               pcod_lista_precio => :P93_CODIGO_LISTA, ',
'                               pdescripcion      => :P93_DESCRIPCION,',
'                               pcod_moneda       => :P93_MONEDA, ',
'                               pestado           => :P93_ESTADO, ',
'                               pabreviatura      => :P93_ABREV, ',
'                               pinscripto        => :P93_INSCRIPCTO,',
'                               ptipo_entrega     => :P93_TIPO_ENTREGA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDITAR CARGAR DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_EDIT_DATA'
,p_attribute_03=>'P93_CODIGO_LISTA,P93_DESCRIPCION,P93_ABREV,P93_MONEDA,P93_TIPO_ENTREGA,P93_ESTADO,P93_INSCRIPCTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P93_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24024397457733311)
,p_event_id=>wwv_flow_imp.id(24024002609733308)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20111866285427423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24025105343733319)
,p_name=>'DA_ABRIR_MODAL_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24023355829733301)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24025243751733320)
,p_event_id=>wwv_flow_imp.id(24025105343733319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P93_COD_GRUPO_ART,P93_COEFICIENTE,P93_POR_DESCUENTO,P93_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24025321535733321)
,p_event_id=>wwv_flow_imp.id(24025105343733319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24024691315733314)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24026058611733328)
,p_name=>'DA_AGREGAR_DET'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24025011994733318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24026153715733329)
,p_event_id=>wwv_flow_imp.id(24026058611733328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P93_COD_GRUPO_ART,P93_COEFICIENTE,P93_POR_DESCUENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24026256370733330)
,p_event_id=>wwv_flow_imp.id(24026058611733328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := VTLISTPR.BUSCAR_LIST_DET(pcod_empresa      => :P_COD_EMPRESA,',
'                                         pcod_lista_precio => :P93_COD_LISTA_PRECIO,',
'                                         pcod_grupo_art    => :P93_COD_GRUPO_ART);',
'',
'    IF VCONTROL > 0 THEN',
'        :P93_CONTROL_DET := 1;',
'    ELSE',
'        :P93_CONTROL_DET := 0;',
'',
'        VTLISTPR.ADD_COL_DET(pcod_grupo_art    => :P93_COD_GRUPO_ART, ',
'                             pcoeficiente      => :P93_COEFICIENTE,',
'                             pporc_coef        => :P93_POR_DESCUENTO,',
'                             pcod_empresa      => :P_COD_EMPRESA,',
'                             pcod_lista_precio => :P93_COD_LISTA_PRECIO,',
'                             pusuario          => :P_COD_USUARIO);',
'    END IF;                                     ',
'    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P93_CONTROL_DET := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_DET ADD COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_COD_GRUPO_ART,P93_COEFICIENTE,P93_POR_DESCUENTO,P93_COD_LISTA_PRECIO,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_03=>'P93_CONTROL_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P93_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113314708427438)
,p_event_id=>wwv_flow_imp.id(24026058611733328)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTLISTPR.EDIT_COL_DET(pseq_id           => :P93_EDIT_DATA_DET,',
'                          pcod_grupo_art    => :P93_COD_GRUPO_ART, ',
'                          pcoeficiente      => :P93_COEFICIENTE,',
'                          pporc_coef        => :P93_POR_DESCUENTO,',
'                          pcod_empresa      => :P_COD_EMPRESA,',
'                          pusuario          => :P_COD_USUARIO);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_EDIT_DATA_DET,P93_COD_GRUPO_ART,P93_COEFICIENTE,P93_POR_DESCUENTO,P_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P93_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37448910956992516)
,p_event_id=>wwv_flow_imp.id(24026058611733328)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El C\00F3digo de Grupo ya existe como detalle de la lista seleccionada, por favor coloque otro c\00F3digo.')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P93_CONTROL_DET'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24026310725733331)
,p_event_id=>wwv_flow_imp.id(24026058611733328)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24024691315733314)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P93_CONTROL_DET'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24026471432733332)
,p_event_id=>wwv_flow_imp.id(24026058611733328)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22171626149082434)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P93_CONTROL_DET'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20112954151427434)
,p_name=>'DA_EDITAR_DET'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P93_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113040690427435)
,p_event_id=>wwv_flow_imp.id(20112954151427434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P93_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113193899427436)
,p_event_id=>wwv_flow_imp.id(20112954151427434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTLISTPR.CARGAR_DATOS_EDIT_DET(pedit_data     => :P93_EDIT_DATA_DET,',
'                                   pcod_grupo_art => :P93_COD_GRUPO_ART, ',
'                                   pcoeficiente   => :P93_COEFICIENTE,',
'                                   ppor_descuento => :P93_POR_DESCUENTO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDITAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_EDIT_DATA_DET'
,p_attribute_03=>'P93_COD_GRUPO_ART,P93_COEFICIENTE,P93_POR_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P93_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113280087427437)
,p_event_id=>wwv_flow_imp.id(20112954151427434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24024691315733314)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20113403595427439)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P93_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113503991427440)
,p_event_id=>wwv_flow_imp.id(20113403595427439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P93_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113795943427442)
,p_event_id=>wwv_flow_imp.id(20113403595427439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTLISTPR.DELETE_COL(pseq_id => :P93_DELETE_DATA_DET, ',
'                        p_col   => ''COLEC_VT_COEF_PRECIOS_GRUP'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 93 DELETE COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P93_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20113616056427441)
,p_event_id=>wwv_flow_imp.id(20113403595427439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22171626149082434)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22170540597082423)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_VT_LIST_PREC'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_VT_COEF_PRECIOS_GRUP''); ',
':P93_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'BEGIN',
'',
'    VTLISTPR.CARGAR_COLEC_VT_LIST_PREC(pcod_empresa => :P_COD_EMPRESA);',
'',
'    VTLISTPR.CARGAR_COLEC_VT_COEF_PREC_GRUP(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20113954933427444)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTLISTPR.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 93 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(24024594702733313)
);
wwv_flow_imp.component_end;
end;
/
