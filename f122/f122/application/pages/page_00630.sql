prompt --application/pages/page_00630
begin
--   Manifest
--     PAGE: 00630
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
 p_id=>630
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Listado de Encuestas de Clima Laboral'
,p_alias=>'GESTION-DE-ENCUESTAS'
,p_step_title=>'Gestion de Encuestas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20231003113346'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215147520488095301)
,p_plug_name=>'Listado de Encuestas'
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
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
'       DM$TENC',
'  from NGO$CLAB0100',
' where empr0100$id = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de Encuestas'
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
 p_id=>wwv_flow_imp.id(215147663865095302)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:629:&SESSION.::&DEBUG.::P629_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'AIBANEZ'
,p_internal_uid=>215147663865095302
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215147772753095303)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215147852957095304)
,p_db_column_name=>'FECH'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Fecha de Creaci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215147918615095305)
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
 p_id=>wwv_flow_imp.id(215148013683095306)
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
 p_id=>wwv_flow_imp.id(215148273465095308)
,p_db_column_name=>'EMPR0100$ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Empr0100$id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215148380806095309)
,p_db_column_name=>'OBSE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215148463484095310)
,p_db_column_name=>'NOMB'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215148522823095311)
,p_db_column_name=>'DM$TENC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(215358125810584798)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215148798008095313)
,p_db_column_name=>'DM$ACTIVO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('\00BFActivo?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(215158450056086857)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2151585'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMB:FECH:FDES:FHAS:DM$ACTIVO:OBSE:DM$TENC:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215148662058095312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(215147520488095301)
,p_button_name=>'bt_crear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:631:&SESSION.::&DEBUG.::P631_ID:'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216406030261308903)
,p_name=>'da_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(215148662058095312)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216406155067308904)
,p_event_id=>wwv_flow_imp.id(216406030261308903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215147520488095301)
);
wwv_flow_imp.component_end;
end;
/
