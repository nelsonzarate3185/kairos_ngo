prompt --application/pages/page_00474
begin
--   Manifest
--     PAGE: 00474
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
 p_id=>474
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pedido de Reposicion de Productos - STPEREPR'
,p_alias=>'STPEREPR'
,p_step_title=>'Pedido de Reposicion de Productos - STPEREPR'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P474_ACCION'',''AGREGAR'');',
'      $s(''P474_AUX_CHECK'', cb.value,false);',
'  } else {',
'      $s(''P474_ACCION'',''QUITAR'');',
'      $s(''P474_AUX_CHECK'', cb.value,false);',
'  }',
'  ',
'}'))
,p_javascript_code_onload=>'  '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PRINCIPAL{background-color: #f0f7f9;}',
'',
'  .a-IRR-header  a , #checktext {color: yellow !important; }',
' .a-IRR-header {    background: #003a85!important;}',
'',
'',
'.t-Body-mainContent  { ',
'    background: #082b642f!important;',
'} ',
'  ',
'  .t-Form-label{',
'    color:  darkblue  !important; ',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230920091451'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140556332274848747)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141423643466155323)
,p_plug_name=>'Pedido de Reposicion de Productos'
,p_region_name=>'PRINCIPAL'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140553699305848720)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(141423643466155323)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140553755382848721)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(141423643466155323)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SEQ_ID,',
'        c001  COD_EMPRESA,',
'        c002  TIP_COMPROBANTE,',
'        c003  NRO_COMPROBANTE,',
'        c004  COD_ART_CORTO,',
'        c005  V_DESC_ARTICULO,',
'        c006  COD_ARTICULO,',
'        c007  CANTIDAD,',
'        c008  CANTIDAD_CONFIRMADA,',
'        c009  NRO_ENVIO_PEND,',
'        c010  SER_ENVIO_PEND,',
'        c011  SER_COMPROBANTE,',
'        APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => SEQ_ID, ',
'                            p_attributes => (case c012 when ''S'' then ''checked '' else null end )||''onclick="seleccionar(this)"'' ) as IND_ANULADO,',
'        c013  r_id,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_STPEREPR''',
'  and nvl(c020,''X'') <> ''D'''))
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
 p_id=>wwv_flow_imp.id(140555225444848736)
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
,p_internal_uid=>140555225444848736
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140555301288848737)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140555474258848738)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140555532379848739)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140555704227848741)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Codigo Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140556197272848745)
,p_db_column_name=>'SER_ENVIO_PEND'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ser Envio Pend'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140556288890848746)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod. Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141424564233155332)
,p_db_column_name=>'IND_ANULADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141425523414155342)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141425649711155343)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141425777046155344)
,p_db_column_name=>'V_DESC_ARTICULO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141425892403155345)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141425952352155346)
,p_db_column_name=>'CANTIDAD_CONFIRMADA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cant. Conf.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141426075332155347)
,p_db_column_name=>'NRO_ENVIO_PEND'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nro Envio Pend'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141426122756155348)
,p_db_column_name=>'R_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141426206386155349)
,p_db_column_name=>'EDITAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P474_EDITAR_AUX'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141426306605155350)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P474_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(141412125868221677)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1414122'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_ART_CORTO:COD_ARTICULO:V_DESC_ARTICULO:CANTIDAD:CANTIDAD_CONFIRMADA:IND_ANULADO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142010856285292812)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(205932669133706822)
,p_plug_name=>'LISTADO DE PEDIDOS'
,p_region_template_options=>'t-DialogRegion--noPadding:js-modal:js-draggable:js-resizable:js-dialog-size600x400:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CC.NRO_COMPROBANTE,',
'       CC.COD_SUCURSAL_SAL||'' - '' ||',
'       SS.DESCRIPCION SUCSAL,',
'       CC.COD_SUCURSAL_ENT ||'' - '' ||',
'       SE.DESCRIPCION SUCENT,',
'       CC.FEC_COMPROBANTE,',
'       DECODE(CC.ESTADO,''P'',''PENDIENTE'',DECODE(CC.ESTADO,''C'',''CONFIRMADO'',''PARCIAL''))ESTADO,',
'       CC.FEC_ESTADO,',
'       CC.COD_USUARIO,',
'       CC.FEC_ALTA,',
'       CC.OBSERVACION',
'  from ST_PED_REPOSICION_CAB CC,',
'       SUCURSALES SS,',
'       SUCURSALES SE',
'  WHERE CC.COD_EMPRESA = :P_COD_EMPRESA',
'  AND   CC.COD_EMPRESA = SS.COD_EMPRESA',
'  AND   CC.COD_SUCURSAL_SAL = SS.COD_SUCURSAL',
'  AND   CC.COD_SUCURSAL_ENT=SE.COD_SUCURSAL',
'  AND   CC.COD_EMPRESA = SE.COD_EMPRESA',
'  order by CC.NRO_COMPROBANTE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'LISTADO DE PEDIDOS'
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
 p_id=>wwv_flow_imp.id(205932700980706823)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:474:&SESSION.::&DEBUG.::P474_PARAM_NRO_COMPROBANTE:#NRO_COMPROBANTE#'
,p_detail_link_text=>'<span class="fa fa-search-plus" aria-hidden="true"></span> '
,p_owner=>'JUANSA'
,p_internal_uid=>205932700980706823
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933188619706827)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933472640706830)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933571772706831)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933624696706832)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933703809706833)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933820663706834)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205933914285706835)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205934092360706836)
,p_db_column_name=>'SUCSAL'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Sucursal Salida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205934168211706837)
,p_db_column_name=>'SUCENT'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Sucursal Entrada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(208612746187698701)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2086128'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:FEC_COMPROBANTE:ESTADO:SUCENT:SUCSAL:OBSERVACION:COD_USUARIO:FEC_ALTA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142012097545292824)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(142010856285292812)
,p_button_name=>'Aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141425139471155338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141423643466155323)
,p_button_name=>'bt_buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21 u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142013493377292838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(141423643466155323)
,p_button_name=>'bt_Confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--SEGURIDAD_GRANULAR MOSTRAR_CONFIRMAR ',
'BEGIN',
'   RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                   ppage_id => :APP_PAGE_ID,',
'                                                papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21 u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142014655017292850)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(141423643466155323)
,p_button_name=>'bt_Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21 u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142012828074292832)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_button_name=>'BT_AGREGAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN ',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN false;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                   ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(205932328384706819)
,p_branch_name=>'Go To Page 474'
,p_branch_action=>'f?p=&APP_ID.:474:&SESSION.::&DEBUG.::P474_PARAM_NRO_COMPROBANTE:&P474_NRO_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(142013493377292838)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P474_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140553892841848722)
,p_name=>'P474_COD_SUCURSAL_SAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Suc. Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_STPEREPR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal ||'' - ''||descripcion dis, cod_sucursal  cod',
'from sucursales ',
'where cod_empresa = :P_cod_empresa ',
'and ( (cod_sucursal in (''190'',''209'',''01'',''262'') and :p_cod_usuario not in (''VTAOFERTAS'',''VTAOFERTA2'')) or (cod_sucursal in (''105'',''247'',''96'') AND :p_cod_usuario In (''VTAOFERTAS'',''VTAOFERTA2'')))',
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
 p_id=>wwv_flow_imp.id(140554086724848724)
,p_name=>'P474_COD_SUCURSAL_ENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Suc. Entrada'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal ||'' - ''||descripcion dis, cod_sucursal  cod',
'from sucursales ',
'where cod_empresa = :P_cod_empresa ',
'---and  cod_sucursal = NVL(:P474_COD_SUCURSAL,:P_COD_SUCURSAL)',
';'))
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554239011848726)
,p_name=>'P474_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554353069848727)
,p_name=>'P474_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554441259848728)
,p_name=>'P474_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Nro Pedido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554588817848729)
,p_name=>'P474_FEC_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Fecha'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554627643848730)
,p_name=>'P474_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,CONFIRMADO;C,PARCIAL;F'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554713754848731)
,p_name=>'P474_FEC_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Fecha Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554803125848732)
,p_name=>'P474_FEC_ALTA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Fecha Alta'
,p_format_mask=>'dd/mm/yyyy hh:mi:ss'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554997668848733)
,p_name=>'P474_COD_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140555092524848734)
,p_name=>'P474_OBSERVACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(140555145890848735)
,p_name=>'P474_COD_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140556414575848748)
,p_name=>'P474_PARAM_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140556504568848749)
,p_name=>'P474_ACTUALIZA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140556627116848750)
,p_name=>'P474_COD_ART_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141421405482155301)
,p_name=>'P474_DERECHOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141421592549155302)
,p_name=>'P474_LINEAS_MAX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141421665310155303)
,p_name=>'P474_CARGA_DETALLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141421779002155304)
,p_name=>'P474_NOM_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141421817760155305)
,p_name=>'P474_COD_ARTICULO_REM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141421990866155306)
,p_name=>'P474_COD_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422062079155307)
,p_name=>'P474_NOM_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422147909155308)
,p_name=>'P474_MODIFICA_PRECIO_VENTA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422277263155309)
,p_name=>'P474_COD_MODULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422388646155310)
,p_name=>'P474_NOM_EMPRESA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422488155155311)
,p_name=>'P474_ITEM588'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422516562155312)
,p_name=>'P474_COD_SUCURSAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422678999155313)
,p_name=>'P474_NOM_SUCURSAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422751699155314)
,p_name=>'P474_COD_USUARIOA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(141422821811155315)
,p_name=>'P474_COD_IDIOMA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141422917807155316)
,p_name=>'P474_CODSISMENU'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423007121155317)
,p_name=>'P474_TIP_REMISION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423165014155318)
,p_name=>'P474_SER_REMISION'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423212040155319)
,p_name=>'P474_CLIENTE_CONTADO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423320455155320)
,p_name=>'P474_CAMBIA_NRO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423412012155321)
,p_name=>'P474_CARGA_SUCURSAL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423575099155322)
,p_name=>'P474_CAMBIA_FECHA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(140556332274848747)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141423881521155325)
,p_name=>'P474_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142010856285292812)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS - STPEREPR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo , cod_art_corto',
'from st_articulos AA',
'where cod_empresa = :p_cod_empresa ',
'and ( estado is null or estado <> ''I'' )',
'AND COD_RUBRO=''PR'' ',
'AND EXISTS (SELECT DISTINCT ''1'' ',
'            FROM ST_EXISTENCIA_ART E ',
'            WHERE NVL(E.CANT_DISPON,0) >0 ',
'            AND E.COD_EMPRESA= :p_cod_empresa ',
'            AND E.COD_SUCURSAL= :P474_COD_SUCURSAL_SAL',
'            AND E.COD_ARTICULO= AA.COD_ARTICULO',
'            )',
'            order by descripcion'))
,p_lov_cascade_parent_items=>'P474_COD_SUCURSAL_SAL'
,p_ajax_items_to_submit=>'P474_COD_SUCURSAL_SAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'COD_ART_CORTO:P474_COD_ART_CORTO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141424418542155331)
,p_name=>'P474_COD_USUARIO_AUX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141424690753155333)
,p_name=>'P474_IND_ANULADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141424779968155334)
,p_name=>'P474_AUX_CHECK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141425033540155337)
,p_name=>'P474_ACCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142009790132292801)
,p_name=>'P474_EDITAR_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142009837805292802)
,p_name=>'P474_ELIMINAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142010221452292806)
,p_name=>'P474_CANTIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(142010856285292812)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142012345396292827)
,p_name=>'P474_SEQ_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140553755382848721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142014142885292845)
,p_name=>'P474_ERR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(140553699305848720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205930999166706805)
,p_name=>'P474_COD_ART_CORTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(142010856285292812)
,p_prompt=>'Codigo Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(205931520366706811)
,p_validation_name=>'va_suc_sal'
,p_validation_sequence=>10
,p_validation=>'P474_COD_SUCURSAL_SAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar la Sucursal de Salida.'
,p_when_button_pressed=>wwv_flow_imp.id(142013493377292838)
,p_associated_item=>wwv_flow_imp.id(140553892841848722)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(205931608079706812)
,p_validation_name=>'va_suc_ent'
,p_validation_sequence=>20
,p_validation=>'P474_COD_SUCURSAL_ENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar la Sucursal de Entrada.'
,p_when_button_pressed=>wwv_flow_imp.id(142013493377292838)
,p_associated_item=>wwv_flow_imp.id(140554086724848724)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(205932238035706818)
,p_validation_name=>'va_detalle'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   distinct ''1''',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_STPEREPR''',
'  and nvl(c020,''X'') <> ''D'''))
,p_validation_type=>'EXISTS'
,p_error_message=>'Debe cargar al menos un detalle.'
,p_when_button_pressed=>wwv_flow_imp.id(142013493377292838)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141424879632155335)
,p_name=>'DA_AUX_CHECK'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P474_AUX_CHECK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141424987913155336)
,p_event_id=>wwv_flow_imp.id(141424879632155335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'STPEREPR.PR_CHECK(P_SEQ_ID => :P474_AUX_CHECK, P_ACCION => :P474_ACCION);'
,p_attribute_02=>'P474_AUX_CHECK,P474_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141425218823155339)
,p_name=>'da_traer_datos'
,p_event_sequence=>40
,p_condition_element=>'P474_PARAM_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141425300231155340)
,p_event_id=>wwv_flow_imp.id(141425218823155339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select COD_SUCURSAL_SAL, ',
'       COD_SUCURSAL_ENT,',
'       FEC_COMPROBANTE,',
'       ESTADO,',
'       COD_USUARIO,',
'       FEC_ESTADO,',
'       FEC_ALTA,',
'       OBSERVACION,',
'       NRO_COMPROBANTE',
'into :P474_COD_SUCURSAL_SAL,',
'     :P474_COD_SUCURSAL_ENT,',
'     :P474_FEC_COMPROBANTE,',
'     :P474_ESTADO,',
'     :P474_COD_USUARIO_AUX,',
'     :P474_FEC_ESTADO,',
'     :P474_FEC_ALTA,',
'     :P474_OBSERVACION,',
'     :P474_NRO_COMPROBANTE',
'from ST_PED_REPOSICION_CAB',
'where cod_empresa = :P_COD_EMPRESA',
'and NRO_COMPROBANTE = :P474_PARAM_NRO_COMPROBANTE',
'and TIP_COMPROBANTE = ''PRP''',
'and SER_COMPROBANTE = ''A'';',
'',
'exception',
'    when others then ',
'    ',
':P474_COD_USUARIO_AUX := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P474_FEC_ALTA :=sysdate;',
':P474_FEC_ESTADO:=sysdate;',
':P474_FEC_COMPROBANTE:=sysdate;',
'',
':P474_TIP_COMPROBANTE:=''PRP'';',
':P474_SER_COMPROBANTE :=''A'';',
':P474_ESTADO:=''P'';',
':P474_COD_SUCURSAL_SAL := null;',
':P474_COD_SUCURSAL_ENT := NVL(:P474_COD_SUCURSAL,:P_COD_SUCURSAL) ; ',
':P474_NRO_COMPROBANTE:= NULL;',
':P474_OBSERVACION  := NULL;',
'end;',
'',
'',
'',
'BEGIN',
'',
'    STPEREPR.PR_OBTENER_DETALLE( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_NRO_COMPROBANTE => :P474_PARAM_NRO_COMPROBANTE,',
'                                PI_TIP_COMPROBANTE => ''PRP'',',
'                                PI_SER_COMPROBANTE => ''A'');',
'',
'    exception',
'        when others then ',
'        raise_application_error(-20000,''Cartga detalle coleccion: '' ||sqlerrm);',
'',
'END;    '))
,p_attribute_02=>'P474_PARAM_NRO_COMPROBANTE'
,p_attribute_03=>'P474_COD_USUARIO_AUX,P474_FEC_ALTA,P474_FEC_ESTADO,P474_FEC_COMPROBANTE,P474_TIP_COMPROBANTE,P474_SER_COMPROBANTE,P474_ESTADO,P474_COD_SUCURSAL_ENT,P474_OBSERVACION,P474_NRO_COMPROBANTE,P474_COD_SUCURSAL_SAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205935045290706846)
,p_event_id=>wwv_flow_imp.id(141425218823155339)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P474_COD_SUCURSAL_ENT'').css(''pointer-events'',''none'');',
'$(''#P474_ESTADO'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205934815426706844)
,p_event_id=>wwv_flow_imp.id(141425218823155339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P474_COD_SUCURSAL_ENT'').css(''pointer-events'',''none'');',
'$(''#P474_ESTADO'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141425463529155341)
,p_event_id=>wwv_flow_imp.id(141425218823155339)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140553755382848721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142009954877292803)
,p_name=>'DA_EDITAR_AUX'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P474_EDITAR_AUX'
,p_condition_element=>'P474_EDITAR_AUX'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142010031623292804)
,p_event_id=>wwv_flow_imp.id(142009954877292803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P474_EDITAR_AUX is not null then',
'    begin',
'        select  c004,',
'                c006,',
'                c007,        ',
'                c012',
'        into    :P474_COD_ART_CORTO,',
'                :P474_COD_ARTICULO,',
'                :P474_CANTIDAD,',
'                :P474_IND_ANULADO',
'          from APEX_COLLECTIONS',
'          WHERE COLLECTION_NAME = ''COL_DET_STPEREPR'' ',
'          AND SEQ_ID = :P474_EDITAR_AUX ;',
'     exception',
'        when others then',
'                :P474_COD_ART_CORTO:=null;',
'                :P474_COD_ARTICULO:=null;',
'                :P474_CANTIDAD:=null;',
'                :P474_IND_ANULADO :=null;',
'     end;',
'else',
'',
'                :P474_COD_ART_CORTO:=null;',
'                :P474_COD_ARTICULO:=null;',
'                :P474_CANTIDAD:=null;',
'                :P474_IND_ANULADO :=null;',
'end if;'))
,p_attribute_02=>'P474_EDITAR_AUX'
,p_attribute_03=>'P474_IND_ANULADO,P474_COD_ARTICULO,P474_CANTIDAD,P474_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205932489947706820)
,p_event_id=>wwv_flow_imp.id(142009954877292803)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P474_CANTIDAD,P474_COD_ARTICULO,P474_COD_ART_CORTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142010736455292811)
,p_event_id=>wwv_flow_imp.id(142009954877292803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142010856285292812)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142010991179292813)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P474_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142011034004292814)
,p_event_id=>wwv_flow_imp.id(142010991179292813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142011342438292817)
,p_event_id=>wwv_flow_imp.id(142010991179292813)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    STPEREPR.PR_ELIMINAR_REGISTRO(PI_SEQ_ID => :P474_ELIMINAR);   ',
'EXCEPTION',
'WHEN OTHERS THEN',
'APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P474_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142011484982292818)
,p_event_id=>wwv_flow_imp.id(142010991179292813)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140553755382848721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142012130569292825)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142012097545292824)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
' apex.item(''P474_COD_ARTICULO'').getValue()!='''' &&  apex.item(''P474_CANTIDAD'').getValue()!=''''  &&  apex.item(''P474_CANTIDAD'').getValue()>0',
' '))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142012231891292826)
,p_event_id=>wwv_flow_imp.id(142012130569292825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P474_EDITAR_AUX is null then ',
'            STPEREPR.PR_AGREGAR_DETALLE(',
'                    PI_COD_EMPRESA => :P474_COD_EMPRESA,',
'                    PI_TIP_COMPROBANTE => :P474_TIP_COMPROBANTE,',
'                    PI_NRO_COMPROBANTE => :P474_NRO_COMPROBANTE,',
'                    PI_COD_ART_CORTO => :P474_COD_ART_CORTO,',
'                    PI_COD_ARTICULO => :P474_COD_ARTICULO,',
'                    PI_CANTIDAD => :P474_CANTIDAD,',
'                    PI_CANTIDAD_CONFIRMADA => NULL,',
'                    PI_NRO_ENVIO_PEND => NULL,',
'                    PI_SER_ENVIO_PEND => NULL,',
'                    PI_SER_COMPROBANTE => :P474_SER_COMPROBANTE,',
'                    PI_IND_ANULADO => :P474_IND_ANULADO);',
'     else ',
'         STPEREPR.PR_UPDATE_DETALLE(',
'                    PI_SEQ => :P474_EDITAR_AUX,',
'                    PI_COD_ART_CORTO => :P474_COD_ART_CORTO,',
'                    PI_COD_ARTICULO => :P474_COD_ARTICULO,',
'                    PI_CANTIDAD => :P474_CANTIDAD,',
'                    PI_CANTIDAD_CONFIRMADA => :NULL,',
'                    PI_NRO_ENVIO_PEND => :NULL,',
'                    PI_SER_ENVIO_PEND => :NULL,',
'                    PI_IND_ANULADO => :P474_IND_ANULADO);',
'         end if;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            raise_application_error(-20000,SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P474_COD_EMPRESA,P474_TIP_COMPROBANTE,P474_NRO_COMPROBANTE,P474_COD_ARTICULO,P474_CANTIDAD,P474_SER_COMPROBANTE,P474_IND_ANULADO,P474_EDITAR_AUX,P474_SEQ_ID,P474_COD_ART_CORTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205932517085706821)
,p_event_id=>wwv_flow_imp.id(142012130569292825)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un Articulo y la Cantidad.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142012694113292830)
,p_event_id=>wwv_flow_imp.id(142012130569292825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142010856285292812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142012794015292831)
,p_event_id=>wwv_flow_imp.id(142012130569292825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140553755382848721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142012954238292833)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142012828074292832)
,p_condition_element=>'P474_COD_SUCURSAL_SAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205931247200706808)
,p_event_id=>wwv_flow_imp.id(142012954238292833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P474_EDITAR_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205935275039706848)
,p_event_id=>wwv_flow_imp.id(142012954238292833)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la sucursal de Salida.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142013157663292835)
,p_event_id=>wwv_flow_imp.id(142012954238292833)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142010856285292812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205935421058706850)
,p_event_id=>wwv_flow_imp.id(142012954238292833)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P474_COD_SUCURSAL_SAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142013909504292843)
,p_name=>'DA_EDITAR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P474_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142014000079292844)
,p_event_id=>wwv_flow_imp.id(142013909504292843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'            IF :P474_EDITAR IS not NULL THEN',
'                --INSERTAR REGISTRO',
'                SELECT  ',
'                        COD_EMPRESA,',
'                        COD_SUCURSAL_SAL,',
'                        NRO_COMPROBANTE,',
'                        TIP_COMPROBANTE,',
'                        SER_COMPROBANTE,',
'                        FEC_COMPROBANTE,',
'                        COD_SUCURSAL_ENT,',
'                        ESTADO,',
'                        FEC_ALTA,',
'                        FEC_ESTADO,',
'                        OBSERVACION,',
'                        COD_USUARIO',
'                    INTO',
'                         :P474_COD_EMPRESA,',
'                         :P474_COD_SUCURSAL_SAL,',
'                         :P474_NRO_COMPROBANTE,',
'                         :P474_TIP_COMPROBANTE,',
'                         :P474_SER_COMPROBANTE,',
'                         :P474_FEC_COMPROBANTE,',
'                         :P474_COD_SUCURSAL_ENT,',
'                         :P474_ESTADO,',
'                         :P474_FEC_ALTA,',
'                         :P474_FEC_ESTADO,',
'                         :P474_OBSERVACION,',
'                         :P474_COD_USUARIO_AUX',
'                FROM ST_PED_REPOSICION_CAB',
'                WHERE ROWID = :P474_EDITAR;',
'            END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P474_EDITAR'
,p_attribute_03=>'P474_COD_EMPRESA,P474_COD_SUCURSAL_SAL,P474_NRO_COMPROBANTE,P474_TIP_COMPROBANTE,P474_SER_COMPROBANTE,P474_FEC_COMPROBANTE,P474_COD_SUCURSAL_ENT,P474_ESTADO,P474_FEC_ALTA,P474_FEC_ESTADO,P474_OBSERVACION,P474_COD_USUARIO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142014290053292846)
,p_name=>'DA_ERR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P474_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142014371602292847)
,p_event_id=>wwv_flow_imp.id(142014290053292846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P474_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P474_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143556088220623001)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142014655017292850)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143556294644623003)
,p_event_id=>wwv_flow_imp.id(143556088220623001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' :P474_COD_SUCURSAL_SAL:= NULL;',
' :P474_NRO_COMPROBANTE:= NULL; ',
' :P474_PARAM_NRO_COMPROBANTE:= NULL; ',
' ',
' :P474_ESTADO:= NULL; ',
' :P474_OBSERVACION:= NULL; ',
' ',
':P474_COD_SUCURSAL_ENT := NVL(:P474_COD_SUCURSAL,:P_COD_SUCURSAL) ;',
'',
':P474_COD_USUARIO_AUX := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P474_FEC_ALTA :=sysdate;',
':P474_FEC_ESTADO:=sysdate;',
':P474_FEC_COMPROBANTE:=sysdate;',
'',
':P474_TIP_COMPROBANTE:=''PRP'';',
':P474_SER_COMPROBANTE :=''A'';',
'',
':P474_ESTADO:=''P'';',
'',
'',
'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_STPEREPR'');'))
,p_attribute_02=>'P474_COD_EMPRESA, P474_COD_SUCURSAL_SAL, P474_NRO_COMPROBANTE, P474_TIP_COMPROBANTE, P474_SER_COMPROBANTE, P474_FEC_COMPROBANTE, P474_COD_SUCURSAL_ENT, P474_ESTADO, P474_FEC_ALTA, P474_FEC_ESTADO, P474_OBSERVACION, P474_COD_USUARIO_AUX,P474_PARAM_NRO'
||'_COMPROBANTE'
,p_attribute_03=>'P474_COD_EMPRESA, P474_COD_SUCURSAL_SAL, P474_NRO_COMPROBANTE, P474_TIP_COMPROBANTE, P474_SER_COMPROBANTE, P474_FEC_COMPROBANTE, P474_COD_SUCURSAL_ENT, P474_ESTADO, P474_FEC_ALTA, P474_FEC_ESTADO, P474_OBSERVACION, P474_COD_USUARIO_AUX,P474_PARAM_NRO'
||'_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143556362304623004)
,p_event_id=>wwv_flow_imp.id(143556088220623001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140553755382848721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(205934390539706839)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141425139471155338)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205934497944706840)
,p_event_id=>wwv_flow_imp.id(205934390539706839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(205932669133706822)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(205931315379706809)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREA_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'    vnumero number(12):=inv.stperepr.fn_nro_comprobante;',
'  begin',
'',
'    IF :P474_PARAM_NRO_COMPROBANTE IS NULL AND :P474_NRO_COMPROBANTE IS NULL THEN',
'          ',
'          inv.stperepr.pr_confirmar(pi_cod_empresa => :P_COD_EMPRESA,',
'                                    pi_nro_comprobante => vnumero,',
'                                    pi_fec_comprobante => sysdate,',
'                                    pi_cod_sucursal_ent => :P474_cod_sucursal_ent,',
'                                    pi_cod_sucursal_sal => :P474_cod_sucursal_sal,',
'                                    pi_estado => ''P'',',
'                                    pi_observacion => :P474_OBSERVACION);',
'           :P474_NRO_COMPROBANTE:= vnumero;',
'',
'    ELSE',
'',
'      inv.stperepr.pr_confirmar(pi_cod_empresa => :P_COD_EMPRESA,',
'                                pi_nro_comprobante => NVL(:P474_NRO_COMPROBANTE,:P474_PARAM_NRO_COMPROBANTE),',
'                                pi_fec_comprobante => :P474_fec_comprobante,',
'                                pi_cod_sucursal_ent => :P474_cod_sucursal_ent,',
'                                pi_cod_sucursal_sal => :P474_cod_sucursal_sal,',
'                                pi_estado => :P474_estado,',
'                                pi_observacion => :P474_observacion);',
'',
'    END IF;',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido generar el pedido.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(142013493377292838)
,p_process_success_message=>'Pedido Generado  &P474_NRO_COMPROBANTE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141424186350155328)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P474_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P474_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P474_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
':P474_COD_SUCURSAL_ENT := NVL(:P474_COD_SUCURSAL,:P_COD_SUCURSAL) ;',
'',
':P474_COD_USUARIO_AUX := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P474_FEC_ALTA :=sysdate;',
':P474_FEC_ESTADO:=sysdate;',
':P474_FEC_COMPROBANTE:=sysdate;',
'',
':P474_TIP_COMPROBANTE:=''PRP'';',
':P474_SER_COMPROBANTE :=''A'';',
':P474_NRo_COMPROBANTE :=null;',
':P474_ESTADO:=''P'';',
'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_STPEREPR'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
