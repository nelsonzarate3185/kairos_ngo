prompt --application/pages/page_00628
begin
--   Manifest
--     PAGE: 00628
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
 p_id=>628
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Generaci\00F3n de Paquetes, Refinanciaci\00F3n y Cheques - CCCOMCUO')
,p_alias=>'CCCOMCUO-BUSQ'
,p_step_title=>unistr('Generaci\00F3n de Paquetes, Refinanciaci\00F3n y Cheques - CCCOMCUO')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230926152601'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212740300383476524)
,p_plug_name=>'MAIN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212740415786476525)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(212740300383476524)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212740549145476526)
,p_plug_name=>'RESULTADOS'
,p_parent_plug_id=>wwv_flow_imp.id(212740300383476524)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL Seleccionar,',
'    cod_empresa,',
'    tip_comprobante,',
'    ser_comprobante,',
'    nro_comprobante,',
'    fec_cancelacion,',
'    cod_cliente,',
'    cod_moneda,',
'    cod_sucursal,',
'    entrega_inicial,',
'    tip_cambio,',
'    factura,',
'    porc_gravadas,',
'    porc_iva,',
'    estado,',
'    fec_estado,',
'    tip_cambio_us,',
'    cod_custodio,',
'    nombre,',
'    direccion,',
'    cod_sector,',
'    garante,',
'    fec_emision,',
'    fecha_alta,',
'    nro_planilla_enviada,',
'    cod_cobrador,',
'    cod_usuario,',
'    fec_actualizacion,',
'    actualizado_por,',
'    fec_alta,',
'    alta_por,',
'    nro_planilla_ruteo,',
'    rowid   row_id',
'FROM',
'    inv.cc_cancela_comprob_cab',
'WHERE   cod_empresa = :P_COD_EMPRESA',
'AND     (tip_comprobante = :P628_TIP_COMPROBANTE OR :P628_TIP_COMPROBANTE IS NULL)',
'AND     (ser_comprobante = :P628_SER_COMPROBANTE OR :P628_SER_COMPROBANTE IS NULL)',
'AND     (nro_comprobante = :P628_NRO_COMPROBANTE OR :P628_NRO_COMPROBANTE IS NULL)',
'AND     (fec_cancelacion >= TO_DATE(:P628_FEC_CANCEL_INI,''DD/MM/YYYY'') OR :P628_FEC_CANCEL_INI IS NULL) ',
'AND     (fec_cancelacion <= TO_DATE(:P628_FEC_CANCEL_FIN,''DD/MM/YYYY'') OR :P628_FEC_CANCEL_FIN IS NULL) ',
'AND     (cod_cliente = :P628_COD_CLIENTE OR :P628_COD_CLIENTE IS NULL)',
'AND     (estado = :P628_ESTADO OR :P628_ESTADO IS NULL)',
'AND     :P628_IND_REPORTE = ''1'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P628_TIP_COMPROBANTE,P628_SER_COMPROBANTE,P628_NRO_COMPROBANTE,P628_FEC_CANCEL_INI,P628_FEC_CANCEL_FIN,P628_COD_CLIENTE,P628_ESTADO,P628_IND_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADOS'
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
 p_id=>wwv_flow_imp.id(212740637656476527)
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
,p_internal_uid=>212740637656476527
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212740746933476528)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212740875696476529)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212740977257476530)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741062802476531)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741112131476532)
,p_db_column_name=>'FEC_CANCELACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Cancelacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741265738476533)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(66993889950061053)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741333584476534)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741401102476535)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741512617476536)
,p_db_column_name=>'ENTREGA_INICIAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entrega Inicial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741647341476537)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741747467476538)
,p_db_column_name=>'FACTURA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741896282476539)
,p_db_column_name=>'PORC_GRAVADAS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Porc Gravadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212741942375476540)
,p_db_column_name=>'PORC_IVA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Porc Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742089171476541)
,p_db_column_name=>'ESTADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(212931948502916112)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742133068476542)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742275830476543)
,p_db_column_name=>'TIP_CAMBIO_US'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Cambio Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742359060476544)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742498724476545)
,p_db_column_name=>'NOMBRE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742567095476546)
,p_db_column_name=>'DIRECCION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742618230476547)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742760642476548)
,p_db_column_name=>'GARANTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Garante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742819184476549)
,p_db_column_name=>'FEC_EMISION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fec Emision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212742981868476550)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212831754021087301)
,p_db_column_name=>'NRO_PLANILLA_ENVIADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Nro Planilla Enviada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212831868068087302)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Cobrador'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212831935875087303)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832024360087304)
,p_db_column_name=>'FEC_ACTUALIZACION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fec Actualizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832125605087305)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832250384087306)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832337815087307)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832446362087308)
,p_db_column_name=>'NRO_PLANILLA_RUTEO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Nro Planilla Ruteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832518866087309)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Seleccionar'
,p_column_link=>'f?p=&APP_ID.:388:&SESSION.::&DEBUG.::P388_ROW_ID_COMPROBANTE:#ROW_ID#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(212832673734087310)
,p_db_column_name=>'ROW_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(212847418862087093)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2128475'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_CANCELACION:COD_CLIENTE:COD_SUCURSAL:ESTADO:FEC_ESTADO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212833527568087319)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212833603123087320)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212834979075087333)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(212740300383476524)
,p_button_name=>'BTN_NUEVO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:388:&SESSION.::&DEBUG.::P388_ROW_ID_COMPROBANTE:'
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212832922548087313)
,p_name=>'P628_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante || '' - '' || descripcion D, ',
'       tip_comprobante R',
'from tipos_comprobantes ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_modulo = :P628_COD_MODULO',
'and instr( :P628_TIPOS_CANC,''/''|| tip_comprobante || ''/'' ) > 0 ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>3
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
 p_id=>wwv_flow_imp.id(212833099648087314)
,p_name=>'P628_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(212833141752087315)
,p_name=>'P628_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_prompt=>'Nro. Comprobante'
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
 p_id=>wwv_flow_imp.id(212833283897087316)
,p_name=>'P628_FEC_CANCEL_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_prompt=>unistr('Fecha Cancelaci\00F3n Inicial')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>4
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
 p_id=>wwv_flow_imp.id(212833352104087317)
,p_name=>'P628_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
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
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(212833496293087318)
,p_name=>'P628_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:1 -  PENDIENTE;P,2 - CONFIRMADO;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECCIONAR'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(212834408378087328)
,p_name=>'P628_COD_MODULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212834511325087329)
,p_name=>'P628_TIPOS_CANC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212834664054087330)
,p_name=>'P628_IND_REPORTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212835389710087337)
,p_name=>'P628_MSG_ALERT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212835735452087341)
,p_name=>'P628_FEC_CANCEL_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(212740415786476525)
,p_prompt=>unistr('Fecha Cancelaci\00F3n Final')
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212833703960087321)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212833603123087320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212833834592087322)
,p_event_id=>wwv_flow_imp.id(212833703960087321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P628_TIP_COMPROBANTE,P628_SER_COMPROBANTE,P628_NRO_COMPROBANTE,P628_FEC_CANCEL_INI,P628_COD_CLIENTE,P628_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212833953780087323)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212833527568087319)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212835643001087340)
,p_event_id=>wwv_flow_imp.id(212833953780087323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P628_FEC_CANCEL_INI IS NULL AND :P628_FEC_CANCEL_FIN IS NULL THEN',
unistr('        :P628_MSG_ALERT := ''Debe cargar el per\00EDodo de fechas.'';'),
'    ELSE',
'        :P628_MSG_ALERT := NULL;',
'    END IF;',
'',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_BUSCAR - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P628_FEC_CANCEL_INI,P628_FEC_CANCEL_FIN'
,p_attribute_03=>'P628_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212835059513087334)
,p_event_id=>wwv_flow_imp.id(212833953780087323)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//execute spinner',
'var spinner = apex.util.showSpinner();'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P628_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212834775658087331)
,p_event_id=>wwv_flow_imp.id(212833953780087323)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P628_IND_REPORTE := ''1'';',
'',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_BUSCAR - 02. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P628_IND_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P628_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212834031015087324)
,p_event_id=>wwv_flow_imp.id(212833953780087323)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(212740549145476526)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P628_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212835187176087335)
,p_event_id=>wwv_flow_imp.id(212833953780087323)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//remove spinner',
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P628_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212835401042087338)
,p_name=>'DA_MSG_ALERT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P628_MSG_ALERT'
,p_condition_element=>'P628_MSG_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212835566108087339)
,p_event_id=>wwv_flow_imp.id(212835401042087338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P628_MSG_ALERT.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(212834362647087327)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR_SESSION_STATE'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(212834210628087326)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P628_COD_MODULO := ''CC'';',
'    :P628_ESTADO := NULL;',
'    :P628_FEC_CANCEL_INI    := SYSDATE;',
'    :P628_FEC_CANCEL_FIN    := SYSDATE;',
'',
'    :P628_TIPOS_CANC := BS_BUSCA_PARAMETRO(:P628_COD_MODULO,''TIPOS_CANC_COMP'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_INIT - '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
