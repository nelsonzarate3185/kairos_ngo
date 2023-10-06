prompt --application/pages/page_00635
begin
--   Manifest
--     PAGE: 00635
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
 p_id=>635
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Indicadores de Encuestas'
,p_alias=>'INDICADORES-DE-ENCUESTAS'
,p_step_title=>'Indicadores de Encuestas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//estilo de la card',
'.t-Cards--basic .t-Card-wrap, .t-Cards--compact .t-Card-wrap {',
'    border:0px !important;',
'',
'}',
'',
'.t-Cards--basic .t-Card-titleWrap, .t-Cards--compact .t-Card-titleWrap {',
'    background:#1256FF;',
'    height: 115px;',
'    text-align: center!important;',
'',
'}',
'',
'',
'.t-Cards--displaySubtitle .t-Card-subtitle {',
'    //text-align: center!important;',
'    font-size: 35px !important;',
'    margin-top: 27px !important;',
'}',
'',
'.t-Cards--basic .t-Card-title, .t-Cards--compact .t-Card-title {',
' //text-align: center !important;',
'  font-size: 20px;',
'  font-weight: 700 !important;',
'',
'}',
'',
'.t-Region-body {',
'     color: #1256FF;',
'}',
'',
'.t-Cards--displaySubtitle .t-Card-subtitle {',
'    color: white;',
'    font-weight: 700;',
'    font-size: 25px;',
'    margin-top: 15px;',
'}',
'',
'.t-Cards--featured .t-Card-titleWrap {',
'    color: #1256FF;',
'}',
'',
'.t-Card-title {',
'    color: white;',
'    font-weight: 700;',
'}',
'',
'.t-Cards--displaySubtitle .t-Card-subtitle {',
'    color: white;',
'    font-weight: 700 !important;',
'}',
'',
'.t-Region--scrollBody>.t-Region-bodyWrap>.t-Region-body, .t-Region--shadowScroll>.t-Region-bodyWrap>.t-Region-body {',
'    padding-top: 0;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20231006113826'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217520837629173001)
,p_plug_name=>'Indicadores de Encuestas'
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217520926166173002)
,p_plug_name=>'Parametros'
,p_parent_plug_id=>wwv_flow_imp.id(217520837629173001)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(217521363559173006)
,p_name=>unistr('Tasa de Participaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(217520837629173001)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Cards--displaySubtitle:t-Cards--basic:t-Cards--spanHorizontally:t-Cards--hideBody:t-Cards--animColorFill'
,p_region_attributes=>'style="margin-top:12px;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('	SELECT ''Tasa de participaci\00F3n'' card_title,'),
'        null card_link,',
'        round((SELECT COUNT(1)',
'        from NGO$CLAB0300 C300,',
'            RH_EMPLEADOS C100 ',
'        WHERE  C100.COD_EMPLEADO = C300.COLA0100$ID',
'        AND    C100.COD_EMPRESA = :P_COD_EMPRESA',
'        AND    C300.CLAB0100$ID = :P635_ENCUESTA',
'        AND    EXISTS (SELECT 1 ',
'                        FROM   NGO$CLAB0300 ',
'                        WHERE  COLA0100$ID = C100.COD_EMPLEADO',
'                        AND    CLAB0100$ID = :P635_ENCUESTA ',
'                      ))/',
'       nvl((SELECT ',
'                case when COUNT(1) > 0 then',
'                    COUNT(1)',
'                    else',
'                        1',
'                    end',
'        FROM   RH_EMPLEADOS C100',
'        WHERE  COD_EMPRESA = :P_COD_EMPRESA',
'       /* AND    (FBAJ IS NULL OR FBAJ > (SELECT FHAS ',
'                                        FROM   NGO$CLAB0100 ',
'                                        WHERE  ID = :P635_ENCUESTA))*/',
'        AND EXISTS (SELECT 1 FROM NGO$CLAB0130 WHERE CLAB0100$ID = :P635_ENCUESTA AND COLA0100$ID = C100.COD_EMPLEADO)                                        ',
'        AND :P635_ENCUESTA IS NOT NULL),1) * 100,2) || '' %'' AS card_subtitle',
'FROM DUAL;    '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P635_ENCUESTA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No hay datos.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(217521756559173010)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(217521817309173011)
,p_query_column_id=>2
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>20
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(217521934892173012)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>30
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217521473771173007)
,p_plug_name=>'Graficos'
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217521529789173008)
,p_plug_name=>'Estadisticas Customer Experience'
,p_parent_plug_id=>wwv_flow_imp.id(217521473771173007)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217523200961173025)
,p_plug_name=>'Estadisticas Recursos Humanos Nominal'
,p_parent_plug_id=>wwv_flow_imp.id(217521473771173007)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217523314244173026)
,p_plug_name=>'Estadisticas Recursos Humanos  Anonima'
,p_parent_plug_id=>wwv_flow_imp.id(217521473771173007)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217523845840173031)
,p_plug_name=>'Resultados por Grupos'
,p_parent_plug_id=>wwv_flow_imp.id(217521473771173007)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(217523950072173032)
,p_region_id=>wwv_flow_imp.id(217523845840173031)
,p_chart_type=>'bar'
,p_title=>'Promedio de Respuestas por Grupos'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_no_data_found_message=>'No hay datos.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(217524071153173033)
,p_chart_id=>wwv_flow_imp.id(217523950072173032)
,p_seq=>10
,p_name=>'Resultado por Grupos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC100.NOMB, ',
'       C110.ITEM, ',
'       (SELECT ROUND(AVG(U110.PESO),2)',
'        FROM NGO$CLAB0210 C210, NGO$UMED0110 U110, NGO$CLAB0120 C120, NGO$CLAB0200 C200',
'        WHERE C210.CLAB0200$ID = C200.ID',
'        AND C200.CLAB0100$ID = :P635_ENCUESTA',
'       -- AND C210.DM$ESSE = 2',
'       -- AND C210.DM$PERT = 2',
'        AND C210.UMED0110$ITEM = U110.ITEM',
'        AND C210.UMED0100$ID = U110.UMED0100$ID ',
'        AND C210.CLAB0120$ID = C120.ID',
'        AND C120.CLAB0110$ITEM = C110.ITEM) PROMEDIO,',
'       CASE',
'            WHEN (SELECT ROUND(AVG(U110.PESO),2)',
'                    FROM NGO$CLAB0210 C210, NGO$UMED0110 U110, NGO$CLAB0120 C120, NGO$CLAB0200 C200',
'                    WHERE C210.CLAB0200$ID = C200.ID',
'                    AND C200.CLAB0100$ID = :P635_ENCUESTA',
'                   -- AND C210.DM$ESSE = 2',
'                   -- AND C210.DM$PERT = 2',
'                    AND C210.UMED0110$ITEM = U110.ITEM',
'                    AND C210.UMED0100$ID = U110.UMED0100$ID ',
'                    AND C210.CLAB0120$ID = C120.ID',
'                    AND C120.CLAB0110$ITEM = C110.ITEM) >= TO_NUMBER(:P635_P_MAX) THEN ''#FFEA54''   ',
'            WHEN (SELECT ROUND(AVG(U110.PESO),2)',
'                    FROM NGO$CLAB0210 C210, NGO$UMED0110 U110, NGO$CLAB0120 C120, NGO$CLAB0200 C200',
'                    WHERE C210.CLAB0200$ID = C200.ID',
'                    AND C200.CLAB0100$ID = :P635_ENCUESTA',
'                  --  AND C210.DM$ESSE = 2',
'                  --  AND C210.DM$PERT = 2',
'                    AND C210.UMED0110$ITEM = U110.ITEM',
'                    AND C210.UMED0100$ID = U110.UMED0100$ID ',
'                    AND C210.CLAB0120$ID = C120.ID',
'                    AND C120.CLAB0110$ITEM = C110.ITEM) BETWEEN TO_NUMBER(:P635_P_MIN) AND TO_NUMBER(:P635_P_MAX) THEN ''#33FFD4''',
'            ELSE   ''#1256FF''  ',
'        END COLOR         ',
'        ',
'FROM NGO$CLAB0110 C110, NGO$CCLA0100 CC100',
'WHERE CLAB0100$ID = :P635_ENCUESTA',
'AND CC100.ID = C110.CCLA0100$ID',
'AND C110.DM$ACTI = 1'))
,p_ajax_items_to_submit=>'P635_ENCUESTA,P635_GRUPO,P635_P_MIN,P635_P_MAX'
,p_items_value_column_name=>'PROMEDIO'
,p_items_label_column_name=>'NOMB'
,p_color=>'&COLOR.'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_family=>'Arial'
,p_items_label_font_style=>'normal'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(217524147410173034)
,p_chart_id=>wwv_flow_imp.id(217523950072173032)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(217524220936173035)
,p_chart_id=>wwv_flow_imp.id(217523950072173032)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217521635762173009)
,p_plug_name=>unistr('Estad\00EDsticas por Pregunta')
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217522070699173013)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(217521635762173009)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u110.nomb, COUNT(C210.CLAB0200$ID) cantidad,',
'       round(count(1)/(select count(1) ',
'                   from NGO$clab0210 c210,',
'                        NGO$clab0200 c200,',
'                        NGO$clab0120 c120',
'                  where c210.clab0200$id = c200.id ',
'                  and   c120.id = c210.clab0120$id',
'                  and   c200.clab0100$id = :P635_ENCUESTA',
'                  and   c120.clab0110$item = :P635_GRUPO ',
'                  and   c200.empr0100$id = :P_COD_EMPRESA',
'                  and   c210.clab0120$id = :P635_PREGUNTA)*100,2)||''%'' porc',
'from NGO$umed0110 u110,',
'     NGO$clab0210 c210,',
'     NGO$clab0200 c200,',
'     NGO$clab0120 c120',
'where u110.umed0100$id = c210.umed0100$id ',
'and   u110.item = c210.umed0110$item',
'and   c210.clab0200$id = c200.id ',
'and   c120.id = c210.clab0120$id',
'and   c200.clab0100$id = :P635_ENCUESTA',
'and   c120.clab0110$item = :P635_GRUPO ',
'and   c210.clab0120$id = :P635_PREGUNTA',
'AND   c200.empr0100$id = :P_COD_EMPRESA',
'group by u110.nomb',
'ORDER BY COUNT(C210.CLAB0200$ID) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P635_ENCUESTA,P635_GRUPO,P635_PREGUNTA'
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
 p_id=>wwv_flow_imp.id(217522180805173014)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>217522180805173014
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217522254997173015)
,p_db_column_name=>'NOMB'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217522363249173016)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217522487773173017)
,p_db_column_name=>'PORC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Porcentaje'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(217571159227406888)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2175712'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMB:CANTIDAD:PORC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217522563299173018)
,p_plug_name=>'Promedio de Respuestas por Pregunta'
,p_parent_plug_id=>wwv_flow_imp.id(217521635762173009)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:white;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(217522607612173019)
,p_region_id=>wwv_flow_imp.id(217522563299173018)
,p_chart_type=>'donut'
,p_title=>'Promedio de Respuestas por Pregunta'
,p_width=>'380'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>2
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No hay datos.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(217522752987173020)
,p_chart_id=>wwv_flow_imp.id(217522607612173019)
,p_seq=>10
,p_name=>'Resultados por Pregunta'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u110.nomb, COUNT(C210.CLAB0200$ID) cantidad,',
'       round(count(1)/(select count(1) ',
'                   from NGO$clab0210 c210,',
'                        NGO$clab0200 c200,',
'                        NGO$clab0120 c120',
'                  where c210.clab0200$id = c200.id ',
'                  and   c120.id = c210.clab0120$id',
'                  and   c200.clab0100$id = :P635_ENCUESTA',
'                  and   c120.clab0110$item = :P635_GRUPO ',
'                  and   c200.empr0100$id = :P_COD_EMPRESA',
'                  and   c210.clab0120$id = :P635_PREGUNTA)*100,2)||''%'' porc',
'from NGO$umed0110 u110,',
'     NGO$clab0210 c210,',
'     NGO$clab0200 c200,',
'     NGO$clab0120 c120',
'where u110.umed0100$id = c210.umed0100$id ',
'and   u110.item = c210.umed0110$item',
'and   c210.clab0200$id = c200.id ',
'and   c120.id = c210.clab0120$id',
'and   c200.clab0100$id = :P635_ENCUESTA',
'and   c120.clab0110$item = :P635_GRUPO ',
'and   c210.clab0120$id = :P635_PREGUNTA',
'AND   c200.empr0100$id = :P_COD_EMPRESA',
'group by u110.nomb   '))
,p_ajax_items_to_submit=>'P635_ENCUESTA,P635_GRUPO,P635_PREGUNTA'
,p_items_value_column_name=>'CANTIDAD'
,p_items_label_column_name=>'NOMB'
,p_color=>'#3960fc'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'LABEL'
,p_items_label_font_size=>'10'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217521032353173003)
,p_name=>'P635_ENCUESTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(217520926166173002)
,p_prompt=>'Encuesta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMB D,',
'        ID R',
'FROM NGO$CLAB0100',
'WHERE EMPR0100$ID = :P_COD_EMPRESA'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(217521187603173004)
,p_name=>'P635_GRUPO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(217520926166173002)
,p_prompt=>'Grupo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select nomb from ngo$ccla0100 where id = c110.ccla0100$id) d,',
'       c110.item r ',
'from ngo$clab0110 c110',
'where c110.clab0100$id = :P635_ENCUESTA',
'and c110.dm$acti = 1;'))
,p_lov_cascade_parent_items=>'P635_ENCUESTA'
,p_ajax_items_to_submit=>'P635_ENCUESTA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217521219491173005)
,p_name=>'P635_PREGUNTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(217520926166173002)
,p_prompt=>'Pregunta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c120.preg d,',
'       c120.id r',
'from ngo$clab0120 c120,',
'     ngo$clab0110 c110',
'where c110.clab0100$id = c120.clab0100$id ',
'and   c110.item = c120.clab0110$item',
'and   c120.clab0100$id = :P635_ENCUESTA',
'and   c120.clab0110$item = :P635_GRUPO',
'AND C110.DM$ACTI = 1'))
,p_lov_cascade_parent_items=>'P635_ENCUESTA,P635_GRUPO'
,p_ajax_items_to_submit=>'P635_ENCUESTA,P635_GRUPO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(217524546035173038)
,p_name=>'P635_TIPO_ENC'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217524674681173039)
,p_name=>'P635_P_MIN'
,p_item_sequence=>970
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217524712046173040)
,p_name=>'P635_P_MAX'
,p_item_sequence=>980
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217524820158173041)
,p_name=>'P635_MIN_PESO'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217524968724173042)
,p_name=>'P635_MAX_PESO'
,p_item_sequence=>960
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217523449691173027)
,p_name=>'DA_OCULTAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217523550135173028)
,p_event_id=>wwv_flow_imp.id(217523449691173027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217521529789173008)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217523653175173029)
,p_event_id=>wwv_flow_imp.id(217523449691173027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217523314244173026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217523736441173030)
,p_event_id=>wwv_flow_imp.id(217523449691173027)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217523200961173025)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218443551425451607)
,p_event_id=>wwv_flow_imp.id(217523449691173027)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217522070699173013)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218443624583451608)
,p_event_id=>wwv_flow_imp.id(217523449691173027)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217522563299173018)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217524355298173036)
,p_name=>'da_encuesta'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P635_ENCUESTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217524466570173037)
,p_event_id=>wwv_flow_imp.id(217524355298173036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('-- ESTE SERVER SIDE CALCULA PUNTOS M\00CDNIMOS Y M\00C1XIMOS PARA LOS COLORES EN EL GR\00C1FICO DE PROMEDIO POR GRUPO'),
'IF :P635_ENCUESTA IS NOT NULL THEN',
'    BEGIN',
'        /*SELECT MAX(U110.PESO), MIN(U110.PESO)',
'        INTO :P635_MAX_PESO, :P635_MIN_PESO',
'        FROM NGO$CLAB0210 C210, NGO$UMED0100 U100, NGO$CLAB0200 C200, NGO$UMED0110 U110',
'        WHERE C210.UMED0100$ID = U100.ID',
'        AND C210.CLAB0200$ID = C200.ID',
'        AND C200.CLAB0100$ID = :P635_ENCUESTA',
'        AND U110.UMED0100$ID = U100.ID',
'        AND C210.UMED0100$ID = U100.ID; */',
'',
'            SELECT MAX(U110.PESO), MIN(U110.PESO)',
'            INTO :P635_MAX_PESO, :P635_MIN_PESO',
'            FROM  NGO$UMED0100 U100, NGO$CLAB0200 C200, NGO$UMED0110 U110',
'            WHERE C200.CLAB0100$ID = :P635_ENCUESTA',
'            AND U110.UMED0100$ID = U100.ID;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P635_MIN_PESO := 0;',
'            :P635_MAX_PESO := 100;',
'    END;',
'ELSE',
'    :P635_MIN_PESO := 0;',
'    :P635_MAX_PESO := 100;    ',
'END IF;',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'DECLARE',
'VUNO NUMBER;',
'VDOS NUMBER;',
'BEGIN',
'    VUNO := (TO_NUMBER(:P635_MAX_PESO) * 30/100); ',
'    VDOS := VUNO * 2;',
'    :P635_P_MIN := VUNO;',
'    :P635_P_MAX := VDOS;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'BEGIN',
'    SELECT DM$TENC ',
'    INTO :P635_TIPO_ENC ',
'    FROM NGO$CLAB0100 ',
'    WHERE ID = :P635_ENCUESTA;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;        ',
''))
,p_attribute_02=>'P635_ENCUESTA'
,p_attribute_03=>'P635_MIN_PESO,P635_MAX_PESO,P635_P_MIN,P635_P_MAX,P635_TIPO_ENC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217525006377173043)
,p_event_id=>wwv_flow_imp.id(217524355298173036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217521363559173006)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217973408815966505)
,p_event_id=>wwv_flow_imp.id(217524355298173036)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217523845840173031)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217973065395966501)
,p_name=>'da_pregunta'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P635_PREGUNTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218443377425451605)
,p_event_id=>wwv_flow_imp.id(217973065395966501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217522070699173013)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218443481015451606)
,p_event_id=>wwv_flow_imp.id(217973065395966501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217522563299173018)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217973157705966502)
,p_event_id=>wwv_flow_imp.id(217973065395966501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217522070699173013)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217973285501966503)
,p_event_id=>wwv_flow_imp.id(217973065395966501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217522563299173018)
);
wwv_flow_imp.component_end;
end;
/
