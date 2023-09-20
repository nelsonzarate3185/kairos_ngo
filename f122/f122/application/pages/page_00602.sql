prompt --application/pages/page_00602
begin
--   Manifest
--     PAGE: 00602
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
 p_id=>602
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reparto de Terciario - RPPLATER'
,p_alias=>'RPPLATER'
,p_step_title=>'Reparto de Terciario - RPPLATER'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230914140434'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110695078547918409)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206406438863497605)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       FEC_RENDICION,',
'       FEC_RENDICION_ORIG,',
'       COD_ZONA_REPARTO,',
'       COD_REPARTIDOR,',
'       COD_VEHICULO,',
'       COD_USUARIO,',
'       ESTADO,',
'       KM_SALIDA,',
'       KM_ESTIMADO,',
'       KM_LLEGADA,',
'       COMENTARIO',
'  from RP_REPARTO_CABECERA_TERCIARIO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(206406574533497606)
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
,p_internal_uid=>206406574533497606
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206406660586497607)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206406729501497608)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206406891366497609)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206406926400497610)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407048171497611)
,p_db_column_name=>'FEC_RENDICION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407190642497612)
,p_db_column_name=>'FEC_RENDICION_ORIG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Rendicion Orig'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407296932497613)
,p_db_column_name=>'COD_ZONA_REPARTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Zona Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407370126497614)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407428791497615)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407569051497616)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407639802497617)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407734765497618)
,p_db_column_name=>'KM_SALIDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Km Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407857505497619)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Km Estimado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206407913055497620)
,p_db_column_name=>'KM_LLEGADA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Km Llegada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206408014047497621)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(206428849093424928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2064289'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:COD_SUCURSAL:NRO_PLANILLA:FEC_PLANILLA:FEC_RENDICION:FEC_RENDICION_ORIG:COD_ZONA_REPARTO:COD_REPARTIDOR:COD_VEHICULO:COD_USUARIO:ESTADO:KM_SALIDA:KM_ESTIMADO:KM_LLEGADA:COMENTARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110697611196918435)
,p_plug_name=>'Reparto de Terciario'
,p_region_css_classes=>'u-color-1-border u-color-13-bg'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110698002520918439)
,p_plug_name=>'OBSERVACIONES'
,p_parent_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110698163118918440)
,p_plug_name=>unistr('RENDICI\00D3N')
,p_parent_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110698203984918441)
,p_plug_name=>'KILOMETRAJES'
,p_parent_plug_id=>wwv_flow_imp.id(110697611196918435)
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
 p_id=>wwv_flow_imp.id(110698461219918443)
,p_plug_name=>'C1'
,p_parent_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>120
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110698504159918444)
,p_plug_name=>'C2'
,p_parent_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(205858219067548923)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:607:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(205856125704548902)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_button_name=>'BT_IMPRIMIR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(205856011587549001)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(110697611196918435)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110421374908644922)
,p_name=>'P602_COD_MODULO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422211499644931)
,p_name=>'P602_CANTIDAD_LINEAS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422345401644932)
,p_name=>'P602_NOM_FORMA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422465152644933)
,p_name=>'P602_NOM_MODULO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422597585644934)
,p_name=>'P602_FAC_CONTADO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422661717644935)
,p_name=>'P602_DERECHOS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422770736644936)
,p_name=>'P602_COD_MONEDA_BASE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422870677644937)
,p_name=>'P602_SER_CREDITO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110422995818644938)
,p_name=>'P602_CODSISMENU'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423086931644939)
,p_name=>'P602_COD_FORMA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423141056644940)
,p_name=>'P602_SER_CONTADO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423263324644941)
,p_name=>'P602_ESTADO_REPARTO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423390806644942)
,p_name=>'P602_NOTA_REMISION'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423417186644943)
,p_name=>'P602_FAC_CREDITO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423517754644944)
,p_name=>'P602_NOM_EMPRESA'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423623149644945)
,p_name=>'P602_FEC_ACTUAL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423782307644946)
,p_name=>'P602_COD_IDIOMA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110423897677644947)
,p_name=>'P602_TIPO_TRANS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110424019100644949)
,p_name=>'P602_SER_RECIBO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110424107245644950)
,p_name=>'P602_MAX_DIAS_RENDICION'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110695503923918414)
,p_name=>'P602_NOM_VEHICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110698504159918444)
,p_prompt=>'Nombre Vehiculo'
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
 p_id=>wwv_flow_imp.id(110695627445918415)
,p_name=>'P602_FEC_PLANILLA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110698461219918443)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110695775236918416)
,p_name=>'P602_DESC_ZONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110698504159918444)
,p_prompt=>unistr('Descripci\00F3n Zona')
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
 p_id=>wwv_flow_imp.id(110695878097918417)
,p_name=>'P602_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110695900544918418)
,p_name=>'P602_FEC_RENDICION_ORIG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110696021278918419)
,p_name=>'P602_NOM_REPARTIDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110698504159918444)
,p_prompt=>'Nombre Repartidor'
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
 p_id=>wwv_flow_imp.id(110696125113918420)
,p_name=>'P602_KM_LLEGADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110698203984918441)
,p_prompt=>'Llegada'
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
 p_id=>wwv_flow_imp.id(110696279175918421)
,p_name=>'P602_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110696339035918422)
,p_name=>'P602_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110698461219918443)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(110696486739918423)
,p_name=>'P602_FEC_RENDICION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110698163118918440)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110696519137918424)
,p_name=>'P602_COD_VEHICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110698504159918444)
,p_prompt=>'Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_RPPLATER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_vehiculo ',
'from rp_vehiculos ',
'where cod_empresa = :P_cod_empresa order by descripcion'))
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
 p_id=>wwv_flow_imp.id(110696665839918425)
,p_name=>'P602_COD_REPARTIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110698504159918444)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDORES_RPPLATER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, r.cod_repartidor ',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_cod_empresa ',
'and r.cod_persona = p.cod_persona order by 1'))
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
 p_id=>wwv_flow_imp.id(110696722967918426)
,p_name=>'P602_COD_ZONA_REPARTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110698504159918444)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONAS_RPPLATER'
,p_lov=>'select descripcion, cod_zona_reparto from rp_zonas_reparto order by descripcion'
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
 p_id=>wwv_flow_imp.id(110696883276918427)
,p_name=>'P602_KM_SALIDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110698203984918441)
,p_prompt=>'Salida'
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
 p_id=>wwv_flow_imp.id(110696911122918428)
,p_name=>'P602_TOT_GUARANIES'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110697071713918429)
,p_name=>'P602_KM_ESTIMADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110698203984918441)
,p_prompt=>'Estimado'
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
 p_id=>wwv_flow_imp.id(110697186933918430)
,p_name=>'P602_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110698002520918439)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(110697332836918432)
,p_name=>'P602_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110698163118918440)
,p_prompt=>'Rendido'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'R'
,p_attribute_03=>'P'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110697459639918433)
,p_name=>'P602_COD_USUARIO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110697594047918434)
,p_name=>'P602_TOT_DOLARES'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110697789207918436)
,p_name=>'P602_COD_SUCURSAL_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110698461219918443)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_RPPLATER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_sucursal from sucursales ',
'where cod_empresa = :P_cod_empresa order by descripcion'))
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
 p_id=>wwv_flow_imp.id(110697821180918437)
,p_name=>'P602_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110698461219918443)
,p_prompt=>unistr('Descripci\00F3n Sucursal')
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
 p_id=>wwv_flow_imp.id(110698686231918445)
,p_name=>'P602_ACCION_CONSULTA'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206409075828497631)
,p_name=>'P602_ERR'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206409317815497634)
,p_name=>'P602_EDITAR'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(110695078547918409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110421428859644923)
,p_name=>'DA_COD_SUCURSAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_COD_SUCURSAL_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110421562354644924)
,p_event_id=>wwv_flow_imp.id(110421428859644923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select descripcion',
'    into :P602_desc_sucursal',
'    from sucursales',
'   where cod_empresa = :P_cod_empresa',
'     and cod_sucursal = :P602_cod_sucursal_aux;',
'EXCEPTION',
'  when others then',
'    :P602_desc_sucursal := NULL;',
'END;'))
,p_attribute_02=>'P602_COD_SUCURSAL_AUX'
,p_attribute_03=>'P602_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110421683414644925)
,p_name=>'DA_COD_VEHICULO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_COD_VEHICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110421794367644926)
,p_event_id=>wwv_flow_imp.id(110421683414644925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  Select descripcion',
'    into :P602_nom_vehiculo',
'    from rp_vehiculos',
'   where cod_empresa = :P_cod_empresa',
'     and cod_vehiculo = :P602_cod_vehiculo;',
'EXCEPTION',
'  when others then',
'    :P602_nom_vehiculo := NULL;',
'END;'))
,p_attribute_02=>'P602_COD_VEHICULO'
,p_attribute_03=>'P602_NOM_VEHICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110421872315644927)
,p_name=>'DA_COD_REPARTIDOR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_COD_REPARTIDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110421960481644928)
,p_event_id=>wwv_flow_imp.id(110421872315644927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  Select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'    into :P602_nom_repartidor',
'    from rp_repartidores r, personas p',
'   where r.cod_empresa = :P_cod_empresa',
'     and r.cod_repartidor = :P602_cod_repartidor',
'     and nvl( r.activo, ''S'' ) = ''S''',
'     and r.cod_persona = p.cod_persona;',
'EXCEPTION',
'  when others then',
'    :P602_nom_repartidor := NULL;',
'END;'))
,p_attribute_02=>'P602_COD_REPARTIDOR'
,p_attribute_03=>'P602_NOM_REPARTIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110422089649644929)
,p_name=>'DA_ZONA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_COD_ZONA_REPARTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110422103441644930)
,p_event_id=>wwv_flow_imp.id(110422089649644929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select descripcion',
'    into :P602_desc_zona',
'    from rp_zonas_reparto',
'   where cod_zona_reparto = :P602_cod_zona_reparto;',
'EXCEPTION',
'  when others then',
'    :P602_desc_zona := NULL;',
'END;'))
,p_attribute_02=>'P602_COD_ZONA_REPARTO'
,p_attribute_03=>'P602_DESC_ZONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110698783805918446)
,p_name=>'DA_SET_CONSULTA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_ACCION_CONSULTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206406112552497602)
,p_event_id=>wwv_flow_imp.id(110698783805918446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P602_ACCION_CONSULTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110698988402918448)
,p_name=>'DA_ACCION_INSERT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_ACCION_CONSULTA'
,p_condition_element=>'P602_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
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
 p_id=>wwv_flow_imp.id(206408265913497623)
,p_event_id=>wwv_flow_imp.id(110698988402918448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P602_COD_SUCURSAL_AUX:=NULL;',
':P602_NRO_PLANILLA:=NULL;',
':P602_FEC_PLANILLA:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
':P602_FEC_RENDICION:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
':P602_FEC_RENDICION_ORIG:=NULL;',
':P602_COD_ZONA_REPARTO:=NULL;',
':P602_COD_REPARTIDOR:=NULL;',
':P602_COD_VEHICULO:=NULL;',
':P602_COD_USUARIO:=:P_COD_USUARIO;',
':P602_ESTADO:=NULL;',
':P602_KM_SALIDA:=NULL;',
':P602_KM_ESTIMADO:=NULL;',
':P602_KM_LLEGADA:=NULL;',
':P602_COMENTARIO:=NULL;'))
,p_attribute_03=>'P602_COD_SUCURSAL_AUX,P602_NRO_PLANILLA,P602_FEC_PLANILLA,P602_FEC_RENDICION,P602_FEC_RENDICION_ORIG,P602_COD_ZONA_REPARTO,P602_COD_REPARTIDOR,P602_COD_VEHICULO,P602_COD_USUARIO,P602_ESTADO,P602_KM_SALIDA,P602_KM_ESTIMADO,P602_KM_LLEGADA,P602_COMENTA'
||'RIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206408494471497625)
,p_event_id=>wwv_flow_imp.id(110698988402918448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110697611196918435)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110699196936918450)
,p_name=>'DA_ACCION_CONSULTA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_ACCION_CONSULTA'
,p_condition_element=>'P602_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206408146247497622)
,p_event_id=>wwv_flow_imp.id(110699196936918450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'select ',
'       COD_EMPRESA,',
'       COD_SUCURSAL,',
'       FEC_PLANILLA,',
'       FEC_RENDICION,',
'       FEC_RENDICION_ORIG,',
'       COD_ZONA_REPARTO,',
'       COD_REPARTIDOR,',
'       COD_VEHICULO,',
'       COD_USUARIO,',
'       ESTADO,',
'       KM_SALIDA,',
'       KM_ESTIMADO,',
'       KM_LLEGADA,',
'       COMENTARIO',
'INTO',
'        :P602_COD_EMPRESA,',
'        :P602_COD_SUCURSAL_AUX,',
'        :P602_FEC_PLANILLA,',
'        :P602_FEC_RENDICION,',
'        :P602_FEC_RENDICION_ORIG,',
'        :P602_COD_ZONA_REPARTO,',
'        :P602_COD_REPARTIDOR,',
'        :P602_COD_VEHICULO,',
'        :P602_COD_USUARIO,',
'        :P602_ESTADO,',
'        :P602_KM_SALIDA,',
'        :P602_KM_ESTIMADO,',
'        :P602_KM_LLEGADA,',
'        :P602_COMENTARIO ',
'  from RP_REPARTO_CABECERA_TERCIARIO',
'  where nro_planilla=:P602_NRO_PLANILLA;',
'',
'END;'))
,p_attribute_02=>'P602_NRO_PLANILLA'
,p_attribute_03=>'P602_COD_SUCURSAL_AUX,P602_FEC_PLANILLA,P602_FEC_RENDICION,P602_FEC_RENDICION_ORIG,P602_COD_ZONA_REPARTO,P602_COD_REPARTIDOR,P602_COD_VEHICULO,P602_COD_USUARIO,P602_ESTADO,P602_KM_SALIDA,P602_KM_ESTIMADO,P602_KM_LLEGADA,P602_COMENTARIO,P602_COD_EMPRE'
||'SA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206408879972497629)
,p_event_id=>wwv_flow_imp.id(110699196936918450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P602_NRO_PLANILLA'
,p_attribute_03=>'P602_COD_SUCURSAL_AUX,P602_FEC_PLANILLA,P602_FEC_RENDICION,P602_FEC_RENDICION_ORIG,P602_COD_ZONA_REPARTO,P602_COD_REPARTIDOR,P602_COD_VEHICULO,P602_COD_USUARIO,P602_ESTADO,P602_KM_SALIDA,P602_KM_ESTIMADO,P602_KM_LLEGADA,P602_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206408382718497624)
,p_event_id=>wwv_flow_imp.id(110699196936918450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110697611196918435)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206408541130497626)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(205856011587549001)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206408908020497630)
,p_event_id=>wwv_flow_imp.id(206408541130497626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P602_ERR := null;',
'IF :P602_NRO_PLANILLA IS NULL THEN',
'        :P602_NRO_PLANILLA:=RPPLATER.FN_NRO_PLANILLA();',
'END IF;',
'IF :P_COD_EMPRESA is not null and :P602_NRO_PLANILLA is not null then',
'        IF :P602_EDITAR IS NULL THEN',
'    RPPLATER.PR_CONFIRMAR(',
'        PI_COD_EMPRESA =>:P602_COD_EMPRESA,',
'        PI_NRO_PLANILLA =>:P602_NRO_PLANILLA,',
'        PI_COD_SUCURSAL =>:P602_COD_SUCURSAL_AUX,',
'        PI_FEC_PLANILLA =>:P602_FEC_PLANILLA,',
'        PI_FEC_RENDICION =>:P602_FEC_RENDICION,',
'        PI_FEC_RENDICION_ORIG =>:P602_FEC_RENDICION_ORIG,',
'        PI_COD_ZONA_REPARTO =>:P602_COD_ZONA_REPARTO,',
'        PI_COD_REPARTIDOR =>:P602_COD_REPARTIDOR,',
'        PI_COD_VEHICULO =>:P602_COD_VEHICULO,',
'        PI_COD_USUARIO =>:P_COD_USUARIO,',
'        PI_ESTADO =>:P602_ESTADO,',
'        PI_KM_SALIDA =>:P602_KM_SALIDA,',
'        PI_KM_ESTIMADO =>:P602_KM_ESTIMADO,',
'        PI_KM_LLEGADA =>:P602_KM_LLEGADA,',
'        PI_COMENTARIO =>:P602_COMENTARIO,',
'        PO_MENSAJE_ERROR =>:P602_ERR );',
'    END IF;',
'ELSE',
'    :P602_ERR := ''Por favor: ingrese los campos obligatorios ''; ',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'    :P602_ERR:=(''Ocurrio un error al registrar el articulo. Por favor revise los datos nuevamente''|| SQLERRM);',
'   -- APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P602_COD_EMPRESA,P602_NRO_PLANILLA,P602_COD_SUCURSAL_AUX,P602_FEC_PLANILLA,P602_FEC_RENDICION,P602_FEC_RENDICION_ORIG,P602_COD_ZONA_REPARTO,P602_COD_REPARTIDOR,P602_COD_VEHICULO,P602_COD_USUARIO,P602_ESTADO,P602_KM_SALIDA,P602_KM_ESTIMADO,P602_KM_LLE'
||'GADA,P602_COMENTARIO'
,p_attribute_03=>'P602_ERR,P602_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206409483402497635)
,p_event_id=>wwv_flow_imp.id(206408541130497626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se guardaron los cambios correctamente'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P602_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206409190175497632)
,p_name=>'DA_ERR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P602_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206409291948497633)
,p_event_id=>wwv_flow_imp.id(206409190175497632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'&P602_ERR.'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P602_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110421227800644921)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P602_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
'',
':P602_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
'',
':P602_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
'',
'/*',
':P602_cod_moneda_base := busca_parametro( :P_cod_modulo, ''COD_MONEDA_BASE'' );',
':P602_fac_credito     := busca_parametro( :P_cod_modulo, ''TIPO_CREDITO'' );',
':P602_fac_contado     := busca_parametro( :P_cod_modulo, ''TIPO_CONTADO'' );',
':P602_nota_remision   := busca_parametro( :P_cod_modulo, ''TIPO_REMISION'' );',
':P602_ser_contado     := busca_parametro( :P_cod_modulo, ''SERIE_CONTADO'' );*/',
'',
':P602_COD_MODULO := NVL(:P_COD_MODULO,''RP'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
