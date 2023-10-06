prompt --application/pages/page_00640
begin
--   Manifest
--     PAGE: 00640
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
 p_id=>640
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seleccion de Listado de Encuestas'
,p_alias=>'SELECCION-DE-LISTADO-DE-ENCUESTAS'
,p_step_title=>'Seleccion de Listado de Encuestas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20231005123827'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216428978990078346)
,p_plug_name=>unistr('Selecci\00F3n de Encuestas')
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216427846417078335)
,p_plug_name=>unistr('Selecci\00F3n de Encuestas')
,p_parent_plug_id=>wwv_flow_imp.id(216428978990078346)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FECH,',
'       FDES,',
'       FHAS,',
'    CASE WHEN DM$ACTI = 1 THEN',
'        ''SI''',
'    ELSE ',
'        ''NO''',
'    END  DM$ACTIVO,',
'       EMPR0100$ID,',
'       OBSE,',
'       NOMB,',
'       DM$TENC,',
'    --   ''<p onclick=alert("hola")> SELECCIONAR </p>'' SELECCIONAR,',
'       ROWID',
'  from NGO$CLAB0100 c100',
' where empr0100$id = :P_COD_EMPRESA',
' and DM$ACTI = 1',
' and  SYSDATE between FDES AND FHAS',
' and :P_COD_EMPLEADO in ',
' (select c130.COLA0100$ID',
' from NGO$CLAB0130 c130 ',
' WHERE c130.CLAB0100$ID = c100.id)',
' and not exists (',
'     select COLA0100$ID',
'     FROM NGO$CLAB0300 c300',
'    WHERE c300.CLAB0100$ID= c100.id',
'    and c300.COLA0100$ID = :P_COD_EMPLEADO',
'',
' )  ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Selecci\00F3n de Encuestas')
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
 p_id=>wwv_flow_imp.id(216427936579078336)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO hay encuestas seleccionadas'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:639:&SESSION.::&DEBUG.::P639_CLAB0100_ID,P639_NOMBRE:#ID#,#NOMB#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'FCARDOZO'
,p_internal_uid=>216427936579078336
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428001615078337)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428190403078338)
,p_db_column_name=>'FECH'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Fecha de Creac\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428293981078339)
,p_db_column_name=>'FDES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Vigente Desde'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428398203078340)
,p_db_column_name=>'FHAS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vigente Hasta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428499903078341)
,p_db_column_name=>'DM$ACTIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\00BFActivo?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428523768078342)
,p_db_column_name=>'EMPR0100$ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Empr0100$id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428688913078343)
,p_db_column_name=>'OBSE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428788717078344)
,p_db_column_name=>'NOMB'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216428882173078345)
,p_db_column_name=>'DM$TENC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Dm$tenc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(216429109954078348)
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(217151389420750572)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2171514'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMB:FECH:FDES:FHAS:OBSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(217974239802966513)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P_COD_EMPLEADO := 752;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
