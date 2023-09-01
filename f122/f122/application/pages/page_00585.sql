prompt --application/pages/page_00585
begin
--   Manifest
--     PAGE: 00585
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
 p_id=>585
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Permisos Aprobaci\00F3n SNC')
,p_step_title=>unistr('Permisos Aprobaci\00F3n SNC')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mostrar(accion){',
'    if (accion == 1){',
'       $("#CREAR").show();',
'       $("#GUARDAR").hide();',
'    }',
'    if (accion == 2){',
'       $("#CREAR").hide();',
'       $("#GUARDAR").show();',
'    }',
'}',
'function verDatos(p_usuario,p_hora){',
'    apex.item("P585_COD_USR_INS").setValue(p_usuario);',
'    apex.item("P585_FEC_HOR_INS").setValue(p_hora);',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230831132520'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(198666920179403512)
,p_plug_name=>'Permisos Aprobacion'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(198667148237403514)
,p_plug_name=>'Reporte Motivos'
,p_parent_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_AREA,',
'       COD_MOTIVO,',
'       COD_USUARIO,',
'       COD_USR_INS,',
'       FEC_HOR_INS,',
'       COD_USR_UPD,',
'       FEC_HOR_UPD,',
'       null EDITAR,',
'       null ELIMINAR,',
'',
'       ------ QUERY DESCRIPCION MOTIVO -------',
'       (Select p.descripcion ',
'       from problemas_conformidad p',
'       where p.cod_empresa = :P_COD_EMPRESA ',
'       and p.cod_motivo = ca.COD_MOTIVO',
'       and ROWNUM = 1) desc_motivo,',
'',
'       ----- QUERY DESCRIPCION USUARIO ------',
'       (Select p.nombre',
'       from usuarios u, personas p',
'       where cod_empresa = :P_COD_EMPRESA',
'       and u.cod_usuario = ca.COD_USUARIO',
'       and u.cod_persona = p.COD_PERSONA',
'       and ROWNUM = 1) desc_usuario,',
'',
'       rowid ID_REGISTRO',
'  from CA_APRUEBA_SNC ca',
'  order by to_number(COD_MOTIVO)desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Motivos'
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
 p_id=>wwv_flow_imp.id(198667206397403515)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>198667206397403515
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667389627403516)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667443105403517)
,p_db_column_name=>'COD_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo \00C1rea')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667582241403518)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Motivo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667651520403519)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Usuario')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667715869403520)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667833035403521)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198667922280403522)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'cod usr upd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198668079566403523)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198668178726403524)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P585_EDITAR'',''#ID_REGISTRO#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
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
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
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
 p_id=>wwv_flow_imp.id(198668240627403525)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P585_ELIMINAR'',''#ID_REGISTRO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
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
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
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
 p_id=>wwv_flow_imp.id(198668371617403526)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Id Registro'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198770113942388024)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Descripci\00F3n Motivo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(198770225230388025)
,p_db_column_name=>'DESC_USUARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Descripci\00F3n Usuario')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(198693041595828792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1986931'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDITAR:COD_MOTIVO:DESC_MOTIVO:COD_AREA:COD_USUARIO:DESC_USUARIO:FEC_HOR_INS:COD_USR_INS:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(198669127995403534)
,p_plug_name=>'Editar / Crear'
,p_parent_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(198772468957388047)
,p_plug_name=>'Pie'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(198669208011403535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(198669394823403536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_button_name=>'BT_CREAR'
,p_button_static_id=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(198669426439403537)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_button_name=>'BT_GUARDAR'
,p_button_static_id=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(198669073617403533)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
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
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198668493209403527)
,p_name=>'P585_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198668570195403528)
,p_name=>'P585_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198669582094403538)
,p_name=>'P585_COD_AREA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_prompt=>unistr('C\00F3digo \00C1rea')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,SUPPLY CHAIN;OPERACIONES,POSTVENTA;POSTVENTA,MARKETING;MARKETING,TIC;TIC,AUDITOR\00CDA;AUDITOR\00CDA,EXPERIENCIA DEL CLIENTE;EXPERIENCIA,GENTE;GENTE,REPUESTOS;REPUESTOS,LOG\00CDSTICA;')
||unistr('LOG\00CDSTICA')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198669630745403539)
,p_name=>'P585_COD_MOTIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_prompt=>unistr('C\00F3digo Motivo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS_CAAPRSNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion , cod_motivo',
'              ',
'               from problemas_conformidad',
'               where cod_empresa   = :P_cod_empresa'))
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
 p_id=>wwv_flow_imp.id(198669738617403540)
,p_name=>'P585_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_prompt=>unistr('C\00F3digo Usuario')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_CAAPRSNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre , u.cod_usuario',
'         ',
'               from usuarios u, personas p',
'               where cod_empresa   = :P_cod_empresa ',
'and p.cod_persona=u.cod_persona',
'order by 1 '))
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
 p_id=>wwv_flow_imp.id(198669895699403541)
,p_name=>'P585_COD_USR_INS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(198772468957388047)
,p_prompt=>'Horas'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198669968088403542)
,p_name=>'P585_FEC_HOR_INS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(198772468957388047)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198670052072403543)
,p_name=>'P585_DESC_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_prompt=>unistr('Descripci\00F3n Motivo')
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
 p_id=>wwv_flow_imp.id(198670144838403544)
,p_name=>'P585_DESC_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(198669127995403534)
,p_prompt=>unistr('Descripci\00F3n Usuario')
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
 p_id=>wwv_flow_imp.id(198769585521388018)
,p_name=>'P585_MSG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(198769607180388019)
,p_name=>'P585_ERR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(198666920179403512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198670244733403545)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P585_EDITAR'
,p_condition_element=>'P585_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198772352598388046)
,p_event_id=>wwv_flow_imp.id(198670244733403545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(2);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198670625820403549)
,p_event_id=>wwv_flow_imp.id(198670244733403545)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select COD_AREA,',
'           COD_MOTIVO,',
'           COD_USUARIO,',
'           COD_USR_INS,',
'           FEC_HOR_INS',
'',
'    into   :P585_COD_AREA,',
'           :P585_COD_MOTIVO,',
'           :P585_COD_USUARIO,',
'           :P585_COD_USR_INS,',
'           :P585_FEC_HOR_INS',
'',
'    from CA_APRUEBA_SNC',
'    where ROWID = :P585_EDITAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P585_EDITAR'
,p_attribute_03=>'P585_COD_AREA,P585_COD_MOTIVO,P585_COD_USUARIO,P585_COD_USR_INS,P585_FEC_HOR_INS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198670535412403548)
,p_event_id=>wwv_flow_imp.id(198670244733403545)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198669127995403534)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198670790356403550)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(198669208011403535)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198767885207388001)
,p_event_id=>wwv_flow_imp.id(198670790356403550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198669127995403534)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198768301704388006)
,p_name=>'DA_COD_MOTIVO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P585_COD_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198768452438388007)
,p_event_id=>wwv_flow_imp.id(198768301704388006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P585_COD_MOTIVO IS NOT NULL THEN',
' ',
'BEGIN 	',
'            select descripcion ',
'               into :P585_DESC_MOTIVO ',
'               from problemas_conformidad',
'               where cod_empresa   = :P_COD_EMPRESA',
'                 and cod_motivo = :P585_COD_MOTIVO ',
'                   ;',
'EXCEPTION',
'	WHEN OTHERS THEN',
'	:P585_DESC_MOTIVO := null;',
'    APEX_DEBUG.ERROR(''Descripcion Motivo'' || SQLERRM);',
'END;',
'ELSE',
'    :P585_DESC_MOTIVO := null;',
'	 ',
'END IF;',
''))
,p_attribute_02=>'P585_COD_MOTIVO'
,p_attribute_03=>'P585_DESC_MOTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198768513990388008)
,p_name=>'DA_COD_USUARIO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P585_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198768623333388009)
,p_event_id=>wwv_flow_imp.id(198768513990388008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P585_COD_USUARIO IS NOT NULL THEN',
' ',
'BEGIN 	',
'            select p.nombre ',
'               into :P585_DESC_USUARIO',
'               from usuarios u, personas p',
'               where cod_empresa   = :P_COD_EMPRESA',
'                 and u.cod_usuario = :P585_COD_USUARIO',
'                 and u.cod_persona=p.cod_persona',
'                   ;',
'EXCEPTION',
'	WHEN OTHERS THEN',
'	:P585_DESC_USUARIO := null;',
'    APEX_DEBUG.ERROR(''Descripcion Usuario'' || SQLERRM);',
'END;',
'ELSE',
'    :P585_DESC_USUARIO := null;',
'	 ',
'	 ',
'END IF;',
''))
,p_attribute_02=>'P585_COD_USUARIO'
,p_attribute_03=>'P585_DESC_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198768726502388010)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(198669073617403533)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198772255258388045)
,p_event_id=>wwv_flow_imp.id(198768726502388010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(1);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198768865724388011)
,p_event_id=>wwv_flow_imp.id(198768726502388010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P585_COD_AREA,P585_COD_MOTIVO,P585_COD_USUARIO,P585_FEC_HOR_INS,P585_COD_USR_INS,P585_DESC_USUARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198769104060388014)
,p_event_id=>wwv_flow_imp.id(198768726502388010)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P585_EDITAR := NULL;',
'    :P585_ELIMINAR := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P585_EDITAR,P585_ELIMINAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198769069353388013)
,p_event_id=>wwv_flow_imp.id(198768726502388010)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198669127995403534)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198769713677388020)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P585_MSG'
,p_condition_element=>'P585_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198769898817388021)
,p_event_id=>wwv_flow_imp.id(198769713677388020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P585_MSG.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198770387222388026)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P585_ELIMINAR'
,p_condition_element=>'P585_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198770471516388027)
,p_event_id=>wwv_flow_imp.id(198770387222388026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198770754682388030)
,p_event_id=>wwv_flow_imp.id(198770387222388026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --eliminar un registro',
'    DELETE ca_aprueba_snc WHERE ROWID = :P585_ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P585_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198770835475388031)
,p_event_id=>wwv_flow_imp.id(198770387222388026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198667148237403514)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198770943763388032)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(198669426439403537)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198771030186388033)
,p_event_id=>wwv_flow_imp.id(198770943763388032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que desea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198771199900388034)
,p_event_id=>wwv_flow_imp.id(198770943763388032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P585_DESC_MOTIVO IS NOT NULL THEN',
'        UPDATE ca_aprueba_snc',
'        SET    COD_AREA = :P585_COD_AREA,',
'               COD_MOTIVO = :P585_COD_MOTIVO,',
'               COD_USUARIO = :P585_COD_USUARIO',
'--               FEC_HOR_INS = :P585_FEC_HOR_INS,',
'--               COD_USR_INS = :P585_COD_USR_INS',
'        WHERE  ROWID = :P585_EDITAR;',
'',
unistr('        :P585_MSG := ''Se edit\00F3 el registro correctamente.'';'),
'        :P585_ERR := ''N'';',
'    ELSE ',
'        :P585_MSG := ''El codigo motivo no debe ser nulo.'';',
'        :P585_ERR := ''S'';',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''ERROR AL GUARDAR: ''||SQLERRM);',
'        :P585_ERR := ''S'';',
'END;'))
,p_attribute_02=>'P585_COD_AREA,P585_COD_MOTIVO,P585_COD_USUARIO'
,p_attribute_03=>'P585_MSG,P585_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198772500026388048)
,p_event_id=>wwv_flow_imp.id(198770943763388032)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198669127995403534)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198772606323388049)
,p_event_id=>wwv_flow_imp.id(198770943763388032)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198667148237403514)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(198771260789388035)
,p_name=>'DA_INSERTAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(198669394823403536)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198771331195388036)
,p_event_id=>wwv_flow_imp.id(198771260789388035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que deseas crear el motivo?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(198771441251388037)
,p_event_id=>wwv_flow_imp.id(198771260789388035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_existe number;',
'BEGIN',
'    begin',
'    select 1',
'    into v_existe',
'    from ca_aprueba_snc',
'    where cod_empresa = :P_COD_EMPRESA',
'    and cod_motivo = :P585_COD_MOTIVO',
'    and cod_area = :P585_COD_AREA',
'    and cod_usuario = :P585_COD_USUARIO;',
'',
'    :P585_MSG := ''El codigo motivo ya existe.'';',
'    :P585_ERR := ''S'';',
'    ',
'    EXCEPTION',
'        when no_data_found then',
'',
'    --insertar en tabla ca_aprueba_snc',
'    IF :P585_COD_MOTIVO IS NOT NULL AND :P585_COD_AREA IS NOT NULL AND :P585_COD_USUARIO IS NOT NULL THEN',
'        INSERT INTO ca_aprueba_snc (    COD_EMPRESA,',
'                                        COD_MOTIVO,',
'                                        COD_AREA,',
'                                        COD_USUARIO',
'                                        )',
'                                VALUES (',
'                                        :P_COD_EMPRESA,',
'                                        :P585_COD_MOTIVO,',
'                                        :P585_COD_AREA,',
'                                        :P585_COD_USUARIO',
'                                         );',
unistr('        :P585_MSG := ''Se cre\00F3 el Motivo ''||:P585_DESC_MOTIVO||''.'';'),
'        :P585_ERR := ''N'';',
'    ELSE ',
'        :P585_MSG := ''Debe completar todos los datos.'';',
'        :P585_ERR := ''S'';',
'    END IF;                                        ',
'',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR AL GUARDAR: ''||SQLERRM);',
'        :P585_ERR := ''S'';',
'        END;',
'END;'))
,p_attribute_02=>'P585_COD_MOTIVO,P585_COD_AREA,P585_COD_USUARIO'
,p_attribute_03=>'P585_MSG,P585_ERR'
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
 p_id=>wwv_flow_imp.id(198771795758388040)
,p_event_id=>wwv_flow_imp.id(198771260789388035)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198667148237403514)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199542337580478406)
,p_event_id=>wwv_flow_imp.id(198771260789388035)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(198669127995403534)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(198772770953388050)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
