prompt --application/pages/page_00651
begin
--   Manifest
--     PAGE: 00651
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
 p_id=>651
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Notas de Env\00EDo Pendientes STNGO')
,p_alias=>'CANOENPE'
,p_step_title=>unistr('Notas de Env\00EDo Pendientes STNGO')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#mimapa {',
'    height: 530px !important;',
'    ',
'}',
'',
'.apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea , .apex-item-display-only{',
'    border-color: #3c5b83 !important;',
'    background: #FCFCF4 !important;',
'    border-style: solid !important; ',
'    }',
'',
'.t-PageBody {',
'    background-color: #296073 !important;',
'    font-weight: bold !important;',
'',
'}',
'',
'#P234_IND_OFERTAS_LABEL {',
'    margin-top: 20px !important;',
'}',
'input:read-only {',
'        background-color: #CCCCCC !important;',
'    } ',
'',
'#P234_TEXTO_DISPLAY {',
'    background-color: #e0e0e0 !important;',
'    font-weight: bold;',
'    text-align: left;',
'    font-size: 12px;',
'}',
'',
'#P234_TOTAL {',
'    background-color: blue !important;',
'    color: white !important;',
'    font-weight: bold !important;',
'}',
'',
'#crear {',
'    display: none !important;',
'}',
'',
'#ocultar {',
'    display: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231101103844'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(221290928936777038)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(221291067720777039)
,p_plug_name=>unistr('Notas de Env\00EDo Pendientes STNGO')
,p_parent_plug_id=>wwv_flow_imp.id(221290928936777038)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(223716133775025336)
,p_plug_name=>'AUXILIARES'
,p_parent_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(223715664083025331)
,p_plug_name=>'REPORTE - R1'
,p_parent_plug_id=>wwv_flow_imp.id(221290928936777038)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(223714309140025318)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(223715664083025331)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       TIP_ENVIO,',
'       SER_ENVIO,',
'       NRO_ENVIO,',
'       FECHA,',
'       COD_SUCURSAL_ENT,',
'       DESC_SUCUR_ENT,',
'       COD_SUCURSAL,',
'       DESC_SUCUR_SAL,',
'       OBS,',
'       COD_PROVEEDOR,',
'       NULL ver_envio',
'  from V_ENVIO_STNGO_REPUESTO',
'  where (cod_sucursal_ent = :P651_DESTINO OR :P651_DESTINO IS NULL)',
'  and (cod_sucursal = :P651_ORIGEN OR :P651_ORIGEN IS NULL)',
' --where  (cod_sucursal_ent = DECODE(:P651_DESTINO,''T'',cod_sucursal_ent,:P651_DESTINO) OR :P651_DESTINO IS NULL)',
' --and  (cod_sucursal = DECODE(:P651_ORIGEN,''T'',cod_sucursal,:P651_ORIGEN) OR :P651_ORIGEN IS NULL)',
' and :P651_AUX = 1;',
' ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P651_AUX,P651_DESTINO,P651_ORIGEN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(223714409987025319)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Hay Registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_sort=>'N'
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
,p_internal_uid=>223714409987025319
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223714591675025320)
,p_db_column_name=>'TIP_ENVIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Envio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223714645435025321)
,p_db_column_name=>'SER_ENVIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serie.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223714714975025322)
,p_db_column_name=>'NRO_ENVIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero.')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223714817861025323)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223714913532025324)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('C\00F3digo Sucursal Entrante')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223715029045025325)
,p_db_column_name=>'DESC_SUCUR_ENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n Sucursal Entrante')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223715159780025326)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Codigo Sucursal Salida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223715217727025327)
,p_db_column_name=>'DESC_SUCUR_SAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Descripci\00F3n Sucursal Salida')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223715349253025328)
,p_db_column_name=>'OBS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223715450752025329)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(223715503752025330)
,p_db_column_name=>'ROWID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Rowid'
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
 p_id=>wwv_flow_imp.id(224286578091155420)
,p_db_column_name=>'VER_ENVIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ver Envio'
,p_column_link=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.::P339_COD_SUCURSAL,P339_P_NRO_COMPROBANTE,P339_C_COD_SUCURSAL_ENT,P339_C_OBS,P339_C_FECHA:#COD_SUCURSAL#,#NRO_ENVIO#,#COD_SUCURSAL_ENT#,#OBS#,#FECHA#'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(223736617164179931)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2237367'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SER_ENVIO:NRO_ENVIO:COD_SUCURSAL_ENT:DESC_SUCUR_ENT:COD_SUCURSAL:DESC_SUCUR_SAL:OBS:FECHA:VER_ENVIO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(223714278869025317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(223713843544025313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_button_name=>'BT_ENVIO_PENDIENTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Envio Pendiente'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.::P339_P_SER_COMPROBANTE,P339_P_NRO_COMPROBANTE:&P651_SER_ENVIO.,&P651_NRO_ENVIO.##SER_ENVIO#,#NRO_ENVIO#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(224287448850155429)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291386565777042)
,p_name=>'P651_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291485335777043)
,p_name=>'P651_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291592047777044)
,p_name=>'P651_NRO_ENVIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291620565777045)
,p_name=>'P651_OBS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291780656777046)
,p_name=>'P651_COD_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291802532777047)
,p_name=>'P651_FACTURADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221291974138777048)
,p_name=>'P651_ANULADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221292094118777049)
,p_name=>'P651_ESTADO_PREPA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221292131586777050)
,p_name=>'P651_NRO_DIARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223712651108025301)
,p_name=>'P651_P_TIPO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223712765865025302)
,p_name=>'P651_IND_CORREO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223712809312025303)
,p_name=>'P651_DESC_SUCUR_ENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223712956033025304)
,p_name=>'P651_COD_SUCURSAL_ENT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713077960025305)
,p_name=>'P651_ESTADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713116301025306)
,p_name=>'P651_GARANTIA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713218603025307)
,p_name=>'P651_FECHA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713323534025308)
,p_name=>'P651_SER_ENVIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713488942025309)
,p_name=>'P651_BLOQUEADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713558990025310)
,p_name=>'P651_COD_CLIENTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713640439025311)
,p_name=>'P651_COD_SUCURSAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713791293025312)
,p_name=>'P651_DESC_SUCUR_SAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223713956502025314)
,p_name=>'P651_DESTINO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_prompt=>'Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_sucursal  ||'' - '' || desc_sucur_ent  D, cod_sucursal R',
'FROM V_ENVIO_STNGO_REPUESTo'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223714057555025315)
,p_name=>'P651_ORIGEN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(221291067720777039)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_sucursal  ||'' - '' || desc_sucur_sal  D, cod_sucursal R',
'FROM V_ENVIO_STNGO_REPUESTo',
'/* GROUP BY cod_sucursal, desc_sucur_sal',
'UNION ALL',
'SELECT  ''TODOS'' D, ''T''  R',
'FROM dual',
'ORDER BY D; */'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(223716237597025337)
,p_name=>'P651_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(223716133775025336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(223716309816025338)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(223714278869025317)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(223716406209025339)
,p_event_id=>wwv_flow_imp.id(223716309816025338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P651_AUX := 1;',
'END;'))
,p_attribute_03=>'P651_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(223716591879025340)
,p_event_id=>wwv_flow_imp.id(223716309816025338)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(223714309140025318)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P651_AUX'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(223716620806025341)
,p_event_id=>wwv_flow_imp.id(223716309816025338)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(223714309140025318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(224287576092155430)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(224287448850155429)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224287644146155431)
,p_event_id=>wwv_flow_imp.id(224287576092155430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro/a que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224287778076155432)
,p_event_id=>wwv_flow_imp.id(224287576092155430)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P651_DESTINO := 101;',
':P651_ORIGEN := null;'))
,p_attribute_03=>'P651_DESTINO,P651_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224287878527155433)
,p_event_id=>wwv_flow_imp.id(224287576092155430)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(223714309140025318)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224289120583155446)
,p_event_id=>wwv_flow_imp.id(224287576092155430)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(223714309140025318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(224287979267155434)
,p_name=>'DA_ORIGEN'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P651_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224288093965155435)
,p_event_id=>wwv_flow_imp.id(224287979267155434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P651_ORIGEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(224288107816155436)
,p_name=>'DA_DESTINO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P651_DESTINO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224288206369155437)
,p_event_id=>wwv_flow_imp.id(224288107816155436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P651_DESTINO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(224288945424155444)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224289000242155445)
,p_event_id=>wwv_flow_imp.id(224288945424155444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(223714309140025318)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(223716726863025342)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P651_AUX := 0;',
':P651_DESTINO :=  101;',
':P651_ORIGEN := null;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/