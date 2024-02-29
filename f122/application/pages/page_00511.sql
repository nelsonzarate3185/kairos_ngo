prompt --application/pages/page_00511
begin
--   Manifest
--     PAGE: 00511
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
 p_id=>511
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Retiro de Productos - CASEGRP'
,p_alias=>'SEGUIMIENTO-DE-RETIRO-DE-PRODUCTOS-CASEGRP'
,p_step_title=>'Seguimiento de Retiro de Productos - CASEGRP'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P511_N_PLA_RET_CLI_ACCION'',''AGREGAR'');',
'      $s(''P511_ROWID_CLI_AUX'', cb.value,false);',
'  } else {',
'      $s(''P511_N_PLA_RET_CLI_ACCION'',''QUITAR'');',
'      $s(''P511_ROWID_CLI_AUX'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_log(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P511_N_PLA_REC_LOG_ACCION'',''AGREGAR'');',
'      $s(''P511_ROWID_REC_LOG_AUX'', cb.value,false);',
'  } else {',
'      $s(''P511_N_PLA_REC_LOG_ACCION'',''QUITAR'');',
'      $s(''P511_ROWID_REC_LOG_AUX'', cb.value,false);',
'  }',
'}',
'',
'',
'function seleccionar_anul(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P511_N_PLA_ANUL_ACCION'',''AGREGAR'');',
'      $s(''P511_ROWID_ANUL_AUX'', cb.value,false);',
'  } else {',
'      $s(''P511_N_PLA_ANUL_ACCION'',''QUITAR'');',
'      $s(''P511_ROWID_ANUL_AUX'', cb.value,false);',
'  }',
'}',
'',
'function doDescarga(p_cod_empresa, p_tecnico, p_visual, p_fecha_ini, p_fecha_fin, p_cliente, p_nro_ot, p_usuario, p_ser_ot){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAREGEVI.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_TECNICO='' + p_tecnico +',
'             ''&P_VISUAL='' + p_visual +',
'             ''&P_FECHA_INI='' + p_fecha_ini +',
'             ''&P_FECHA_FIN='' + p_fecha_fin +',
'             ''&P_CLIENTE='' + p_cliente +',
'             ''&P_NRO_OT='' + p_nro_ot +',
'             ''&P_USUARIO='' + p_usuario +',
'             ''&P_SER_OT='' + p_ser_ot +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230426102914'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149491284761830921)
,p_plug_name=>'Seguimiento de Retiro de Productos - CASEGRP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149491549062830924)
,p_plug_name=>'RP_RETIRO_CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AA.COD_EMPRESA,',
'       AA.NRO_PLANILLA,',
'       AA.FEC_PLANILLA,',
'       (SELECT TO_CHAR(AA.FEC_PLANILLA, ''DAY'', ''NLS_DATE_LANGUAGE=SPANISH'')',
'          FROM DUAL) DIA, ',
'       AA.ORIGEN,',
'       AA.COD_CLIENTE,',
'       AA.NOMBRE_CLIENTE,',
'       AA.DIRECCION,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => ROWID,',
'                          p_attributes  => (case AA.IND_RETIRADO_CLI',
'                                               when ''S'' then ''checked ''',
'                                               else null',
'                                             end ) ||''onclick="seleccionar(this)"'' )as "IND_RETIRADO_CLI",',
'       --IND_RETIRADO_CLI,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => ROWID,',
'                          p_attributes  => (case AA.IND_RECIBIDO_LOG',
'                                               when ''S'' then ''checked ''',
'                                               else null',
'                                             end ) ||''onclick="seleccionar_log(this)"'' )as "IND_RECIBIDO_LOG",',
'       --IND_RECIBIDO_LOG,',
'       AA.OBSERVACION,',
'       AA.COD_CIUDAD,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => ROWID,',
'                          p_attributes  => (case AA.IND_ANULADO',
'                                               when ''S'' then ''checked ''',
'                                               else null',
'                                             end ) ||''onclick="seleccionar_anul(this)"'' )as "IND_ANULADO",',
'       --IND_ANULADO,',
'       AA.ROWID ROW_ID,',
'       NULL DETALLE_BOTON,',
'       NULL DETALLE',
'  FROM RP_RETIRO_CABECERA AA',
' WHERE AA.COD_EMPRESA = :P_COD_EMPRESA',
'   and AA.TRANSPORTADORA = ''5'' ',
'   and AA.origen is not null',
'   and AA.fecha_agenda is not null',
'   AND ((:P511_VISUALIZACION = ''D'' and trunc(aa.FECHA_AGENDA) = trunc(sysdate)) ',
'       or (:P511_VISUALIZACION = ''M'' and TO_CHAR(aa.FECHA_AGENDA,''MM'') = TO_CHAR(sysdate,''MM'')) ',
'       or (:P511_VISUALIZACION = ''S'' and TO_CHAR(aa.FECHA_AGENDA,''WW'') = TO_CHAR(sysdate,''WW'')) ',
'       or (:P511_VISUALIZACION = ''T''))',
'   AND (TO_DATE(FECHA_AGENDA,''DD/MM/YYYY'') >= TO_DATE(:P511_FECHA_INI,''DD/MM/YYYY'') OR TO_DATE(:P511_FECHA_INI,''DD/MM/YYYY'')  IS NULL )',
'   AND (TO_DATE(FECHA_AGENDA,''DD/MM/YYYY'') <= TO_DATE(:P511_FECHA_FIN,''DD/MM/YYYY'')  OR TO_DATE(:P511_FECHA_FIN,''DD/MM/YYYY'')  IS NULL )',
'   AND (COD_CLIENTE = :P511_COD_CLIENTE OR :P511_COD_CLIENTE IS NULL) ',
'   AND (:P511_ZONA = ''T'' ',
'       OR (:P511_ZONA = ''C'' AND EXISTS(select DISTINCT ''1''',
'                                         from ciudades CC',
'                                        where CC.cod_pais = ''PAR''',
'                                          AND CC.COD_CIUDAD = AA.COD_CIUDAD',
'                                          AND CC.COD_PROVINCIA = AA.COD_PROVINCIA',
'                                          AND AA.COD_PROVINCIA = ''11''',
'                                           AND AA.COD_CIUDAD NOT IN(''21'',''23'',''7'',''14'',''18'',''20'')))',
'       OR (:P511_ZONA = ''I'' AND EXISTS(select DISTINCT ''1''',
'                                         from ciudades CC',
'                                        where CC.cod_pais = ''PAR''',
'                                          AND CC.COD_CIUDAD = AA.COD_CIUDAD',
'                                          AND CC.COD_PROVINCIA = AA.COD_PROVINCIA',
'                                          AND (AA.COD_PROVINCIA <> ''11'' OR AA.COD_CIUDAD IN(''21'',''23'',''7'',''14'',''18'',''20'')))))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P511_COD_CLIENTE,P511_VISUALIZACION,P511_ZONA,P511_FECHA_INI,P511_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RP_RETIRO_CABECERA'
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
 p_id=>wwv_flow_imp.id(149491681008830925)
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
,p_internal_uid=>149491681008830925
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149491714732830926)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149491895584830927)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149491918856830928)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492039981830929)
,p_db_column_name=>'ORIGEN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492167919830930)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492260120830931)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492301271830932)
,p_db_column_name=>'DIRECCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492418003830933)
,p_db_column_name=>'IND_RETIRADO_CLI'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ret.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492513206830934)
,p_db_column_name=>'IND_RECIBIDO_LOG'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Rec.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492618427830935)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492783172830936)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149492991522830938)
,p_db_column_name=>'DETALLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Detalle Registro'
,p_column_link=>'javascript:$s(''P511_DET_DATA'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149493171327830940)
,p_db_column_name=>'DETALLE_BOTON'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P511_NRO_PLANILLA_AUX_2'',''#NRO_PLANILLA#'');'
,p_column_linktext=>' <span class="t-Button-label">+</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149493210114830941)
,p_db_column_name=>'IND_ANULADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153269279105848707)
,p_db_column_name=>'ROW_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153272544662848740)
,p_db_column_name=>'DIA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>unistr('D\00EDa')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153221919083335095)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1532220'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DETALLE_BOTON:NRO_PLANILLA:IND_ANULADO:FEC_PLANILLA:DIA:ORIGEN:COD_CLIENTE:NOMBRE_CLIENTE:DIRECCION:IND_RETIRADO_CLI:IND_RECIBIDO_LOG:DETALLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153269372291848708)
,p_plug_name=>'Contenedor Filtro'
,p_parent_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153270025563848715)
,p_plug_name=>'Contenedor Filtro 1.1'
,p_parent_plug_id=>wwv_flow_imp.id(153269372291848708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153270156474848716)
,p_plug_name=>'Contenedor Filtro 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(153269372291848708)
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
 p_id=>wwv_flow_imp.id(153270396199848718)
,p_plug_name=>unistr('Visualizaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(153269372291848708)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153270591421848720)
,p_plug_name=>'Contenedor Filtro 1.3'
,p_parent_plug_id=>wwv_flow_imp.id(153269372291848708)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153270915456848724)
,p_plug_name=>'Contenedor 2'
,p_parent_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153271057710848725)
,p_plug_name=>'Contenedor Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RDET.COD_EMPRESA,',
'       RDET.NRO_PLANILLA,',
'       RDET.COD_ARTICULO,          ',
'       (SELECT DESCRIPCION',
'          FROM ST_ARTICULOS',
'         WHERE COD_EMPRESA = RDET.COD_EMPRESA',
'           AND COD_ARTICULO = RDET.COD_ARTICULO) DESC_ART,',
'       RDET.SOLUCION',
'  FROM RP_RETIRO_DETALLE RDET',
' WHERE RDET.COD_EMPRESA = :P511_COD_EMPRESA_AUX',
'   AND RDET.NRO_PLANILLA = :P511_NRO_PLANILLA_AUX'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P511_COD_EMPRESA_AUX,P511_NRO_PLANILLA_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Contenedor Detalle'
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
 p_id=>wwv_flow_imp.id(153271194646848726)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>153271194646848726
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153271261395848727)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153271358864848728)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153271411153848729)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153271521472848730)
,p_db_column_name=>'SOLUCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Condici\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153272319850848738)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153349488706919622)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1533495'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESC_ART:SOLUCION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153269456416848709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_button_name=>'BTFILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153417140681135702)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_button_name=>'BTIMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149491385178830922)
,p_name=>'P511_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149493327654830942)
,p_name=>'P511_ROWID_CLI_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149493498949830943)
,p_name=>'P511_N_PLA_RET_CLI_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149493588658830944)
,p_name=>'P511_ROWID_REC_LOG_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149493632554830945)
,p_name=>'P511_N_PLA_REC_LOG_ACCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149493759258830946)
,p_name=>'P511_ROWID_ANUL_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149493850647830947)
,p_name=>'P511_N_PLA_ANUL_ACCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153269517849848710)
,p_name=>'P511_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270025563848715)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASEGRP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nombre,',
'       c.cod_cliente ',
'  from cc_clientes c, personas p',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona		',
'   AND p.nombre NOT LIKE ''%NO USAR%''',
'   AND NVL(C.ESTADO,''A'')=''A''	'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P511_NOM_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153269694445848711)
,p_name=>'P511_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270025563848715)
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
 p_id=>wwv_flow_imp.id(153269755078848712)
,p_name=>'P511_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270156474848716)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(153269869927848713)
,p_name=>'P511_FECHA_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270156474848716)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(153270208944848717)
,p_name=>'P511_ZONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153270025563848715)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TODOS;T,CAPITAL;C,INTERIOR;I'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153270454570848719)
,p_name=>'P511_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270591421848720)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:TODOS;T,PENDIENTE;A,FINALIZADO;R,CANCELADO;C'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153270672290848721)
,p_name=>'P511_VISUALIZACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270396199848718)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:DIARIA;D,SEMANAL;S,MENSUAL;M,TODOS;T'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153270784828848722)
,p_name=>'P511_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270915456848724)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153270843956848723)
,p_name=>'P511_CIUDAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153270915456848724)
,p_prompt=>'Ciudad'
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
 p_id=>wwv_flow_imp.id(153271600689848731)
,p_name=>'P511_DET_DATA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153272183325848736)
,p_name=>'P511_NRO_PLANILLA_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153271057710848725)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153272278868848737)
,p_name=>'P511_COD_EMPRESA_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153271057710848725)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153272610610848741)
,p_name=>'P511_NRO_PLANILLA_AUX_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153273012822848745)
,p_name=>'P511_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(149491549062830924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153417593052135706)
,p_name=>'P511_TECNICO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153417615322135707)
,p_name=>'P511_NRO_OT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153417702568135708)
,p_name=>'P511_SER_OT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(149491284761830921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149493916796830948)
,p_name=>'DA_ROWID_CLI_AUX'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_ROWID_CLI_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149494070099830949)
,p_event_id=>wwv_flow_imp.id(149493916796830948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P511_ROWID_CLI_AUX,P511_N_PLA_RET_CLI_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153268971235848704)
,p_event_id=>wwv_flow_imp.id(149493916796830948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASEGRP.PR_CHECK(prow_id  => :P511_ROWID_CLI_AUX, ',
'                     paccion  => :P511_N_PLA_RET_CLI_ACCION,',
'                     pcontrol => 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROWID_CLI_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P511_ROWID_CLI_AUX,P511_N_PLA_RET_CLI_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P511_ROWID_CLI_AUX'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(149494104701830950)
,p_name=>'DA_ROWID_REC_LOG_AUX'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_ROWID_REC_LOG_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153268696365848701)
,p_event_id=>wwv_flow_imp.id(149494104701830950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P511_ROWID_REC_LOG_AUX,P511_N_PLA_REC_LOG_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153269018834848705)
,p_event_id=>wwv_flow_imp.id(149494104701830950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASEGRP.PR_CHECK(prow_id  => :P511_ROWID_REC_LOG_AUX, ',
'                     paccion  => :P511_N_PLA_REC_LOG_ACCION,',
'                     pcontrol => 2);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROWID_REC_LOG_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P511_ROWID_REC_LOG_AUX,P511_N_PLA_REC_LOG_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P511_ROWID_REC_LOG_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153268783004848702)
,p_name=>'DA_ROWID_ANUL_AUX'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_ROWID_ANUL_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153268845303848703)
,p_event_id=>wwv_flow_imp.id(153268783004848702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P511_ROWID_ANUL_AUX,P511_N_PLA_ANUL_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153269197977848706)
,p_event_id=>wwv_flow_imp.id(153268783004848702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASEGRP.PR_CHECK(prow_id  => :P511_ROWID_ANUL_AUX, ',
'                     paccion  => :P511_N_PLA_ANUL_ACCION,',
'                     pcontrol => 3);',
'                     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROWID_ANUL_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P511_ROWID_ANUL_AUX,P511_N_PLA_ANUL_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P511_ROWID_ANUL_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153271719724848732)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153271814098848733)
,p_event_id=>wwv_flow_imp.id(153271719724848732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P511_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153271978412848734)
,p_event_id=>wwv_flow_imp.id(153271719724848732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASEGRP.GET_DATA_DET(prow_id       => :P511_DET_DATA,',
'                         pnro_planilla => :P511_NRO_PLANILLA_AUX,',
'                         pcod_empresa  => :P511_COD_EMPRESA_AUX,',
'                         pobservacion  => :P511_OBSERVACION,',
'                         pciudad       => :P511_CIUDAD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P511_DET_DATA'
,p_attribute_03=>'P511_NRO_PLANILLA_AUX,P511_COD_EMPRESA_AUX,P511_OBSERVACION,P511_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P511_DET_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153272423053848739)
,p_event_id=>wwv_flow_imp.id(153271719724848732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153271057710848725)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153272758408848742)
,p_name=>'DA_NRO_PLANILLA_AUX_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_NRO_PLANILLA_AUX_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153272867248848743)
,p_event_id=>wwv_flow_imp.id(153272758408848742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P511_NRO_PLANILLA_AUX_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153272967072848744)
,p_event_id=>wwv_flow_imp.id(153272758408848742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT APEX_PAGE.GET_URL(p_page => 409,',
'			                 p_items  => ''P409_P_NRO_PLANILLA'', ',
'			                 p_values => ''''||:P511_NRO_PLANILLA_AUX_2||'''') f_url_1',
'          INTO :P511_URL',
'          FROM DUAL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_PLANILLA_AUX_2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P511_NRO_PLANILLA_AUX_2'
,p_attribute_03=>'P511_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153273175468848746)
,p_event_id=>wwv_flow_imp.id(153272758408848742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P511_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153273284863848747)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153273315803848748)
,p_event_id=>wwv_flow_imp.id(153273284863848747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P511_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153273482006848749)
,p_event_id=>wwv_flow_imp.id(153273284863848747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'          into :P511_NOM_CLIENTE',
'          from cc_clientes c, ',
'               personas p',
'         where c.cod_empresa = :P_COD_EMPRESA',
'           and c.cod_persona = p.cod_persona		',
'           AND p.nombre NOT LIKE ''%NO USAR%''',
'           AND NVL(C.ESTADO,''A'')=''A''',
'           and c.cod_cliente = :P511_COD_CLIENTE;	',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P511_NOM_CLIENTE := ''TODOS'';',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_CLIENTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P511_COD_CLIENTE'
,p_attribute_03=>'P511_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153273571804848750)
,p_name=>'DA_BTFILTRAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153269456416848709)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153417066475135701)
,p_event_id=>wwv_flow_imp.id(153273571804848750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(149491549062830924)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153417251775135703)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153417140681135702)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153417480820135705)
,p_event_id=>wwv_flow_imp.id(153417251775135703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P_COD_USUARIO,P_COD_EMPRESA,P511_COD_CLIENTE,P511_FECHA_INI,P511_FECHA_FIN,P511_VISUALIZACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153417345617135704)
,p_event_id=>wwv_flow_imp.id(153417251775135703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(), ',
'           apex.item(''P511_TECNICO'').getValue(), ',
'           apex.item(''P511_VISUALIZACION'').getValue(), ',
'           apex.item(''P511_FECHA_INI'').getValue(),',
'           apex.item(''P511_FECHA_FIN'').getValue(), ',
'           apex.item(''P511_COD_CLIENTE'').getValue(), ',
'           apex.item(''P511_NRO_OT'').getValue(), ',
'           apex.item(''P_COD_USUARIO'').getValue(), ',
'           apex.item(''P511_SER_OT'').getValue());'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153272044439848735)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(149491423780830923)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P511_COD_MODULO := ''CA'';',
':P511_ZONA := ''T'';',
':P511_VISUALIZACION := ''D'';',
':P511_NOM_CLIENTE := ''TODOS'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
