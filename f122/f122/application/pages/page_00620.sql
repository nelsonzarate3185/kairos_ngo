prompt --application/pages/page_00620
begin
--   Manifest
--     PAGE: 00620
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
 p_id=>620
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Perfil del colaborador'
,p_alias=>'PERFIL-DEL-COLABORADOR'
,p_step_title=>'Perfil del colaborador'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230929153909'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209171252349799118)
,p_plug_name=>'Perfil del colaborador'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209171533374799121)
,p_plug_name=>'Tabs perfil'
,p_parent_plug_id=>wwv_flow_imp.id(209171252349799118)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209171634506799122)
,p_plug_name=>'Imagen del perfil'
,p_parent_plug_id=>wwv_flow_imp.id(209171533374799121)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209171703949799123)
,p_plug_name=>'Datos Personales'
,p_parent_plug_id=>wwv_flow_imp.id(209171533374799121)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209172601203799132)
,p_plug_name=>'Datos Personales 1'
,p_parent_plug_id=>wwv_flow_imp.id(209171703949799123)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209172759775799133)
,p_plug_name=>'Datos Personales 2'
,p_parent_plug_id=>wwv_flow_imp.id(209171703949799123)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209172055452799126)
,p_plug_name=>'Datos laborales'
,p_parent_plug_id=>wwv_flow_imp.id(209171533374799121)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209888906955124205)
,p_plug_name=>'Datos laborales 1'
,p_parent_plug_id=>wwv_flow_imp.id(209172055452799126)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209889068817124206)
,p_plug_name=>'Datos laborales 2'
,p_parent_plug_id=>wwv_flow_imp.id(209172055452799126)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209172124063799127)
,p_plug_name=>'Grupo familiar'
,p_parent_plug_id=>wwv_flow_imp.id(209171533374799121)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210513452800341447)
,p_plug_name=>'Hermanos'
,p_parent_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209893326098124249)
,p_plug_name=>'Hermanos'
,p_parent_plug_id=>wwv_flow_imp.id(210513452800341447)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id P_ID,',
'    C001 COD_EMPLEADO,                             ',
'    C002 NOMBRE,',
'    C004 APELLIDO,',
'    C005 FECHA_NACIMIENTO,',
'    C006 PARENTESCO,',
'    C007 OBSERVACION,',
'    C008 DISCAPACIDAD,',
'    C009 R_ID',
'    ,null ELIMINAR',
'from apex_collections',
'WHERE COLLECTION_NAME= ''COL_GRUPO_FAMILIAR''',
'AND TRIM(C006) = ''hermano''',
'and nvl(c010,''P'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Hermanos'
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
 p_id=>wwv_flow_imp.id(210508919582341402)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Nada que mostrar'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>210508919582341402
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509082029341403)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509162551341404)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509210848341405)
,p_db_column_name=>'APELLIDO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Apellido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509397761341406)
,p_db_column_name=>'FECHA_NACIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Nacimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509478853341407)
,p_db_column_name=>'PARENTESCO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Parentesco'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509505130341408)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509676974341409)
,p_db_column_name=>'DISCAPACIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Discapacidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509712287341410)
,p_db_column_name=>'R_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511763962341430)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P620_SEQ_ID_ELIMINAR_FAM'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210513243040341445)
,p_db_column_name=>'P_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(210606138365886430)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2106062'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210513540550341448)
,p_plug_name=>'Hijos'
,p_parent_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209893499484124250)
,p_plug_name=>'Hijos'
,p_parent_plug_id=>wwv_flow_imp.id(210513540550341448)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id P_ID,',
'    C001 COD_EMPLEADO,                             ',
'    C002 NOMBRE,',
'    C004 APELLIDO,',
'    C005 FECHA_NACIMIENTO,',
'    C006 PARENTESCO,',
'    C007 OBSERVACION,',
'    C008 DISCAPACIDAD,',
'    C009 R_ID',
'    ,null ELIMINAR',
'from apex_collections',
'WHERE COLLECTION_NAME= ''COL_GRUPO_FAMILIAR''',
'AND TRIM(C006) = ''hijo''',
'and nvl(c010,''P'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Hijos'
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
 p_id=>wwv_flow_imp.id(210509833486341411)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Nada que mostrar'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>210509833486341411
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210509948598341412)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510042102341413)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510190276341414)
,p_db_column_name=>'APELLIDO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Apellido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510240893341415)
,p_db_column_name=>'FECHA_NACIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Nacimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510326968341416)
,p_db_column_name=>'PARENTESCO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Parentesco'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510494870341417)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510557863341418)
,p_db_column_name=>'DISCAPACIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Discapacidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510618734341419)
,p_db_column_name=>'R_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511849361341431)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P620_SEQ_ID_ELIMINAR_FAM'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210513122453341444)
,p_db_column_name=>'P_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(210606734845886417)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2106068'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:FECHA_NACIMIENTO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210513621252341449)
,p_plug_name=>'Personas con discapacidad o capacidades diferentes a cargo'
,p_parent_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210508818105341401)
,p_plug_name=>'Personas con discapacidad o capacidades diferentes a cargo'
,p_parent_plug_id=>wwv_flow_imp.id(210513621252341449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id P_ID,',
'    C001 COD_EMPLEADO,                             ',
'    C002 NOMBRE,',
'    C004 APELLIDO,',
'    C005 FECHA_NACIMIENTO,',
'    C006 PARENTESCO,',
'    C007 OBSERVACION,',
'    C008 DISCAPACIDAD,',
'    C009 R_ID',
'from apex_collections',
'WHERE COLLECTION_NAME= ''COL_GRUPO_FAMILIAR''',
'AND C008 = ''S'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Personas con discapacidad o capacidades diferentes a cargo'
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
 p_id=>wwv_flow_imp.id(210510742712341420)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Nada que mostrar'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>210510742712341420
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510868708341421)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210510995941341422)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511055342341423)
,p_db_column_name=>'APELLIDO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Apellido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511137902341424)
,p_db_column_name=>'FECHA_NACIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Nacimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511224614341425)
,p_db_column_name=>'PARENTESCO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Parentesco'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511389712341426)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Discapacidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511480040341427)
,p_db_column_name=>'DISCAPACIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Discapacidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210511526924341428)
,p_db_column_name=>'R_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210513010820341443)
,p_db_column_name=>'P_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(210607302656886408)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2106074'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:OBSERVACION:PARENTESCO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211069186249732502)
,p_plug_name=>'AGREGAR FAMILIAR'
,p_parent_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209172258529799128)
,p_plug_name=>'Contactos en caso de emergencia'
,p_parent_plug_id=>wwv_flow_imp.id(209171533374799121)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209891729287124233)
,p_plug_name=>'Perfil Academico'
,p_parent_plug_id=>wwv_flow_imp.id(209171533374799121)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209890936517124225)
,p_plug_name=>unistr('Perfil acad\00E9mico 1')
,p_parent_plug_id=>wwv_flow_imp.id(209891729287124233)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209891003578124226)
,p_plug_name=>unistr('Perfil acad\00E9mico 2')
,p_parent_plug_id=>wwv_flow_imp.id(209891729287124233)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209891189593124227)
,p_plug_name=>unistr('Perfil acad\00E9mico 3')
,p_parent_plug_id=>wwv_flow_imp.id(209891729287124233)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210513785602341450)
,p_plug_name=>'Idiomas'
,p_parent_plug_id=>wwv_flow_imp.id(209891729287124233)
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209891259796124228)
,p_plug_name=>unistr('Perfil acad\00E9mico 4')
,p_parent_plug_id=>wwv_flow_imp.id(210513785602341450)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id P_ID,',
'    C001 COD_EMPLEADO,                             ',
'    C002 IDIOMA ,',
'    C004 LEE ,',
'    C005 ESCRIBE ,',
'    C006 CONVERSA ,',
'    C009 R_ID,',
'    null Eliminar',
'from apex_collections',
'WHERE COLLECTION_NAME= ''COL_IDIOMA''',
'AND NVL(C010,''P'') <> ''B'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Perfil acad\00E9mico 4')
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
 p_id=>wwv_flow_imp.id(210512083390341433)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Nada que mostrar.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>210512083390341433
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512141909341434)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512283862341435)
,p_db_column_name=>'IDIOMA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Idioma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512397308341436)
,p_db_column_name=>'LEE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512472217341437)
,p_db_column_name=>'ESCRIBE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Escribe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512580424341438)
,p_db_column_name=>'CONVERSA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Conversa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512643106341439)
,p_db_column_name=>'R_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512795058341440)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P620_SEQ_ID_ELIMINAR_IDIOMA'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210512967804341442)
,p_db_column_name=>'P_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(210630011927537502)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2106301'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDIOMA:LEE:ESCRIBE:CONVERSA:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211072402198732535)
,p_plug_name=>'AGREGAR IDIOMA'
,p_parent_plug_id=>wwv_flow_imp.id(210513785602341450)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211229860455358537)
,p_plug_name=>'Como usar el mapa'
,p_parent_plug_id=>wwv_flow_imp.id(209171252349799118)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_region_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" '
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211231006134358549)
,p_plug_name=>'Mapa'
,p_parent_plug_id=>wwv_flow_imp.id(209171252349799118)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_region_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" '
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25,-57'
,p_attribute_02=>'8'
,p_attribute_03=>'400'
,p_attribute_04=>'P620_LATITUD_LONGITUD'
,p_attribute_05=>'16'
,p_attribute_07=>'N'
,p_attribute_08=>'P620_BUSQUEDA'
,p_attribute_11=>'P620_DIRECCION'
,p_attribute_12=>'N'
,p_attribute_17=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211227474421358513)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209173822130799144)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_button_name=>'BT_VER_MAPA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Ver Mapa'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-map'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209174137511799147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_button_name=>'BT_AYUDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Ayuda'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-info-circle'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209172556463799131)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(209171634506799122)
,p_button_name=>'BT_CAMBIAR_IMAGEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cambiar Imagen'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-camera'
,p_grid_new_row=>'Y'
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209174201580799148)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Buscar'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209173959112799145)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_button_name=>'BT_LIMPIAR_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Limpiar busqueda'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-eraser'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210513389971341446)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_button_name=>'BT_AGREGAR_FAMILIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Familiar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209174033088799146)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_button_name=>'BT_USAR_INFO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Usar info'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-long-arrow-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209174317145799149)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_button_name=>'BT_MI_UBICACION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Mi ubicaci\00F3n')
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-map-marker'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211073216413732543)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(211072402198732535)
,p_button_name=>'bt_cancelar_idioma'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211070160629732512)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_button_name=>'BT_CANCELAR_FAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211073125791732542)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(211072402198732535)
,p_button_name=>'BT_ACEPTAR_IDIOMA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211070087456732511)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_button_name=>'BT_ACEPTAR_FAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209172495972799130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(209171252349799118)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211069022941732501)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(210513785602341450)
,p_button_name=>'BT_AGREGAR_IDIOMA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Idioma'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209172883287799134)
,p_name=>'P620_DIRECCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209172601203799132)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(209172975165799135)
,p_name=>'P620_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209172601203799132)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CI.cod_ciudad || ''-'' ||ci.DESCRIPCION d,  CI.cod_ciudad r',
'          ',
'          from paises p, provincias pro, ciudades ci',
'         where p.cod_pais = ''PAR''',
'           AND P.COD_PAIS = PRO.COD_PAIS',
'           AND PRO.COD_PAIS = CI.COD_PAIS',
'           AND PRO.COD_PROVINCIA = CI.COD_PROVINCIA',
'           AND PRO.COD_PROVINCIA = :P620_DEPARTAMENTO',
'         GROUP BY CI.DESCRIPCION, CI.cod_ciudad',
'         order by ci.descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_lov_cascade_parent_items=>'P620_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(209173077561799136)
,p_name=>'P620_DEPARTAMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209172601203799132)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRO.COD_PROVINCIA || ''-'' ||pro.DESCRIPCION d, PRO.COD_PROVINCIA r',
'   ',
'from paises p, provincias pro ',
'where p.cod_pais = ''PAR''',
'AND P.COD_PAIS = PRO.COD_PAIS',
' ',
' ',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(209173127414799137)
,p_name=>'P620_BARRIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209172601203799132)
,p_prompt=>'Barrio'
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
 p_id=>wwv_flow_imp.id(209888562730124201)
,p_name=>'P620_NRO_CELULAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_prompt=>'Nro. Celular'
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
 p_id=>wwv_flow_imp.id(209888677017124202)
,p_name=>'P620_TIPO_MOVIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_prompt=>'Forma  Translado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Movilidad Propia;MP,Transporte P\00FAblico;TP,Bicicleta;BI')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209888734670124203)
,p_name=>'P620_ESTADO_CIVIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_prompt=>'Estado Civil'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION d , COD_ESTADO_CIVIL r',
'FROM ',
'estados_civiles  ',
'ORDER BY COD_ESTADO_CIVIL'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209888865047124204)
,p_name=>'P620_TIEMPO_TRASLADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(209172759775799133)
,p_prompt=>'Tiempo de traslado (En minutos)'
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
 p_id=>wwv_flow_imp.id(209889156892124207)
,p_name=>'P620_FECHA_INGRESO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209888906955124205)
,p_prompt=>'Desde cuando trabajas en NGO?'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(209889255067124208)
,p_name=>'P620_VACACION_PEND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209888906955124205)
,p_prompt=>'Vacaciones pendientes de uso (en dias)'
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
 p_id=>wwv_flow_imp.id(209889399095124209)
,p_name=>'P620_JEFE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209888906955124205)
,p_prompt=>'Jefe'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre d, cod_empleado r ',
'FROM vw_rh_superiores   ',
'ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209889403874124210)
,p_name=>'P620_EXPERIENCIA_ANT1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209888906955124205)
,p_prompt=>unistr('Experiencia laboral N\00B0 1')
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
 p_id=>wwv_flow_imp.id(209889590498124211)
,p_name=>'P620_EXPERIENCIA_ANT2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209888906955124205)
,p_prompt=>unistr('Experiencia laboral N\00B0 2')
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
 p_id=>wwv_flow_imp.id(209889618285124212)
,p_name=>'P620_AREA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECCION||''-''||DESCRIPCION d, COD_SECCION r',
'FROM vw_rh_areas ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(209889762053124213)
,p_name=>'P620_CARGO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>'Cargo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  COD_CARGO||''-''||DESCRIPCION d, COD_CARGO r',
'FROM rh_cargos   ',
'WHERE  cod_empresa = 1 ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(209889864383124214)
,p_name=>'P620_VACACION_PERIODO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>unistr(' Vacaciones del per\00EDodo (indicar a\00F1o)')
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
 p_id=>wwv_flow_imp.id(209889929718124215)
,p_name=>'P620_CARGO_ANT1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>'Cargo'
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
 p_id=>wwv_flow_imp.id(209890014962124216)
,p_name=>'P620_TIEMPO_EXP_ANT1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>unistr('Antig\00FCedad')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209890383956124219)
,p_name=>'P620_CARGO_ANT2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>'Cargo'
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
 p_id=>wwv_flow_imp.id(209890452596124220)
,p_name=>'P620_TIEMPO_EXP_ANT2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(209889068817124206)
,p_prompt=>unistr('Antig\00FCedad')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209890584762124221)
,p_name=>'P620_NOMBRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_prompt=>'Nombre y Apellido'
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
 p_id=>wwv_flow_imp.id(209890620904124222)
,p_name=>'P620_PARENTESCO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_prompt=>'Parentesco'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209890705481124223)
,p_name=>'P620_DIRECCION_CONTAC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_prompt=>unistr('Direcci\00F3n contacto')
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
 p_id=>wwv_flow_imp.id(209890852456124224)
,p_name=>'P620_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209891318448124229)
,p_name=>'P620_TITULO_SECUNDARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209890936517124225)
,p_prompt=>'Titulo Secundario'
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
 p_id=>wwv_flow_imp.id(209891422332124230)
,p_name=>'P620_ESTADO_SECUNDARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209891189593124227)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cursando;cursando,Finalizado;finalizado'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209891573576124231)
,p_name=>'P620_INSTITUCION_SECUNDARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209891003578124226)
,p_prompt=>unistr('Instituci\00F3n')
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
 p_id=>wwv_flow_imp.id(209891669006124232)
,p_name=>'P620_ANHO_SECUNDARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209891189593124227)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209891887459124234)
,p_name=>'P620_TITULO_UNIVERSITARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209890936517124225)
,p_prompt=>'Titulo Universitario'
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
 p_id=>wwv_flow_imp.id(209891936522124235)
,p_name=>'P620_INSTITUCION_UNIVERSITARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209891003578124226)
,p_prompt=>unistr('Instituci\00F3n')
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
 p_id=>wwv_flow_imp.id(209892043648124236)
,p_name=>'P620_ESTADO_UNIVERSITARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209891189593124227)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cursando;cursando,Finalizado;finalizado'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209892120329124237)
,p_name=>'P620_ANHO_UNIVERSITARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209891189593124227)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209892245124124238)
,p_name=>'P620_TITULO_POSTGRADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209890936517124225)
,p_prompt=>'Postgrado'
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
 p_id=>wwv_flow_imp.id(209892365889124239)
,p_name=>'P620_INSTITUCION_POSTGRADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209891003578124226)
,p_prompt=>unistr('Instituci\00F3n')
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
 p_id=>wwv_flow_imp.id(209892489991124240)
,p_name=>'P620_ESTADO_POSTGRADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209891189593124227)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cursando;cursando,Finalizado;finalizado'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209892516336124241)
,p_name=>'P620_ANHO_POSTGRADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209891189593124227)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209892656603124242)
,p_name=>'P620_NOMBRE_PADRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_prompt=>'Nombre del Padre'
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
 p_id=>wwv_flow_imp.id(209892705220124243)
,p_name=>'P620_NOMBRE_MADRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_prompt=>'Nombre de la Madre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209892874654124244)
,p_name=>'P620_NOMBRE_CONYUGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_prompt=>'Nombre del Conyuge'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210511927464341432)
,p_name=>'P620_SEQ_ID_ELIMINAR_FAM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210512844278341441)
,p_name=>'P620_SEQ_ID_ELIMINAR_IDIOMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210513785602341450)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211069432498732505)
,p_name=>'P620_A_NOMBRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211069514550732506)
,p_name=>'P620_A_FECHA_NACIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_prompt=>'Fecha de Nacimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(211069674722732507)
,p_name=>'P620_A_OBSERVACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_prompt=>'Tipo discapacidad'
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
 p_id=>wwv_flow_imp.id(211069785183732508)
,p_name=>'P620_A_APELLIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211069888498732509)
,p_name=>'P620_A_PARENTESCO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_prompt=>'Parentesco'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Hijo;hijo,Hermano;hermano'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211069969525732510)
,p_name=>'P620_A_DISCAPACIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_prompt=>unistr('\00BFPose\00E9 alguna discapacidad?')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211070618737732517)
,p_name=>'P620_MENSAJE_ERROR_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(211069186249732502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211072557761732536)
,p_name=>'P620_A_IDIOMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211072402198732535)
,p_prompt=>'Idioma'
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
 p_id=>wwv_flow_imp.id(211072634856732537)
,p_name=>'P620_A_CONVERSA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211072402198732535)
,p_prompt=>'Nivel conversa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Nivel conversa;Nivel conversa,Basico;Basico,Bien;Bien,Muy Bien;Muy Bien,Excelente;Excelente'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211072716794732538)
,p_name=>'P620_A_LEE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(211072402198732535)
,p_prompt=>'Nivel lee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Nivel lee;Nivel lee,Basico;Basico,Bien;Bien,Muy Bien;Muy Bien,Excelente;Excelente'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211072963426732540)
,p_name=>'P620_A_ESCRIBE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211072402198732535)
,p_prompt=>'Nivel escribe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Nivel escribe;Nivel escribe,Basico;Basico,Bien;Bien,Muy Bien;Muy Bien,Excelente;Excelente'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211227571013358514)
,p_name=>'P620_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211227600155358515)
,p_name=>'P620_CORREO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211227734829358516)
,p_name=>'P620_FECHA_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211227863993358517)
,p_name=>'P620_URL_CV'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211227937584358518)
,p_name=>'P620_FECHA_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211228089614358519)
,p_name=>'P620_LATITUD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211228115673358520)
,p_name=>'P620_LONGITUD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(211227474421358513)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211228355692358522)
,p_name=>'P620_APELLIDO_CONTACTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211228413459358523)
,p_name=>'P620_OBS_CONTACTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229159078358530)
,p_name=>'P620_ROWID_CONTACTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(209172258529799128)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229205421358531)
,p_name=>'P620_ROWID_SECUNDARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209890936517124225)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229336593358532)
,p_name=>'P620_ROWID_UNIVERSITARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209890936517124225)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229428487358533)
,p_name=>'P620_ROWID_POSTGRADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209890936517124225)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229528257358534)
,p_name=>'P620_ROWID_NOMBRE_PADRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229682647358535)
,p_name=>'P620_ROWID_NOMBRE_MADRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211229761634358536)
,p_name=>'P620_ROWID_NOMBRE_CONYUGUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(209172124063799127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211230535437358544)
,p_name=>'P620_TEXTO_AYUDA_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211229860455358537)
,p_prompt=>'Informacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>3
,p_tag_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211230646673358545)
,p_name=>'P620_TEXTO_AYUDA_3'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(211229860455358537)
,p_prompt=>'Informacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>2
,p_tag_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211230785725358546)
,p_name=>'P620_TEXTO_AYUDA_4'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(211229860455358537)
,p_prompt=>'Informacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>2
,p_tag_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213325819827318551)
,p_name=>'P620_TEXTO_AYUDA_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211229860455358537)
,p_prompt=>'Informacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>1
,p_tag_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold;" readonly'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(213360083435114206)
,p_name=>'P620_LATITUD_LONGITUD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(211231006134358549)
,p_prompt=>'Coordenadas'
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
 p_id=>wwv_flow_imp.id(213360164002114207)
,p_name=>'P620_BUSQUEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211231006134358549)
,p_prompt=>'Busqueda'
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
 p_id=>wwv_flow_imp.id(215288461645271513)
,p_name=>'P620_FILE_BROWSER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209171634506799122)
,p_prompt=>'File Browser'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215288520137271514)
,p_name=>'P620_DISPLAY_IMAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209171634506799122)
,p_prompt=>'Display Image'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width: 20%;"'
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NGOCOPERFILES.FN_GET_BLOB_FROM_FILE(P_DIR => ''UPLOAD_IMAGE_CAP'', --CAMBIAR DIRECTORIO',
'                                         P_FILE_NAME  => a.nombre_archivo ) adjunto',
'FROM wngo_perfiles a ',
'WHERE a.cod_empleado = :P_COD_EMPLEADO ;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215288819018271517)
,p_name=>'P620_NOMBRE_ARCHIVO_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209171634506799122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213360292979114208)
,p_validation_name=>'ESTADO_CIVIL_OBLIGATORIO'
,p_validation_sequence=>10
,p_validation=>'P620_ESTADO_CIVIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El estado civil es un campo obligatorio.'
,p_when_button_pressed=>wwv_flow_imp.id(209172495972799130)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213360378814114209)
,p_validation_name=>'DIRECCION_OBLIGATORIA'
,p_validation_sequence=>20
,p_validation=>'P620_DIRECCION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('La direcci\00F3n es un campo obligatorio.')
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361109510114217)
,p_validation_name=>'CIUDAD_OBLIGATORIA'
,p_validation_sequence=>30
,p_validation=>'P620_CIUDAD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La ciudad es un campo obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361367435114219)
,p_validation_name=>'CELULAR_OBLIGATORIO'
,p_validation_sequence=>40
,p_validation=>'P620_NRO_CELULAR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El celular es un campo obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361477928114220)
,p_validation_name=>'FORMA_TRASLADO_OBLIGATORIA'
,p_validation_sequence=>50
,p_validation=>'P620_TIPO_MOVIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar la forma de traslado es obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361589422114221)
,p_validation_name=>'FECHA_ING_NGO_OBLIGATORIA'
,p_validation_sequence=>60
,p_validation=>'P620_FECHA_INGRESO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha de ingreso a NGO es un campo obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361720890114223)
,p_validation_name=>'AREA_OBLIGATORIA'
,p_validation_sequence=>70
,p_validation=>'P620_AREA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Indicar el \00C1rea es obligatorio.')
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361888980114224)
,p_validation_name=>'CARGO_OBLIGATORIO'
,p_validation_sequence=>80
,p_validation=>'P620_CARGO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar el cargo es obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213361997737114225)
,p_validation_name=>'JEFE_OBLIGATORIO'
,p_validation_sequence=>90
,p_validation=>'P620_JEFE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar el jefe es obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213362157163114227)
,p_validation_name=>'VACACIONES_PEND_OBLIGATORIO'
,p_validation_sequence=>100
,p_validation=>'P620_VACACION_PEND'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar los dias de vacaciones pendientes es obligatorio o 0 si ya no tiene.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213362241353114228)
,p_validation_name=>'VACACION_PERIO_OBLIGATORIO'
,p_validation_sequence=>110
,p_validation=>'P620_VACACION_PERIODO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar el periodo de vacaciones pendientes o 0 si no corresponde.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213362329425114229)
,p_validation_name=>'NOMBRE_CONTACTO_NO_NULO'
,p_validation_sequence=>120
,p_validation=>'P620_NOMBRE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar el nombre del contacto es obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(209890584762124221)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213362440730114230)
,p_validation_name=>'DIRECCION_CONTACTO_NO_NULO'
,p_validation_sequence=>130
,p_validation=>'P620_DIRECCION_CONTAC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar la direccion del contacto es obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(209890705481124223)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213362554614114231)
,p_validation_name=>'TEL_CONTACTO_NO_NULO'
,p_validation_sequence=>140
,p_validation=>'P620_TELEFONO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Indicar el telef\00F3no del contacto es obligatorio.')
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(209890852456124224)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(213362607829114232)
,p_validation_name=>'PARENTESCO_CONTACTO_NO_NULO'
,p_validation_sequence=>150
,p_validation=>'P620_PARENTESCO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Indicar el parentesco con el contacto es obligatorio.'
,p_validation_condition=>'CONFIRMAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(209890620904124222)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209892945763124245)
,p_name=>'DA_SOLO_NUMERO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_VACACION_PERIODO,P620_NRO_CELULAR,P620_TIEMPO_TRASLADO,P620_TIEMPO_EXP_ANT1,P620_TIEMPO_EXP_ANT2,P620_TELEFONO,P620_VACACION_PEND'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209893052972124246)
,p_event_id=>wwv_flow_imp.id(209892945763124245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211069203744732503)
,p_name=>'DA_AGREGAR_FAMILIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(210513389971341446)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211071543518732526)
,p_event_id=>wwv_flow_imp.id(211069203744732503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_A_APELLIDO,P620_A_NOMBRE,P620_A_OBSERVACION,P620_A_FECHA_NACIMIENTO,P620_A_DISCAPACIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211072117695732532)
,p_event_id=>wwv_flow_imp.id(211069203744732503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P620_A_DISCAPACIDAD := ''N'';'
,p_attribute_03=>'P620_A_DISCAPACIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211069333360732504)
,p_event_id=>wwv_flow_imp.id(211069203744732503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211069186249732502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211070237843732513)
,p_name=>'DA_CANCELAR_FAM'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211070160629732512)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211070360700732514)
,p_event_id=>wwv_flow_imp.id(211070237843732513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211069186249732502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211070469482732515)
,p_name=>'DA_ACEPTAR_FAM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211070087456732511)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211070566006732516)
,p_event_id=>wwv_flow_imp.id(211070469482732515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P620_MENSAJE_ERROR_AUX := null;',
'IF :P620_A_PARENTESCO = ''hermano'' THEN',
'    IF :P620_A_NOMBRE IS NULL THEN',
'        :P620_MENSAJE_ERROR_AUX := ''Ingrese un nombre para continuar.'';',
'    ELSE ',
'         BEGIN',
'            INV.NGOCOPERFILES.agregar_familiar(P_COD_EMPLEADO => :P_COD_EMPLEADO,',
'                            P_NOMBRE => :P620_A_NOMBRE,',
'                            P_APELLIDO => :P620_A_APELLIDO,',
'                            P_FECHA_NACIMIENTO => to_char(to_Date(:P620_A_FECHA_NACIMIENTO,''dd-mm-yyyy''),''dd-mm-yyyy''),',
'                            P_PARENTESCO => :P620_A_PARENTESCO,',
'                            P_OBSERVACION => :P620_A_OBSERVACION,',
'                            P_DISCAPACIDAD => :P620_A_DISCAPACIDAD);',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''DA_ACEPTAR_FAM1: ''||SQLERRM) ;',
'        END;',
'    end if;',
'ELSIF :P620_A_PARENTESCO = ''hijo'' THEN ',
'    IF :P620_A_NOMBRE IS NULL OR :P620_A_FECHA_NACIMIENTO IS NULL THEN',
'        :P620_MENSAJE_ERROR_AUX := ''Ingrese un nombre y fecha de nacimiento para continuar.'';',
'    else ',
'        BEGIN',
'            INV.NGOCOPERFILES.agregar_familiar(P_COD_EMPLEADO => :P_COD_EMPLEADO,',
'                            P_NOMBRE => :P620_A_NOMBRE,',
'                            P_APELLIDO => :P620_A_APELLIDO,',
'                            P_FECHA_NACIMIENTO => to_char(to_Date(:P620_A_FECHA_NACIMIENTO,''dd-mm-yyyy''),''dd-mm-yyyy''),',
'                            P_PARENTESCO => :P620_A_PARENTESCO,',
'                            P_OBSERVACION => :P620_A_OBSERVACION,',
'                            P_DISCAPACIDAD => :P620_A_DISCAPACIDAD);',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''DA_ACEPTAR_FAM2: ''||SQLERRM) ;',
'        END;',
'    END IF;',
'end if;'))
,p_attribute_02=>'P_COD_EMPLEADO,P620_A_NOMBRE,P620_A_APELLIDO,P620_A_FECHA_NACIMIENTO,P620_A_PARENTESCO,P620_A_OBSERVACION,P620_A_DISCAPACIDAD'
,p_attribute_03=>'P620_MENSAJE_ERROR_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211070940545732520)
,p_event_id=>wwv_flow_imp.id(211070469482732515)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209893326098124249)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211071368325732524)
,p_event_id=>wwv_flow_imp.id(211070469482732515)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209893499484124250)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211071110926732522)
,p_event_id=>wwv_flow_imp.id(211070469482732515)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210508818105341401)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211071243378732523)
,p_event_id=>wwv_flow_imp.id(211070469482732515)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211069186249732502)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211070778362732518)
,p_name=>'DA_MENSAJE_ERROR_AUX'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_MENSAJE_ERROR_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211070800572732519)
,p_event_id=>wwv_flow_imp.id(211070778362732518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P620_MENSAJE_ERROR_AUX.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211071936614732530)
,p_name=>'DA_A_DISCAPACIDAD'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_A_DISCAPACIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211071747244732528)
,p_event_id=>wwv_flow_imp.id(211071936614732530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_A_OBSERVACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P620_A_DISCAPACIDAD'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211071825839732529)
,p_event_id=>wwv_flow_imp.id(211071936614732530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_A_OBSERVACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P620_A_DISCAPACIDAD'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211072297798732533)
,p_name=>'DA_AGREGAR_IDIOMA'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211069022941732501)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211072339350732534)
,p_event_id=>wwv_flow_imp.id(211072297798732533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_A_IDIOMA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211073376291732544)
,p_event_id=>wwv_flow_imp.id(211072297798732533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211072402198732535)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211073485214732545)
,p_name=>'BT_CANCELAR_IDIOMA'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211073216413732543)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211073517988732546)
,p_event_id=>wwv_flow_imp.id(211073485214732545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211072402198732535)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211073604284732547)
,p_name=>'New'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211073125791732542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211073836606732549)
,p_event_id=>wwv_flow_imp.id(211073604284732547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P620_MENSAJE_ERROR_AUX := null;',
'IF :P620_A_IDIOMA is null THEN',
'    :P620_MENSAJE_ERROR_AUX := ''Ingrese el idioma'';',
'else',
'    BEGIN',
'        INV.NGOCOPERFILES.agregar_idioma(P_COD_EMPLEADO =>:P_COD_EMPLEADO,',
'                            P_IDIOMA =>:P620_A_IDIOMA,',
'                            P_LEE => :P620_A_LEE,',
'                            P_ESCRIBE => :P620_A_ESCRIBE,',
'                            P_CONVERSA => :P620_A_CONVERSA);',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''DA_ACEPTAR_idioma1: ''||SQLERRM) ;',
'    END;',
'end if;',
'     '))
,p_attribute_02=>'P_COD_EMPLEADO,P620_A_IDIOMA,P620_A_LEE,P620_A_ESCRIBE,P620_A_CONVERSA'
,p_attribute_03=>'P620_MENSAJE_ERROR_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211073927309732550)
,p_event_id=>wwv_flow_imp.id(211073604284732547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209891259796124228)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211226243585358501)
,p_event_id=>wwv_flow_imp.id(211073604284732547)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211072402198732535)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_MENSAJE_ERROR_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211226381368358502)
,p_name=>'DA_SEQ_ID_ELIMINAR_IDIO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_SEQ_ID_ELIMINAR_IDIOMA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211226403829358503)
,p_event_id=>wwv_flow_imp.id(211226381368358502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para continuar.'
,p_attribute_02=>unistr('\00BFDesea eliminar?')
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211226562022358504)
,p_event_id=>wwv_flow_imp.id(211226381368358502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.NGOCOPERFILES.eliminar_idioma(P_SEQ_ID => :P620_SEQ_ID_ELIMINAR_IDIOMA) ;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ELIMINAR IDIOMA: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P620_SEQ_ID_ELIMINAR_IDIOMA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211226670822358505)
,p_event_id=>wwv_flow_imp.id(211226381368358502)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209891259796124228)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211226716539358506)
,p_name=>'DA_SEQ_ID_ELIMINAR_FAM'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_SEQ_ID_ELIMINAR_FAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211226962091358508)
,p_event_id=>wwv_flow_imp.id(211226716539358506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para continuar.'
,p_attribute_02=>unistr('\00BFDesea eliminar?')
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211227083100358509)
,p_event_id=>wwv_flow_imp.id(211226716539358506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.NGOCOPERFILES.eliminar_familiar(P_SEQ_ID => :P620_SEQ_ID_ELIMINAR_FAM) ;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ELIMINAR familiar: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P620_SEQ_ID_ELIMINAR_FAM'
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
 p_id=>wwv_flow_imp.id(211227161279358510)
,p_event_id=>wwv_flow_imp.id(211226716539358506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209893326098124249)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211227228686358511)
,p_event_id=>wwv_flow_imp.id(211226716539358506)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209893499484124250)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211227388493358512)
,p_event_id=>wwv_flow_imp.id(211226716539358506)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(210508818105341401)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211228664897358525)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209172495972799130)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211228736059358526)
,p_event_id=>wwv_flow_imp.id(211228664897358525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para continuar.'
,p_attribute_02=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211228863243358527)
,p_event_id=>wwv_flow_imp.id(211228664897358525)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211230391847358542)
,p_name=>'DA_AYUDA'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209174137511799147)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211230480999358543)
,p_event_id=>wwv_flow_imp.id(211230391847358542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211229860455358537)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213359573527114201)
,p_name=>'DA_VER_MAPA'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209173822130799144)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213359628656114202)
,p_event_id=>wwv_flow_imp.id(213359573527114201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211231006134358549)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213360481001114210)
,p_name=>'DA_LIMPIAR_BUSQ'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209173959112799145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213360529757114211)
,p_event_id=>wwv_flow_imp.id(213360481001114210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_BUSQUEDA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213360686999114212)
,p_name=>'DA_DIRECCION'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_DIRECCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213360710456114213)
,p_event_id=>wwv_flow_imp.id(213360686999114212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_COORDENADAS'');',
'    for c in ((SELECT (Column_value) respuesta',
'                          FROM TABLE(UTILS.ARRAY_VARCHARS(:P620_LATITUD_LONGITUD,'',''))))',
'        loop',
'           APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''COL_COORDENADAS'',',
'                                                P_C001 =>C.RESPUESTA); ',
'        end loop;',
'    SELECT C001 ',
'    INTO :P620_LATITUD',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME =  ''COL_COORDENADAS''',
'    AND SEQ_ID = 1;',
'    SELECT C001 ',
'    INTO :P620_LONGITUD',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME =  ''COL_COORDENADAS''',
'    AND SEQ_ID = 2;',
'END;'))
,p_attribute_02=>'P620_LATITUD_LONGITUD'
,p_attribute_03=>'P620_LATITUD,P620_LONGITUD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(215288955386271518)
,p_name=>'MOSTRAR_OCULTAR_IMAGEN'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P620_NOMBRE_ARCHIVO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215289449298271523)
,p_event_id=>wwv_flow_imp.id(215288955386271518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P620_NOMBRE_ARCHIVO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215289071362271519)
,p_event_id=>wwv_flow_imp.id(215288955386271518)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_DISPLAY_IMAGE'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P620_NOMBRE_ARCHIVO_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215289289184271521)
,p_event_id=>wwv_flow_imp.id(215288955386271518)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_DISPLAY_IMAGE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_NOMBRE_ARCHIVO_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215289121673271520)
,p_event_id=>wwv_flow_imp.id(215288955386271518)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_FILE_BROWSER'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P620_NOMBRE_ARCHIVO_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215289327175271522)
,p_event_id=>wwv_flow_imp.id(215288955386271518)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P620_FILE_BROWSER'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P620_NOMBRE_ARCHIVO_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(215289531245271524)
,p_name=>'DA_CAMBIAR_IMAGEN'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209172556463799131)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215289630960271525)
,p_event_id=>wwv_flow_imp.id(215289531245271524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P620_NOMBRE_ARCHIVO_AUX:= NULL;',
'END;'))
,p_attribute_03=>'P620_NOMBRE_ARCHIVO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(211229067199358529)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'UPLOAD_BLOB BLOB;',
'V_FILENAME VARCHAR2(350);',
'V_MIME_TYPE VARCHAR2(350);',
'VDIR VARCHAR2(100);',
'BEGIN',
'    NGOCOPERFILES.guardar_datos(PI_COD_EMPLEADO=> :P_COD_EMPLEADO,--     NOT NULL VARCHAR2(20)  ',
'                        PI_ESTADO_CIVIL=> :P620_ESTADO_CIVIL,--              VARCHAR2(20)  ',
'                        PI_DIRECCION=> :P620_DIRECCION,--                 VARCHAR2(200) ',
'                        PI_COD_CIUDAD=> :P620_CIUDAD,--                VARCHAR2(50)  ',
'                        PI_TELEFONO=> :P620_NRO_CELULAR,--                  VARCHAR2(50)  ',
'                        PI_CORREO=> :P620_CORREO,--                    VARCHAR2(200) ',
'                        PI_FECHA_INGRESO=> :P620_FECHA_INGRESO,--             VARCHAR2(50)  ',
'                        PI_COD_AREA=> :P620_AREA,--                  VARCHAR2(50)  ',
'                        PI_COD_CARGO=> :P620_CARGO,--                 VARCHAR2(50)  ',
'                        PI_COD_JEFE=> :P620_JEFE,--                  VARCHAR2(50)  ',
'                        PI_URL_CV=> :P620_URL_CV,--                    VARCHAR2(500) ',
'                        PI_EXPERIENCIA_ANT1=> :P620_EXPERIENCIA_ANT1,--        VARCHAR2(500) ',
'                        PI_TIEMPO_EXP_ANT1=> :P620_TIEMPO_EXP_ANT1,--          VARCHAR2(150) ',
'                        PI_EXPERIENCIA_ANT2=> :P620_EXPERIENCIA_ANT2,--        VARCHAR2(500) ',
'                        PI_TIEMPO_EXP_ANT2=> :P620_TIEMPO_EXP_ANT2,--          VARCHAR2(150) ',
'                        PI_COD_DEPARTAMENTO=> :P620_DEPARTAMENTO,--        VARCHAR2(50)  ',
'                        PI_TIPO_MOVIL=> :P620_TIPO_MOVIL,--              VARCHAR2(150) ',
'                        PI_TIEMPO_TRASLADO=> :P620_TIEMPO_TRASLADO,--        VARCHAR2(150) ',
'                        PI_LATITUD=> :P620_LATITUD,--                   VARCHAR2(150) ',
'                        PI_LONGITUD=> :P620_LONGITUD,--                  VARCHAR2(150) ',
'                        PI_CARGO_ANT1=> :P620_CARGO_ANT1,---                VARCHAR2(150) ',
'                        PI_CARGO_ANT2=> :P620_CARGO_ANT2,--               VARCHAR2(150) ',
'                        PI_VACACION_PEND => :P620_VACACION_PEND,  --       NUMBER(18)    ',
'                        PI_VACACION_PERIODO=> :P620_VACACION_PERIODO,--       VARCHAR2(150) ',
'                        PI_BARRIO => :P620_BARRIO,--  VARCHAR2(250) ',
'                        PI_FECHA_ALTA=> :P620_FECHA_ALTA,----  NOT NULL DATE          ',
'                        PI_FECHA_UPD=> :P620_FECHA_UPD,    --  NOT NULL DATE',
'                        PI_ROWID=> :P620_ROWID,',
'                        PI_ROWID_CONTACTO=> :P620_ROWID_CONTACTO,',
'                        PI_NOMBRE_CONTACTO=> :P620_NOMBRE,',
'                        PI_DIRECCION_CONTACTO=> :P620_DIRECCION_CONTAC,',
'                        PI_TEL_CONTACTO=> :P620_TELEFONO,',
'                        PI_PARENTESCO_CONTACTO=> :P620_PARENTESCO,',
'                        PI_OBS_CONTACTO=> :P620_OBS_CONTACTO,',
'                        PI_ROWID_SECUNDARIO=> :P620_ROWID_SECUNDARIO,',
'                        PI_TITULO_SECU=> :P620_TITULO_SECUNDARIO,',
'                        PI_INST_SECU=> :P620_INSTITUCION_SECUNDARIO,',
'                        PI_FEC_FIN_SECU=> :P620_ANHO_SECUNDARIO,',
'                        PI_OBS_SECU=> :P620_ESTADO_SECUNDARIO,',
'                        PI_ROWID_UNIVERSITARIO=> :P620_ROWID_UNIVERSITARIO,',
'                        PI_TITULO_UNI=> :P620_TITULO_UNIVERSITARIO,',
'                        PI_INST_UNI=> :P620_INSTITUCION_UNIVERSITARIO,',
'                        PI_FEC_FIN_UNI=> :P620_ANHO_UNIVERSITARIO,',
'                        PI_OBS_UNI=> :P620_ESTADO_UNIVERSITARIO,',
'                        PI_ROWID_POSTGRADO => :P620_ROWID_POSTGRADO,',
'                        PI_TITULO_POSTG=> :P620_TITULO_POSTGRADO,',
'                        PI_INST_POSTG=> :P620_INSTITUCION_POSTGRADO,',
'                        PI_FEC_FIN_POSTG=> :P620_ANHO_POSTGRADO,',
'                        PI_OBS_POSTG=> :P620_ESTADO_POSTGRADO,',
'                        PI_ROWID_MADRE => :P620_ROWID_NOMBRE_MADRE,',
'                        PI_ROWID_PADRE => :P620_ROWID_NOMBRE_PADRE,',
'                        PI_ROWID_CONYUGE => :P620_ROWID_NOMBRE_CONYUGUE,',
'                        PI_NOMBRE_PADRE => :P620_NOMBRE_PADRE,',
'                        PI_NOMBRE_MADRE => :P620_NOMBRE_MADRE,',
'                        PI_NOMBRE_CONYUGE => :P620_NOMBRE_CONYUGE',
'                        );',
'--UPDATE SOBRE TABLA PARA GUARDAR EL ARCHIVO',
'    IF :P620_FILE_BROWSER IS NOT NULL THEN',
'            SELECT BLOB_CONTENT,',
'               FILENAME, ',
'               MIME_TYPE',
'          INTO UPLOAD_BLOB,',
'               V_FILENAME,',
'               V_MIME_TYPE',
'          FROM APEX_APPLICATION_TEMP_FILES',
'         WHERE NAME = :P620_FILE_BROWSER;',
'',
'        UPDATE wngo_perfiles',
'        SET BLOB_ARCHIVO = UPLOAD_BLOB,',
'            NOMBRE_ARCHIVO = V_FILENAME,',
'            MIME_TYPE = V_MIME_TYPE',
'        WHERE COD_EMPLEADO = :P_COD_EMPLEADO;',
'        apex_debug.error(''update y preproc''); ',
'        NGOCOPERFILES.WRITE_BLOB_TO_FILE(P_COD_EMPLEADO => :P_COD_EMPLEADO, ',
'                                                    P_DIR => ''UPLOAD_IMAGE_CAP'');--PEDIR DIRECCTORIO PARA PERFIL.',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_CONFIRMAR - GUARDAR DATOS: ''||SQLERRM);',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ocurrio un error al procesar los datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('Los datos se guardaron con \00E9xito.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209893243228124248)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P_COD_EMPLEADO := ''863''; --VALOR PARA TESTING',
'    INV.NGOCOPERFILES.CARGAR_COL_GRUPO_FAMILIAR(P_COD_EMPLEADO => :P_COD_EMPLEADO);',
'    INV.NGOCOPERFILES.CARGAR_COL_IDIOMA(P_COD_EMPLEADO => :P_COD_EMPLEADO);',
'    if :P_COD_EMPLEADO is not null then',
'        begin',
'            INV.NGOCOPERFILES.cargar_datos(PI_COD_EMPLEADO => :P_COD_EMPLEADO,',
'                    PO_ESTADO_CIVIL=> :P620_ESTADO_CIVIL,',
'                    PO_DIRECCION=> :P620_DIRECCION,',
'                    PO_COD_CIUDAD=> :P620_CIUDAD,',
'                    PO_TELEFONO=> :P620_NRO_CELULAR,',
'                    PO_CORREO=> :P620_CORREO,',
'                    PO_FECHA_INGRESO=> :P620_FECHA_INGRESO,',
'                    PO_COD_AREA=> :P620_AREA,',
'                    PO_COD_CARGO=> :P620_CARGO,',
'                    PO_COD_JEFE=> :P620_JEFE,',
'                    PO_URL_CV=> :P620_URL_CV,',
'                    PO_EXPERIENCIA_ANT1=> :P620_EXPERIENCIA_ANT1,',
'                    PO_TIEMPO_EXP_ANT1=> :P620_TIEMPO_EXP_ANT1,',
'                    PO_EXPERIENCIA_ANT2=> :P620_EXPERIENCIA_ANT2,',
'                    PO_TIEMPO_EXP_ANT2=> :P620_TIEMPO_EXP_ANT2,',
'                    PO_COD_DEPARTAMENTO=> :P620_DEPARTAMENTO,',
'                    PO_TIPO_MOVIL=> :P620_TIPO_MOVIL,',
'                    PO_TIEMPO_TRASLADO=> :P620_TIEMPO_TRASLADO,',
'                    PO_LATITUD=> :P620_LATITUD,',
'                    PO_LONGITUD=> :P620_LONGITUD,',
'                    PO_CARGO_ANT1=> :P620_CARGO_ANT1,',
'                    PO_CARGO_ANT2=> :P620_CARGO_ANT2,',
'                    PO_VACACION_PEND => :P620_VACACION_PEND,',
'                    PO_VACACION_PERIODO=> :P620_VACACION_PERIODO,',
'                    PO_BARRIO=> :P620_BARRIO,',
'                    PO_FECHA_ALTA => :P620_FECHA_ALTA,',
'                    PO_FECHA_UPD => :P620_FECHA_UPD,',
'                    PO_ROWID=> :P620_ROWID);',
'        end;',
'        begin',
'            INV.NGOCOPERFILES.cargar_datos_contacto(PI_COD_EMPLEADO =>:P_COD_EMPLEADO,',
'                    PO_NOMBRE =>:P620_NOMBRE, ',
'                    PO_APELLIDO =>:P620_APELLIDO_CONTACTO,',
'                    PO_DIRECCION=>:P620_DIRECCION_CONTAC,',
'                    PO_TELEFONO=>:P620_TELEFONO, ',
'                    PO_PARENTESCO=>:P620_PARENTESCO,',
'                    PO_OBSERVACION=> :P620_OBS_CONTACTO,',
'                    PO_ROWID_CONTACTO => :P620_ROWID_CONTACTO);',
'        end;',
'        BEGIN',
'            INV.NGOCOPERFILES.consultar_nombre_familiar(PI_COD_EMPLEADO=> :P_COD_EMPLEADO,                          ',
'                        PI_PARENTESCO  =>''madre'',',
'                        PO_NOMBRE => :P620_NOMBRE_MADRE,',
'                        PO_ROWID_FAMILIAR => :P620_ROWID_NOMBRE_MADRE);',
'        END;',
'        BEGIN',
'            INV.NGOCOPERFILES.consultar_nombre_familiar(PI_COD_EMPLEADO=> :P_COD_EMPLEADO,                          ',
'                        PI_PARENTESCO  =>''padre'',',
'                        PO_NOMBRE => :P620_NOMBRE_PADRE,',
'                        PO_ROWID_FAMILIAR => :P620_ROWID_NOMBRE_PADRE);',
'        END;',
'        BEGIN',
'            INV.NGOCOPERFILES.consultar_nombre_familiar(PI_COD_EMPLEADO=> :P_COD_EMPLEADO,                          ',
'                        PI_PARENTESCO  =>''conyuge'',',
'                        PO_NOMBRE => :P620_NOMBRE_CONYUGE,',
'                        PO_ROWID_FAMILIAR => :P620_ROWID_NOMBRE_CONYUGUE);',
'        END;',
'        BEGIN',
'             INV.NGOCOPERFILES.consultar_perfil_academico(PI_COD_EMPLEADO => :P_COD_EMPLEADO,                          ',
'                        PI_NIVEL => ''secundario'',',
'                        PO_TITULO  => :P620_TITULO_SECUNDARIO ,',
'                        PO_INSTITUCION => :P620_INSTITUCION_SECUNDARIO,',
'                        PO_FECHA_FINALIZA => :P620_ANHO_SECUNDARIO,',
'                        PO_OBSERVACION => :P620_ESTADO_SECUNDARIO,',
'                        PO_ROWID_ACADEMICO => :P620_ROWID_SECUNDARIO);',
'',
'        END;',
'        BEGIN',
'             INV.NGOCOPERFILES.consultar_perfil_academico(PI_COD_EMPLEADO => :P_COD_EMPLEADO,                          ',
'                        PI_NIVEL => ''universitario'',',
'                        PO_TITULO  => :P620_TITULO_UNIVERSITARIO ,',
'                        PO_INSTITUCION => :P620_INSTITUCION_UNIVERSITARIO,',
'                        PO_FECHA_FINALIZA => :P620_ANHO_UNIVERSITARIO,',
'                        PO_OBSERVACION => :P620_ESTADO_UNIVERSITARIO',
'                        ,PO_ROWID_ACADEMICO => :P620_ROWID_UNIVERSITARIO);',
'',
'        END;',
'        BEGIN',
'             INV.NGOCOPERFILES.consultar_perfil_academico(PI_COD_EMPLEADO => :P_COD_EMPLEADO,                          ',
'                        PI_NIVEL => ''postgrado'',',
'                        PO_TITULO  => :P620_TITULO_POSTGRADO,',
'                        PO_INSTITUCION => :P620_INSTITUCION_POSTGRADO,',
'                        PO_FECHA_FINALIZA => :P620_ANHO_POSTGRADO,',
'                        PO_OBSERVACION => :P620_ESTADO_POSTGRADO,',
'                        PO_ROWID_ACADEMICO => :P620_ROWID_POSTGRADO);',
'',
'        END;',
'    end if;',
'    exception',
'        when others then',
'            raise_application_error(-20201,''Ocurrio un error al procesar su solicitud.''||sqlerrm);  ',
'end;',
':P620_TEXTO_AYUDA_1 := '' PASO 1: Para utilizar el mapa, hace click en VER MAPA.'';',
unistr(':P620_TEXTO_AYUDA_2 := '' PASO 2: Hac\00E9 click en el cuadro de texto que aparece sobre el mapa, ingresa una referencia cercana a tu domicilio (Luisito, Felix Bogado - por ejemplo) y presion\00E9 Enter.'';'),
unistr(':P620_TEXTO_AYUDA_3 := '' PASO 3: El marcador rojo se ubicar\00E1 segun tu busqueda, luego ubic\00E1 tu domicilio y arrastr\00E1 el marcador rojo hasta ese punto en el mapa.'';'),
unistr(':P620_TEXTO_AYUDA_4 := '' PASO 4: Si precis\00E1s agrear alguna informaci\00F3n (n\00B0 de casa por ejemplo) podes hacerlo.'';'),
'BEGIN',
'    SELECT  NOMBRE_ARCHIVO',
'    INTO :P620_NOMBRE_ARCHIVO_AUX',
'    FROM wngo_perfiles',
'    WHERE COD_EMPLEADO = :P_COD_EMPLEADO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P620_NOMBRE_ARCHIVO_AUX := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
