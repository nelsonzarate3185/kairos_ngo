prompt --application/pages/page_00636
begin
--   Manifest
--     PAGE: 00636
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
 p_id=>636
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Definici\00F3n de Posiciones')
,p_alias=>'STPOSICI'
,p_step_title=>unistr('Definici\00F3n de Posiciones')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ADIAZ'
,p_last_upd_yyyymmddhh24miss=>'20231009092358'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217080615205856420)
,p_plug_name=>'Definiciones de Posiciones'
,p_region_css_classes=>'u-color-17-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217082072947856434)
,p_plug_name=>'AUXILIARES - R1'
,p_parent_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217083688152856450)
,p_plug_name=>'Reporte - R2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       COD_SUCURSAL,',
'       COD_BLOQUE,',
'       COD_SUB_BLOQUE,',
'       COD_ESTANTE,',
'       COD_CUERPO,',
'       COD_NIVEL,',
'       COD_POSICION,',
'       ALTO_MTS,',
'       ANCHO_MTS,',
'       LARGO_MTS,',
'       PESO_KG,',
'       FECHA_ALTA,',
'       FECHA_BAJA,',
'       COD_USUARIO_ALTA,',
'       ESTADO,',
'       COD_USUARIO_BAJA,',
'       IND_MIGRADO_OS,',
'       REG_ID_ORDEN,',
'       IND_CELDA,',
'       COD_RESPONSABLE',
'  from ST_POSICIONES st',
'  /* Where st.cod_empresa = :P_COD_EMPRESA',
'   and st.cod_posicion not in (''01-P1-P1-P1-P1-P1'')',
'   and (:P636_COD_SUC_DEPOSITO is null or st.cod_sucursal = :P636_COD_SUC_DEPOSITO)',
'   and (:P636_COD_BLOQUE is null or st.cod_bloque = :P636_COD_BLOQUE)',
'   and (:P636_COD_SUB_BLOQUE is null or st.cod_sub_bloque = :P636_COD_SUB_BLOQUE)',
'   and (:P636_COD_ESTANTE is null or st.cod_estante = :P636_COD_ESTANTE)',
'   and :P636_AUX = 1',
'   and (:P636_COD_RESPONSABLE is null or st.cod_posicion in (select x.cod_posicion',
'                                                                   from vw_st_responsables_posiciones x',
'                                                                   where x.cod_responsable = :P636_COD_RESPONSABLE)); */'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P636_AUX,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE,P636_COD_RESPONSABLE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte - R2'
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
 p_id=>wwv_flow_imp.id(218545888016660901)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>218545888016660901
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218545998900660902)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546015706660903)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546148394660904)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546293412660905)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Sub Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546377060660906)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Estante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546471171660907)
,p_db_column_name=>'COD_CUERPO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cuerpo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546589460660908)
,p_db_column_name=>'COD_NIVEL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Nivel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546663490660909)
,p_db_column_name=>'COD_POSICION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Posicion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546785107660910)
,p_db_column_name=>'ALTO_MTS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Alto Mts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546883783660911)
,p_db_column_name=>'ANCHO_MTS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ancho Mts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218546978859660912)
,p_db_column_name=>'LARGO_MTS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Largo Mts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547017744660913)
,p_db_column_name=>'PESO_KG'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Peso Kg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547185928660914)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547207920660915)
,p_db_column_name=>'FECHA_BAJA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Baja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547375073660916)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547439550660917)
,p_db_column_name=>'ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547510671660918)
,p_db_column_name=>'COD_USUARIO_BAJA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Usuario Baja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547607765660919)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547785754660920)
,p_db_column_name=>'REG_ID_ORDEN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Reg Id Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547844451660921)
,p_db_column_name=>'IND_CELDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ind Celda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218547958231660922)
,p_db_column_name=>'COD_RESPONSABLE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218548064335660923)
,p_db_column_name=>'ROWID'
,p_display_order=>220
,p_column_identifier=>'V'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(218579676492751774)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2185797'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_EMPRESA:COD_SUCURSAL:COD_BLOQUE:COD_SUB_BLOQUE:COD_ESTANTE:COD_CUERPO:COD_NIVEL:COD_POSICION:ALTO_MTS:ANCHO_MTS:LARGO_MTS:PESO_KG:FECHA_ALTA:FECHA_BAJA:COD_USUARIO_ALTA:ESTADO:COD_USUARIO_BAJA:IND_MIGRADO_OS:REG_ID_ORDEN:IND_CELDA:COD_RESPONSABLE'
||':'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217081682387856430)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_CONSULTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217081759371856431)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_ASIGNAR_RESPONSABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Asignar Responsable'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217081977844856433)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_REVOCAR_RESPONSABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Revocar Responsable'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217080765210856421)
,p_name=>'P636_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Responsable por Bloque;1,Responsable por sub-bloque;2,Responsable por estante;3'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar -- '
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217080839881856422)
,p_name=>'P636_COD_SUC_DEPOSITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Dep\00F3sito ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, s.cod_sucursal',
'        from sucursales s, st_sub_bloques sb',
'     where s.cod_empresa = :P_COD_EMPRESA',
'     and s.cod_empresa=sb.cod_empresa',
'     and s.cod_sucursal=sb.cod_sucursal',
'     group by  s.descripcion, s.cod_sucursal',
'       order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(217080908434856423)
,p_name=>'P636_DESC_SUC_DEPOSITO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Dep\00F3sito')
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
 p_id=>wwv_flow_imp.id(217081063966856424)
,p_name=>'P636_COD_BLOQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_BLOQUES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_bloque, cod_bloque',
'      from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_cod_sucursal  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar -- '
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(217081110560856425)
,p_name=>'P636_DESC_BLOQUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Bloque')
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
 p_id=>wwv_flow_imp.id(217081224071856426)
,p_name=>'P636_COD_SUB_BLOQUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Sub-Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUBLOQUES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :p_cod_sucursal',
'',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(217081314691856427)
,p_name=>'P636_DESC_SUB_BLOQUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Sub-Bloque')
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
 p_id=>wwv_flow_imp.id(217081451162856428)
,p_name=>'P636_COD_RESPONSABLE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, e.cod_empleado, decode(e.activo, ''S'', ''Activo'', ''Inactivo'') estado',
'from rh_empleados e, personas p',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona',
'order by p.nombre asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(217081552240856429)
,p_name=>'P636_DESC_RESPONSABLE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Responsable')
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
 p_id=>wwv_flow_imp.id(217082163493856435)
,p_name=>'P636_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217082263108856436)
,p_name=>'P636_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217083063119856444)
,p_name=>'P636_COD_ESTANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTANTES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_Estante, cod_estante',
' ',
'      from st_estantes',
'     where cod_empresa  = :P_COD_EMPRESA',
'       '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(217083176472856445)
,p_name=>'P636_DESC_ESTANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Estante')
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
 p_id=>wwv_flow_imp.id(218548186296660924)
,p_name=>'P636_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217082351019856437)
,p_name=>'DA_SUC_DEPOSITO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUC_DEPOSITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217082426708856438)
,p_event_id=>wwv_flow_imp.id(217082351019856437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P636_COD_SUC_DEPOSITO is not null THEN',
'		BEGIN',
'				select descripcion',
'				  into :P636_DESC_SUC_DEPOSITO',
'				  from sucursales',
'				 where cod_empresa  = :P_COD_EMPRESA',
'				   and cod_sucursal = :P636_COD_SUC_DEPOSITO;',
'		EXCEPTION',
'				when no_data_found then',
'						:P636_COD_SUC_DEPOSITO := NULL;',
unistr('						:P636_ERR := ''No se encuentra la sucursal. Favor verificar el c\00F3digo ingresado.'';'),
'				when others then',
'						:P636_COD_SUC_DEPOSITO := NULL;',
'						APEX_DEBUG.ERROR(''Error al consultar la sucursal. ''||sqlerrm);',
'		END;	',
'END IF;'))
,p_attribute_02=>'P636_COD_SUC_DEPOSITO'
,p_attribute_03=>'P636_DESC_SUC_DEPOSITO,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217082533726856439)
,p_name=>'DA_COD_BLOQUE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_BLOQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217082634073856440)
,p_event_id=>wwv_flow_imp.id(217082533726856439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_BLOQUE is not null then',
'	  if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'	  end if;',
'	',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'	  BEGIN',
'					BEGIN',
'						select desc_bloque,',
'							     cod_responsable',
'						  into :P636_DESC_BLOQUE,',
'						  	   vcod_responsable',
'						  from st_bloques',
'						 where cod_empresa  = :P_COD_EMPRESA',
'						   and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'						   and cod_bloque   = :P636_COD_BLOQUE;       ',
'				EXCEPTION     ',
'					  when no_data_found then',
'					      :P636_DESC_BLOQUE := null;',
unistr('								:P636_ERR := ''No se encuentra el bloque. Favor verificar el c\00F3digo ingresado.  '';'),
'',
'						when others then',
'						    :P636_DESC_BLOQUE := null;',
'								APEX_DEBUG.ERROR(''Error al consultar el bloque. ''||sqlerrm);',
'',
'				END;',
'				if vcod_responsable is not null and :P636_TIPO= ''1'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'						',
'					/*	valerta := find_alert( ''INFORMACION'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, ''Cancelar'' );',
'					  alerta( ''El bloque ''||:variables.cod_bloque||'' ya tiene asignado como responsable a ''||vdesc_responsable||',
unistr('					          ''\00BFDesea continuar?'',''Responsables de posiciones'',1, i);'),
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, '''' );',
'					  ',
'					  if i = ALERT_BUTTON2 THEN',
'								:variables.cod_bloque  := null;',
'								:P636_DESC_BLOQUE := null;',
'					  end if; */',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_BLOQUE,P636_COD_SUC_DEPOSITO,P636_TIPO'
,p_attribute_03=>'P636_DESC_BLOQUE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217082803069856442)
,p_name=>'DA_SUB_BLOQUE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUB_BLOQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217082901444856443)
,p_event_id=>wwv_flow_imp.id(217082803069856442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_SUB_BLOQUE is not null then',
'	  if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'	  end if;',
'	  ',
'	  if :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'	  end if;',
'	  ',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'	  BEGIN',
'				BEGIN',
'						select desc_sub_bloque,',
'								   cod_responsable',
'						  into :P636_DESC_SUB_BLOQUE,',
'						       vcod_responsable',
'						  from st_sub_bloques',
'						 where cod_empresa    = :P_COD_EMPRESA',
'						   and cod_sucursal   = :P636_COD_SUC_DEPOSITO',
'						   and cod_bloque     = :P636_COD_BLOQUE',
'						   and cod_sub_bloque = :P636_COD_SUB_BLOQUE;       ',
'				EXCEPTION ',
'						when no_data_found then',
'								:P636_DESC_SUB_BLOQUE := null;',
unistr('								:P636_ERR := ''No se encuentra el sub-bloque. Favor verificar el c\00F3digo ingresado. '';'),
'						when others then',
'								:P636_DESC_SUB_BLOQUE := null;',
'								APEX_DEBUG.ERROR(''Error al consultar el sub-bloque. ''||sqlerrm);',
'',
'				END;',
'				',
'				if vcod_responsable is not null and :P636_TIPO = ''2'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'						',
'					/*	valerta := find_alert( ''INFORMACION'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, ''Cancelar'' );',
'					  alerta( ''El sub-bloque ''||:P636_COD_SUB_BLOQUE||'' ya tiene asignado como responsable a ''||vdesc_responsable||',
unistr('					          ''\00BFDesea continuar?'',''Responsables de posiciones'',1, i);'),
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, '''' );',
'					  ',
'					  if i = ALERT_BUTTON2 THEN',
'								:P636_COD_SUB_BLOQUE  := null;',
'								:P636_DESC_SUB_BLOQUE := null;',
'					  end if; */',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_SUB_BLOQUE,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_TIPO'
,p_attribute_03=>'P636_DESC_SUB_BLOQUE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217083231646856446)
,p_name=>'DA_ESTANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_ESTANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217083395197856447)
,p_event_id=>wwv_flow_imp.id(217083231646856446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_ESTANTE is not null then',
'	  if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  end if;',
'	  ',
'	  if :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  end if;',
'	  ',
'	  if :P636_COD_SUB_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  end if;',
'	  ',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'	  BEGIN				',
'				BEGIN',
'						select e.desc_estante,',
'						       p.cod_responsable',
'						  into :P636_DESC_ESTANTE,',
'						       vcod_responsable',
'						  from st_posiciones p,',
'						  	   st_estantes e',
'					   where p.cod_empresa    = :P_COD_EMPRESA',
'					     and p.cod_sucursal   = :P636_COD_SUC_DEPOSITO',
'					     and p.cod_bloque     = :P636_COD_BLOQUE',
'					     and p.cod_sub_bloque = :P636_COD_SUB_BLOQUE',
'						   and p.cod_estante    = :P636_COD_ESTANTE',
'						   ',
'						   and p.cod_empresa    = e.cod_empresa',
'						   and p.cod_estante    = e.cod_estante',
'						   and rownum			      = 1;       ',
'				EXCEPTION ',
'						when no_Data_found then',
'								:P636_DESC_ESTANTE := null;',
unistr('								:P636_ERR := ''No se encuentra el estante. Favor verificar el c\00F3digo ingresado.  '';'),
'',
'						when others then',
'								:P636_DESC_ESTANTE := null;',
'								APEX_DEBUG.ERROR(''Error al consultar el estante. ''||sqlerrm);',
'',
'				END;',
'				',
'				if vcod_responsable is not null and :P636_TIPO = ''3'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'						',
'					/*	valerta := find_alert( ''INFORMACION'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, ''Cancelar'' );',
'					  alerta( ''El estante ''||:variables.cod_estante||'' ya tiene asignado como responsable a ''||vdesc_responsable||',
unistr('					          ''\00BFDesea continuar?'',''Responsables de posiciones'',1, i);'),
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, '''' );',
'					  ',
'					  if i = ALERT_BUTTON2 THEN',
'								:variables.cod_sub_bloque  := null;',
'								:variables.desc_sub_bloque := null;',
'					  end if; */',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_ESTANTE,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_COD_SUB_BLOQUE'
,p_attribute_03=>'P636_DESC_ESTANTE,P636_ERR'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217083460951856448)
,p_name=>'DA_RESPONSABLE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_RESPONSABLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217083527894856449)
,p_event_id=>wwv_flow_imp.id(217083460951856448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_RESPONSABLE is not null then',
'	  declare',
'				vactivo varchar2(1);	  ',
'	  begin',
'				begin',
'						select p.nombre,',
'								   e.activo',
'						  into :P636_DESC_RESPONSABLE,',
'						       vactivo',
'						  from rh_empleados e,',
'						  	   personas p',
'						 where e.cod_empresa = :P_COD_EMPRESA',
'						   and e.cod_Empleado= :P636_COD_RESPONSABLE',
'						   and e.cod_persona = p.cod_persona;',
'				exception',
'				    when no_data_found then',
'				        :P636_DESC_RESPONSABLE := null;',
unistr('						    :P636_ERR := ''No se encuentra el empleado responsable. Favor verificar el c\00F3digo ingresado. '';'),
'				    when others then',
'				    		:P636_DESC_RESPONSABLE := null;',
'						    APEX_DEBUG.ERROR(''Error al consultar el empleado responsable. ''||sqlerrm, 3);',
'				end;',
'				',
'				if nvl(vactivo, ''N'') = ''N'' then',
'					  :P636_DESC_RESPONSABLE := null;',
'				    :P636_ERR  := ''El empleado ingresado se encuentra inactivo. '';',
'',
'				end if;',
'		end;',
'else',
'		:P636_DESC_RESPONSABLE := null;',
'end if;'))
,p_attribute_02=>'P636_COD_RESPONSABLE'
,p_attribute_03=>'P636_DESC_RESPONSABLE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(218548270679660925)
,p_name=>'DA_CONSULTAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(217081682387856430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218548306347660926)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P636_AUX := 1;',
'END;'))
,p_attribute_02=>'P636_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218548429978660927)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217083688152856450)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_AUX'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218548566851660928)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217083688152856450)
);
wwv_flow_imp.component_end;
end;
/
