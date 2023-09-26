prompt --application/pages/page_00601
begin
--   Manifest
--     PAGE: 00601
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
 p_id=>601
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Autorizaciones de Ordenes de Pago - CPAUTPAT'
,p_alias=>'AUTORIZACIONES-DE-ORDENES-DE-PAGO-CPAUTPAT'
,p_step_title=>'Autorizaciones de Ordenes de Pago - CPAUTPAT'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    function soloNumeros(e){',
'    var key = e.charCode;',
'    return key >= 48 && key <= 57}',
'',
'    function seleccionar(cb) { ',
'   ',
'    if (cb.checked == true){',
'        $s(''P601_SEQ_ID'', cb.value, false);',
'        $s(''P601_AUX_AUTORIZACION_OP_I'',''S'');',
'',
'    } else {',
'        $s(''P1066_SEQ_ID'', cb.value, false);',
'        $s(''P601_AUX_AUTORIZACION_OP_I'',''N'');',
'    }',
'    }',
'',
'    function seleccionar2(cb) { ',
'    if (cb.checked == true){',
'        $s(''P601_SEQ_ID'', cb.value,false);',
'        $s(''P601_AUX_AUTORIZACION_F1_I'',''S'');',
'',
'    } else {',
'        $s(''P1_066_SEQ_ID'', cb.value, false);',
'        $s(''P601_AUX_AUTORIZACION_F1_I'',''N'');',
'    }',
'    }',
'',
'    function seleccionar3(cb) { ',
'',
'    if (cb.checked == true){',
'    $s(''P601_SEQ_ID'', cb.value,false);',
'    $s(''P601_AUX_AUTORIZACION_F2_I'',''S'');',
'',
'    } else {',
'    $s(''P1066_SEQ_ID'', cb.value,false);',
'    $s(''P601_AUX_AUTORIZACION_F2_I'',''N'');',
'    }',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230926131445'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108526476119587032)
,p_plug_name=>'Main'
,p_region_css_classes=>'u-color-45-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1340
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108526589588587033)
,p_plug_name=>'R1 - Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(108526476119587032)
,p_region_css_classes=>' u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204070591863549301)
,p_plug_name=>'R2 - Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(108526476119587032)
,p_region_css_classes=>'u-color-43-border   '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_EMPRESA,',
'        C002 TIP_MOV_CAJ,',
'        C003 SER_MOV_CAJ,',
'        C004 SER_ORDEN_PAGO,',
'        C006 COD_PROVEEDOR,',
'        C007 COD_MONEDA,',
'        C008 ANULADO,',
'        C009 COD_AUTORIZA_PAGO,',
'        C010 COD_USUARIO,',
'        C011 AUTORIZADO,',
'        C012 AUTORIZADO_POR,',
'        TO_DATE(C013, ''DD/MM/YYYY'') FEC_MOV_CAJ, -- HABRA QUE PASARLA A DATE LUEGO',
'        C014 PR_FMA,',
'        C015 SA_FMA,',
'        C016 USER_RECHAZO,',
'        C017 COMENTARIO_RECHAZO,',
'        C018 IND_VERIFICADO,',
'        C019 USR_SA_FMA,	',
'        C020 USR_PR_FMA,	',
'        C021 USUARIO,',
'        C022 NRO_LOTE_TRANSF,	',
'        C023 IND_BANDEJA_MSG,',
'        C024 PROVEEDOR, ',
'        C025 MONEDA, --DESC MONEDA',
'        N001 NRO_MOV_CAJ,',
'        N002 NRO_LOTE_PAGO,',
'        N003 TOT_NRO_MOV_CAJ,',
'        N004 NUM_ORDEN_PAGO,',
'        N005 TOT_RETENCION,',
'        D001 FEC_RECHAZO,',
'        D002 FCH_PR_FMA,',
'        D003 FCH_SA_FMA,',
'        D004 FEC_AUTORIZACION,',
'        D005 FEC_VERIFICACION,',
'        NULL TODOS,',
'        NULL INFO,',
'        SEQ_ID,',
'        APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'        				   p_value => seq_id,',
'        				   p_attributes => (case when nvl(c011, ''N'') = ''S'' then ''checked'' ',
'	 									  else null end ) ||''onclick="seleccionar(this)"'' )as OP,',
'        APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'            				p_value => seq_id,',
'            			    p_attributes => (case  when nvl(c014, ''N'') =''S'' then ''checked'' ',
'	 									  else null end ) ||''onclick="seleccionar2(this)"'' )as F1,',
'        APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'        				    p_value => seq_id,',
'        				    p_attributes => (case when  nvl(c015, ''N'') = ''S'' then ''checked'' ',
'	 									  else null end ) ||''onclick="seleccionar3(this)"'' )as F2',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_CAB_CPAUTPAT'' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P601_R1_FECHA_INI,P601_R1_FECHA_FIN,P601_R1_COD_PROVEEDOR,P601_R1_MONEDA,P601_R1_TIPO_COMPROBANTE,P601_R1_NRO_OP,P601_R1_NRO_LOTE,P601_COD_AUTORIZANTE,P601_AUTORIZADO,P601_USUARIO_FIRMA,P601_R1_USUARIO,P601_AUX_CAB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'R2 - Reporte'
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
 p_id=>wwv_flow_imp.id(204072067057549316)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros que coincidan con los datos ingresados.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>204072067057549316
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204073468215549330)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204073521677549331)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204073620952549332)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204073731733549333)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Mov Caja'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204073845514549334)
,p_db_column_name=>'FEC_MOV_CAJ'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204073905882549335)
,p_db_column_name=>'SER_ORDEN_PAGO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Serie '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074014535549336)
,p_db_column_name=>'NUM_ORDEN_PAGO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>' Orden Pago'
,p_column_link=>'javascript:$s(''P601_AUX_ORDEN_PAGO'',''#NUM_ORDEN_PAGO#''),$s(''P601_AUX_TIPO'',''#TIP_MOV_CAJ#''),$s(''P601_AUX_SER'',''#SER_MOV_CAJ#''),$s(''P601_AUX_NRO'',''#NRO_MOV_CAJ#'');'
,p_column_linktext=>'#NUM_ORDEN_PAGO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074124925549337)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074216601549338)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074328432549339)
,p_db_column_name=>'TOT_NRO_MOV_CAJ'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074430178549340)
,p_db_column_name=>'NRO_LOTE_PAGO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Nro Lote Pago'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074559818549341)
,p_db_column_name=>'ANULADO'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074617257549342)
,p_db_column_name=>'COD_AUTORIZA_PAGO'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Cod Autoriza Pago'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074749082549343)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074823579549344)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204074975026549345)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204075065964549346)
,p_db_column_name=>'PR_FMA'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204075176574549347)
,p_db_column_name=>'FCH_PR_FMA'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Fch Pr Fma'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204075242654549348)
,p_db_column_name=>'SA_FMA'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204075382164549349)
,p_db_column_name=>'FCH_SA_FMA'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Fch Sa Fma'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126090934227701)
,p_db_column_name=>'FEC_AUTORIZACION'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Fec Autorizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126124039227702)
,p_db_column_name=>'FEC_VERIFICACION'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Fec Verificacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126264348227703)
,p_db_column_name=>'USER_RECHAZO'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'User Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126306967227704)
,p_db_column_name=>'FEC_RECHAZO'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Fec Rechazo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126440012227705)
,p_db_column_name=>'COMENTARIO_RECHAZO'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Comentario Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126502975227706)
,p_db_column_name=>'IND_VERIFICADO'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Ind Verificado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126643798227707)
,p_db_column_name=>'USR_SA_FMA'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Usr Sa Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126762939227708)
,p_db_column_name=>'USR_PR_FMA'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Usr Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126867844227709)
,p_db_column_name=>'USUARIO'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126963083227710)
,p_db_column_name=>'NRO_LOTE_TRANSF'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Nro Lote Transf'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204127063400227711)
,p_db_column_name=>'IND_BANDEJA_MSG'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Ind Bandeja Msg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204127163377227712)
,p_db_column_name=>'TOT_RETENCION'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Tot Retencion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204127270649227713)
,p_db_column_name=>'TODOS'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Detalle'
,p_column_link=>'f?p=&APP_ID.:601:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<span class="fa fa-file-text" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204129795076227738)
,p_db_column_name=>'MONEDA'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204129855297227739)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204130979371227750)
,p_db_column_name=>'INFO'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'Info'
,p_column_link=>'javascript:$s(''P601_AUX_TIPO'',''#TIP_MOV_CAJ#''),$s(''P601_AUX_SER'',''#SER_MOV_CAJ#''),$s(''P601_AUX_NRO'',''#NRO_MOV_CAJ#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-info-circle"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(211151630326135202)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(211151932430135205)
,p_db_column_name=>'OP'
,p_display_order=>420
,p_column_identifier=>'AQ'
,p_column_label=>'Op'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(211152060478135206)
,p_db_column_name=>'F1'
,p_display_order=>430
,p_column_identifier=>'AR'
,p_column_label=>'F1'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(211152173519135207)
,p_db_column_name=>'F2'
,p_display_order=>440
,p_column_identifier=>'AS'
,p_column_label=>'F2'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(204104894422437876)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2041049'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'INFO:TIP_MOV_CAJ:SER_ORDEN_PAGO:NUM_ORDEN_PAGO:FEC_MOV_CAJ:NRO_MOV_CAJ:PROVEEDOR:MONEDA:TOT_NRO_MOV_CAJ:OP:F1:F2:TODOS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204072378929549319)
,p_plug_name=>'R3 - Sub '
,p_parent_plug_id=>wwv_flow_imp.id(204070591863549301)
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204072948498549325)
,p_plug_name=>'Estado'
,p_parent_plug_id=>wwv_flow_imp.id(204072378929549319)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204073037624549326)
,p_plug_name=>'Motivo Rechazo'
,p_parent_plug_id=>wwv_flow_imp.id(204072378929549319)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204070642110549302)
,p_plug_name=>'R4 - Pie'
,p_parent_plug_id=>wwv_flow_imp.id(108526476119587032)
,p_region_css_classes=>'u-color-43-border '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204071488224549310)
,p_plug_name=>'Usuario'
,p_parent_plug_id=>wwv_flow_imp.id(204070642110549302)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204071583739549311)
,p_plug_name=>'Fecha'
,p_parent_plug_id=>wwv_flow_imp.id(204070642110549302)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204884165656551625)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(108526476119587032)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204884222114551626)
,p_plug_name=>'Reporte Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(204884165656551625)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select C001 cod_empresa,',
'            C002 referencia, -- factura',
'            C003 VFECHA,',
'            C004 ticompante, ',
'            C005 ser_comprobante,',
'            N001 num_comprobante, ',
'            N002 tot_pagado, ',
'            C008 fec_vencimiento, ',
'            C009 cod_proveedor',
' from apex_collections',
' where collection_name = ''COL_DET_CPAUTPAT''',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P601_AUX_TIPO,P601_AUX_SER,P601_AUX_NRO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Detalle'
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
 p_id=>wwv_flow_imp.id(204884393420551627)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>204884393420551627
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204884428826551628)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204884516799551629)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204884808595551632)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204884975116551633)
,p_db_column_name=>'NUM_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Num Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204885029430551634)
,p_db_column_name=>'TOT_PAGADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tot Pagado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204885253204551636)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206382144612699235)
,p_db_column_name=>'VFECHA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Vfecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206382269600699236)
,p_db_column_name=>'TICOMPANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ticompante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206382301855699237)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205661966255888051)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2056620'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'SER_COMPROBANTE:NUM_COMPROBANTE:REFERENCIA:TOT_PAGADO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206383207835699246)
,p_plug_name=>'Mensaje'
,p_parent_plug_id=>wwv_flow_imp.id(108526476119587032)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:100%;text-align:center; padding:40px;">',
'    <span style =" margin-top:60px; font-family: Calibri; font-size: 20px;"> Por favor, aguarde un momento...</span>',
' <img src=''https://i.gifer.com/origin/34/34338d26023e5515f6cc8969aa027bca_w200.gif'' width="40px" height="40px"></img>',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204882487644551608)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(204070591863549301)
,p_button_name=>'BT_EJECUTAR_SELECCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush:t-Button--padLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play-circle-o'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108527919055587047)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_button_name=>'BT_NRO_OP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--hoverIconPush:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Detalle'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-search'
,p_grid_column_attributes=>'style="margin-top:12px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108528158207587049)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_button_name=>'BT_VER_LOTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--hoverIconPush:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Lote'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-search'
,p_grid_column_attributes=>'style="margin-top:12px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(204885339952551637)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(204884165656551625)
,p_button_name=>'BT_ACEPTAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208180579467458109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108527599228587043)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108526638697587034)
,p_name=>'P601_R1_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:GUARANIES;1,DOLARES;2,TODOS;T'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108526772647587035)
,p_name=>'P601_R1_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AUTORIZADO;S,PENDIENTE;N,RECHAZADO;R,VERIFICADO;V,FIRMA1;F1,FIRMA2;F2,ANULADOS;AN'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(108526851683587036)
,p_name=>'P601_R1_COD_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>' Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_CPAUTPAT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nomb_fantasia, ',
'       p.nombre,',
'       pr.cod_proveedor',
'from cm_proveedores pr, personas p',
'where pr.cod_empresa = :P_cod_empresa',
'  and p.cod_persona = pr.cod_persona',
'order by p.nomb_fantasia'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' -- Seleccionar --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'NOMBRE:P601_R1_DESC_PROVEEDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108526929131587037)
,p_name=>'P601_R1_DESC_PROVEEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(108527016120587038)
,p_name=>'P601_R1_FECHA_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(108527118043587039)
,p_name=>'P601_R1_FECHA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(108527277570587040)
,p_name=>'P601_R1_COD_AUTORIZANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Autoriza'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P601_VER_OTRAS_AUTORIZACION = ''S'' THEN ',
'            RETURN ''select pr.cod_autorizado ||'''' - ''''|| nombre d, ',
'                    pr.cod_autorizado r',
'                    from cp_autorizantes pr, ',
'                         personas p',
'                    where pr.cod_empresa   = :P_COD_EMPRESA',
'                    and pr.cod_persona   = p.cod_persona'';',
'            ',
'    ELSE',
' ',
'        RETURN ''select cod_autorizado ||'''' - ''''||c.descripcion d,',
'                cod_autorizado r',
'                from usuarios u,   cp_autorizantes c',
'                where u.cod_empresa = :P_cod_empresa',
'                 and u.cod_usuario = :APP_USER',
'                 and u.cod_empresa = c.cod_empresa ',
'                 and u.cod_persona = c.cod_persona '';',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RETURN ''SELECT NULL D,',
'                   NULL R',
'              FROM DUAL''; ',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'0'
,p_lov_cascade_parent_items=>'P601_VER_OTRAS_AUTORIZACION'
,p_ajax_items_to_submit=>'P601_VER_OTRAS_AUTORIZACION,P601_R1_COD_AUTORIZANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P601_R1_DESC_AUTORIZANTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108527333750587041)
,p_name=>'P601_R1_DESC_AUTORIZANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108527632799587044)
,p_name=>'P601_R1_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO_CPAUTPAT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario codigo_rapido,',
'                   cod_usuario nombre,',
'                   1 orden',
'            FROM CP_CABECERA_CAJAS v',
'            where cod_empresa= :P_COD_EMPRESA',
'            and fec_mov_caj between add_months(sysdate,-3) and sysdate+6 ',
'            and cod_usuario is not null',
'            group by cod_usuario',
'            ',
'        UNION ALL',
'        ',
'            SELECT ''T'' codigo_rapido,''TODOS'' nombre ,2 ',
'            FROM DUAL',
'            ORDER BY 3 desc ,1 asc;'))
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108527758194587045)
,p_name=>'P601_R1_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:NGO;1,LAPACHOS;6,TODOS ;T'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108527841091587046)
,p_name=>'P601_R1_NRO_OP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Nro Op'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(108528041486587048)
,p_name=>'P601_R1_NRO_LOTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Nro Lote'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(108528290344587050)
,p_name=>'P601_R1_TIPO_COMPROBANTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(108526589588587033)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:MOVIMIENTOS DE CAJAS;CAJ,TRANSFERENCIAS;TRB,TODOS;T'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204070737468549303)
,p_name=>'P601_R3_AUTORIZADO_POR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204071488224549310)
,p_prompt=>unistr('Autorizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(204070892935549304)
,p_name=>'P601_R3_USER_VERIFICACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204071488224549310)
,p_prompt=>unistr(' Verificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(204070913731549305)
,p_name=>'P601_R3_USR_PR_FMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204071488224549310)
,p_prompt=>'Firma 1'
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
 p_id=>wwv_flow_imp.id(204071078443549306)
,p_name=>'P601_R3_USR_SA_FMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204071488224549310)
,p_prompt=>'Firma 2'
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
 p_id=>wwv_flow_imp.id(204071150770549307)
,p_name=>'P601_R3_USER_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204071488224549310)
,p_prompt=>'Rechazo'
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
 p_id=>wwv_flow_imp.id(204071274875549308)
,p_name=>'P601_R3_FEC_AUTORIZACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204071583739549311)
,p_prompt=>unistr('Autorizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(204071368114549309)
,p_name=>'P601_R3_FEC_VERIFICACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204071583739549311)
,p_prompt=>unistr('  Verificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(204071652186549312)
,p_name=>'P601_R3_FCH_PR_FMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204071583739549311)
,p_prompt=>'Firma 1'
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
 p_id=>wwv_flow_imp.id(204071783226549313)
,p_name=>'P601_R3_FCH_SA_FMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204071583739549311)
,p_prompt=>'Firma 2'
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
 p_id=>wwv_flow_imp.id(204071898024549314)
,p_name=>'P601_R3_FEC_RECHAZO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(204071583739549311)
,p_prompt=>'Rechazo'
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
 p_id=>wwv_flow_imp.id(204072493545549320)
,p_name=>'P601_R3_AUTORIZADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204072948498549325)
,p_prompt=>'Autorizado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204072584528549321)
,p_name=>'P601_R3_LOTE_PAGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204072948498549325)
,p_prompt=>'Lote Pago'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204072678078549322)
,p_name=>'P601_R3_COD_AUTORIZA_PAGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204072948498549325)
,p_prompt=>'Autorizante'
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
 p_id=>wwv_flow_imp.id(204072702492549323)
,p_name=>'P601_R3_DESC_AUTORIZANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204072948498549325)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204072877335549324)
,p_name=>'P601_R3_TOT_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204072948498549325)
,p_prompt=>'TOT GS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204073114835549327)
,p_name=>'P601_R3_COMENTARIO_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204073037624549326)
,p_prompt=>'Comentario '
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
 p_id=>wwv_flow_imp.id(204073290044549328)
,p_name=>'P601_R3_DESC_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204073037624549326)
,p_prompt=>' Desc Empresa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204073310153549329)
,p_name=>'P601_R3_TOT_RET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204073037624549326)
,p_prompt=>unistr('Total Retenci\00F3n')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204129198519227732)
,p_name=>'P601_COD_MODULO'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204129302215227734)
,p_name=>'P601_COD_EMPRESA'
,p_item_sequence=>980
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204129488088227735)
,p_name=>'P601_VER_OTRAS_AUTORIZACION'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204129561183227736)
,p_name=>'P601_PERMITE_AUTORIZAR_OTRAS'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204130819764227749)
,p_name=>'P601_CONSULTANDO'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204881743784551601)
,p_name=>'P601_AUX_TIPO'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204881839556551602)
,p_name=>'P601_AUX_SER'
,p_item_sequence=>1140
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204881971625551603)
,p_name=>'P601_AUX_NRO'
,p_item_sequence=>1150
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204882956653551613)
,p_name=>'P601_TIPO_COMPROBANTE'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204883095391551614)
,p_name=>'P601_MONEDA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204883324397551617)
,p_name=>'P601_COD_AUTORIZANTE'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204883465751551618)
,p_name=>'P601_AUTORIZADO'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204883646431551620)
,p_name=>'P601_USUARIO_FIRMA'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204883791322551621)
,p_name=>'P601_ESTADO'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204883804987551622)
,p_name=>'P601_AUX_ORDEN_PAGO'
,p_item_sequence=>1160
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204885446220551638)
,p_name=>'P601_COD_FORMA'
,p_item_sequence=>960
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204885501599551639)
,p_name=>'P601_DERECHOS'
,p_item_sequence=>970
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204885646568551640)
,p_name=>'P601_AUX_FIRMA1'
,p_item_sequence=>1170
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204885734361551641)
,p_name=>'P601_AUX_FIRMA2'
,p_item_sequence=>1180
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204885886942551642)
,p_name=>'P601_IND_VERIFICADO'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204885918828551643)
,p_name=>'P601_PR_FMA'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886073295551644)
,p_name=>'P601_SA_FMA'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886197588551645)
,p_name=>'P601_R2_OP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(204070591863549301)
,p_prompt=>'Op'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886266178551646)
,p_name=>'P601_R2_F1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(204070591863549301)
,p_prompt=>'F1'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886349387551647)
,p_name=>'P601_R2_F2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(204070591863549301)
,p_prompt=>'F2'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886459524551648)
,p_name=>'P601_AUX_AUTORIZACION_OP'
,p_item_sequence=>1190
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886504948551649)
,p_name=>'P601_AUX_AUTORIZACION_F1'
,p_item_sequence=>1210
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204886632525551650)
,p_name=>'P601_AUX_AUTORIZACION_F2'
,p_item_sequence=>1230
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206378953439699203)
,p_name=>'P601_ERR'
,p_item_sequence=>1250
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206380501338699219)
,p_name=>'P601_AUX_CAB'
,p_item_sequence=>1260
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206381557880699229)
,p_name=>'P601_AUX_OP'
,p_item_sequence=>1310
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208181191779458115)
,p_name=>'P601_INIT'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211151547264135201)
,p_name=>'P601_ERR_BLOQUEO'
,p_item_sequence=>1320
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211151746777135203)
,p_name=>'P601_SEQ_ID'
,p_item_sequence=>1330
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211152211478135208)
,p_name=>'P601_AUX_AUTORIZACION_OP_I'
,p_item_sequence=>1200
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211152391675135209)
,p_name=>'P601_AUX_AUTORIZACION_F1_I'
,p_item_sequence=>1220
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211152457074135210)
,p_name=>'P601_AUX_AUTORIZACION_F2_I'
,p_item_sequence=>1240
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(208181093570458114)
,p_computation_sequence=>20
,p_computation_item=>'P601_INIT'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when=>'BORRAR'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204130060448227741)
,p_name=>'da_buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108527599228587043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206383306471699247)
,p_event_id=>wwv_flow_imp.id(204130060448227741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206383207835699246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206380473597699218)
,p_event_id=>wwv_flow_imp.id(204130060448227741)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P601_ERR := NULL;',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_CAB_CPAUTPAT'');',
'  CPAUTPAT.PR_CARGAR_CABECERA (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_PROVEEDOR=> :P601_R1_COD_PROVEEDOR,',
'                                PI_MONEDA => :P601_R1_MONEDA ,',
'                                PI_TIPO_COMPROBANTE=> :P601_R1_TIPO_COMPROBANTE,',
'                                PI_NRO_OP => :P601_R1_NRO_OP,',
'                                PI_NRO_LOTE => :P601_R1_NRO_LOTE,',
'                                PI_COD_AUTORIZANTE=> :P601_R1_COD_AUTORIZANTE ,',
'                                PI_AUTORIZADO=> :P601_AUTORIZADO ,',
'                                PI_USUARIO_FIRMA=> null, --:P601_USUARIO_FIRMA ,',
'                                PI_COD_USUARIO=> :P601_R1_USUARIO ,',
'                                PI_FECHA_INI => :P601_R1_FECHA_INI,',
'                                PI_FECHA_FIN => :P601_R1_FECHA_FIN ,',
'                                PO_ERR => :P601_ERR);',
' :P601_AUX_CAB := ''S'';',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P601_ERR := ''ERROR BUSQUEDA: ''||SQLERRM;',
'END;',
'',
''))
,p_attribute_02=>'P601_R1_COD_PROVEEDOR,P601_R1_MONEDA,P601_R1_TIPO_COMPROBANTE,P601_R1_NRO_OP,P601_R1_NRO_LOTE,P601_R1_COD_AUTORIZANTE,P601_USUARIO_FIRMA,P601_AUTORIZADO,P601_R1_FECHA_FIN,P601_R1_FECHA_INI,P601_R1_USUARIO'
,p_attribute_03=>'P601_ERR,P601_AUX_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204130183612227742)
,p_event_id=>wwv_flow_imp.id(204130060448227741)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204070591863549301)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206383468866699248)
,p_event_id=>wwv_flow_imp.id(204130060448227741)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206383207835699246)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204130222590227743)
,p_name=>'da_buscar_por_nro_op'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108527919055587047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206383587453699249)
,p_event_id=>wwv_flow_imp.id(204130222590227743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206383207835699246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206382758568699241)
,p_event_id=>wwv_flow_imp.id(204130222590227743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_CAB_CPAUTPAT'');',
'',
'',
'   CPAUTPAT.PR_CARGAR_CABECERA (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_PROVEEDOR=> :P601_R1_COD_PROVEEDOR,',
'                                PI_MONEDA => :P601_R1_MONEDA ,',
'                                PI_TIPO_COMPROBANTE=> :P601_R1_TIPO_COMPROBANTE,',
'                                PI_NRO_OP => :P601_R1_NRO_OP,',
'                                PI_NRO_LOTE => :P601_R1_NRO_LOTE,',
'                                PI_COD_AUTORIZANTE=> :P601_R1_COD_AUTORIZANTE ,',
'                                PI_AUTORIZADO=> :P601_AUTORIZADO ,',
'                                PI_USUARIO_FIRMA=> null, --:P601_USUARIO_FIRMA ,',
'                                PI_COD_USUARIO=> :P601_R1_USUARIO ,',
'                                PI_FECHA_INI => :P601_R1_FECHA_INI,',
'                                PI_FECHA_FIN => :P601_R1_FECHA_FIN ,',
'                                PO_ERR => :P601_ERR);'))
,p_attribute_02=>'P601_R1_COD_PROVEEDOR,P601_R1_MONEDA,P601_R1_TIPO_COMPROBANTE,P601_R1_NRO_OP,P601_R1_NRO_LOTE,P601_R1_COD_AUTORIZANTE,P601_USUARIO_FIRMA,P601_AUTORIZADO,P601_R1_FECHA_FIN,P601_R1_FECHA_INI,P601_R1_USUARIO'
,p_attribute_03=>'P601_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204130447924227745)
,p_event_id=>wwv_flow_imp.id(204130222590227743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204070591863549301)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206383600699699250)
,p_event_id=>wwv_flow_imp.id(204130222590227743)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206383207835699246)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204130558732227746)
,p_name=>'da_buscar_por_nro_lote'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108528158207587049)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208179793217458101)
,p_event_id=>wwv_flow_imp.id(204130558732227746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206383207835699246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206382914656699243)
,p_event_id=>wwv_flow_imp.id(204130558732227746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_CAB_CPAUTPAT'');',
'',
'',
' CPAUTPAT.PR_CARGAR_CABECERA (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_PROVEEDOR=> :P601_R1_COD_PROVEEDOR,',
'                                PI_MONEDA => :P601_R1_MONEDA ,',
'                                PI_TIPO_COMPROBANTE=> :P601_R1_TIPO_COMPROBANTE,',
'                                PI_NRO_OP => :P601_R1_NRO_OP,',
'                                PI_NRO_LOTE => :P601_R1_NRO_LOTE,',
'                                PI_COD_AUTORIZANTE=> :P601_R1_COD_AUTORIZANTE ,',
'                                PI_AUTORIZADO=> :P601_AUTORIZADO ,',
'                                PI_USUARIO_FIRMA=> null, --:P601_USUARIO_FIRMA ,',
'                                PI_COD_USUARIO=> :P601_R1_USUARIO ,',
'                                PI_FECHA_INI => :P601_R1_FECHA_INI,',
'                                PI_FECHA_FIN => :P601_R1_FECHA_FIN ,',
'                                PO_ERR => :P601_ERR);'))
,p_attribute_02=>'P601_R1_COD_PROVEEDOR,P601_R1_MONEDA,P601_R1_TIPO_COMPROBANTE,P601_R1_NRO_OP,P601_R1_NRO_LOTE,P601_R1_COD_AUTORIZANTE,P601_USUARIO_FIRMA,P601_AUTORIZADO,P601_R1_FECHA_FIN,P601_R1_FECHA_INI,P601_R1_USUARIO'
,p_attribute_03=>'P601_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204130767886227748)
,p_event_id=>wwv_flow_imp.id(204130558732227746)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204070591863549301)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208179836319458102)
,p_event_id=>wwv_flow_imp.id(204130558732227746)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206383207835699246)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204882293879551606)
,p_name=>'da_info'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_AUX_NRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204882357610551607)
,p_event_id=>wwv_flow_imp.id(204882293879551606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     select DISTINCT autorizado_por, ',
'		   fec_autorizacion,',
'		   user_verificacion, ',
'		   fec_verificacion, ',
'		   usr_pr_fma, ',
'		   fch_pr_fma,',
'		   usr_sa_fma, ',
'		   fch_sa_fma, ',
'		   user_rechazo, ',
'		   fec_rechazo, ',
'		   comentario_Rechazo,',
'           autorizado,',
'           tot_retencion,',
'           NRO_LOTE_TRANSF,',
'	       pr_fma, ',
'	       sa_fma, ',
'	      ind_verificado',
'		into :P601_R3_AUTORIZADO_POR, ',
'			 :P601_R3_FEC_AUTORIZACION,',
'			 :P601_R3_USER_VERIFICACION, ',
'			 :P601_R3_FEC_VERIFICACION, ',
'			 :P601_R3_USR_PR_FMA, ',
'			 :P601_R3_FCH_PR_FMA,',
'			 :P601_R3_USR_SA_FMA, ',
'			 :P601_R3_FCH_SA_FMA, ',
'			 :P601_R3_USER_RECHAZO, ',
'			 :P601_R3_FEC_RECHAZO, ',
'			 :P601_R3_COMENTARIO_RECHAZO,',
'             :P601_R3_AUTORIZADO,',
'             :P601_R3_TOT_RET,',
'             :P601_R3_LOTE_PAGO,',
'			 :P601_PR_FMA, ',
'			 :P601_SA_FMA, ',
'			 :P601_IND_VERIFICADO',
'		from V_AUTORIZACION_PAGO',
'		where cod_empresa=:p_cod_empresa',
'		and tip_mov_caj=:P601_AUX_TIPO',
'		and ser_mov_caj=:P601_AUX_SER',
'		and nro_mov_caj= :P601_AUX_NRO ;',
'',
'    --    APEX_DEBUG.ERROR(''AUTORIZANTE: ''||:P601_R3_AUTORIZADO_POR || '' '' );',
' select  c.descripcion',
'     into :P601_R3_DESC_AUTORIZANTE',
'    from usuarios u,   cp_autorizantes c',
'   where u.cod_empresa = :P_COD_EMPRESA',
'     and u.cod_usuario = :app_user',
'     and u.cod_empresa = c.cod_empresa ',
'     and u.cod_persona = c.cod_persona',
'     and c.cod_autorizado =  :P601_R3_AUTORIZADO_POR;',
'',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'              :P601_R3_AUTORIZADO_POR :=  NULL;',
'			 :P601_R3_FEC_AUTORIZACION :=  NULL;',
'			 :P601_R3_USER_VERIFICACION :=  NULL;',
'			 :P601_R3_FEC_VERIFICACION :=  NULL;',
'			 :P601_R3_USR_PR_FMA :=  NULL;',
'			 :P601_R3_FCH_PR_FMA :=  NULL;',
'			 :P601_R3_USR_SA_FMA :=  NULL;',
'			 :P601_R3_FCH_SA_FMA :=  NULL;',
'			 :P601_R3_USER_RECHAZO :=  NULL;',
'			 :P601_R3_FEC_RECHAZO :=  NULL;',
'			 :P601_R3_COMENTARIO_RECHAZO :=  NULL; ',
'',
'END;',
'',
''))
,p_attribute_02=>'P601_AUX_TIPO,P601_AUX_SER,P601_AUX_NRO'
,p_attribute_03=>'P601_R3_AUTORIZADO_POR,P601_R3_FEC_AUTORIZACION,P601_R3_USER_VERIFICACION,P601_R3_FEC_VERIFICACION,P601_R3_USR_PR_FMA,P601_R3_FCH_PR_FMA,P601_R3_USR_SA_FMA,P601_R3_FCH_SA_FMA,P601_R3_USER_RECHAZO,P601_R3_FEC_RECHAZO,P601_R3_COMENTARIO_RECHAZO,P601_R3'
||'_AUTORIZADO,P601_R3_TOT_RET,P601_R3_LOTE_PAGO,P601_PR_FMA,P601_SA_FMA,P601_IND_VERIFICADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(204883952178551623)
,p_name=>'DA_DETALLE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_AUX_ORDEN_PAGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206382483008699238)
,p_event_id=>wwv_flow_imp.id(204883952178551623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' BEGIN',
'    APEX_DEBUG.ERROR(''DETALLE'');',
'    ',
'    ',
'      --  APEX_DEBUG.ERROR(''DETALLE CARGA: ''|| R.TIPO ||'' ''|| R.SERIE|| '' ''|| R.NRO);',
'        CPAUTPAT.PR_CARGAR_DETALLE (PI_COD_EMPRESA => :P_COD_EMPRESA ,',
'                                     PI_TIPO => :P601_AUX_TIPO,',
'                                     PI_SERIE => :P601_AUX_SER,',
'                                     PI_NUMERO=> :P601_AUX_NRO ,',
'                                     PO_ERR => :P601_ERR);',
'',
'',
'   EXCEPTION',
'        WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR: ''||SQLERRM;',
'END;'))
,p_attribute_02=>'P601_AUX_TIPO,P601_AUX_SER,P601_AUX_NRO'
,p_attribute_03=>'P601_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(204884096434551624)
,p_event_id=>wwv_flow_imp.id(204883952178551623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204884165656551625)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206378774293699201)
,p_name=>'da_ejecutar_actualizar'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204882487644551608)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206381071500699224)
,p_event_id=>wwv_flow_imp.id(206378774293699201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAutorizar selecci\00F3n?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-clipboard-check'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206378866951699202)
,p_event_id=>wwv_flow_imp.id(206378774293699201)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'---- CONDICIONALES PARA EJECUTAR LOS PROCESOS.',
'apex_debug.error(''dentro del apex'');',
'',
' FOR R IN(SELECT COD_EMPRESA,	',
'            TIP_MOV_CAJ TIPO,	',
'            SER_MOV_CAJ SERIE,	',
'            NRO_MOV_CAJ NRO,	',
'            AUTORIZADO,	',
'            PR_FMA,	',
'            SA_FMA,	',
'            FCH_SA_FMA,	',
'            USR_SA_FMA,	',
'            USR_PR_FMA,',
'            AUTORIZADO_POR',
'FROM V_AUTORIZACION_PAGO R',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND TO_DATE(TO_CHAR(FEC_MOV_CAJ, ''DD/MM/YYYY''), ''DD/MM/YYYY'') BETWEEN :P601_R1_FECHA_INI  AND :P601_R1_FECHA_FIN ',
'    and (:P601_R1_COD_PROVEEDOR is null OR COD_PROVEEDOR = :P601_R1_COD_PROVEEDOR)',
'    and (:P601_R1_MONEDA =''T'' or :P601_R1_MONEDA = COD_MONEDA)',
'    and (:P601_R1_TIPO_COMPROBANTE= ''T'' or :P601_R1_TIPO_COMPROBANTE = TIP_MOV_CAJ)',
'    and (:P601_R1_NRO_OP IS NULL or :P601_R1_NRO_OP = NUM_ORDEN_PAGO)',
'    and (:P601_R1_NRO_LOTE IS NULL or :P601_R1_NRO_LOTE = NRO_LOTE_PAGO)',
'    and nvl(COD_AUTORIZA_PAGO,''X'') is not null',
'    and (:P601_R1_COD_AUTORIZANTE IS NULL OR NVL(COD_AUTORIZA_PAGO,''X'') = :P601_R1_COD_AUTORIZANTE)',
'    and (:P601_AUTORIZADO is null OR nvl(AUTORIZADO,''N'') = :P601_AUTORIZADO) ',
'    AND (:P601_USUARIO_FIRMA IS NULL OR NVL(USR_PR_FMA,''X'') <> :P601_USUARIO_FIRMA)',
'    AND (:P601_USUARIO_FIRMA IS NULL OR NVL(USR_SA_FMA,''X'') <> :P601_USUARIO_FIRMA)',
'    and (:P601_R1_USUARIO =''T'' OR nvl(COD_USUARIO,''N'') = :P601_R1_USUARIO))',
'    LOOP',
'',
' --   APEX_DEBUG.ERROR(''DATOS: ''||R.TIPO || '' '' ||R.SERIE || '' '' ||R.NRO);',
'  IF :P601_AUX_AUTORIZACION_OP = ''S'' THEN',
'BEGIN',
'    CPAUTPAT.PR_AUTORIZAR_OP(PI_COD_EMPRESA => :P_COD_EMPRESA , ',
'						  PI_OP_TODOS => :P601_R2_OP ,',
'						  PI_AUTORIZADO => R.AUTORIZADO,',
'						  PI_COD_USUARIO => :APP_USER, --INV,',
'						  PI_AUTORIZADO_POR => R.AUTORIZADO_POR,',
'						  PI_TIP_MOV_CAJ => R.TIPO ,',
'						  PI_SER_MOV_CAJ => R.SERIE ,',
'						  PI_NRO_MOV_CAJ => R.NRO,',
'						  PO_ERR => :P601_ERR); ',
'     EXCEPTION  WHEN OTHERS THEN APEX_DEBUG.ERROR(''ERROR OP APEX ''||SQLERRM);',
'END;',
'END IF;',
'IF :P601_AUX_AUTORIZACION_F1 = ''S'' THEN',
'    BEGIN',
'    CPAUTPAT.PR_AUTORIZAR_F1 (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_F1_TODOS => :P601_R2_F1 ,',
'                                PI_PR_FMA => R.PR_FMA,',
'                                PI_USR_PR_FMA => R.USR_PR_FMA,',
'                                PI_COD_USUARIO => :APP_USER, --INV ,',
'                                PI_TIP_MOV_CAJ => R.TIPO ,',
'                                PI_SER_MOV_CAJ => R.SERIE,',
'                                PI_NRO_MOV_CAJ => R.NRO,',
'                                PO_ERR => :P601_ERR); ',
'         EXCEPTION  WHEN OTHERS THEN APEX_DEBUG.ERROR(''ERROR F1 APEX ''||SQLERRM);',
'    END;',
'END IF;',
'IF :P601_AUX_AUTORIZACION_F2 = ''S'' THEN',
'    BEGIN',
'    CPAUTPAT.PR_AUTORIZAR_F2 (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_USUARIO => :APP_USER, -- INV',
'                                PI_F2_TODOS => :P601_R2_F2,',
'                                PI_TIP_MOV_CAJ =>R.TIPO ,',
'                                PI_SER_MOV_CAJ => R.SERIE,',
'                                PI_NRO_MOV_CAJ => R.NRO ,',
'                                PI_SA_FMA => R.SA_FMA ,',
'                                PI_USR_SA_FMA =>R.USR_SA_FMA,',
'                                PO_ERR => :P601_ERR); ',
'    EXCEPTION  WHEN OTHERS THEN APEX_DEBUG.ERROR(''ERROR F2 APEX ''||SQLERRM);',
'    END;',
'END IF;',
'END LOOP;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                    apex_debug.error(''ERROR PRUEBA ''||sqlerrm);',
'                :P601_ERR := ''ERROR: ''||SQLERRM ;',
'END;',
''))
,p_attribute_02=>'P601_R2_OP,P601_R2_F1,P601_R2_F2,P601_AUX_AUTORIZACION_F1,P601_AUX_AUTORIZACION_F2,P601_AUX_AUTORIZACION_OP,P601_R1_FECHA_INI,P601_R1_FECHA_FIN,P601_R1_COD_PROVEEDOR,P601_R1_MONEDA,P601_R1_TIPO_COMPROBANTE,P601_R1_NRO_OP,P601_R1_NRO_LOTE,P601_R1_COD_'
||'AUTORIZANTE,P601_AUTORIZADO,P601_R1_USUARIO,P601_USUARIO_FIRMA'
,p_attribute_03=>'P601_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208180405098458108)
,p_event_id=>wwv_flow_imp.id(206378774293699201)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registros autorizados correctamente.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206379055875699204)
,p_name=>'DA_ERR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_ERR'
,p_condition_element=>'P601_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206379136794699205)
,p_event_id=>wwv_flow_imp.id(206379055875699204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P601_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206379227430699206)
,p_name=>'da_op'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_R2_OP'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206379675952699210)
,p_event_id=>wwv_flow_imp.id(206379227430699206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P601_ERR := NULL;',
'',
'       ',
'        :P601_AUX_AUTORIZACION_OP := ''S'';',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR: ''||SQLERRM;',
'END;'))
,p_attribute_03=>'P601_ERR,P601_AUX_AUTORIZACION_OP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206379744592699211)
,p_name=>'da_f1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_R2_F1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206379910512699213)
,p_event_id=>wwv_flow_imp.id(206379744592699211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P601_ERR := NULL;',
'',
'',
'        :P601_AUX_AUTORIZACION_F1 := ''S'';',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR: ''||SQLERRM;',
'END;'))
,p_attribute_03=>'P601_ERR,P601_AUX_AUTORIZACION_F1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206380082678699214)
,p_name=>'da_f2'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_R2_F2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206380283478699216)
,p_event_id=>wwv_flow_imp.id(206380082678699214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P601_ERR := NULL;',
'',
'',
'        :P601_AUX_AUTORIZACION_F2 := ''S'';',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR: ''||SQLERRM;',
'END;'))
,p_attribute_03=>'P601_ERR,P601_AUX_AUTORIZACION_F2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206381188869699225)
,p_name=>'da_load'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206381273841699226)
,p_event_id=>wwv_flow_imp.id(206381188869699225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(204882487644551608)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P601_AUX_CAB'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206381304412699227)
,p_event_id=>wwv_flow_imp.id(206381188869699225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(204882487644551608)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P601_AUX_CAB'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206382542082699239)
,p_name=>'da_num'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_R1_NRO_OP,P601_R1_NRO_LOTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206382685189699240)
,p_event_id=>wwv_flow_imp.id(206382542082699239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206383049506699244)
,p_name=>'da_aceptar_detalle'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(204885339952551637)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206383189086699245)
,p_event_id=>wwv_flow_imp.id(206383049506699244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204884165656551625)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208180622941458110)
,p_name=>'da_limpiar'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208180579467458109)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208180747756458111)
,p_event_id=>wwv_flow_imp.id(208180622941458110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFLimpiar los valores ingresados? ')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208180830550458112)
,p_event_id=>wwv_flow_imp.id(208180622941458110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P601_R1_NRO_OP := null;',
':P601_R1_NRO_LOTE  := null;',
':P601_R1_COD_PROVEEDOR := null;',
':P601_R1_COD_AUTORIZANTE := null;',
':P601_R1_FECHA_INI := null;',
':P601_R1_FECHA_FIN := null;',
':P601_R2_OP := ''N'';',
':P601_R2_F1 := ''N'';',
':P601_R2_F2 := ''N'';',
':P601_R3_AUTORIZADO := null;',
':P601_R3_LOTE_PAGO := null;',
':P601_R3_COD_AUTORIZA_PAGO := null;',
':P601_R3_DESC_AUTORIZANTE := null;',
':P601_R3_TOT_GS := null;',
':P601_R3_COMENTARIO_RECHAZO := null;',
':P601_R3_DESC_EMPRESA := null;',
':P601_R3_TOT_RET := null;',
':P601_R3_AUTORIZADO_POR := null;',
':P601_R3_USER_VERIFICACION := null;',
':P601_R3_USR_PR_FMA := null;',
':P601_R3_USR_SA_FMA := null;',
':P601_R3_USER_RECHAZO := null;',
':P601_R3_FEC_AUTORIZACION := null;',
':P601_R3_FEC_VERIFICACION := null;',
':P601_R3_FCH_PR_FMA := null;',
':P601_R3_FCH_SA_FMA := null;',
':P601_R3_FEC_RECHAZO := null;',
'',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_CAB_CPAUTPAT'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_DET_CPAUTPAT'');'))
,p_attribute_03=>'P601_R1_NRO_OP,P601_R1_NRO_LOTE,P601_R1_COD_PROVEEDOR,P601_R1_COD_AUTORIZANTE,P601_R1_FECHA_INI,P601_R1_FECHA_FIN,P601_R2_OP,P601_R2_F1 ,P601_R2_F2 ,P601_R3_AUTORIZADO,P601_R3_LOTE_PAGO,P601_R3_COD_AUTORIZA_PAGO,P601_R3_DESC_AUTORIZANTE,P601_R3_TOT_G'
||'S,P601_R3_COMENTARIO_RECHAZO,P601_R3_DESC_EMPRESA,P601_R3_TOT_RET,P601_R3_AUTORIZADO_POR,P601_R3_USER_VERIFICACION,P601_R3_USR_PR_FMA,P601_R3_USR_SA_FMA,P601_R3_USER_RECHAZO,P601_R3_FEC_AUTORIZACION,P601_R3_FEC_VERIFICACION,P601_R3_FCH_PR_FMA,P601_R3'
||'_FCH_SA_FMA,P601_R3_FEC_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208181346250458117)
,p_event_id=>wwv_flow_imp.id(208180622941458110)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BORRAR'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211152596624135211)
,p_name=>'da_autorizar_op'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_AUX_AUTORIZACION_OP_I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212240432160755301)
,p_event_id=>wwv_flow_imp.id(211152596624135211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAutorizar?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-info-circle-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211152685864135212)
,p_event_id=>wwv_flow_imp.id(211152596624135211)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VF1 VARCHAR2(1);',
'    VTIPO VARCHAR2(5);',
'    VSERIE VARCHAR2(10);',
'    VNRO NUMBER;',
'    vautorizado varchar2(1);',
'    VAUTORIZADO_POR VARCHAR2(50);',
'BEGIN',
'        :P601_ERR := NULL;',
'        ',
'            BEGIN',
'                SELECT C002 TIP_MOV_CAJ,	',
'                       C003 SER_MOV_CAJ,	',
'                       N001 NRO_MOV_CAJ,',
'                       C012 AUTORIZADO_POR,',
'                       C011  AUTORIZADO',
'                INTO VTIPO,',
'                     VSERIE,',
'                     VNRO,',
'                     VAUTORIZADO_POR,',
'                     VAUTORIZADO',
'                FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''COL_CAB_CPAUTPAT''',
'                AND SEQ_ID = :P601_SEQ_ID;',
'',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    :P601_ERR := ''ERROR: ''||SQLERRM;',
'            END;',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''COL_CAB_CPAUTPAT'',',
'                                             p_seq => :P601_SEQ_ID,',
'                                             p_attr_number => 11,',
'                                             p_attr_value => :P601_AUX_AUTORIZACION_OP_I);',
'          ',
'    CPAUTPAT.PR_AUTORIZAR_OP(PI_COD_EMPRESA => :P_COD_EMPRESA , ',
'						  PI_OP_TODOS => :P601_AUX_AUTORIZACION_OP_I ,',
'						  PI_AUTORIZADO => vautorizado ,',
'						  PI_COD_USUARIO => :APP_USER, --''INV''',
'						  PI_AUTORIZADO_POR => VAUTORIZADO_POR,',
'						  PI_TIP_MOV_CAJ => VTIPO ,',
'						  PI_SER_MOV_CAJ => VSERIE ,',
'						  PI_NRO_MOV_CAJ => VNRO,',
'						  PO_ERR => :P601_ERR); ',
'',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN :P601_ERR := ''ERROR: ''||SQLERRM;',
'END;'))
,p_attribute_02=>'P601_SEQ_ID,P601_AUX_AUTORIZACION_OP_I'
,p_attribute_03=>'P601_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212241007555755307)
,p_event_id=>wwv_flow_imp.id(211152596624135211)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204070591863549301)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211267211697158901)
,p_event_id=>wwv_flow_imp.id(211152596624135211)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro autorizado correctamente.'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-lg fa-check-square-o'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211152732267135213)
,p_name=>'da_autorizar_f1'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_AUX_AUTORIZACION_F1_I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212240549655755302)
,p_event_id=>wwv_flow_imp.id(211152732267135213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAutorizar?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-info-circle-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211152847216135214)
,p_event_id=>wwv_flow_imp.id(211152732267135213)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VF1 VARCHAR2(1);',
'    VTIPO VARCHAR2(5);',
'    VSERIE VARCHAR2(10);',
'    VNRO NUMBER;',
'    VPR_FMA VARCHAR2(50);',
'    VUSR_PR_FMA VARCHAR2(200);',
'',
'BEGIN',
'            BEGIN',
'                SELECT C002 TIP_MOV_CAJ,	',
'                       C003 SER_MOV_CAJ,	',
'                       N001 NRO_MOV_CAJ,',
'                       C014 PR_FMA,',
'                       C020 USR_PR_FMA',
'                INTO VTIPO,',
'                     VSERIE,',
'                     VNRO,',
'                     VPR_FMA,',
'                     VUSR_PR_FMA',
'                FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''COL_CAB_CPAUTPAT''',
'                AND SEQ_ID = :P601_SEQ_ID;',
'',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    :P601_ERR := ''ERROR: ''||SQLERRM;',
'            END;',
'    ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''COL_CAB_CPAUTPAT'',',
'                                             p_seq => :P601_SEQ_ID,',
'                                             p_attr_number => 14,',
'                                             p_attr_value => :P601_AUX_AUTORIZACION_F1_I);',
'',
'    CPAUTPAT.PR_AUTORIZAR_F1 (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_F1_TODOS => :P601_AUX_AUTORIZACION_F1_I ,',
'                                PI_PR_FMA => VPR_FMA,',
'                                PI_USR_PR_FMA => VUSR_PR_FMA,',
'                                PI_COD_USUARIO => :APP_USER , --''INV'', -- ',
'                                PI_TIP_MOV_CAJ => VTIPO ,',
'                                PI_SER_MOV_CAJ => VSERIE,',
'                                PI_NRO_MOV_CAJ => VNRO,',
'                                PO_ERR => :P601_ERR); ',
'',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR: ''||SQLERRM;',
'END;'))
,p_attribute_02=>'P601_SEQ_ID,P601_AUX_AUTORIZACION_F1_I'
,p_attribute_03=>'P601_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212240978139755306)
,p_event_id=>wwv_flow_imp.id(211152732267135213)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204070591863549301)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211267390975158902)
,p_event_id=>wwv_flow_imp.id(211152732267135213)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro autorizado correctamente.'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-lg fa-check-square-o'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211152999370135215)
,p_name=>'da_autorizar_f2'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P601_AUX_AUTORIZACION_F2_I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212240647752755303)
,p_event_id=>wwv_flow_imp.id(211152999370135215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAutorizar?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-info-circle-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211153034739135216)
,p_event_id=>wwv_flow_imp.id(211152999370135215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'VTIPO VARCHAR2(5);',
'VSERIE VARCHAR2(5);',
'VNRO NUMBER;',
'VSA_FMA VARCHAR2(50);',
'VUSR_SA_FMA VARCHAR2(50);',
'VF2 VARCHAR2(1);',
'BEGIN',
':P601_ERR := NULL;',
'',
'    VF2 := :P601_AUX_AUTORIZACION_F2_I;',
'    ',
'    BEGIN',
'        SELECT C002 TIP_MOV_CAJ,	',
'               C003 SER_MOV_CAJ,	',
'               N001 NRO_MOV_CAJ,',
'               C015 SA_FMA,',
'               C019 USR_SA_FMA',
'        INTO VTIPO,',
'             VSERIE,',
'             VNRO,',
'             VSA_FMA,',
'             VUSR_SA_FMA',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''COL_CAB_CPAUTPAT''',
'        AND SEQ_ID = :P601_SEQ_ID;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR: ''||SQLERRM;',
'    END;',
'    ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''COL_CAB_CPAUTPAT'',',
'                                             p_seq => :P601_SEQ_ID,',
'                                             p_attr_number => 15,',
'                                             p_attr_value => :P601_AUX_AUTORIZACION_OP_I);',
'',
'     CPAUTPAT.PR_AUTORIZAR_F2 (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_USUARIO => :APP_USER, -- ''INV'', --',
'                                PI_F2_TODOS => VF2 ,',
'                                PI_TIP_MOV_CAJ =>VTIPO ,',
'                                PI_SER_MOV_CAJ => VSERIE,',
'                                PI_NRO_MOV_CAJ => VNRO ,',
'                                PI_SA_FMA => VSA_FMA ,',
'                                PI_USR_SA_FMA =>VUSR_SA_FMA,',
'                                PO_ERR => :P601_ERR); ',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                :P601_ERR := ''ERROR''||SQLERRM;',
'END;'))
,p_attribute_02=>'P601_SEQ_ID,P601_AUX_AUTORIZACION_F2_I'
,p_attribute_03=>'P601_ERR'
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
 p_id=>wwv_flow_imp.id(212240801633755305)
,p_event_id=>wwv_flow_imp.id(211152999370135215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204070591863549301)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211267402662158903)
,p_event_id=>wwv_flow_imp.id(211152999370135215)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro autorizado correctamente.'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-lg fa-check-square-o'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P601_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108526377590587031)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'          ',
'DECLARE ',
'	VFIRMA1 VARCHAR2(10):=''N'';                 ',
'	VFIRMA2 VARCHAR2(10):=''N'';',
'BEGIN            ',
'    :P601_COD_MODULO := ''CP'';',
'    :P601_COD_FORMA := ''CPAUTPAT'';',
'    :P601_ERR_BLOQUEO := null;',
'--test',
'',
'    IF :P601_INIT = 1 THEN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_CAB_CPAUTPAT'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_DET_CPAUTPAT'');',
'        :P601_INIT := 0;',
'    END IF;',
'    ',
'     :P601_VER_OTRAS_AUTORIZACION  := busca_permiso( :p_cod_empresa, ',
'                                                   ''CPAUTPAT'', ',
'                                                    :APP_USER,--''INV'',-- ',
'                                                   ''VER_OTRAS_AUTORIZACION'' ) ;',
'',
'',
'     :P601_PERMITE_AUTORIZAR_OTRAS := busca_permiso( :p_cod_empresa, ',
'                                                      :P601_COD_FORMA, ',
'                                                      :APP_USER, --''INV'',--',
'                                                      ''PERMITE_AUTORIZAR_OTRAS'' ) ;   ',
'    VFIRMA1 := busca_permiso( :p_cod_empresa, ',
'                              :P601_COD_FORMA, ',
'                              :APP_USER, --''INV'',--',
'                              ''PERIMTE_FIRMA1'' ) ;  ',
'    VFIRMA2  := busca_permiso( :p_cod_empresa, ',
'                              :P601_COD_FORMA, ',
'                              :APP_USER, --''INV'',--',
'                              ''PERIMTE_FIRMA2'' ) ;                           ',
'',
'    IF NVL(VFIRMA1,''N'') 	<>''S'' THEN',
'           :P601_AUX_FIRMA1 :=''N'';',
'',
'    ELSE',
'',
'            :P601_AUX_FIRMA1 :=''S'';',
'    END IF;',
'     	',
' 	',
'    IF NVL(VFIRMA2,''N'') 	<>''S'' THEN',
'           :P601_AUX_FIRMA2 :=''N'';',
'    ELSE',
'           :P601_AUX_FIRMA2 :=''N'';',
'',
'    END IF;',
' 	',
'    begin',
'      select cod_autorizado, ',
'            c.descripcion',
'        into :P601_R1_COD_AUTORIZANTE, ',
'             :P601_R1_DESC_AUTORIZANTE',
'        from usuarios u,   cp_autorizantes c',
'       where u.cod_empresa = :p_cod_empresa',
'         and u.cod_usuario = user',
'         and u.cod_empresa = c.cod_empresa ',
'         and u.cod_persona = c.cod_persona ;',
'    exception',
'      when others then',
'           :P601_R1_DESC_AUTORIZANTE := NULL ;',
'           :P601_R1_COD_AUTORIZANTE := NULL ;',
'    end ;                                                      ',
'                                                      ',
'    IF NVL( :P601_VER_OTRAS_AUTORIZACION ,''N'')<>''S'' THEN',
'    	if :P601_R1_COD_AUTORIZANTE is null then',
'    		:P601_R1_COD_AUTORIZANTE:=''0'';',
'    		end if;',
'    END IF;                                                      ',
'',
'    :P601_CONSULTANDO := ''N'';',
'    :P601_TIPO_COMPROBANTE:=''T'';',
'    :P601_COD_EMPRESA:=''1'';',
'    :P601_MONEDA:=''T'';',
'    :P601_R1_FECHA_INI:=sysdate-5;',
'    :P601_R1_FECHA_FIN := last_day(sysdate);',
'',
'if user=''REINALDOSA'' THEN',
'	:P601_AUTORIZADO:=''S'';',
'else ',
'	:P601_AUTORIZADO:=''N'';',
'END IF;	',
'',
'IF :P601_ESTADO=''FIRMA'' THEN',
'		:P601_AUTORIZADO:=''V'';',
'		:P601_USUARIO_FIRMA:=  :APP_USER; -- INV',
'		:P601_R1_COD_AUTORIZANTE:=null;',
'END IF;                     ',
'    :P601_AUX_CAB := ''S'';',
'        IF  busca_permiso( :P_COD_EMPRESA, ',
'                       :P601_COD_FORMA, ',
'                       :APP_USER, -- INV ',
'                       ''PERIMTE_FIRMA_MASIVA'' ) =''N'' THEN',
'',
'        :P601_AUX_CAB := ''N'';',
'        ',
'    	END IF;	',
'  ',
'END;                 ',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
