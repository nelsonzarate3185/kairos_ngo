prompt --application/pages/page_00582
begin
--   Manifest
--     PAGE: 00582
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
 p_id=>582
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RH Solicitud Ausencias'
,p_alias=>'RH-SOLICITUD-AUSENCIAS'
,p_step_title=>'Solicitud de ausencias'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
<<<<<<< HEAD
,p_last_upd_yyyymmddhh24miss=>'20230808145627'
=======
,p_last_upd_yyyymmddhh24miss=>'20230810143940'
>>>>>>> 68ff9ac14e63ffb9950e34adf11b33edd71d6ed9
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93763586381731842)
,p_plug_name=>'Listado de solicitudes de ausencias'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93763628474731843)
,p_plug_name=>'Solicitudes de ausencias'
,p_parent_plug_id=>wwv_flow_imp.id(93763586381731842)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.COD_EMPRESA,',
'       p.NRO_MOVIMIENTO,',
'       p.COD_EMPLEADO,',
'       CASE p.IND_TIPO ',
'        WHEN ''P'' THEN ''PERMISO''',
'        WHEN ''V'' THEN ''VACACIONES''',
'        WHEN ''L'' THEN ''LICENCIAS/BENEFICIOS''',
'        WHEN ''R'' THEN ''REPOSO''',
'        ELSE ''OTROS'' END IND_TIPO,',
'       m.descripcion MOTIVO,',
'       p.FEC_INICIAL,',
'       p.FEC_FINAL,',
'       p.CANT_DIAS,',
'       p.HORA_INICIAL,',
'       p.HORA_FINAL,',
'       p.CANT_HORAS,',
'       p.OBSERVACION,',
'       p.IND_DESCUENTO,',
'       p.REL_AUTORIZACION,',
'       p.REL_RECHAZO,',
'       p.ESTADO,',
'       p.IND_EXC_ALMUERZO,',
'       p.PERIODO,',
'       p.COD_USR_INS,',
'       p.FEC_HOR_INS,',
'       p.COD_USR_UPD,',
'       p.FEC_HOR_UPD',
'  from RH_MOV_PERMISOS p',
'  INNER JOIN rh_motivos m on m.cod_motivo = p.cod_motivo and p.cod_empresa = m.cod_empresa',
' and p.cod_empleado = :P582_COD_EMPLEADO and p.cod_empresa = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P582_COD_EMPLEADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Solicitudes de ausencias'
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
 p_id=>wwv_flow_imp.id(93763736998731844)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>93763736998731844
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93763810405731845)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93763907395731846)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93764079525731847)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93764100257731848)
,p_db_column_name=>'IND_TIPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93764341868731850)
,p_db_column_name=>'FEC_INICIAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028322817876401)
,p_db_column_name=>'FEC_FINAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028494034876402)
,p_db_column_name=>'CANT_DIAS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('D\00EDas')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028527759876403)
,p_db_column_name=>'HORA_INICIAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hora Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028698413876404)
,p_db_column_name=>'HORA_FINAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Hora Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028737574876405)
,p_db_column_name=>'CANT_HORAS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad Horas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028824830876406)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190028916223876407)
,p_db_column_name=>'IND_DESCUENTO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Se descuenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029095174876408)
,p_db_column_name=>'REL_AUTORIZACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Rel Autorizacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029110585876409)
,p_db_column_name=>'REL_RECHAZO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rel Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029247636876410)
,p_db_column_name=>'ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029336248876411)
,p_db_column_name=>'IND_EXC_ALMUERZO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Excluir Almuerzo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029414439876412)
,p_db_column_name=>'PERIODO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029538801876413)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029683284876414)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029797263876415)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190029865909876416)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190135046103814005)
,p_db_column_name=>'MOTIVO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190040945435874902)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1900410'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPLEADO:IND_TIPO:MOTIVO:FEC_INICIAL:FEC_FINAL:CANT_DIAS:HORA_INICIAL:HORA_FINAL:CANT_HORAS:OBSERVACION:IND_DESCUENTO:REL_AUTORIZACION:REL_RECHAZO:ESTADO:IND_EXC_ALMUERZO:PERIODO:FEC_HOR_INS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(190030222484876420)
,p_plug_name=>'Formulario cargar solicitud'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190030151461876419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(93763586381731842)
,p_button_name=>'BTN_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Crear'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn_agregar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190031623692876434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_button_name=>'BTN_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190029949890876417)
,p_name=>'P582_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(93763586381731842)
,p_prompt=>'Cod Empleado'
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
 p_id=>wwv_flow_imp.id(190030557238876423)
,p_name=>'P582_TIPO_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Tipo Solicitud'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Permisos;P,Vacaciones;V,Reposos;R,Licencias/Beneficios;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190030656964876424)
,p_name=>'P582_MOTIVO_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Motivo Solicitud'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select descripcion, cod_motivo from rh_motivos where cod_empresa = :P_COD_EMPRESA and ind_tipo = :P582_TIPO_SOLICITUD;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P582_TIPO_SOLICITUD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190030722930876425)
,p_name=>'P582_PERIODO_VACACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>unistr('Periodo Vacaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select periodo desc_periodo, periodo cod_periodo from rh_reg_vacaciones v where v.cod_empresa = :P_COD_EMPRESA and v.cod_empleado = :P582_COD_EMPLEADO',
'and v.dias_disponibles > 0;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P582_COD_EMPLEADO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031122402876429)
,p_name=>'P582_FECHA_INICIO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P582_FECHA_FIN'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031217146876430)
,p_name=>'P582_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P582_FECHA_INICIO'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031724381876435)
,p_name=>'P582_HORA_INICIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Hora Inicio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'START TIME SELECTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031890553876436)
,p_name=>'P582_HORA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Hora Fin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'START TIME SELECTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
<<<<<<< HEAD
 p_id=>wwv_flow_imp.id(190031122402876429)
,p_name=>'P582_FECHA_INICIO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P582_FECHA_FIN'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031217146876430)
,p_name=>'P582_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P582_FECHA_INICIO'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031724381876435)
,p_name=>'P582_HORA_INICIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Hora Inicio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'START TIME SELECTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190031890553876436)
,p_name=>'P582_HORA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Hora Fin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'START TIME SELECTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
=======
>>>>>>> 68ff9ac14e63ffb9950e34adf11b33edd71d6ed9
 p_id=>wwv_flow_imp.id(190032163765876439)
,p_name=>'P582_DESCUENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Descuento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190032474375876442)
,p_name=>'P582_OBSERVACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(190030222484876420)
,p_prompt=>'Observacion'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190030381914876421)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(190030151461876419)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190030438625876422)
,p_event_id=>wwv_flow_imp.id(190030381914876421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190030222484876420)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190030893409876426)
,p_name=>'DA_TIPO_SOLICITUD'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P582_TIPO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190030900701876427)
,p_event_id=>wwv_flow_imp.id(190030893409876426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P582_PERIODO_VACACION'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P582_TIPO_SOLICITUD'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190031092334876428)
,p_event_id=>wwv_flow_imp.id(190030893409876426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P582_PERIODO_VACACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P582_TIPO_SOLICITUD'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190032265503876440)
,p_name=>'DA_MOTIVO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P582_MOTIVO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190134870663814003)
,p_event_id=>wwv_flow_imp.id(190032265503876440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NVL(deducir,''S'') INTO :P582_DESCUENTO',
'from rh_motivos where cod_empresa = :P_COD_EMPRESA',
'and cod_motivo = :P582_MOTIVO_SOLICITUD;'))
,p_attribute_02=>'P582_MOTIVO_SOLICITUD'
,p_attribute_03=>'P582_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190032937519876447)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDA_SOLICITUD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_periodo_vacacion varchar2(5);',
'',
'begin',
'    if :P582_TIPO_SOLICITUD = ''V'' then',
'        v_periodo_vacacion := :P582_PERIODO_VACACION;',
'    else v_periodo_vacacion := '''';',
'    end if;',
'    insert into rh_mov_permisos (cod_empresa, nro_movimiento, cod_empleado, ind_tipo, cod_motivo,',
'    fec_inicial, fec_final, cant_dias, hora_inicial, hora_final, cant_horas,',
'    observacion, ind_descuento, estado, ind_exc_almuerzo, periodo,',
'    cod_usr_ins, fec_hor_ins)',
'    values (:P_COD_EMPRESA, seq_mov_permisos.nextval, :P582_COD_EMPLEADO, :P582_TIPO_SOLICITUD, :P582_MOTIVO_SOLICITUD,',
'    :P582_FECHA_INICIO, :P582_FECHA_FIN, 1, '''', '''','''',',
'    :P582_OBSERVACION,:P582_DESCUENTO,''P'',''S'',v_periodo_vacacion,:P_COD_USUARIO,SYSDATE);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se pudo registrar la solicitud'
,p_process_when_button_id=>wwv_flow_imp.id(190031623692876434)
,p_process_success_message=>unistr('La solicitud se registr\00F3 correctamente')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190030022355876418)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P_COD_EMPLEADO is null then',
'        select e.cod_empleado into :P582_COD_EMPLEADO  from ASP$USUA0100 u',
'        inner join personas p on p.cod_persona = u.cod_persona and u.usrn = :P_COD_USUARIO',
'        inner join rh_empleados e on e.cod_persona = p.cod_persona and e.cod_empresa = :P_COD_EMPRESA;',
'    end if;',
'exception when others then',
'    :P582_COD_EMPLEADO := NULL;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
