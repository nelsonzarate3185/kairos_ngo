prompt --application/pages/page_00629
begin
--   Manifest
--     PAGE: 00629
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
 p_id=>629
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Gestion de la encuesta'
,p_alias=>'GESTION-DE-LA-ENCUESTA'
,p_step_title=>'Gestion de la encuesta'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20231006122105'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114215483704739144)
,p_plug_name=>'Gestion de la Encuesta'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114215693370739146)
,p_plug_name=>'Encuesta'
,p_parent_plug_id=>wwv_flow_imp.id(114215483704739144)
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114215785481739147)
,p_plug_name=>'Grupo de Preguntas'
,p_parent_plug_id=>wwv_flow_imp.id(114215483704739144)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--accent13:t-Region--noBorder:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114215860408739148)
,p_plug_name=>'Preguntas'
,p_parent_plug_id=>wwv_flow_imp.id(114215483704739144)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--accent13:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215163718635070210)
,p_plug_name=>'REPORT GRUPO DE PREGUNTAS'
,p_parent_plug_id=>wwv_flow_imp.id(114215483704739144)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLAB0100$ID,',
'       ITEM,',
'       (SELECT UPPER(NOMB)',
'        FROM NGO$CCLA0100',
'        WHERE ID = C110.CCLA0100$ID) desc_categoria,',
'       CCLA0100$ID,',
'       DECODE(DM$ACTI, 1, ''SI'', 2, ''NO'') AS ACTIVO,',
'       CLAB0100$ID id_clab0100,',
'       NULL EDITAR,',
'       ROWID',
'  from NGO$CLAB0110 C110',
'  WHERE CLAB0100$ID = :P629_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P629_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT GRUPO DE PREGUNTAS'
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
 p_id=>wwv_flow_imp.id(215163839787070211)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>215163839787070211
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215164059577070213)
,p_db_column_name=>'CLAB0100$ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Clab0100$id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215164292422070215)
,p_db_column_name=>'ITEM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215166282204070235)
,p_db_column_name=>'CCLA0100$ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ccla0100$id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215166386585070236)
,p_db_column_name=>'ID_CLAB0100'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Id Clab0100'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(214213802003845730)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P629_EDITAR_GRUPO'',''#ROWID#''),$s(''P629_ITEM'',''#ITEM#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from NGO$clab0100 ',
'where id = :P629_ID',
'and FDES > SYSDATE'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(214213942689845731)
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
 p_id=>wwv_flow_imp.id(214214771153845739)
,p_db_column_name=>'ACTIVO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('\00BFActivo?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(214214852953845740)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(215260334109671455)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2152604'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:DESC_CATEGORIA:ACTIVO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215164620900070219)
,p_plug_name=>'REPORT PREGUNTAS'
,p_parent_plug_id=>wwv_flow_imp.id(114215483704739144)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CLAB0100$ID,',
'       CLAB0110$ITEM,',
'      (select nomb from ngo$ccla0100 c100,',
'                 ngo$clab0110 c110',
'            where c100.id = c110.ccla0100$id',
'            and c110.clab0100$id = c120.clab0100$id ',
'            and c110.item = c120.clab0110$item',
'            and rownum = 1) GRUPO,',
'            --- sacar rownum despues de limpiar la tabla',
'       ITEM,',
'       PREG,',
unistr('       DECODE(UMED0100$ID, 1,''SI/NO'', 2, ''N\00DAMERICA'', 3, ''ALFABETICA'') AS UNIDADM,'),
'       DECODE(DM$ACTI, 1, ''SI'', 2, ''NO'') AS ACTIVO,',
'       ROWID,',
'       NULL EDITAR',
'  from NGO$CLAB0120 c120',
'  WHERE CLAB0100$ID = :P629_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P629_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT PREGUNTAS'
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
 p_id=>wwv_flow_imp.id(215164714113070220)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>215164714113070220
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215164984051070222)
,p_db_column_name=>'CLAB0100$ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Clab0100$id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215165195570070224)
,p_db_column_name=>'ITEM'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215165830106070231)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215165916610070232)
,p_db_column_name=>'CLAB0110$ITEM'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Clab0110$item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215166069611070233)
,p_db_column_name=>'PREG'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Pregunta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215166451281070237)
,p_db_column_name=>'GRUPO'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Grupo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(215167707175070250)
,p_db_column_name=>'ROWID'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(214214996225845741)
,p_db_column_name=>'ACTIVO'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>unistr('\00BFActiva?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(217523172760173024)
,p_db_column_name=>'UNIDADM'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Unidad de Medida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218443080149451602)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:633:&SESSION.::&DEBUG.::P633_CLAB0100_ID,P633_EDITAR:#CLAB0100$ID#,#ROWID#'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from NGO$clab0100 ',
'where id = :P629_ID',
'and FDES > SYSDATE'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(215260971064671444)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2152610'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:PREG:UNIDADM:ACTIVO:GRUPO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(214213379238845725)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215166734364070240)
,p_plug_name=>'Crear/Editar Grupo'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216406277310308905)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_button_name=>'BT_EDITAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Editar'
,p_button_redirect_url=>'f?p=&APP_ID.:631:&SESSION.::&DEBUG.:631:P631_ID:&P629_ID.'
,p_icon_css_classes=>'fa-edit'
,p_grid_column_attributes=>'style= "margin-top:1.25rem;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215167458283070247)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(215166734364070240)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215163369845070206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114215785481739147)
,p_button_name=>'BT_AGREGAR_GRUPO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'<span class="material-icons"> group_add </span>'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from NGO$clab0100 ',
'where id = :P629_ID',
'and FDES > SYSDATE'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215163467126070207)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114215860408739148)
,p_button_name=>'BT_AGREGAR_PREGUNTA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'<span class="material-icons"> group_add </span>'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:633:&SESSION.::&DEBUG.:633:P633_CLAB0100_ID,P633_EDITAR:&P629_ID.,'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from NGO$clab0100 ',
'where id = :P629_ID',
'and FDES > SYSDATE'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215167360687070246)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(215166734364070240)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(215167520054070248)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114215483704739144)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:630:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114215967599739149)
,p_name=>'P629_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114216028546739150)
,p_name=>'P629_FECH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214213437755845726)
,p_name=>'P629_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(214213379238845725)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214214019506845732)
,p_name=>'P629_EDITAR_GRUPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(215163718635070210)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215162835416070201)
,p_name=>'P629_FDES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(215162944393070202)
,p_name=>'P629_FHAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(215163008436070203)
,p_name=>'P629_DM_ACTI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>unistr('\00BFActivo?')
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
 p_id=>wwv_flow_imp.id(215163126961070204)
,p_name=>'P629_OBSE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>7
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215166871727070241)
,p_name=>'P629_CCLA0100_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(215166734364070240)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'NGO$CCLA0100_ACT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(NOMB) D,',
'       ID R',
'FROM NGO$CCLA0100',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215166921990070242)
,p_name=>'P629_DM_ACTI_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(215166734364070240)
,p_prompt=>unistr('\00BFActiva?')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;1,NO;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215167030186070243)
,p_name=>'P629_CLAB0100_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(215166734364070240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215167164192070244)
,p_name=>'P629_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(215166734364070240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216406379282308906)
,p_name=>'P629_EMPRESA_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216406891388308911)
,p_name=>'P629_NOMB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216406966749308912)
,p_name=>'P629_TIPO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(114215693370739146)
,p_prompt=>'Tipo de Encuesta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216570222608393806)
,p_name=>'P629_RECARGAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(214213379238845725)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(215166508871070238)
,p_name=>'DA_AGREGAR_GRUPO'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(215163369845070206)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216426560512078322)
,p_event_id=>wwv_flow_imp.id(215166508871070238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P629_CLAB0100_ID:=:P629_ID;',
':P629_EDITAR_GRUPO:=null;'))
,p_attribute_03=>'P629_CLAB0100_ID,P629_EDITAR_GRUPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215166697078070239)
,p_event_id=>wwv_flow_imp.id(215166508871070238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215166734364070240)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214213089256845722)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(215167360687070246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214213201611845724)
,p_event_id=>wwv_flow_imp.id(214213089256845722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_item number;',
'    V_EXISTE NUMBER;',
'BEGIN',
':P629_ERR := null;',
'    IF :P629_CCLA0100_ID is not null and :P629_DM_ACTI_AUX is not null then',
'       ',
'        BEGIN',
'          APEX_DEBUG.ERROR(''ANTES DE IF ''||:P629_EDITAR_GRUPO);',
'',
'           IF :P629_EDITAR_GRUPO IS NULL THEN',
'',
'          APEX_DEBUG.ERROR(''INSERTAR ''||:P629_EDITAR_GRUPO);',
'      --  IF V_EXISTE = 0 THEN',
'            select nvl(max(item)+1,1) ',
'            into v_item',
'             from NGO$clab0110',
'              where clab0100$id = :P629_CLAB0100_ID;',
'',
'              /*  APEX_DEBUG.ERROR(''ERROR ASD: ''||:P629_CLAB0100_ID);',
'                APEX_DEBUG.ERROR(''ERROR ASD: ''|| V_ITEM);',
'                APEX_DEBUG.ERROR(''ERROR ASD: ''||:P629_CCLA0100_ID);',
'                APEX_DEBUG.ERROR(''ERROR ASD: ''||:P629_DM_ACTI_AUX);*/',
'',
'                INSERT INTO NGO$CLAB0110 (',
'                        clab0100$id, ',
'                        item, ',
'                        ccla0100$id, ',
'                        dm$acti    ',
'                ) VALUES (',
'                   :P629_CLAB0100_ID, ',
'                    v_item, ',
'                  :P629_CCLA0100_ID , ',
'                    :P629_DM_ACTI_AUX',
'                );   ',
'            ELSE',
'                            APEX_DEBUG.ERROR(''CCLA ASD: ''||:P629_CCLA0100_ID);',
'                APEX_DEBUG.ERROR(''ACTIAUX ASD: ''||:P629_DM_ACTI_AUX);',
'                  APEX_DEBUG.ERROR('':P629_CLAB ''||:P629_CLAB0100_ID);',
'                  APEX_DEBUG.ERROR('':P629_ITEM ''||:P629_ITEM);',
'                    APEX_DEBUG.ERROR(''UPDATE ''||:P629_EDITAR_GRUPO);',
'              BEGIN',
'                UPDATE NGO$CLAB0110 SET',
'                  ccla0100$id  = :P629_CCLA0100_ID,',
'                       dm$acti = :P629_DM_ACTI_AUX',
'                 where ROWID =:P629_EDITAR_GRUPO;-- clab0100$id  = :P629_CLAB0100_ID;',
'            EXCEPTION',
'                WHEN OTHERS THEN ',
'                    APEX_DEBUG.ERROR(''ERROR UPDATE: ''||SQLERRM);',
'                   :P629_ERR:=''Ha ocurrido el siguiente UPDATE:'' ||SQLERRM || ''id: ''||:P629_CLAB0100_ID;',
'            END;',
'            END IF;',
'            END;',
'    ELSE',
'        CASE',
'            when :P629_CCLA0100_ID is null then :P629_ERR := ''Por favor seleccione una categoria '';',
unistr('            when :P629_DM_ACTI is null then :P629_ERR := ''Por favor: ingrese el campo "\00BFACTIVO?"'';      '),
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR ASD: ''||SQLERRM);',
'       :P629_ERR:=''Ha ocurrido el siguiente error:'' ||SQLERRM || ''id: ''||:P629_CLAB0100_ID;',
'END;'))
,p_attribute_02=>'P629_CLAB0100_ID, P629_CCLA0100_ID, P629_DM_ACTI_AUX,P629_ITEM,P629_EDITAR_GRUPO'
,p_attribute_03=>'P629_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214214121414845733)
,p_event_id=>wwv_flow_imp.id(214213089256845722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215163718635070210)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P629_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214214282406845734)
,p_event_id=>wwv_flow_imp.id(214213089256845722)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se guardaron los datos correctamente'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P629_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214214382889845735)
,p_event_id=>wwv_flow_imp.id(214213089256845722)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215166734364070240)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P629_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214213680285845728)
,p_name=>'DA_ERR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P629_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214213762452845729)
,p_event_id=>wwv_flow_imp.id(214213680285845728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P629_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P629_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214214434957845736)
,p_name=>'DA_EDITAR_GRUPO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P629_EDITAR_GRUPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217166987780637245)
,p_event_id=>wwv_flow_imp.id(214214434957845736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P629_EDITAR_GRUPO is not null then',
'        select ',
'                        clab0100$id,  ',
'                        ccla0100$id, ',
'                        dm$acti',
'        into ',
'                   :P629_CLAB0100_ID, ',
'                  :P629_CCLA0100_ID , ',
'                    :P629_DM_ACTI_AUX',
'        from NGO$CLAB0110',
'        where rowid = :P629_EDITAR_GRUPO;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;',
'',
''))
,p_attribute_02=>'P629_EDITAR_GRUPO'
,p_attribute_03=>'P629_CLAB0100_ID, P629_CCLA0100_ID, P629_DM_ACTI_AUX'
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
 p_id=>wwv_flow_imp.id(214214628684845738)
,p_event_id=>wwv_flow_imp.id(214214434957845736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215166734364070240)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216535884028691101)
,p_name=>'da_refresh'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216406277310308905)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216536079299691103)
,p_event_id=>wwv_flow_imp.id(216535884028691101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214215417037845746)
,p_name=>'DA_CERRAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(215163467126070207)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214215577746845747)
,p_event_id=>wwv_flow_imp.id(214215417037845746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114215860408739148)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216570058418393804)
,p_event_id=>wwv_flow_imp.id(214215417037845746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215164620900070219)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216570459110393808)
,p_name=>'DA_REFRESCAR'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(215164620900070219)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216570538599393809)
,p_event_id=>wwv_flow_imp.id(216570459110393808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215164620900070219)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217167087200637246)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(215167458283070247)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217167184267637247)
,p_event_id=>wwv_flow_imp.id(217167087200637246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215166734364070240)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(218443237101451604)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT NOMB,',
'       FECH,',
'       FDES,',
'       FHAS,',
'    DECODE(nvl(DM$ACTI,2), 1, ''SI'', 2 , ''NO'') ACTI,',
'       OBSE,',
'        (SELECT N.DESCRIPCION',
'        FROM NGO$TIPO0100 N',
'        WHERE N.ID = DM$TENC ) TIPO',
'INTO    :P629_NOMB,',
'       :P629_FECH,',
'       :P629_FDES,',
'       :P629_FHAS,',
'       :P629_DM_ACTI,',
'       :P629_OBSE,',
'       :P629_TIPO',
'       ',
'FROM NGO$CLAB0100 CLA',
'WHERE ID = :P629_ID;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
