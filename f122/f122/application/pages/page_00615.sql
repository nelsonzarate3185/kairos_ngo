prompt --application/pages/page_00615
begin
--   Manifest
--     PAGE: 00615
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
 p_id=>615
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Costos de Stock'
,p_alias=>'STONCOS'
,p_step_title=>'Consulta de Costos de Stock'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230920114612'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206308268257040130)
,p_plug_name=>'Consulta de Costos de Stock'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206308892317040136)
,p_plug_name=>'ITEMS - R1'
,p_parent_plug_id=>wwv_flow_imp.id(206308268257040130)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209621232841893307)
,p_plug_name=>'AUXILIARES - R1'
,p_parent_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206308407683040132)
,p_plug_name=>'DETALLE - R2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_ARTICULO,',
'       COSTO_PROM_ANT,',
'       CANT_EXIST_ANT,',
'       COSTO_COMPROBANTE,',
'       CANT_COMPROBANTE,',
'       COSTO_PROM_NUE,',
'       CANT_EXIST_NUE,',
'       COD_MONEDA_COSTO,',
'       COD_MONEDA_COMP,',
'       FEC_COMPROBANTE,',
'       COD_USUARIO,',
'       NRO_DESPACHO,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COSTO_FOB,',
'       COSTO_ULTIMO,',
'       COSTO_EQUIPO,',
'       TIP_CAMBIO_COMP,',
'       TIP_CAMBIO_COSTO,',
'       FEC_PROCESO,',
'       COSTO_PROM_NUE_US,',
'       COSTO_PROM_ANT_US,',
'       COSTO_ULTIMO_US,',
'       COSTO_PROM_LOT,',
'       NRO_LOTE,',
'       COSTO_PROM_LOT_ANT,',
'       CANT_EXIST_LOT_ANT,',
'       FEC_COMPROBANTE_OLD,',
'       COD_IVA,',
'       COSTO_VIEJO,',
'       COD_COSTOS_ART,',
'       NULL ver_detalles,',
'       (	select precio_unitario',
'	        from cm_compras_detalle d',
'	        where d.cod_empresa=:P_COD_EMPRESA',
'	        and d.tip_comprobante=art.tip_comprobante',
'	        and d.ser_comprobante=art.ser_comprobante',
'	        and d.nro_comprobante=art.nro_comprobante',
'	        and d.cod_Articulo=art.cod_articulo',
'	        and rownum=1) precio_unitario,',
'       rowid',
'  from ST_COSTOS_ART art',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'  AND :P615_AUX = 1',
'  order by fec_proceso desc, rowid desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P615_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE - R2'
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
 p_id=>wwv_flow_imp.id(209514602194158202)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>209514602194158202
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209514737055158203)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209514818956158204)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516888617158224)
,p_db_column_name=>'FEC_PROCESO'
,p_display_order=>30
,p_column_identifier=>'V'
,p_column_label=>'Fecha Proceso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516026742158216)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516144150158217)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516280081158218)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Numero Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515228875158208)
,p_db_column_name=>'CANT_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515721476158213)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515316008158209)
,p_db_column_name=>'COSTO_PROM_NUE'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Costo Promedio GS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516426871158220)
,p_db_column_name=>'COSTO_ULTIMO'
,p_display_order=>110
,p_column_identifier=>'R'
,p_column_label=>'Costo Ultimo GS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516956700158225)
,p_db_column_name=>'COSTO_PROM_NUE_US'
,p_display_order=>120
,p_column_identifier=>'W'
,p_column_label=>'Costo Promedio US'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517117908158227)
,p_db_column_name=>'COSTO_ULTIMO_US'
,p_display_order=>130
,p_column_identifier=>'Y'
,p_column_label=>'Costo Ultimo US'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516372569158219)
,p_db_column_name=>'COSTO_FOB'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Costo FOB'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515074428158206)
,p_db_column_name=>'CANT_EXIST_ANT'
,p_display_order=>150
,p_column_identifier=>'D'
,p_column_label=>'Stock Anterior'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515451601158210)
,p_db_column_name=>'CANT_EXIST_NUE'
,p_display_order=>160
,p_column_identifier=>'H'
,p_column_label=>'Stock Actual'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209621125083893306)
,p_db_column_name=>'VER_DETALLES'
,p_display_order=>170
,p_column_identifier=>'AL'
,p_column_label=>'Ver Detalles'
,p_column_link=>'javascript:$s(''P615_DETALLES'',''#ROWID#''),$s(''P615_AUX'',''#COD_EMPRESA#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209518405744158240)
,p_db_column_name=>'ROWID'
,p_display_order=>200
,p_column_identifier=>'AK'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209623135892893326)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>210
,p_column_identifier=>'AM'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209514931714158205)
,p_db_column_name=>'COSTO_PROM_ANT'
,p_display_order=>220
,p_column_identifier=>'C'
,p_column_label=>'Costo Prom Ant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515124906158207)
,p_db_column_name=>'COSTO_COMPROBANTE'
,p_display_order=>230
,p_column_identifier=>'E'
,p_column_label=>'Costo Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515501710158211)
,p_db_column_name=>'COD_MONEDA_COSTO'
,p_display_order=>240
,p_column_identifier=>'I'
,p_column_label=>'Cod Moneda Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515639398158212)
,p_db_column_name=>'COD_MONEDA_COMP'
,p_display_order=>250
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda Comp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515873662158214)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>260
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209515915597158215)
,p_db_column_name=>'NRO_DESPACHO'
,p_display_order=>270
,p_column_identifier=>'M'
,p_column_label=>'Nro Despacho'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516527967158221)
,p_db_column_name=>'COSTO_EQUIPO'
,p_display_order=>280
,p_column_identifier=>'S'
,p_column_label=>'Costo Equipo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516678427158222)
,p_db_column_name=>'TIP_CAMBIO_COMP'
,p_display_order=>290
,p_column_identifier=>'T'
,p_column_label=>'Tip Cambio Comp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209516752824158223)
,p_db_column_name=>'TIP_CAMBIO_COSTO'
,p_display_order=>300
,p_column_identifier=>'U'
,p_column_label=>'Tip Cambio Costo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517061466158226)
,p_db_column_name=>'COSTO_PROM_ANT_US'
,p_display_order=>310
,p_column_identifier=>'X'
,p_column_label=>'Costo Prom Ant Us'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517221894158228)
,p_db_column_name=>'COSTO_PROM_LOT'
,p_display_order=>320
,p_column_identifier=>'Z'
,p_column_label=>'Costo Prom Lot'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517387035158229)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>330
,p_column_identifier=>'AA'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517430348158230)
,p_db_column_name=>'COSTO_PROM_LOT_ANT'
,p_display_order=>340
,p_column_identifier=>'AB'
,p_column_label=>'Costo Prom Lot Ant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517508833158231)
,p_db_column_name=>'CANT_EXIST_LOT_ANT'
,p_display_order=>350
,p_column_identifier=>'AC'
,p_column_label=>'Cant Exist Lot Ant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517693425158232)
,p_db_column_name=>'FEC_COMPROBANTE_OLD'
,p_display_order=>360
,p_column_identifier=>'AD'
,p_column_label=>'Fec Comprobante Old'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517777953158233)
,p_db_column_name=>'COD_IVA'
,p_display_order=>370
,p_column_identifier=>'AE'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517862073158234)
,p_db_column_name=>'COSTO_VIEJO'
,p_display_order=>380
,p_column_identifier=>'AF'
,p_column_label=>'Costo Viejo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(209517993653158235)
,p_db_column_name=>'COD_COSTOS_ART'
,p_display_order=>390
,p_column_identifier=>'AG'
,p_column_label=>'Cod Costos Art'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(209542418134102102)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2095425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FEC_PROCESO:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:CANT_COMPROBANTE:COSTO_PROM_NUE:COSTO_ULTIMO:COSTO_PROM_NUE_US:COSTO_ULTIMO_US:COSTO_FOB:PRECIO_UNITARIO:CANT_EXIST_ANT:CANT_EXIST_NUE:VER_DETALLES:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(209623466095893329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(206308268257040130)
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
 p_id=>wwv_flow_imp.id(209624067162893335)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(206308268257040130)
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
 p_id=>wwv_flow_imp.id(206308984104040137)
,p_name=>'P615_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206309001933040138)
,p_name=>'P615_COD_ART_CORTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Corto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_CORTOS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'descripcion, cod_articulo, cod_origen_art, cod_alterno, cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206309198826040139)
,p_name=>'P615_COD_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'descripcion, cod_articulo, cod_origen_art, cod_alterno, cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206309218829040140)
,p_name=>'P615_DESC_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('Descripci\00F3n Articulo')
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
 p_id=>wwv_flow_imp.id(206309348624040141)
,p_name=>'P615_COD_ORIGEN_ART'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Origen')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_ORIGEN_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'descripcion, cod_articulo, cod_origen_art, cod_alterno, cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206309447985040142)
,p_name=>'P615_COD_ALTERNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Alterno')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_ALTERNO_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'descripcion, cod_articulo, cod_origen_art, cod_alterno, cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206309523545040143)
,p_name=>'P615_COD_RUBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Rubro')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_rubro ',
'from st_rubro',
'where cod_empresa = :P_COD_EMPRESA ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206309666669040144)
,p_name=>'P615_DESC_RUBRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('Descripci\00F3n Rubro')
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
 p_id=>wwv_flow_imp.id(206309727568040145)
,p_name=>'P615_COD_FAMILIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Familia')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIAS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_familia ',
'from st_familia ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206309854124040146)
,p_name=>'P615_DESC_FAMILIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('Descripci\00F3n Familia')
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
 p_id=>wwv_flow_imp.id(206309937846040147)
,p_name=>'P615_COD_LINEA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Linea ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_linea ',
'from st_linea ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206310099671040148)
,p_name=>'P615_DESC_LINEA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('Descripci\00F3n Linea')
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
 p_id=>wwv_flow_imp.id(206310173742040149)
,p_name=>'P615_COD_MARCA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Marca')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS_STOCONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_marca ',
'from st_marcas'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(206310281249040150)
,p_name=>'P615_DESC_MARCA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('Descripci\00F3n Marca')
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
 p_id=>wwv_flow_imp.id(209514513710158201)
,p_name=>'P615_COD_IVA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(206308892317040136)
,p_prompt=>unistr('C\00F3digo Iva')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209622822182893323)
,p_name=>'P615_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209621232841893307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209622923190893324)
,p_name=>'DA_DETALLES'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P615_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209623031284893325)
,p_event_id=>wwv_flow_imp.id(209622923190893324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- QUERY FAMILIA -- ',
'begin',
'   select descripcion',
'      into :P615_AUX_DESC_FAMILIA',
'      from st_familia',
'      where cod_familia = :P615_COD_FAMILIA ;',
'exception',
'   when others then',
'      :P615_AUX_DESC_FAMILIA := null ;',
'end ;',
'',
'-- QUERY LINEA -- ',
'begin',
'    select descripcion',
'      into :P615_AUX_DESC_LINEA',
'      from st_linea',
'     where cod_linea = :P615_COD_LINEA;',
'exception',
'    when others then',
'      :P615_AUX_DESC_LINEA := NULL;',
'end ;',
'',
'-- QUERY MARCA -- ',
'begin',
'    select descripcion',
'      into :P615_AUX_DESC_MARCA',
'      from st_marcas',
'     where cod_marca = :P615_COD_MARCA;',
'exception',
'    when others then',
'      :P615_AUX_DESC_MARCA := NULL;',
'end ;',
'',
'-- QUERY RUBRO -- ',
'',
'begin',
'  select descripcion',
'    into :P615_AUX_DESC_RUBRO',
'    from st_rubro',
'   where cod_empresa = :P_COD_EMPRESA',
'     and cod_rubro = :P615_COD_RUBRO;',
'exception',
'  when others then',
'    :P615_AUX_DESC_RUBRO := NULL;',
'end ;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209623567858893330)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209623466095893329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209623695137893331)
,p_event_id=>wwv_flow_imp.id(209623567858893330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206308407683040132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209623789109893332)
,p_event_id=>wwv_flow_imp.id(209623567858893330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206308407683040132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209624198023893336)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(209624067162893335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209624256527893337)
,p_event_id=>wwv_flow_imp.id(209624198023893336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209624317836893338)
,p_event_id=>wwv_flow_imp.id(209624198023893336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P615_COD_ART_CORTO := NULL;',
':P615_COD_ARTICULO := NULL;',
':P615_DESC_ARTICULO := NULL;',
':P615_COD_ORIGEN_ART := NULL;',
':P615_COD_ALTERNO := NULL;',
':P615_COD_RUBRO := NULL;',
':P615_DESC_RUBRO := NULL;',
':P615_COD_FAMILIA := NULL;',
':P615_DESC_FAMILIA := NULL;',
':P615_COD_LINEA := NULL;',
':P615_DESC_LINEA := NULL;',
':P615_COD_MARCA := NULL;',
':P615_DESC_MARCA := NULL;',
':P615_COD_IVA := NULL;',
':P615_AUX := 0;'))
,p_attribute_03=>'P615_COD_ART_CORTO,P615_COD_ARTICULO,P615_DESC_ARTICULO,P615_COD_ORIGEN_ART,P615_COD_ALTERNO,P615_COD_RUBRO,P615_DESC_RUBRO,P615_COD_FAMILIA,P615_DESC_FAMILIA,P615_COD_LINEA,P615_DESC_LINEA,P615_COD_MARCA,P615_DESC_MARCA,P615_COD_IVA,P615_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209624486290893339)
,p_name=>'DA_CORTO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P615_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209624548795893340)
,p_event_id=>wwv_flow_imp.id(209624486290893339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P615_COD_ART_CORTO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion, cod_articulo',
'      into :P615_DESC_ARTICULO,:P615_COD_ART_CORTO',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_articulo = :P615_COD_ART_CORTO;',
'  exception',
'    when no_data_found then',
'      :P615_DESC_ARTICULO := null;',
'      :P615_COD_ART_CORTO := null;',
'    when others then',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'',
'END IF;'))
,p_attribute_02=>'P615_COD_ART_CORTO'
,p_attribute_03=>'P615_DESC_ARTICULO,P615_COD_ART_CORTO'
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
 p_id=>wwv_flow_imp.id(209624650861893341)
,p_name=>'DA_ARTICULO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P615_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209624779386893342)
,p_event_id=>wwv_flow_imp.id(209624650861893341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P615_COD_ARTICULO IS NOT NULL THEN',
'  BEGIN',
'    select cod_art_corto',
'      into :P615_DESC_ARTICULO',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_articulo = :P615_COD_ARTICULO;',
'  exception',
'    when others then',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'ELSE',
'  :P615_DESC_ARTICULO := NULL ;',
'END IF;',
''))
,p_attribute_02=>'P615_COD_ARTICULO'
,p_attribute_03=>'P615_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209623209119893327)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P615_COD_EMPRESA := :P_COD_EMPRESA;',
':P615_AUX := 0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(209623344401893328)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
