prompt --application/pages/page_00308
begin
--   Manifest
--     PAGE: 00308
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
 p_id=>308
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tablero General de Tecnicos - CAPANTEC'
,p_alias=>'CAPANTEC'
,p_step_title=>'Tablero General de Tecnicos - CAPANTEC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function obtenerRegistrosSeleccionados(){',
'  var gridView = apex.region("OTS_GESTION").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'    records = gridView.getSelectedRecords(); // te deja todos los items seleccionados en un arreglo',
'    console.log(''records'', records);',
'    var cod_art = "";',
'    var condicion= "";',
'    var desc_art = "";',
'    var nro_comprobante ="";',
'    var tip_comprobante ="";',
'    var fecha="";',
'    var depositero="";',
'    var tecnico="";',
'    // La variable acum guarda todos los items seleccionados separados por ":"',
'    for (let index = 0; index < records.length; index++) {',
'        if (index == 0) {',
'            cod_art = records[index][4];',
'            condicion = records[index][5];',
'            desc_art = records[index][15];',
'            nro_comprobante = records[index][1];',
'            tip_comprobante = records[index][23];',
'            fecha = records[index][16];',
'            depositero = records[index][18];',
'            tecnico = records[index][17];',
'        }else{',
'            cod_art = records[index][4];',
'            condicion = records[index][5];',
'            desc_art = records[index][15];',
'            nro_comprobante = records[index][1];',
'            tip_comprobante = records[index][23];',
'            fecha = records[index][16];',
'            depositero = records[index][18];',
'            tecnico = records[index][17];',
'        }',
'    }',
'    apex.item(''P308_COD_ART'').setValue(cod_art);',
'    apex.item(''P308_COD_ART'').refresh();',
'    apex.item(''P308_CONDICION'').setValue(condicion);',
'    apex.item(''P308_CONDICION'').refresh();',
'    apex.item(''P308_DESC_ART'').setValue(desc_art);',
'    apex.item(''P308_DESC_ART'').refresh();',
'    apex.item(''P308_NRO_COMPROBANTE_SELECT'').setValue(nro_comprobante);',
'    apex.item(''P308_NRO_COMPROBANTE_SELECT'').refresh();',
'    apex.item(''P308_SER_COMPROBANTE_SELEC'').setValue(tip_comprobante);',
'    apex.item(''P308_SER_COMPROBANTE_SELEC'').refresh();',
'    apex.item(''P308_FECHA'').setValue(fecha);',
'    apex.item(''P308_FECHA'').refresh();',
'    apex.item(''P308_DEPOSITERO'').setValue(depositero);',
'    apex.item(''P308_DEPOSITERO'').refresh();',
'    apex.item(''P308_TECNICO'').setValue(tecnico);',
'    apex.item(''P308_TECNICO'').refresh();',
'    ',
'  } catch (e) {',
'    apex.item(''P308_COD_ART'').setValue('''');',
'    apex.item(''P308_CONDICION'').setValue('''');',
'    apex.item(''P308_DESC_ART'').setValue('''');',
'    apex.item(''P308_NRO_COMPROBANTE_SELECT'').setValue('''');',
'    apex.item(''P308_SER_COMPROBANTE_SELEC'').setValue('''');',
'    apex.item(''P308_FECHA'').setValue('''');',
'    apex.item(''P308_DEPOSITERO'').setValue('''');',
'    apex.item(''P308_TECNICO'').setValue('''');',
'  } finally{',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_COD_ART''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_CONDICION''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_DESC_ART''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_NRO_COMPROBANTE_SELECT''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_SER_COMPROBANTE_SELEC''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_FECHA''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_DEPOSITERO''}, { dataType: "text" });',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_TECNICO''}, { dataType: "text" });',
'  }',
'}',
'',
'function obtenerRegistrosSeleccionado(){',
'  var gridView = apex.region("OTS_SOLICITADAS").widget().interactiveGrid("getViews").grid;',
'  var records;',
'  try {',
'    records = gridView.getSelectedRecords(); // te deja todos los items seleccionados en un arreglo',
'    console.log(''records'', records);',
'    var art_ot = "";',
'    // La variable acum guarda todos los items seleccionados separados por ":"',
'    for (let index = 0; index < records.length; index++) {',
'        if (index == 0) {',
'            art_ot = records[index][25];',
'        }else{',
'            art_ot = records[index][25];',
'        }',
'    }',
'    apex.item(''P308_ART_OTS_SOL'').setValue(art_ot);',
'    apex.item(''P308_ART_OTS_SOL'').refresh();',
'  } catch (e) {',
'    apex.item(''P308_ART_OTS_SOL'').setValue('''');',
'  } finally{',
'    apex.server.process(''DUMMY'', { pageItems: ''#P308_ART_OTS_SOL''}, { dataType: "text" });',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230825163417'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76655436980945328)
,p_plug_name=>'Panel General de Servicio'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76655247808945326)
,p_plug_name=>'Ots Solicitadas'
,p_region_name=>'OTS_SOLICITADAS'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_USUARIO_PED,',
'       FEC_ALTA,',
'       HORA_ALTA,',
'       ESTADO,',
'       COD_USUARIO_PROC,',
'       FEC_PROCESO,',
'       HORA_PROCESO,',
'       OBSERVACION,',
'       COD_GRUPO,',
'       TIPO,',
'       ORIGEN,',
'       PROCESADO,',
'       SOLICITUD_CREADO_POR,',
'       COD_MOTIVO,',
'       ID_SOLICITUD,',
'       ARTICULO_OT,',
'       CONDICION_OT,',
'       IND_MIGRADO_DM,',
'       FECHA_MIGRADO,',
'       RECHAZADO,',
'       (SELECT  ind_snc',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona) indsnc,',
'        (CASE WHEN TIPO=''E'' AND COD_GRUPO=''TECNIC'' THEN ''ENTREGA TECNICO''',
'               WHEN COD_GRUPO=''TECNIC'' THEN ''SOLICITUD TECNICO''',
'               WHEN TIPO=''E'' THEN ''INGRESO SALON''',
'               WHEN (SELECT  ind_snc',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona) =''S'' THEN ''SNC''',
'               ELSE ''SOLICITUD CAJA'' ',
'               END)TIPO_DESC,',
'       (SELECT  descripcion',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona)articulo,',
'           (select p.posicion',
'    	from CA_UBIC_PRODUCTOS p',
'    	where p.cod_empresa= ''1''',
'    	and p.tip_comprobante=ot.tip_comprobante',
'    	and p.ser_comprobante=ot.ser_comprobante',
'    	and p.nro_comprobante=ot.nro_comprobante) Posicion,',
'        (SELECT  GARANTIA_OT',
'     FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'    WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'    AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'    AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'    AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'    AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'    AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'    and c.cod_empresa=t.cod_empresa',
'    and c.cod_proveedor=t.cod_proveedor',
'    and t.cod_persona=p.cod_persona) garantia,',
'        (SELECT  p.nombre',
'         FROM vt_ordenes_trabajo C,  ST_ARTICULOS S, cm_proveedores t, personas p',
'        WHERE C.COD_EMPRESA=ot.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=ot.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=ot.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=ot.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=c.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=c.COD_ARTICULO',
'        and c.cod_empresa=t.cod_empresa',
'        and c.cod_proveedor=t.cod_proveedor',
'        and t.cod_persona=p.cod_persona) tecnico',
'from CA_SOLICITUD_OT ot',
'where  ot.cod_empresa = :p_cod_empresa AND NVL(ESTADO,''N'')=''P''',
'AND COD_GRUPO=''TECNIC''',
'AND TIPO=''S''',
'AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'from vt_ordenes_trabajo A',
'where A.cod_empresa= :p_cod_empresa',
'and A.tip_comprobante=tip_comprobante',
'and A.ser_comprobante=ser_comprobante',
'and A.nro_comprobante=nro_comprobante',
'and a.cod_proveedor=:P308_PROVEEDOR',
'AND NVL(A.ANULADO,''N'')<>''S''',
'AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'--AND ( (nvl(:CHK_TKT,''N'')=''N'' AND COD_USUARIO_PED <>''TICKETS'') OR nvl(:CHK_TKT,''N'')=''S''  )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ots Solicitadas'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815042629003011)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815100544003012)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815231074003013)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815349182003014)
,p_name=>'COD_USUARIO_PED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO_PED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usuario Ped'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815471601003015)
,p_name=>'FEC_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_ALTA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Alta'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815579187003016)
,p_name=>'HORA_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA_ALTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora Alta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815616341003017)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815794365003018)
,p_name=>'COD_USUARIO_PROC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO_PROC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usuario Proc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815857798003019)
,p_name=>'FEC_PROCESO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_PROCESO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Proceso'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90815918015003020)
,p_name=>'HORA_PROCESO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA_PROCESO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora Proceso'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816038586003021)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Observacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816179357003022)
,p_name=>'COD_GRUPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_GRUPO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Grupo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816226210003023)
,p_name=>'TIPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tipo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816313506003024)
,p_name=>'ORIGEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Origen'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816446613003025)
,p_name=>'PROCESADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Procesado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816559365003026)
,p_name=>'SOLICITUD_CREADO_POR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOLICITUD_CREADO_POR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Solicitud Creado Por'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816618183003027)
,p_name=>'COD_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Motivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816748187003028)
,p_name=>'ID_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_SOLICITUD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Solicitud'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816841968003029)
,p_name=>'ARTICULO_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARTICULO_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Articulo Ot'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90816965635003030)
,p_name=>'CONDICION_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONDICION_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Condicion Ot'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817050438003031)
,p_name=>'IND_MIGRADO_DM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_MIGRADO_DM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ind Migrado Dm'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817146870003032)
,p_name=>'FECHA_MIGRADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_MIGRADO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Migrado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817299385003033)
,p_name=>'RECHAZADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECHAZADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rechazado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817319801003034)
,p_name=>'INDSNC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDSNC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Indsnc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817451742003035)
,p_name=>'TIPO_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tipo Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>17
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817573330003036)
,p_name=>'ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817687070003037)
,p_name=>'POSICION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSICION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Posicion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817790030003038)
,p_name=>'GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Garantia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90817860704003039)
,p_name=>'TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(90814832205003009)
,p_internal_uid=>90814832205003009
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(90994405360477226)
,p_interactive_grid_id=>wwv_flow_imp.id(90814832205003009)
,p_static_id=>'909945'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(90994658588477226)
,p_report_id=>wwv_flow_imp.id(90994405360477226)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90996063569477231)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(90815042629003011)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90996999885477233)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(90815100544003012)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90997814262477235)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(90815231074003013)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131.188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90998710403477236)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(90815349182003014)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90999696114477238)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(90815471601003015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91000587945477239)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(90815579187003016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91001462188477241)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(90815616341003017)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91002315258477243)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(90815794365003018)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91003221378477244)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(90815857798003019)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91004101269477246)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(90815918015003020)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91005095574477247)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(90816038586003021)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91005943789477249)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(90816179357003022)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91006838331477250)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(90816226210003023)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91007716745477252)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(90816313506003024)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62.1875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91008633212477254)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(90816446613003025)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91009586608477255)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(90816559365003026)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91010403297477257)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(90816618183003027)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91011349329477258)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(90816748187003028)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91012233068477260)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(90816841968003029)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91013108772477261)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(90816965635003030)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91014081857477263)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(90817050438003031)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91014979578477265)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(90817146870003032)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91015893251477267)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(90817299385003033)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91016799710477269)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(90817319801003034)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91017951502477271)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(90817451742003035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91018784647477273)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(90817573330003036)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91019642233477275)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(90817687070003037)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76.1875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91020590079477278)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(90817790030003038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91021445447477280)
,p_view_id=>wwv_flow_imp.id(90994658588477226)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(90817860704003039)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77977206623694306)
,p_plug_name=>unistr('Ots en Gesti\00F3n')
,p_region_name=>'OTS_GESTION'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIP_COMPROBANTE,SER_COMPROBANTE||NRO_COMPROBANTE Comprobante, SER_COMPROBANTE, NRO_COMPROBANTE,C.COD_CLIENTE||''-''||C. NOM_CLIENTE Cliente,C.COD_CLIENTE,C.fecha_ot FEC_COMPROBANTE,',
'C.COD_ARTICULO, CONDICION,C. NOM_CLIENTE,C.ANTIGUEDAD antiguedad, C.ANTIGUEDAD antiguedad2,C.fecha_ot fec_aprobacion,',
'NULL fec_autorizado_gar_por,C.ESTADO ESTADO_OT, C.COD_PROVEEDOR, GARANTIA, ( select decode(posicion,null, null,''EN_TALLER'')',
'                from CA_UBIC_PRODUCTOS u, ca_ubic_tecnicos ut',
'               where u.cod_empresa = ''1''',
'                 and tip_comprobante = c.tip_comprobante',
'                 and ser_comprobante = c.ser_comprobante',
'                 and (nro_comprobante = c.nro_comprobante OR',
'                     nro_comprobante_2 = c.nro_comprobante OR',
'                     nro_comprobante_3 =c.nro_comprobante OR',
'                     nro_comprobante_4 = c.nro_comprobante OR',
'                     nro_comprobante_5 = c.nro_comprobante)',
'                     and ut.cod_empresa= u.cod_empresa',
'                     and ut.cod_proveedor=c.cod_proveedor',
'                     and ut.piso=u.piso',
'                 and rownum = 1)Taller,',
'                 (select s.DESCRIPCION',
'                from st_articulos s',
'                where s.cod_empresa = :P_COD_EMPRESA',
'                and s.cod_articulo = C.COD_ARTICULO) DESC_ARTI,',
'                (select c.fecha',
'from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
'and (c.tip_comprobante_ref = (''ORT''))',
'and (c.ser_comprobante_ref = C.ser_comprobante)',
'and (c.nro_comprobante_ref = C.nro_comprobante)) fecha,',
'(select  c.tecnico',
'from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
'and (c.tip_comprobante_ref = (''ORT''))',
'and (c.ser_comprobante_ref = C.ser_comprobante)',
'and (c.nro_comprobante_ref = C.nro_comprobante)) tecnico,',
'(select c.depositero',
'from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
'and (c.tip_comprobante_ref = (''ORT''))',
'and (c.ser_comprobante_ref = C.ser_comprobante)',
'and (c.nro_comprobante_ref = C.nro_comprobante)) depositero,',
'APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                    p_value       => NRO_COMPROBANTE,',
'                    p_attributes  => (case  when c.antiguedad <=2 and c.garantia =''S'' then ''checked || style="width:40px;accent-color: green;"''',
'                                            when c.antiguedad <=5 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: green;"''',
'                                            when c.antiguedad < 3 and c.garantia =''S'' then ''checked || style="width:40px;accent-color: yellow;"''',
'                                            when c.antiguedad < 7 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: yellow;"''',
'                                            when c.antiguedad > 3 and c.garantia =''S'' then ''checked || style="width:40px;accent-color: red;"''',
'                                            when c.antiguedad >= 7 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: red;"''',
'                                      end ) )as Antiguedad_Comprobante,',
'(case when c.antiguedad <=2 and c.garantia =''S'' then ''V''',
'      when c.antiguedad <=5 and c.garantia =''N'' then ''V''',
'      when c.antiguedad < 3 and c.garantia =''S'' then ''Y''',
'      when c.antiguedad < 7 and c.garantia =''N'' then ''Y''',
'      when c.antiguedad > 3 and c.garantia =''S'' then ''R''',
'      when c.antiguedad >= 7 and c.garantia =''N'' then ''R''',
'                                      end) AS ANTIGUEDAD_COMPROBANTES,                                ',
'APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                    p_value       => NRO_COMPROBANTE,',
'                    p_attributes  => (case  when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=2 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: green;"''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=4 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: yellow;"''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=99999999999999 and c.garantia =''N'' then ''checked || style="width:40px;accent-color: red;"''',
'                                      end ) )as Estado_por_ot,',
'(case  when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=2 and c.garantia =''N'' then ''V''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=4 and c.garantia =''N'' then ''Y''',
'                                            when c.estado in (''A PRESUPUESTAR'',''REPARACION PARTICULAR'',''APROBADO'')  and c.antiguedad <=99999999999999 and c.garantia =''N'' then ''R''',
'                                      end) AS ESTADO_POR_ORDEN_TRABAJO,                                      ',
'null Link_form                                    ',
'from v_ots_tecnicos_TABLERO C',
'where  C.fecha_ot>to_date(''01/01/2013'',''dd/mm/yyyy'') ',
'AND C.COD_PROVEEDOR =  :P308_PROVEEDOR;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Ots en Gesti\00F3n')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77978711041694321)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77978845995694322)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77978945749694323)
,p_name=>'COD_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979088348694324)
,p_name=>'FEC_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_COMPROBANTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979125286694325)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979231133694326)
,p_name=>'CONDICION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONDICION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Condicion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979389503694327)
,p_name=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre Cliente'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979429489694328)
,p_name=>'ANTIGUEDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Antiguedad'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979528700694329)
,p_name=>'ANTIGUEDAD2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Antiguedad2'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979646274694330)
,p_name=>'FEC_APROBACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_APROBACION'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Aprobacion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979717574694331)
,p_name=>'FEC_AUTORIZADO_GAR_POR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_AUTORIZADO_GAR_POR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fec Autorizado Gar Por'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979854324694332)
,p_name=>'ESTADO_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Estado Ot'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>600
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77979990164694333)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Proveedor'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77980095778694334)
,p_name=>'GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Garantia'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77980189558694335)
,p_name=>'TALLER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TALLER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Taller'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(90818956311003050)
,p_name=>'DESC_ARTI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ARTI'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Arti'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728146494208421)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728267922208422)
,p_name=>'TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728386071208423)
,p_name=>'DEPOSITERO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPOSITERO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Depositero'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754246901270211)
,p_name=>'ANTIGUEDAD_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Antiguedad Comprobante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754327801270212)
,p_name=>'ESTADO_POR_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_POR_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Estado Por Ot'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754470968270213)
,p_name=>'LINK_FORM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_FORM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:RP,320:P320_P_NRO_COMPROBANTE,P320_P_SER_COMPROBANTE,P320_P_TIP_COMPROBANTE:&NRO_COMPROBANTE.,&SER_COMPROBANTE.,&TIP_COMPROBANTE.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754518271270214)
,p_name=>'COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comprobante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>41
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754625754270215)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92754709874270216)
,p_name=>'CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>116
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98367936642250021)
,p_name=>'ANTIGUEDAD_COMPROBANTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANTIGUEDAD_COMPROBANTES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Antiguedad Comprobantes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98368038761250022)
,p_name=>'ESTADO_POR_ORDEN_TRABAJO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_POR_ORDEN_TRABAJO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado Por Orden Trabajo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(77978522855694319)
,p_internal_uid=>77978522855694319
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(78380012142031111)
,p_interactive_grid_id=>wwv_flow_imp.id(77978522855694319)
,p_static_id=>'783801'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(78380298571031112)
,p_report_id=>wwv_flow_imp.id(78380012142031111)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20983428002427)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(92754625754270215)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23915061007324)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(92754709874270216)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45412502010828)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(98368038761250022)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95904432128575)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(98367936642250021)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78381647812031119)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(77978711041694321)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78382532593031121)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(77978845995694322)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78383482243031123)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(77978945749694323)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78384326189031125)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(77979088348694324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78385223761031126)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(77979125286694325)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78386159086031128)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(77979231133694326)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78387046068031129)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(77979389503694327)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78387994000031131)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(77979429489694328)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78388864993031133)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(77979528700694329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78389792692031134)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(77979646274694330)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78390667210031136)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(77979717574694331)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78391568119031137)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(77979854324694332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78392437765031139)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(77979990164694333)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78393353408031141)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(77980095778694334)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(78441810761149120)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(77980189558694335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91511721631610319)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(90818956311003050)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91916237975582493)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(91728146494208421)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91917192041582495)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(91728267922208422)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91918080740582497)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(91728386071208423)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93195337850478852)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(92754246901270211)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93196277651478854)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(92754327801270212)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93320390066579759)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(92754470968270213)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93353021980591905)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(92754518271270214)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(22911379011515)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>5
,p_name=>'Antiguedad'
,p_background_color=>'#ff0707'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98367936642250021)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'R'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(58233984024351)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>20
,p_name=>'ESTADO_OT'
,p_background_color=>'#e80000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98368038761250022)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'R'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(58703379024351)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>25
,p_name=>'ESTADO_OT'
,p_background_color=>'#fff42a'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98368038761250022)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Y'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(59179387024351)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>30
,p_name=>'ESTADO_OT'
,p_background_color=>'#04f600'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(77978711041694321)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'V'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(109227593150334)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>10
,p_name=>'Antiguedad'
,p_background_color=>'#21de00'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98367936642250021)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'V'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(109728352150336)
,p_view_id=>wwv_flow_imp.id(78380298571031112)
,p_execution_seq=>15
,p_name=>'Antiguedad'
,p_background_color=>'#fee540'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(98367936642250021)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Y'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77980705101694341)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91726138749208401)
,p_plug_name=>'Problemas'
,p_parent_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROBLEMA ',
'    FROM VT_ORDENES_TRABAJO_PROBLEMA',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND TIP_COMPROBANTE = ''ORT''',
'    AND SER_COMPROBANTE = :P308_SER_COMPROBANTE_SELEC',
'    AND NRO_COMPROBANTE = :P308_NRO_COMPROBANTE_SELECT',
'union all ',
'    SELECT p.descripcion FROM vt_ordenes_trabajo_prob_gen c, ca_problemas p',
'    WHERE c.COD_EMPRESA = :P_COD_EMPRESA',
'    AND TIP_COMPROBANTE =''ORT''',
'    AND SER_COMPROBANTE = :P308_SER_COMPROBANTE_SELEC',
'    AND NRO_COMPROBANTE = :P308_NRO_COMPROBANTE_SELECT',
'    and c.cod_empresa=p.cod_empresa',
'    --and c.cod_problema=p.cod_problema;',
'    and c.cod_problema_cliente=p.cod_problema;	'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_SER_COMPROBANTE_SELEC,P308_NRO_COMPROBANTE_SELECT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91726352650208403)
,p_name=>'PROBLEMA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROBLEMA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Problema'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91726293364208402)
,p_internal_uid=>91726293364208402
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(91733296607215016)
,p_interactive_grid_id=>wwv_flow_imp.id(91726293364208402)
,p_static_id=>'917333'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(91733450310215017)
,p_report_id=>wwv_flow_imp.id(91733296607215016)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91733987458215019)
,p_view_id=>wwv_flow_imp.id(91733450310215017)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91726352650208403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91726703151208407)
,p_plug_name=>unistr('Observaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.nombre_apellido nombre, c.empresa, fec_llamada, hora ,d.cod_motivo,',
'       d.comentario,cod_usuario , C.calificacion               ',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d',
'where D.cod_empresa     = :P_cod_empresa',
'AND C.COD_EMPRESA = D.COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and (d.tip_comprobante = (''ORT''))',
' and (d.ser_comprobante = :P308_SER_COMPROBANTE_SELEC)',
' and (d.nro_comprobante = :P308_NRO_COMPROBANTE_SELECT) ',
'UNION ALL',
'select c.Nombre nombre, c.empresa, C.FEC_MOVIMIENTO FEC_LLAMADA, C.HORA_LLAMADA ,C.cod_motivo, ',
'       C.OBSERVACION,cod_usuario ,to_char(c.calificacion               )',
' from CA_LLAMADAS_SALIENTES c ',
'where c.cod_empresa     = :P_cod_empresa',
'  and c.tip_comprobante = (''ORT'')',
' and c.ser_comprobante = :P308_SER_COMPROBANTE_SELEC',
' and c.nro_comprobante = :P308_NRO_COMPROBANTE_SELECT;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_SER_COMPROBANTE_SELEC,P308_NRO_COMPROBANTE_SELECT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Observaci\00F3n')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91726947907208409)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727034458208410)
,p_name=>'EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727156283208411)
,p_name=>'FEC_LLAMADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_LLAMADA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Llamada'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727249862208412)
,p_name=>'HORA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727362101208413)
,p_name=>'COD_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Motivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727449316208414)
,p_name=>'COMENTARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMENTARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comentario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727515544208415)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727684562208416)
,p_name=>'CALIFICACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALIFICACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Calificacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727833287208418)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91727951508208419)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91726890826208408)
,p_internal_uid=>91726890826208408
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(91771079251400048)
,p_interactive_grid_id=>wwv_flow_imp.id(91726890826208408)
,p_static_id=>'917711'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
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
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(91771244540400048)
,p_report_id=>wwv_flow_imp.id(91771079251400048)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91771711355400049)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(91726947907208409)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91772687268400051)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(91727034458208410)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91773536188400053)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91727156283208411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.875
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91774492840400055)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91727249862208412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62.875
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91775339765400056)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(91727362101208413)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91776256611400058)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(91727449316208414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91777103260400059)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(91727515544208415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91778059232400061)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(91727684562208416)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91874203487443988)
,p_view_id=>wwv_flow_imp.id(91771244540400048)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91727833287208418)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91728420454208424)
,p_plug_name=>'Resumen Estados'
,p_parent_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select estado ESTADO_OT,',
'       COUNT(*)CANTIDAD',
'      from v_ots_tecnicos_TABLERO',
'where   COD_PROVEEDOR = :P308_PROVEEDOR',
'GROUP BY estado;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen Estados'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728720267208427)
,p_name=>'ESTADO_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>600
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91728820108208428)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91728523430208425)
,p_internal_uid=>91728523430208425
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92061031699612393)
,p_interactive_grid_id=>wwv_flow_imp.id(91728523430208425)
,p_static_id=>'920611'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92061205297612393)
,p_report_id=>wwv_flow_imp.id(92061031699612393)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92068983136651260)
,p_view_id=>wwv_flow_imp.id(92061205297612393)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91728720267208427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92069846338651262)
,p_view_id=>wwv_flow_imp.id(92061205297612393)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91728820108208428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(357916000003)
,p_view_id=>wwv_flow_imp.id(92061205297612393)
,p_tooltip=>'Total'
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(91728820108208428)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90814617897003007)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91729055871208430)
,p_plug_name=>'Tipo Pedido'
,p_parent_plug_id=>wwv_flow_imp.id(90814617897003007)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIPO, SUM(cantidad) cantidad ',
'    FROM (select ',
'    decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')TIPO,',
'    sum(decode (tipo,''E'',1,0))cantidad',
'    from CA_SOLICITUD_OT cc',
'    where cod_empresa = ''1'' AND NVL(ESTADO,''N'')=''P''',
'    AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'    from vt_ordenes_trabajo A',
'    where A.cod_empresa= ''1''',
'    and A.tip_comprobante=CC.tip_comprobante',
'    and A.ser_comprobante=CC.ser_comprobante',
'    and A.nro_comprobante=CC.nro_comprobante',
'    AND NVL(A.ANULADO,''N'')<>''S''',
'    AND TIPO=''S''',
'    AND a.COD_PROVEEDOR = :P308_PROVEEDOR',
'    AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'    and cod_grupo=''TECNIC''',
'    and tipo=''E''',
'    group by decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')',
'    union all',
'    select ',
'    decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')TIPO,',
'    sum(decode (tipo,''S'',1,0))cantidad',
'    from CA_SOLICITUD_OT cc',
'    where cod_empresa = ''1'' AND NVL(ESTADO,''N'')=''P''',
'    AND NRO_COMPROBANTE  IN (select nro_comprobante ',
'    from vt_ordenes_trabajo A',
'    where A.cod_empresa= ''1''',
'    and A.tip_comprobante=CC.tip_comprobante',
'    and A.ser_comprobante=CC.ser_comprobante',
'    and A.nro_comprobante=CC.nro_comprobante',
'    AND NVL(A.ANULADO,''N'')<>''S''',
'    AND TIPO=''S''',
'    AND a.COD_PROVEEDOR = :P308_PROVEEDOR',
'    AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S'')',
'    and cod_grupo=''TECNIC''',
'    and tipo=''S''',
'    group by decode (tipo,''E'',''SOLICITUD_TECNICO'',''ENTREGA_TECNICO'')',
'    union all',
'    select  ''SOLICITUD_TECNICO'' ,0   ',
'    FROM DUAL',
'    union all',
'    select  ''ENTREGA_TECNICO'' ,0  ',
'    FROM DUAL)',
'GROUP BY TIPO;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Tipo Pedido'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729336771208433)
,p_name=>'TIPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tipo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>17
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729464082208434)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91729117573208431)
,p_internal_uid=>91729117573208431
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92090528312802052)
,p_interactive_grid_id=>wwv_flow_imp.id(91729117573208431)
,p_static_id=>'920906'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92090737453802052)
,p_report_id=>wwv_flow_imp.id(92090528312802052)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92102893895846056)
,p_view_id=>wwv_flow_imp.id(92090737453802052)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91729336771208433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92103703915846058)
,p_view_id=>wwv_flow_imp.id(92090737453802052)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91729464082208434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91729500617208435)
,p_plug_name=>'Devoluciones'
,p_parent_plug_id=>wwv_flow_imp.id(90814617897003007)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIP_ENVIO,',
'       SER_ENVIO,',
'       NRO_ENVIO,',
'       FECHA,',
'       COD_SUCURSAL_ENT,',
'       DESC_SUCUR_ENT,',
'       COD_SUCURSAL,',
'       DESC_SUCUR_SAL,',
'       OBS,',
'       COD_PROVEEDOR,',
'       null Ver',
'  from V_ENVIO_STNGO_REPUESTO',
' where COD_PROVEEDOR= :P308_PROVEEDOR'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Devoluciones'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729743215208437)
,p_name=>'TIP_ENVIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_ENVIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Envio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729892837208438)
,p_name=>'SER_ENVIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_ENVIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Env\00EDo')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>6
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91729998674208439)
,p_name=>'NRO_ENVIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_ENVIO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('N\00FAmero')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730064540208440)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730138062208441)
,p_name=>'COD_SUCURSAL_ENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL_ENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entrada'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730229735208442)
,p_name=>'DESC_SUCUR_ENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SUCUR_ENT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730399934208443)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Salida'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730486547208444)
,p_name=>'DESC_SUCUR_SAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SUCUR_SAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730557532208445)
,p_name=>'OBS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Obs'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730600214208446)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91730703778208447)
,p_name=>'VER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Ver'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.:RP,339:P339_P_NRO_COMPROBANTE,P339_P_SER_COMPROBANTE,P339_C_FECHA,P339_C_COD_SUCURSAL_ENT,P339_COD_SUCURSAL,P339_P_COD_SUC_ENTRADA,P339_P_COD_SUC_SAL,P339_P_FECHA:&NRO_ENVIO.,&SER_ENVIO.,&FECHA.,&COD_SUCURSAL_ENT.,'
||'&COD_SUCURSAL.,&COD_SUCURSAL_ENT.,&COD_SUCURSAL.,&FECHA.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91729635571208436)
,p_internal_uid=>91729635571208436
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92105604641898918)
,p_interactive_grid_id=>wwv_flow_imp.id(91729635571208436)
,p_static_id=>'921057'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92105802732898918)
,p_report_id=>wwv_flow_imp.id(92105604641898918)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92106304187898919)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(91729743215208437)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92107264885898921)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91729892837208438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92108166907898923)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91729998674208439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92109086135898925)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(91730064540208440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92109950517898926)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91730138062208441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92110821919898928)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(91730229735208442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92111709404898930)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(91730399934208443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92112604292898931)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(91730486547208444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92113539619898933)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(91730557532208445)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92114479154898934)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(91730600214208446)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92134466143989219)
,p_view_id=>wwv_flow_imp.id(92105802732898918)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(91730703778208447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91730878475208448)
,p_plug_name=>'Pedidos Repuestos'
,p_parent_plug_id=>wwv_flow_imp.id(90814617897003007)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       (SELECT rpad(''Tec:'',8,'' '') ||p.nombre ',
' FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S, VT_ordenes_trabajo vt,',
' cm_PROVEEDORES PRO, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and vt.cod_empresa=c.cod_empresa',
'AND vt.TIP_COMPROBANTE=C.TIP_COMPROBANTE_REF',
'AND vt.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND vt.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF',
'AND VT.COD_EMPRESA=PRO.COD_EMPRESA',
'AND VT.COD_PROVEEDOR=PRO.COD_PROVEEDOR',
'AND P.COD_PERSONA=Pro.COD_PERSONA',
'AND C.NRO_COMPROBANTE= aa.NRO_COMPROBANTE',
'GROUP BY C.NRO_COMPROBANTE,C.observacion, C.NRO_COMPROBANTE_REF,vt.cod_articulo,',
'c.cod_empresa , c.TIP_COMPROBANTE ,c.SER_COMPROBANTE, c.NRO_COMPROBANTE,p.nombre) tecnico,',
'(SELECT ''Mod: ''||rpad(vt.cod_articulo,25,'' '')',
' FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S, VT_ordenes_trabajo vt,',
' cm_PROVEEDORES PRO, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and vt.cod_empresa=c.cod_empresa',
'AND vt.TIP_COMPROBANTE=C.TIP_COMPROBANTE_REF',
'AND vt.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND vt.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF',
'AND VT.COD_EMPRESA=PRO.COD_EMPRESA',
'AND VT.COD_PROVEEDOR=PRO.COD_PROVEEDOR',
'AND P.COD_PERSONA=Pro.COD_PERSONA',
'AND C.NRO_COMPROBANTE= aa.NRO_COMPROBANTE',
'GROUP BY C.NRO_COMPROBANTE,C.observacion, C.NRO_COMPROBANTE_REF,vt.cod_articulo,',
'c.cod_empresa  , c.TIP_COMPROBANTE , c.SER_COMPROBANTE, c.NRO_COMPROBANTE,p.nombre ) observacion_tec,',
'',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NRO_COMPROBANTE_REF,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       COD_USUARIO_AUTORIZACION,',
'       FECHA_AUTORIZACION,',
'       AUTORIZADO,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       OBSERVACION,',
'       PRESUPUESTO,',
'       DESC_ERROR,',
'       ANULADO,',
'       CONFIRMADO,',
'       FACTURADO,',
'       VERIFICADO,',
'       TRASLADO,',
'       HORA_ALTA,',
'       COD_SUCURSAL_ENV,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       FEC_CONFIMACION,',
'       HORA_CONFIRMACION,',
'       COD_PROVEEDOR,',
'       IND_RECEPCIONADO,',
'       FEC_RECEPCION,',
'       IND_PROCESADO,',
'       IND_REBOBINADO,',
'       RETIRA_DE,',
'        (select case when nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''N'' THEN ''EN ESPERA'' ',
'WHEN nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''N'' THEN ''EN PREPARACION'' ',
'WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'         FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'        WHERE C.COD_EMPRESA=''1''',
'        AND C.COD_EMPRESA=D.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'        AND NVL(C.ANULADO,''N'')<>''S''',
'        AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'        GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 AND nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''S'' THEN ''CONFIRMADO'' ',
'WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'         FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'        WHERE C.COD_EMPRESA=''1''',
'        AND C.COD_EMPRESA=D.COD_EMPRESA',
'        AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'        AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'        AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'        AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'        AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'        AND NVL(C.ANULADO,''N'')<>''S''',
'        AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'        GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) > 0 AND nvl((SELECT   SUM(CANTIDAD_CONFIRMADA)',
'                                 FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                WHERE C.COD_EMPRESA=''1''',
'                                AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                AND NVL(C.ANULADO,''N'')<>''S''',
'                                AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = 0 and NVL((SELECT CASE WHEN NVL((SELECT  SUM( DECODE(D.VERIFICADO,''S'',1,0)) ',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) = nvl((SELECT   COUNT(D.COD_ARTICULO)',
'                                                                                     FROM CA_PEDIDO_REPUESTO_CAB C, CA_PEDIDO_REPUESTO_DET D, ST_ARTICULOS S',
'                                                                                    WHERE C.COD_EMPRESA=''1''',
'                                                                                    AND C.COD_EMPRESA=D.COD_EMPRESA',
'                                                                                    AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'                                                                                    AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'                                                                                    AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'                                                                                    AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'                                                                                    AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'                                                                                    AND NVL(C.ANULADO,''N'')<>''S''',
'                                                                                    AND C.NRO_COMPROBANTE= AA.NRO_COMPROBANTE',
'                                                                                    GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO),0) THEN ''S''',
'                                                                                    ELSE ''N''',
'                                                                                    END',
'                                                                                    FROM DUAL),''N'') =''S'' THEN ''SIN EXISTENCIA''                                                                                     ',
'        end',
'        from dual)ESTADO_PREPA',
'from CA_PEDIDO_REPUESTO_CAB aa',
'where cod_empresa = :p_cod_empresa ',
'AND NVL(ANULADO,''N'')<>''S''',
'AND NVL(ind_recepcionado,''N'')<>''S''',
'AND FEC_COMPROBANTE>SYSDATE-60',
'AND TIP_COMPROBANTE_REF=''ORT''',
'AND AA.SER_COMPROBANTE_REF IN(''A'',''P'')',
'AND NRO_COMPROBANTE_REF IN (SELECT C.NRO_COMPROBANTE',
'FROM VT_ORDENES_TRABAJO C',
'WHERE C.COD_EMPRESA=:p_cod_empresa ',
'AND C.TIP_COMPROBANTE=AA.TIP_COMPROBANTE_REF',
'AND C.SER_COMPROBANTE=AA.SER_COMPROBANTE_REF',
'AND C.NRO_COMPROBANTE=AA.NRO_COMPROBANTE_REF',
'AND NVL(C.CERRADO,''N'')<>''S''',
'AND NVL(C.anulado,''N'')<>''S''',
'and c.cod_proveedor = :p308_proveedor',
'AND c.COD_ORIGEN IN(''1'',''15'',''20'')',
'AND NVL(C.IND_ENTREGA,''N'')<>''S''',
'AND NVL(C.IND_RETIRADO,''N'')<>''S'')',
'and nro_comprobante in (select d.nro_comprobante',
'from  CA_PEDIDO_REPUESTO_det D',
'where 	 aa.COD_EMPRESA=D.COD_EMPRESA',
'				AND aa.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'				AND aa.SER_COMPROBANTE=D.SER_COMPROBANTE',
'				AND aa.NRO_COMPROBANTE=D.NRO_COMPROBANTE)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pedidos Repuestos'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91731091689208450)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153118986142901)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153242000142902)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153326692142903)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153461355142904)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153557008142905)
,p_name=>'FEC_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_COMPROBANTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Comprobante'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153675111142906)
,p_name=>'COD_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153756633142907)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153812064142908)
,p_name=>'FEC_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_ESTADO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92153941580142909)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154013423142910)
,p_name=>'FEC_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_ALTA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Alta'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154189558142911)
,p_name=>'NRO_COMPROBANTE_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE_REF'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'OT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154262576142912)
,p_name=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nom Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154396881142913)
,p_name=>'NOMBRE_CAB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE_CAB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre Cab'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>65
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154405253142914)
,p_name=>'COD_USUARIO_AUTORIZACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO_AUTORIZACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usuario Autorizacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154530467142915)
,p_name=>'FECHA_AUTORIZACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_AUTORIZACION'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Autorizacion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154669580142916)
,p_name=>'AUTORIZADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTORIZADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Autorizado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154762072142917)
,p_name=>'COD_USUARIO_ANU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO_ANU'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Usuario Anu'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154890305142918)
,p_name=>'COD_MOTIVO_ANU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO_ANU'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Motivo Anu'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92154939685142919)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Observacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155014702142920)
,p_name=>'PRESUPUESTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESUPUESTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Presupuesto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155168605142921)
,p_name=>'DESC_ERROR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ERROR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Error'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155244733142922)
,p_name=>'ANULADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANULADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Anulado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155387407142923)
,p_name=>'CONFIRMADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Confirmado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155480691142924)
,p_name=>'FACTURADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTURADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Facturado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155587190142925)
,p_name=>'VERIFICADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFICADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verificado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155694642142926)
,p_name=>'TRASLADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRASLADO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Traslado'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155775687142927)
,p_name=>'HORA_ALTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA_ALTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora Alta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155834342142928)
,p_name=>'COD_SUCURSAL_ENV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL_ENV'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Sucursal Env'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92155937096142929)
,p_name=>'TIP_COMPROBANTE_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE_REF'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante Ref'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156002906142930)
,p_name=>'SER_COMPROBANTE_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE_REF'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Comprobante Ref'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156127027142931)
,p_name=>'FEC_CONFIMACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_CONFIMACION'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Confimacion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156202977142932)
,p_name=>'HORA_CONFIRMACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA_CONFIRMACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora Confirmacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156317890142933)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156479334142934)
,p_name=>'IND_RECEPCIONADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_RECEPCIONADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Recepcionado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156594586142935)
,p_name=>'FEC_RECEPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_RECEPCION'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Recepcion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156652856142936)
,p_name=>'IND_PROCESADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_PROCESADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Procesado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156707166142937)
,p_name=>'IND_REBOBINADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_REBOBINADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Rebobinado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156819730142938)
,p_name=>'RETIRA_DE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETIRA_DE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Retira De'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92156991131142939)
,p_name=>'TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Observaci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>108
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92157071921142940)
,p_name=>'OBSERVACION_TEC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION_TEC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>410
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92753973034270208)
,p_name=>'ESTADO_PREPA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO_PREPA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>460
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91730931860208449)
,p_internal_uid=>91730931860208449
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92161181722169275)
,p_interactive_grid_id=>wwv_flow_imp.id(91730931860208449)
,p_static_id=>'921612'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92161355109169275)
,p_report_id=>wwv_flow_imp.id(92161181722169275)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92161889849169276)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(91731091689208450)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92162725647169278)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(92153118986142901)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92163607389169279)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(92153242000142902)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92164528303169281)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(92153326692142903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92165489743169282)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(92153461355142904)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92166365972169284)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(92153557008142905)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92167204971169285)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(92153675111142906)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92168131817169286)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(92153756633142907)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92169002083169288)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(92153812064142908)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92169943120169289)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(92153941580142909)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92170880922169291)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(92154013423142910)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92171796641169292)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(92154189558142911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92172640592169294)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(92154262576142912)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92173559175169295)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(92154396881142913)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92174474329169297)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(92154405253142914)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92175363884169298)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(92154530467142915)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92176269159169300)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(92154669580142916)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92177188612169301)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(92154762072142917)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92178082292169303)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(92154890305142918)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92178977974169304)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(92154939685142919)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92179846297169305)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(92155014702142920)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92180721101169307)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(92155168605142921)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92181663517169308)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(92155244733142922)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92182569589169310)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(92155387407142923)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92183427416169311)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(92155480691142924)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92184345817169313)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(92155587190142925)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92185257124169314)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(92155694642142926)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92186111201169316)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(92155775687142927)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92187034815169317)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(92155834342142928)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92187980866169319)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(92155937096142929)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92188810246169320)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(92156002906142930)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92189778774169322)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(92156127027142931)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92190634926169323)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(92156202977142932)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92191552090169325)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(92156317890142933)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92192431214169326)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(92156479334142934)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92193353254169328)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(92156594586142935)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92194212139169329)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(92156652856142936)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92195115952169331)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(92156707166142937)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92196050953169332)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(92156819730142938)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92234122890325287)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(92156991131142939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92236194301339668)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(92157071921142940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92935690942670485)
,p_view_id=>wwv_flow_imp.id(92161355109169275)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(92753973034270208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92157739164142947)
,p_plug_name=>unistr('Comisi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(90814617897003007)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.mo_monto_garantia, a.mo_monto_particular, a.cantidad_particular, a.cantidad_garantia',
'from v_comision_tecnico_stngo a',
'where a.COD_PROVEEDOR= :P308_PROVEEDOR;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Comisi\00F3n')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92157971661142949)
,p_name=>'MO_MONTO_GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MO_MONTO_GARANTIA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Monto Garant\00EDa')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92158054045142950)
,p_name=>'MO_MONTO_PARTICULAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MO_MONTO_PARTICULAR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Particular'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92753294658270201)
,p_name=>'CANTIDAD_PARTICULAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_PARTICULAR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad Particular'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92753317917270202)
,p_name=>'CANTIDAD_GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_GARANTIA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad Garantia'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(92157831244142948)
,p_internal_uid=>92157831244142948
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92758811897270461)
,p_interactive_grid_id=>wwv_flow_imp.id(92157831244142948)
,p_static_id=>'927589'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92759068023270461)
,p_report_id=>wwv_flow_imp.id(92758811897270461)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92759557533270463)
,p_view_id=>wwv_flow_imp.id(92759068023270461)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(92157971661142949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92760437990270465)
,p_view_id=>wwv_flow_imp.id(92759068023270461)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(92158054045142950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92761389294270466)
,p_view_id=>wwv_flow_imp.id(92759068023270461)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(92753294658270201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92762287151270468)
,p_view_id=>wwv_flow_imp.id(92759068023270461)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(92753317917270202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92753470744270203)
,p_plug_name=>'Cierres Semanales'
,p_parent_plug_id=>wwv_flow_imp.id(90814617897003007)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(ot.fec_cierre,''DAY'')dia,COUNT(1) cantidad, OT.COD_PROVEEDOR',
'from vt_ordenes_trabajo ot, ',
'     st_articulos aot ',
'where OT.cod_empresa = ''1''',
'AND ot.fec_cierre>=TRUNC(SYSDATE) -to_char(SYSDATE,''D'')',
'AND ot.fec_cierre >sysdate-15',
'and nvl( ot.cerrado, ''N'' ) =  ''S''',
'and nvl( ot.anulado, ''N'' ) <> ''S''',
'and ot.cod_empresa     = aot.cod_empresa',
'and ot.cod_articulo    = aot.cod_articulo',
'AND ot.COD_PROVEEDOR = :P308_PROVEEDOR',
'group by ot.cod_proveedor,  to_char(ot.fec_cierre,''DAY''), to_char(ot.fec_cierre,''D'');'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P308_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cierres Semanales'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92753603651270205)
,p_name=>'DIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dia'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92753717890270206)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(92753827224270207)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cod Proveedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(92753546644270204)
,p_internal_uid=>92753546644270204
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(92770837394348658)
,p_interactive_grid_id=>wwv_flow_imp.id(92753546644270204)
,p_static_id=>'927709'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(92771045443348658)
,p_report_id=>wwv_flow_imp.id(92770837394348658)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92771590192348659)
,p_view_id=>wwv_flow_imp.id(92771045443348658)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(92753603651270205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92772493115348661)
,p_view_id=>wwv_flow_imp.id(92771045443348658)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(92753717890270206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92773346389348663)
,p_view_id=>wwv_flow_imp.id(92771045443348658)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(92753827224270207)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(417228000001)
,p_view_id=>wwv_flow_imp.id(92771045443348658)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(92753717890270206)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77977445676694308)
,p_name=>'P308_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cc.cod_proveedor||''-''||p.nombre D, cc.cod_proveedor R',
'FROM   cm_proveedores  cc, personas p ',
'where cc.cod_empresa=:p_cod_empresa ',
'and cc.cod_persona=p.cod_persona',
' and cc.IND_SERVICIO_TECNICO=''STNGO''',
'and cod_sucursal is not null',
'--AND nvl(cc.estado,''S'') NOT IN (''I'',''N'')',
'AND (COD_PROVEEDOR = :P308_COD_PROVEEDOR_VIEW OR :P308_COD_PROVEEDOR_VIEW IS NULL)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione...'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(77977553304694309)
,p_name=>'P308_COD_PROVEEDOR_VIEW'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(76655436980945328)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVEEDOR',
'FROM CM_PROVEEDORES PROV, USUARIOS US',
'WHERE PROV.COD_EMPRESA=:P_COD_EMPRESA',
'AND PROV.COD_PERSONA=US.COD_PERSONA',
'AND PROV.COD_EMPRESA=US.COD_EMPRESA',
'AND US.COD_USUARIO= :P_cod_usuario;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77980485221694338)
,p_name=>'P308_COD_ART'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Cod Art'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77980533947694339)
,p_name=>'P308_DESC_ART'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>unistr('Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(77980876007694342)
,p_name=>'P308_CONDICION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Condicion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77981197817694345)
,p_name=>'P308_TECNICO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77981258516694346)
,p_name=>'P308_DEPOSITERO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Depositero'
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
 p_id=>wwv_flow_imp.id(77981324200694347)
,p_name=>'P308_FECHA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(90814783876003008)
,p_name=>'P308_ART_OTS_SOL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90814617897003007)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91726416190208404)
,p_name=>'P308_SER_COMPROBANTE_SELEC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91726536428208405)
,p_name=>'P308_NRO_COMPROBANTE_SELECT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(77980705101694341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77978363670694317)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P308_PROVEEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77978444651694318)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P308_PROVEEDOR'
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
 p_id=>wwv_flow_imp.id(77980292467694336)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77977206623694306)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77980399786694337)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76655247808945326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91728910052208429)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91728420454208424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369422607250036)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91729500617208435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369530838250037)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726703151208407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369624932250038)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726138749208401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369787817250039)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91729055871208430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369894139250040)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91730878475208448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98369927524250041)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92157739164142947)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98370034589250042)
,p_event_id=>wwv_flow_imp.id(77978363670694317)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92753470744270203)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77981456481694348)
,p_name=>'Select'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(77977206623694306)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77981506383694349)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionados();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91726645495208406)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726138749208401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91727738007208417)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91726703151208407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814053685003001)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_DESC_ART'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION',
'from st_articulos',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_articulo = :P308_COD_ART;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814165545003002)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select NVL(c.fecha,null)',
'    into :P308_FECHA',
' from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and (c.tip_comprobante_ref = (''ORT''))',
' and (c.ser_comprobante_ref = :ser_comprobante)',
' and (c.nro_comprobante_ref = :nro_comprobante) ;',
' EXCEPTION WHEN OTHERS THEN ',
' :P308_FECHA:=NULL;',
'END;'))
,p_attribute_03=>'P308_FECHA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814200223003003)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_TECNICO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(c.tecnico,null)',
' from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and (c.tip_comprobante_ref = (''ORT''))',
' and (c.ser_comprobante_ref = :ser_comprobante)',
' and (c.nro_comprobante_ref = :nro_comprobante);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90814342054003004)
,p_event_id=>wwv_flow_imp.id(77981456481694348)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_DEPOSITERO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(c.depositero,null)',
' from st_notas_envio_cab c',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and (c.tip_comprobante_ref = (''ORT''))',
' and (c.ser_comprobante_ref = :ser_comprobante)',
' and (c.nro_comprobante_ref = :nro_comprobante);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90817927031003040)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(76655247808945326)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90818091684003041)
,p_event_id=>wwv_flow_imp.id(90817927031003040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'obtenerRegistrosSeleccionado();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(91728017316208420)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(91726703151208407)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('Observaci\00F3n - Save Interactive Grid Data')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
