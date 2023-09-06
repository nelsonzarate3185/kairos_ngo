prompt --application/pages/page_00483
begin
--   Manifest
--     PAGE: 00483
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
 p_id=>483
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Retiro de Prod. y SPP - CAGESRPP'
,p_alias=>'SEGUIMIENTO-DE-RETIRO-DE-PROD-Y-SPP-CAGESRPP'
,p_step_title=>'Seguimiento de Retiro de Prod. y SPP - CAGESRPP'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230413132600'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141945883003064550)
,p_plug_name=>'Seguimiento de Retiro de Prod. y SPP - CAGESRPP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143117729843725201)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143117871930725202)
,p_plug_name=>'Contenedor 1.1'
,p_parent_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143117956746725203)
,p_plug_name=>'Contenedor 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143118094542725204)
,p_plug_name=>'Visualizacion'
,p_parent_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143119390552725217)
,p_plug_name=>'RES_SEG_SPP_RETPROD'
,p_parent_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIPO,',
'       CT,',
'       COD_EMPRESA,',
'       NRO_REG,',
'       ESTADO,',
'       FECHA,',
'       DIA,',
'       COD_CLIENTE,',
'       NOM_CLIENTE,',
'       COD_CIUDAD,',
'       CIUDAD,',
'       DIRECCION,',
'       OBSERVACION,',
'       REFERENCIA,',
'       COD_PROVINCIA,',
'       ZONA,',
'       NULL DETALLE,',
'       NULL IMPRIMIR,',
'       NULL DETALLE_REGISTRO',
'  FROM RES_SEG_SPP_RETPROD AA',
' WHERE cod_empresa = :P_COD_EMPRESA  ',
'AND ((:P483_VISUAL = ''D'' and trunc(aa.fecha)=trunc(sysdate)) ',
'    or (:P483_VISUAL = ''M'' and TO_CHAR(aa.fecha,''MM'')=TO_CHAR(sysdate,''MM'')) ',
'    or (:P483_VISUAL = ''S'' and TO_CHAR(aa.fecha,''WW'')=TO_CHAR(sysdate,''WW''))',
'    or (:P483_VISUAL = ''T''))',
'AND (FECHA >= :P483_FECHA_INI OR :P483_FECHA_INI IS NULL )',
'AND (FECHA <= :P483_FECHA_FIN OR :P483_FECHA_FIN IS NULL ) ',
'AND (COD_CLIENTE = :P483_COD_CLIENTE OR :P483_COD_CLIENTE IS NULL) ',
' AND ((CT=''SRP'' AND NVL(:P483_CHK_SRP,''N'')=''S'')  ',
'     or (CT=''SPP'' AND NVL(:P483_CHEK_SPP,''N'')=''S'')) ',
' AND ((NVL(:P483_CIUDAD,''TODOS'')=''TODOS'') ',
'     or (COD_PROVINCIA = :P483_CIUDAD))',
' AND (zona = :P483_ZONA OR :P483_ZONA = ''T'') ',
'ORDER BY AA.fecha, ',
'         AA.nom_cliente'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P483_VISUAL,P483_FECHA_FIN,P483_FECHA_INI,P483_COD_CLIENTE,P483_CHEK_SPP,P483_CHK_SRP,P483_CIUDAD,P483_ZONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RES_SEG_SPP_RETPROD'
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
 p_id=>wwv_flow_imp.id(143119992662725223)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>143119992662725223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120064984725224)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120188057725225)
,p_db_column_name=>'CT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serv.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120217954725226)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120388779725227)
,p_db_column_name=>'NRO_REG'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00BA Ref.')
,p_column_link=>'javascript:$s(''P483_CT_DET'',''#CT#''),$s(''P483_NRO_REG_DET_2'',''#NRO_REG#'');'
,p_column_linktext=>'#NRO_REG#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120441485725228)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120536651725229)
,p_db_column_name=>'FECHA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120692982725230)
,p_db_column_name=>'DIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('D\00EDa')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120751290725231)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120868442725232)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143120939275725233)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143121065038725234)
,p_db_column_name=>'CIUDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143121154545725235)
,p_db_column_name=>'DIRECCION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143121281775725236)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143121301047725237)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143121492474725238)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Provincia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143121517698725239)
,p_db_column_name=>'ZONA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143122166195725245)
,p_db_column_name=>'DETALLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P483_REFERENCIA_DET'',''#REFERENCIA#''),$s(''P483_CT_DET'',''#CT#''),$s(''P483_NRO_REG_DET'',''#NRO_REG#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-plus"></span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143122256851725246)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Imprimir'
,p_column_link=>'.'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143122393315725247)
,p_db_column_name=>'DETALLE_REGISTRO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Detalle Registro'
,p_column_link=>'javascript:$s(''P483_DIRECCION'',''#DIRECCION#''),$s(''P483_TIPO'',''#TIPO#''),$s(''P483_OBSERVACION'',''#OBSERVACION#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(143181133529241143)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1431812'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DETALLE:CT:NRO_REG:FECHA:DIA:NOM_CLIENTE:CIUDAD:ESTADO:DETALLE_REGISTRO:IMPRIMIR:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(143209084418970936)
,p_report_id=>wwv_flow_imp.id(143181133529241143)
,p_name=>'SPP'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CT'
,p_operator=>'='
,p_expr=>'SPP'
,p_condition_sql=>' (case when ("CT" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SPP''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#72ed8c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(143209407895970936)
,p_report_id=>wwv_flow_imp.id(143181133529241143)
,p_name=>'SRP'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CT'
,p_operator=>'='
,p_expr=>'SRP'
,p_condition_sql=>' (case when ("CT" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SRP''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f4f277'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143119420335725218)
,p_plug_name=>'Contenedor 2'
,p_parent_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143119274598725216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_button_name=>'BTFILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143118106116725205)
,p_name=>'P483_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143117729843725201)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CAGESRPP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nom,',
'       c.cod_cliente ',
'  from cc_clientes c,',
'       personas p',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona		',
'   AND p.nombre NOT LIKE ''%NO USAR%''',
'   AND NVL(C.ESTADO,''A'')=''A''	'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOM:P483_NOMBRE_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143118277439725206)
,p_name=>'P483_NOMBRE_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143117729843725201)
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
 p_id=>wwv_flow_imp.id(143118366055725207)
,p_name=>'P483_ZONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143117729843725201)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TODOS;T,CAPITAL;C,INTERIOR;I'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143118404491725208)
,p_name=>'P483_CIUDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143117729843725201)
,p_prompt=>'Dto.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TODOS;TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143118580089725209)
,p_name=>'P483_FECHA_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143117871930725202)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(143118669318725210)
,p_name=>'P483_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143117871930725202)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(143118706009725211)
,p_name=>'P483_CHEK_SPP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143117956746725203)
,p_prompt=>'Serv. Pta. Pta.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143118882570725212)
,p_name=>'P483_CHK_SRP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143117956746725203)
,p_prompt=>'Retiro Prod.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143118940446725213)
,p_name=>'P483_VISUAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143118094542725204)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:TODOS;T,DIARIA;D,SEMANAL;S,MENSUAL;M'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143119018095725214)
,p_name=>'P483_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143119514870725219)
,p_name=>'P483_DIRECCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143119420335725218)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(143119693922725220)
,p_name=>'P483_TIPO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143119420335725218)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(143119781120725221)
,p_name=>'P483_OBSERVACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143119420335725218)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143119810254725222)
,p_name=>'P483_CONTROL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143215869512873901)
,p_name=>'P483_REFERENCIA_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143119390552725217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143215971144873902)
,p_name=>'P483_CT_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143119390552725217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143216381824873906)
,p_name=>'P483_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141945883003064550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143216761523873910)
,p_name=>'P483_NRO_REG_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143119390552725217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143216827119873911)
,p_name=>'P483_NRO_REG_DET_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143119390552725217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143217376396873916)
,p_name=>'P483_IMPRIMIR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143119390552725217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143121691955725240)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143119274598725216)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143121784494725241)
,p_event_id=>wwv_flow_imp.id(143121691955725240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143119390552725217)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143121865114725242)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P483_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143121923722725243)
,p_event_id=>wwv_flow_imp.id(143121865114725242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P483_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143122018740725244)
,p_event_id=>wwv_flow_imp.id(143121865114725242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P483_COD_CLIENTE IS NULL THEN',
'        :P483_NOMBRE_CLIENTE := ''TODOS'';',
'    ELSE',
'        BEGIN',
'    		select '' ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'    		  INTO :P483_NOMBRE_CLIENTE',
'    		  from cc_clientes c, ',
'                   personas p',
'    		 where c.cod_empresa = :P_COD_EMPRESA',
'    		   AND c.cod_cliente = :P483_COD_CLIENTE',
'    		   and c.cod_persona = p.cod_persona;',
'		EXCEPTION',
'			WHEN OTHERS THEN',
'		      APEX_DEBUG.ERROR(''Error en la tabla de CLIENTES ''|| sqlerrm);			',
'		END;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_CLIENTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P483_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_03=>'P483_NOMBRE_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143216010873873903)
,p_name=>'DA_REFERENCIA_DET'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P483_REFERENCIA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143216190497873904)
,p_event_id=>wwv_flow_imp.id(143216010873873903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P483_REFERENCIA_DET,P483_CT_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143216255365873905)
,p_event_id=>wwv_flow_imp.id(143216010873873903)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P483_CT_DET = ''SPP'' THEN',
'        SELECT APEX_PAGE.GET_URL(p_page => 434,',
'				                 p_items  => ''P434_NRO_MOVIMIENTO,P434_V_CONTROL'', ',
'				                 p_values => ''''||:P483_REFERENCIA_DET||'',''||1||'''') f_url_1',
'          INTO :P483_URL',
'          FROM DUAL;',
'    ELSE ',
'        SELECT APEX_PAGE.GET_URL(p_page => 409,',
'				                 p_items  => ''P409_P_NRO_PLANILLA'', ',
'				                 p_values => ''''||:P483_NRO_REG_DET||'''') f_url_1',
'          INTO :P483_URL',
'          FROM DUAL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_REFERENCIA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P483_CT_DET,P434_NRO_MOVIMIENTO,P483_NRO_REG_DET'
,p_attribute_03=>'P483_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143216686655873909)
,p_event_id=>wwv_flow_imp.id(143216010873873903)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'var url = apex.item("P483_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143216419678873907)
,p_name=>'DA_URL'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P483_URL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143216551792873908)
,p_event_id=>wwv_flow_imp.id(143216419678873907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P483_URL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143216969813873912)
,p_name=>'DA_P483_NRO_REG_DET_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P483_NRO_REG_DET_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143217038399873913)
,p_event_id=>wwv_flow_imp.id(143216969813873912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P483_NRO_REG_DET_2,P483_CT_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143217173532873914)
,p_event_id=>wwv_flow_imp.id(143216969813873912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P483_CT_DET = ''SPP'' THEN',
'        SELECT APEX_PAGE.GET_URL(p_page => 370,',
'				                 p_items  => ''P370_TIP_COMPROBANTE,P370_SER_COMPROBANTE,P370_NRO_COMPROBANTE'', ',
'				                 p_values => ''''||''A''||'',''||''ORT''||'',''||:P483_NRO_REG_DET_2||'''') f_url_1',
'          INTO :P483_URL',
'          FROM DUAL;',
'    ELSE ',
'        SELECT APEX_PAGE.GET_URL(p_page => 409,',
'				                 p_items  => ''P409_P_NRO_PLANILLA'', ',
'				                 p_values => ''''||:P483_NRO_REG_DET_2||'''') f_url_1',
'          INTO :P483_URL',
'          FROM DUAL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_REG_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P483_CT_DET,P483_NRO_REG_DET_2'
,p_attribute_03=>'P483_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143217277609873915)
,p_event_id=>wwv_flow_imp.id(143216969813873912)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'var url = apex.item("P483_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143217436305873917)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P483_IMPRIMIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143217535002873918)
,p_event_id=>wwv_flow_imp.id(143217436305873917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL; ',
'/* ',
'      declare',
'         pl_id   ParamList; ',
'      begin',
'         pl_id := get_parameter_list( ''tmpdata'' ) ;',
'         if not id_null(pl_id) then',
'            destroy_parameter_list( pl_id ) ;',
'         end if ;',
'         pl_id := Create_Parameter_List(''tmpdata'') ;',
'         add_parameter( pl_id, ''DESTYPE'',              TEXT_PARAMETER, ''Screen'') ;',
'         add_parameter( pl_id, ''PARAMFORM'',            TEXT_PARAMETER, ''NO'') ;',
'         add_parameter( pl_id, ''P_COD_EMPRESA'',        TEXT_PARAMETER, :VARIABLES.COD_EMPRESA ) ; ',
'',
'				if :B_PARAMETRO.CT= ''SPP'' then  ',
'         				add_parameter( pl_id, ''P_NRO_OT'', TEXT_PARAMETER, :B_PARAMETRO.NRO_REG ) ;',
'			         run_product( REPORTS, ''CARSERPP1'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL );',
'				else					',
'         				add_parameter( pl_id, ''P_NRO_PLANILLA'', TEXT_PARAMETER, :B_PARAMETRO.NRO_REG  ) ;',
'			         run_product( REPORTS, ''CARETPRO2'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL );',
'			  end if ; ',
'      end ;*/'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143119114065725215)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P483_COD_MODULO := ''CA'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
