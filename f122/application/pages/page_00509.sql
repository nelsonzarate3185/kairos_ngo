prompt --application/pages/page_00509
begin
--   Manifest
--     PAGE: 00509
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
 p_id=>509
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mano de Obra - STARTIMO'
,p_alias=>'STARTIMO-BUSQ'
,p_step_title=>'Mano de Obra - STARTIMO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230512112901'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153438085683039639)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    ROWID ROW_ID,',
'    cod_articulo,',
'    descripcion,',
'    cod_grupo_art,',
'    cod_pais_origen,',
'    cod_marca,',
'    cod_rubro,',
'    cod_familia,',
'    cod_linea,',
'    cod_envase,',
'    cod_iva,',
'    ind_maneja_stock,',
'    cod_unidad_medida,',
'    costo_prom,',
'    costo_ultimo,',
'    costo_fob,',
'    cod_moneda_costo,',
'    fec_ultima_comp,',
'    cant_x_paquete,',
'    cod_proveedor_dflt,',
'    cant_pedido,',
'    cod_origen_art,',
'    cod_empresa,',
'    estado,',
'    precio_base,',
'    cod_moneda_base,',
'    cod_barra_art,',
'    ind_modifica_precio,',
'    porc_descuento,',
'    cod_grupo_comision,',
'    costo_prom_anterior,',
'    costo_prom_ref,',
'    costo_fob_ref,',
'    costo_imp_ref,',
'    cod_arancel,',
'    imp_cod_origen,',
'    comentario,',
'    cod_grupo,',
'    cod_color,',
'    usado,',
'    porcen_obsol,',
'    peso_articulo,',
'    precio_base_me,',
'    cod_moneda_base_ext,',
'    costo_prom_ext,',
'    cod_moneda_costo_ext,',
'    cod_relacion_um,',
'    alto_cm,',
'    largo_cm,',
'    ancho_cm,',
'    peso_gr,',
'    maneja_costo,',
'    costo_prom_repuesto,',
'    costo_prom_anter_rep,',
'    ind_maneja_lotes,',
'    es_moto,',
'    cod_grupo_desc,',
'    costo_prom_us,',
'    costo_ultimo_us,',
'    tip_cambio,',
'    cod_alterno,',
'    cod_art_corto,',
'    estiba_max,',
'    fec_alta,',
'    volumensino,',
'    precio_base_fut,',
'    ruta_foto_1,',
'    ruta_foto_2,',
'    ruta_foto_3,',
'    ruta_foto_4,',
'    ruta_foto_5,',
'    caracteristicas,',
'    serie,',
'    garantia,',
'    serie_garantia,',
'    duracion_garantia,',
'    ind_requiere_sim,',
'    cod_usuario,',
'    fec_inicio_pb,',
'    cod_moneda_base_fut,',
'    porc_descmax,',
'    stock_min,',
'    sku,',
'    sku_origen,',
'    cod_usuario_mod,',
'    fec_mod,',
'    cod_ean,',
'    cod_categoria,',
'    art_desc_proveedor,',
'    cod_division,',
'    traduccion_mo,',
'    en_oferta_web,',
'    cap_20gp,',
'    cap_40gp,',
'    cap_40hq,',
'    camion,',
'    furgon,',
'    embarque_cons,',
'    ind_neto,',
'    ind_fuera_linea,',
'    id_nro,',
'    id_proc,',
'    exp_view,',
'    spare,',
'    producto,',
'    descripcion_ing,',
'    ind_exp_view,',
'    ind_no_descuento,',
'    path_spare,',
'    path_exp,',
'    ind_listado_part,',
'    cant_ng,',
'    path_manual_usu,',
'    ind_requiere_devolucion,',
'    ind_puesta_marcha,',
'    ind_visita,',
'    cod_encargado,',
'    clasificacion,',
'    volumen_m3,',
'    path_img_pro,',
'    cod_madre,',
'    cod_familia_web,',
'    descripcion_web,',
'    cod_linea_st,',
'    ind_muestra_web,',
'    autoapilable,',
'    cant_x_pallet,',
'    cod_pack,',
'    ind_no_cubre_garantia,',
'    fec_vencimiento,',
'    ind_discontinuado,',
'    cantidad_minima_compra,',
'    plazo_entrega,',
'    costo_proforma_gs,',
'    cotizacion_cp,',
'    cod_categoria_ant,',
'    cod_linea_ant,',
'    cod_puerto,',
'    origen_puerto,',
'    tipo_mo,',
'    ind_ciclo_vida,',
'    precio_base_garantia,',
'    cod_especie,',
'    costo_fob_oc,',
'    producto_se_debe_armar,',
'    altura_total_apilado,',
'    apilado_maximo,',
'    clamp_dana_producto,',
'    tipo_almacenamiento,',
'    tipo_de_caja,',
'    unidades_por_estiba_camada,',
'    estibas_camadas_por_pallet,',
'    ultima_camada_orientacion,',
'    largo_producto_colectivo,',
'    ancho_producto_colectivo,',
'    alto_producto_colectivo,',
'    ind_mantenimiento,',
'    ind_lista_precio,',
'    ind_solo_promo,',
'    info_web,',
'    nombre_web,',
'    descripcion_web2,',
'    ind_particular,',
'    importe_comision_particular,',
'    importe_comision_garantia,',
'    importe_comision_jt_15,',
'    importe_comision_jt_7,',
'    fecha_actualizacion,',
'    ind_tecnico_29,',
'    ancho_producto_cm,',
'    alto_producto_cm,',
'    largo_producto_cm,',
'    peso_producto_gr,',
'    ind_devolucion_repuestos,',
'    porcentaje_spp,',
'    ind_migrado_os,',
'    ind_migrado_os_mo,',
'    dias_analisis,',
'    clasificacion_repuestos_abc,',
'    motivo_no_stock,',
'    path_lista_err,',
'    fecha_no_stock,',
'    clasificacion_slim,',
'    path_img_pro_1,',
'    path_img_pro_2,',
'    ind_no_facturar,',
'    apilabilidad,',
'    alto_armado_cm,',
'    ancho_armado_cm,',
'    largo_armado_cm,',
'    ind_armado,',
'    ind_conatel,',
'    ind_homologacion,',
'    registro_conatel,',
'    fecha_primer_ingreso,',
'    ancho_clamp,',
'    largo_clamp,',
'    alto_clamp,',
'    cod_articulo_qm,',
'    cantidad_minima_web,',
'    xtr_assembled_depth,',
'    xtr_assembled_height,',
'    xtr_assembled_width,',
'    xtr_assembled_assemblable,',
'    xtr_interlocking_row,',
'    xtr_coumpound_row,',
'    xtr_damageable_clamp,',
'    xtr_safeguarded,',
'    stk_secondary_clamp_z,',
'    stk_secondary_clamp_y,',
'    stk_secondary_clamp_x,',
'    stk_primary_clamp_z,',
'    stk_primary_clamp_y,',
'    stk_primary_clamp_x,',
'    stk_tertiary_stack_ter_row,',
'    stk_tertiary_stack_sec_row,',
'    stk_tertiary_stack_pri_row,',
'    stk_secondary_stack_ter_row,',
'    stk_secondary_stack_sec_row,',
'    stk_secondary_stack_pri_row,',
'    stk_primary_stack_ter_row,',
'    stk_primary_stack_sec_row,',
'    stk_primary_stack_pri_row,',
'    stk_tertiary_row,',
'    stk_secondary_row,',
'    stk_primary_row,',
'    stk_max_fact_stowage_height,',
'    stk_max_fact_stowage,',
'    stk_max_stowage_height,',
'    cantidad_por_pallet,',
'    pkg_tertiary_depth,',
'    pkg_tertiary_height,',
'    pkg_tertiary_width,',
'    pkg_tertiary_weight,',
'    pkg_tertiary_quantity,',
'    pkg_secondary_depth,',
'    pkg_secondary_height,',
'    pkg_secondary_width,',
'    pkg_secondary_weight,',
'    pkg_secondary_quantity,',
'    pkg_main_packaging,',
'    pkg_primary_depth,',
'    pkg_primary_height,',
'    pkg_primary_width,',
'    pkg_primary_weight,',
'    pkg_primary_quantity,',
'    cantidad_minima_lista_precio,',
'    nro_registro_sanitario,',
'    vencimiento_registro_sanitario,',
'    observacion_art,',
'    tipo_almacenamiento_adaia,',
'    precio_mo_ant_sta,',
'    fec_ult_no_stock',
'FROM',
'    inv.st_articulos',
'WHERE ',
'    COD_EMPRESA = :P_COD_EMPRESA',
'AND COD_RUBRO = ''MO''    ',
'AND (COD_ART_CORTO = :P509_COD_ART_CORTO OR :P509_COD_ART_CORTO IS NULL)',
'AND (COD_ARTICULO = :P509_COD_ARTICULO OR :P509_COD_ARTICULO IS NULL)',
'AND (UPPER(DESCRIPCION) LIKE UPPER(:P509_DESCRIPCION) OR :P509_DESCRIPCION IS NULL)',
'AND (COD_FAMILIA = :P509_FAMILIA OR :P509_FAMILIA IS NULL)',
'AND (COD_MARCA = :P509_MARCA OR :P509_MARCA IS NULL)',
'AND (COD_DIVISION = :P509_DIVISION OR :P509_DIVISION IS NULL)',
'AND (COD_LINEA = :P509_LINEA OR :P509_LINEA IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P509_COD_ART_CORTO,P509_COD_ARTICULO,P509_DESCRIPCION,P509_FAMILIA,P509_MARCA,P509_DIVISION,P509_LINEA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(153438583280039644)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>153438583280039644
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153438694357039645)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P509_P_ROW_ID_ENVIAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153438720788039646)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153438890687039647)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153438952567039648)
,p_db_column_name=>'COD_GRUPO_ART'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Grupo Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153439033516039649)
,p_db_column_name=>'COD_PAIS_ORIGEN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Pais Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153439140214039650)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6493312274090693)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085324939222501)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085426456222502)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(154401338206097784)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085516196222503)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Linea'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(7876897259138132)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085638782222504)
,p_db_column_name=>'COD_ENVASE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Envase'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085771557222505)
,p_db_column_name=>'COD_IVA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085818829222506)
,p_db_column_name=>'IND_MANEJA_STOCK'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ind Maneja Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154085968320222507)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Unidad Medida'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086083085222508)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086188907222509)
,p_db_column_name=>'COSTO_ULTIMO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Costo Ultimo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086232999222510)
,p_db_column_name=>'COSTO_FOB'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Fob'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086304638222511)
,p_db_column_name=>'COD_MONEDA_COSTO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Moneda Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086414471222512)
,p_db_column_name=>'FEC_ULTIMA_COMP'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fec Ultima Comp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086588306222513)
,p_db_column_name=>'CANT_X_PAQUETE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cant X Paquete'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086648085222514)
,p_db_column_name=>'COD_PROVEEDOR_DFLT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Proveedor Dflt'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086762229222515)
,p_db_column_name=>'CANT_PEDIDO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cant Pedido'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086863229222516)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154086918791222517)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087038056222518)
,p_db_column_name=>'ESTADO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087101844222519)
,p_db_column_name=>'PRECIO_BASE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Precio Base'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087284104222520)
,p_db_column_name=>'COD_MONEDA_BASE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cod Moneda Base'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087334669222521)
,p_db_column_name=>'COD_BARRA_ART'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cod Barra Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087458599222522)
,p_db_column_name=>'IND_MODIFICA_PRECIO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Ind Modifica Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087579936222523)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Porc Descuento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087684923222524)
,p_db_column_name=>'COD_GRUPO_COMISION'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cod Grupo Comision'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087790648222525)
,p_db_column_name=>'COSTO_PROM_ANTERIOR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Costo Prom Anterior'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087859452222526)
,p_db_column_name=>'COSTO_PROM_REF'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Costo Prom Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154087929006222527)
,p_db_column_name=>'COSTO_FOB_REF'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Costo Fob Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088038393222528)
,p_db_column_name=>'COSTO_IMP_REF'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Costo Imp Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088146533222529)
,p_db_column_name=>'COD_ARANCEL'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Cod Arancel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088247311222530)
,p_db_column_name=>'IMP_COD_ORIGEN'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Imp Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088340438222531)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088436162222532)
,p_db_column_name=>'COD_GRUPO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cod Grupo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088524511222533)
,p_db_column_name=>'COD_COLOR'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Cod Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088641101222534)
,p_db_column_name=>'USADO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Usado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088775404222535)
,p_db_column_name=>'PORCEN_OBSOL'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Porcen Obsol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088896619222536)
,p_db_column_name=>'PESO_ARTICULO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Peso Articulo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154088960839222537)
,p_db_column_name=>'PRECIO_BASE_ME'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Precio Base Me'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089006186222538)
,p_db_column_name=>'COD_MONEDA_BASE_EXT'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cod Moneda Base Ext'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089108048222539)
,p_db_column_name=>'COSTO_PROM_EXT'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Costo Prom Ext'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089294183222540)
,p_db_column_name=>'COD_MONEDA_COSTO_EXT'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Cod Moneda Costo Ext'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089372673222541)
,p_db_column_name=>'COD_RELACION_UM'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Cod Relacion Um'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089472841222542)
,p_db_column_name=>'ALTO_CM'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Alto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089590315222543)
,p_db_column_name=>'LARGO_CM'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Largo Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089671647222544)
,p_db_column_name=>'ANCHO_CM'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Ancho Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089745266222545)
,p_db_column_name=>'PESO_GR'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Peso Gr'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089878301222546)
,p_db_column_name=>'MANEJA_COSTO'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Maneja Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154089989880222547)
,p_db_column_name=>'COSTO_PROM_REPUESTO'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Costo Prom Repuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090016498222548)
,p_db_column_name=>'COSTO_PROM_ANTER_REP'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Costo Prom Anter Rep'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090120566222549)
,p_db_column_name=>'IND_MANEJA_LOTES'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Ind Maneja Lotes'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090238043222550)
,p_db_column_name=>'ES_MOTO'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Es Moto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090350630222501)
,p_db_column_name=>'COD_GRUPO_DESC'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Cod Grupo Desc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090486781222502)
,p_db_column_name=>'COSTO_PROM_US'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Costo Prom Us'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090576489222503)
,p_db_column_name=>'COSTO_ULTIMO_US'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Costo Ultimo Us'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090664232222504)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090716827222505)
,p_db_column_name=>'COD_ALTERNO'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Cod Alterno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090855830222506)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154090982058222507)
,p_db_column_name=>'ESTIBA_MAX'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Estiba Max'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091067128222508)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091133057222509)
,p_db_column_name=>'VOLUMENSINO'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Volumensino'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091271918222510)
,p_db_column_name=>'PRECIO_BASE_FUT'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Precio Base Fut'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091371153222511)
,p_db_column_name=>'RUTA_FOTO_1'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Ruta Foto 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091486181222512)
,p_db_column_name=>'RUTA_FOTO_2'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Ruta Foto 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091579983222513)
,p_db_column_name=>'RUTA_FOTO_3'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Ruta Foto 3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091631712222514)
,p_db_column_name=>'RUTA_FOTO_4'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Ruta Foto 4'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091738794222515)
,p_db_column_name=>'RUTA_FOTO_5'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Ruta Foto 5'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091816415222516)
,p_db_column_name=>'CARACTERISTICAS'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Caracteristicas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154091997776222517)
,p_db_column_name=>'SERIE'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092032323222518)
,p_db_column_name=>'GARANTIA'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092119762222519)
,p_db_column_name=>'SERIE_GARANTIA'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Serie Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092292610222520)
,p_db_column_name=>'DURACION_GARANTIA'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Duracion Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092364222222521)
,p_db_column_name=>'IND_REQUIERE_SIM'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Ind Requiere Sim'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092462349222522)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092592701222523)
,p_db_column_name=>'FEC_INICIO_PB'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Fec Inicio Pb'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092680720222524)
,p_db_column_name=>'COD_MONEDA_BASE_FUT'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Cod Moneda Base Fut'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092700006222525)
,p_db_column_name=>'PORC_DESCMAX'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Porc Descmax'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092825594222526)
,p_db_column_name=>'STOCK_MIN'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Stock Min'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154092979081222527)
,p_db_column_name=>'SKU'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Sku'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093030021222528)
,p_db_column_name=>'SKU_ORIGEN'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Sku Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093110712222529)
,p_db_column_name=>'COD_USUARIO_MOD'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Cod Usuario Mod'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093268685222530)
,p_db_column_name=>'FEC_MOD'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Fec Mod'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093390082222531)
,p_db_column_name=>'COD_EAN'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093406733222532)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6213561121448677)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093559281222533)
,p_db_column_name=>'ART_DESC_PROVEEDOR'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Art Desc Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093651689222534)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(154404788229087970)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093730562222535)
,p_db_column_name=>'TRADUCCION_MO'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'Traduccion Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093890927222536)
,p_db_column_name=>'EN_OFERTA_WEB'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'En Oferta Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154093945776222537)
,p_db_column_name=>'CAP_20GP'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'Cap 20gp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094051416222538)
,p_db_column_name=>'CAP_40GP'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'Cap 40gp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094114447222539)
,p_db_column_name=>'CAP_40HQ'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'Cap 40hq'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094234365222540)
,p_db_column_name=>'CAMION'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'Camion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094382557222541)
,p_db_column_name=>'FURGON'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'Furgon'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094401680222542)
,p_db_column_name=>'EMBARQUE_CONS'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'Embarque Cons'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094532402222543)
,p_db_column_name=>'IND_NETO'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'Ind Neto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094635834222544)
,p_db_column_name=>'IND_FUERA_LINEA'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'Ind Fuera Linea'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094740499222545)
,p_db_column_name=>'ID_NRO'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'Id Nro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094826515222546)
,p_db_column_name=>'ID_PROC'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'Id Proc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154094997326222547)
,p_db_column_name=>'EXP_VIEW'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'Exp View'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095046273222548)
,p_db_column_name=>'SPARE'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'Spare'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095175010222549)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'Producto'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095294271222550)
,p_db_column_name=>'DESCRIPCION_ING'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'Descripcion Ing'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095345422222501)
,p_db_column_name=>'IND_EXP_VIEW'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'Ind Exp View'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095496507222502)
,p_db_column_name=>'IND_NO_DESCUENTO'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'Ind No Descuento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095508246222503)
,p_db_column_name=>'PATH_SPARE'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'Path Spare'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095687892222504)
,p_db_column_name=>'PATH_EXP'
,p_display_order=>1100
,p_column_identifier=>'DF'
,p_column_label=>'Path Exp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095790580222505)
,p_db_column_name=>'IND_LISTADO_PART'
,p_display_order=>1110
,p_column_identifier=>'DG'
,p_column_label=>'Ind Listado Part'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095883920222506)
,p_db_column_name=>'CANT_NG'
,p_display_order=>1120
,p_column_identifier=>'DH'
,p_column_label=>'Cant Ng'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154095987338222507)
,p_db_column_name=>'PATH_MANUAL_USU'
,p_display_order=>1130
,p_column_identifier=>'DI'
,p_column_label=>'Path Manual Usu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096037513222508)
,p_db_column_name=>'IND_REQUIERE_DEVOLUCION'
,p_display_order=>1140
,p_column_identifier=>'DJ'
,p_column_label=>'Ind Requiere Devolucion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096127337222509)
,p_db_column_name=>'IND_PUESTA_MARCHA'
,p_display_order=>1150
,p_column_identifier=>'DK'
,p_column_label=>'Ind Puesta Marcha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096276100222510)
,p_db_column_name=>'IND_VISITA'
,p_display_order=>1160
,p_column_identifier=>'DL'
,p_column_label=>'Ind Visita'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096323653222511)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>1170
,p_column_identifier=>'DM'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096437499222512)
,p_db_column_name=>'CLASIFICACION'
,p_display_order=>1180
,p_column_identifier=>'DN'
,p_column_label=>'Clasificacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096597719222513)
,p_db_column_name=>'VOLUMEN_M3'
,p_display_order=>1190
,p_column_identifier=>'DO'
,p_column_label=>'Volumen M3'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096687352222514)
,p_db_column_name=>'PATH_IMG_PRO'
,p_display_order=>1200
,p_column_identifier=>'DP'
,p_column_label=>'Path Img Pro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096710260222515)
,p_db_column_name=>'COD_MADRE'
,p_display_order=>1210
,p_column_identifier=>'DQ'
,p_column_label=>'Cod Madre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096867595222516)
,p_db_column_name=>'COD_FAMILIA_WEB'
,p_display_order=>1220
,p_column_identifier=>'DR'
,p_column_label=>'Cod Familia Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154096958816222517)
,p_db_column_name=>'DESCRIPCION_WEB'
,p_display_order=>1230
,p_column_identifier=>'DS'
,p_column_label=>'Descripcion Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097014361222518)
,p_db_column_name=>'COD_LINEA_ST'
,p_display_order=>1240
,p_column_identifier=>'DT'
,p_column_label=>'Cod Linea St'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097148069222519)
,p_db_column_name=>'IND_MUESTRA_WEB'
,p_display_order=>1250
,p_column_identifier=>'DU'
,p_column_label=>'Ind Muestra Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097208693222520)
,p_db_column_name=>'AUTOAPILABLE'
,p_display_order=>1260
,p_column_identifier=>'DV'
,p_column_label=>'Autoapilable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097338954222521)
,p_db_column_name=>'CANT_X_PALLET'
,p_display_order=>1270
,p_column_identifier=>'DW'
,p_column_label=>'Cant X Pallet'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097470401222522)
,p_db_column_name=>'COD_PACK'
,p_display_order=>1280
,p_column_identifier=>'DX'
,p_column_label=>'Cod Pack'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097540019222523)
,p_db_column_name=>'IND_NO_CUBRE_GARANTIA'
,p_display_order=>1290
,p_column_identifier=>'DY'
,p_column_label=>'Ind No Cubre Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097644684222524)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>1300
,p_column_identifier=>'DZ'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097718433222525)
,p_db_column_name=>'IND_DISCONTINUADO'
,p_display_order=>1310
,p_column_identifier=>'EA'
,p_column_label=>'Ind Discontinuado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097849977222526)
,p_db_column_name=>'CANTIDAD_MINIMA_COMPRA'
,p_display_order=>1320
,p_column_identifier=>'EB'
,p_column_label=>'Cantidad Minima Compra'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154097998134222527)
,p_db_column_name=>'PLAZO_ENTREGA'
,p_display_order=>1330
,p_column_identifier=>'EC'
,p_column_label=>'Plazo Entrega'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098095210222528)
,p_db_column_name=>'COSTO_PROFORMA_GS'
,p_display_order=>1340
,p_column_identifier=>'ED'
,p_column_label=>'Costo Proforma Gs'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098191882222529)
,p_db_column_name=>'COTIZACION_CP'
,p_display_order=>1350
,p_column_identifier=>'EE'
,p_column_label=>'Cotizacion Cp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098211228222530)
,p_db_column_name=>'COD_CATEGORIA_ANT'
,p_display_order=>1360
,p_column_identifier=>'EF'
,p_column_label=>'Cod Categoria Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098311947222531)
,p_db_column_name=>'COD_LINEA_ANT'
,p_display_order=>1370
,p_column_identifier=>'EG'
,p_column_label=>'Cod Linea Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098450100222532)
,p_db_column_name=>'COD_PUERTO'
,p_display_order=>1380
,p_column_identifier=>'EH'
,p_column_label=>'Cod Puerto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098578539222533)
,p_db_column_name=>'ORIGEN_PUERTO'
,p_display_order=>1390
,p_column_identifier=>'EI'
,p_column_label=>'Origen Puerto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098610576222534)
,p_db_column_name=>'TIPO_MO'
,p_display_order=>1400
,p_column_identifier=>'EJ'
,p_column_label=>'Tipo Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098739449222535)
,p_db_column_name=>'IND_CICLO_VIDA'
,p_display_order=>1410
,p_column_identifier=>'EK'
,p_column_label=>'Ind Ciclo Vida'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098848650222536)
,p_db_column_name=>'PRECIO_BASE_GARANTIA'
,p_display_order=>1420
,p_column_identifier=>'EL'
,p_column_label=>'Precio Base Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154098936575222537)
,p_db_column_name=>'COD_ESPECIE'
,p_display_order=>1430
,p_column_identifier=>'EM'
,p_column_label=>'Cod Especie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099090714222538)
,p_db_column_name=>'COSTO_FOB_OC'
,p_display_order=>1440
,p_column_identifier=>'EN'
,p_column_label=>'Costo Fob Oc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099183832222539)
,p_db_column_name=>'PRODUCTO_SE_DEBE_ARMAR'
,p_display_order=>1450
,p_column_identifier=>'EO'
,p_column_label=>'Producto Se Debe Armar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099260405222540)
,p_db_column_name=>'ALTURA_TOTAL_APILADO'
,p_display_order=>1460
,p_column_identifier=>'EP'
,p_column_label=>'Altura Total Apilado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099341725222541)
,p_db_column_name=>'APILADO_MAXIMO'
,p_display_order=>1470
,p_column_identifier=>'EQ'
,p_column_label=>'Apilado Maximo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099454156222542)
,p_db_column_name=>'CLAMP_DANA_PRODUCTO'
,p_display_order=>1480
,p_column_identifier=>'ER'
,p_column_label=>'Clamp Dana Producto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099524505222543)
,p_db_column_name=>'TIPO_ALMACENAMIENTO'
,p_display_order=>1490
,p_column_identifier=>'ES'
,p_column_label=>'Tipo Almacenamiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099667349222544)
,p_db_column_name=>'TIPO_DE_CAJA'
,p_display_order=>1500
,p_column_identifier=>'ET'
,p_column_label=>'Tipo De Caja'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099793695222545)
,p_db_column_name=>'UNIDADES_POR_ESTIBA_CAMADA'
,p_display_order=>1510
,p_column_identifier=>'EU'
,p_column_label=>'Unidades Por Estiba Camada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099822841222546)
,p_db_column_name=>'ESTIBAS_CAMADAS_POR_PALLET'
,p_display_order=>1520
,p_column_identifier=>'EV'
,p_column_label=>'Estibas Camadas Por Pallet'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154099913137222547)
,p_db_column_name=>'ULTIMA_CAMADA_ORIENTACION'
,p_display_order=>1530
,p_column_identifier=>'EW'
,p_column_label=>'Ultima Camada Orientacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100076343222548)
,p_db_column_name=>'LARGO_PRODUCTO_COLECTIVO'
,p_display_order=>1540
,p_column_identifier=>'EX'
,p_column_label=>'Largo Producto Colectivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100186594222549)
,p_db_column_name=>'ANCHO_PRODUCTO_COLECTIVO'
,p_display_order=>1550
,p_column_identifier=>'EY'
,p_column_label=>'Ancho Producto Colectivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100269475222550)
,p_db_column_name=>'ALTO_PRODUCTO_COLECTIVO'
,p_display_order=>1560
,p_column_identifier=>'EZ'
,p_column_label=>'Alto Producto Colectivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100380181222501)
,p_db_column_name=>'IND_MANTENIMIENTO'
,p_display_order=>1570
,p_column_identifier=>'FA'
,p_column_label=>'Ind Mantenimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100402759222502)
,p_db_column_name=>'IND_LISTA_PRECIO'
,p_display_order=>1580
,p_column_identifier=>'FB'
,p_column_label=>'Ind Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100516784222503)
,p_db_column_name=>'IND_SOLO_PROMO'
,p_display_order=>1590
,p_column_identifier=>'FC'
,p_column_label=>'Ind Solo Promo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100667275222504)
,p_db_column_name=>'INFO_WEB'
,p_display_order=>1600
,p_column_identifier=>'FD'
,p_column_label=>'Info Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100763953222505)
,p_db_column_name=>'NOMBRE_WEB'
,p_display_order=>1610
,p_column_identifier=>'FE'
,p_column_label=>'Nombre Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100843101222506)
,p_db_column_name=>'DESCRIPCION_WEB2'
,p_display_order=>1620
,p_column_identifier=>'FF'
,p_column_label=>'Descripcion Web2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154100929002222507)
,p_db_column_name=>'IND_PARTICULAR'
,p_display_order=>1630
,p_column_identifier=>'FG'
,p_column_label=>'Ind Particular'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101083186222508)
,p_db_column_name=>'IMPORTE_COMISION_PARTICULAR'
,p_display_order=>1640
,p_column_identifier=>'FH'
,p_column_label=>'Importe Comision Particular'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101178655222509)
,p_db_column_name=>'IMPORTE_COMISION_GARANTIA'
,p_display_order=>1650
,p_column_identifier=>'FI'
,p_column_label=>'Importe Comision Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101236998222510)
,p_db_column_name=>'IMPORTE_COMISION_JT_15'
,p_display_order=>1660
,p_column_identifier=>'FJ'
,p_column_label=>'Importe Comision Jt 15'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101394262222511)
,p_db_column_name=>'IMPORTE_COMISION_JT_7'
,p_display_order=>1670
,p_column_identifier=>'FK'
,p_column_label=>'Importe Comision Jt 7'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101413653222512)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>1680
,p_column_identifier=>'FL'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101595372222513)
,p_db_column_name=>'IND_TECNICO_29'
,p_display_order=>1690
,p_column_identifier=>'FM'
,p_column_label=>'Ind Tecnico 29'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101657977222514)
,p_db_column_name=>'ANCHO_PRODUCTO_CM'
,p_display_order=>1700
,p_column_identifier=>'FN'
,p_column_label=>'Ancho Producto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101762628222515)
,p_db_column_name=>'ALTO_PRODUCTO_CM'
,p_display_order=>1710
,p_column_identifier=>'FO'
,p_column_label=>'Alto Producto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101818529222516)
,p_db_column_name=>'LARGO_PRODUCTO_CM'
,p_display_order=>1720
,p_column_identifier=>'FP'
,p_column_label=>'Largo Producto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154101903323222517)
,p_db_column_name=>'PESO_PRODUCTO_GR'
,p_display_order=>1730
,p_column_identifier=>'FQ'
,p_column_label=>'Peso Producto Gr'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102064256222518)
,p_db_column_name=>'IND_DEVOLUCION_REPUESTOS'
,p_display_order=>1740
,p_column_identifier=>'FR'
,p_column_label=>'Ind Devolucion Repuestos'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102117845222519)
,p_db_column_name=>'PORCENTAJE_SPP'
,p_display_order=>1750
,p_column_identifier=>'FS'
,p_column_label=>'Porcentaje Spp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102240985222520)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>1760
,p_column_identifier=>'FT'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102317184222521)
,p_db_column_name=>'IND_MIGRADO_OS_MO'
,p_display_order=>1770
,p_column_identifier=>'FU'
,p_column_label=>'Ind Migrado Os Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102422623222522)
,p_db_column_name=>'DIAS_ANALISIS'
,p_display_order=>1780
,p_column_identifier=>'FV'
,p_column_label=>'Dias Analisis'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102577174222523)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>1790
,p_column_identifier=>'FW'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102672693222524)
,p_db_column_name=>'MOTIVO_NO_STOCK'
,p_display_order=>1800
,p_column_identifier=>'FX'
,p_column_label=>'Motivo No Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102737621222525)
,p_db_column_name=>'PATH_LISTA_ERR'
,p_display_order=>1810
,p_column_identifier=>'FY'
,p_column_label=>'Path Lista Err'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102842235222526)
,p_db_column_name=>'FECHA_NO_STOCK'
,p_display_order=>1820
,p_column_identifier=>'FZ'
,p_column_label=>'Fecha No Stock'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154102902068222527)
,p_db_column_name=>'CLASIFICACION_SLIM'
,p_display_order=>1830
,p_column_identifier=>'GA'
,p_column_label=>'Clasificacion Slim'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103095849222528)
,p_db_column_name=>'PATH_IMG_PRO_1'
,p_display_order=>1840
,p_column_identifier=>'GB'
,p_column_label=>'Path Img Pro 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103131301222529)
,p_db_column_name=>'PATH_IMG_PRO_2'
,p_display_order=>1850
,p_column_identifier=>'GC'
,p_column_label=>'Path Img Pro 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103248438222530)
,p_db_column_name=>'IND_NO_FACTURAR'
,p_display_order=>1860
,p_column_identifier=>'GD'
,p_column_label=>'Ind No Facturar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103324846222531)
,p_db_column_name=>'APILABILIDAD'
,p_display_order=>1870
,p_column_identifier=>'GE'
,p_column_label=>'Apilabilidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103439576222532)
,p_db_column_name=>'ALTO_ARMADO_CM'
,p_display_order=>1880
,p_column_identifier=>'GF'
,p_column_label=>'Alto Armado Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103533593222533)
,p_db_column_name=>'ANCHO_ARMADO_CM'
,p_display_order=>1890
,p_column_identifier=>'GG'
,p_column_label=>'Ancho Armado Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103636814222534)
,p_db_column_name=>'LARGO_ARMADO_CM'
,p_display_order=>1900
,p_column_identifier=>'GH'
,p_column_label=>'Largo Armado Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103719599222535)
,p_db_column_name=>'IND_ARMADO'
,p_display_order=>1910
,p_column_identifier=>'GI'
,p_column_label=>'Ind Armado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103842116222536)
,p_db_column_name=>'IND_CONATEL'
,p_display_order=>1920
,p_column_identifier=>'GJ'
,p_column_label=>'Ind Conatel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154103950138222537)
,p_db_column_name=>'IND_HOMOLOGACION'
,p_display_order=>1930
,p_column_identifier=>'GK'
,p_column_label=>'Ind Homologacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104052711222538)
,p_db_column_name=>'REGISTRO_CONATEL'
,p_display_order=>1940
,p_column_identifier=>'GL'
,p_column_label=>'Registro Conatel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104168683222539)
,p_db_column_name=>'FECHA_PRIMER_INGRESO'
,p_display_order=>1950
,p_column_identifier=>'GM'
,p_column_label=>'Fecha Primer Ingreso'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104247515222540)
,p_db_column_name=>'ANCHO_CLAMP'
,p_display_order=>1960
,p_column_identifier=>'GN'
,p_column_label=>'Ancho Clamp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104378652222541)
,p_db_column_name=>'LARGO_CLAMP'
,p_display_order=>1970
,p_column_identifier=>'GO'
,p_column_label=>'Largo Clamp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104417499222542)
,p_db_column_name=>'ALTO_CLAMP'
,p_display_order=>1980
,p_column_identifier=>'GP'
,p_column_label=>'Alto Clamp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104575208222543)
,p_db_column_name=>'COD_ARTICULO_QM'
,p_display_order=>1990
,p_column_identifier=>'GQ'
,p_column_label=>'Cod Articulo Qm'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104611518222544)
,p_db_column_name=>'CANTIDAD_MINIMA_WEB'
,p_display_order=>2000
,p_column_identifier=>'GR'
,p_column_label=>'Cantidad Minima Web'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104787909222545)
,p_db_column_name=>'XTR_ASSEMBLED_DEPTH'
,p_display_order=>2010
,p_column_identifier=>'GS'
,p_column_label=>'Xtr Assembled Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104816544222546)
,p_db_column_name=>'XTR_ASSEMBLED_HEIGHT'
,p_display_order=>2020
,p_column_identifier=>'GT'
,p_column_label=>'Xtr Assembled Height'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154104951651222547)
,p_db_column_name=>'XTR_ASSEMBLED_WIDTH'
,p_display_order=>2030
,p_column_identifier=>'GU'
,p_column_label=>'Xtr Assembled Width'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154105053509222548)
,p_db_column_name=>'XTR_ASSEMBLED_ASSEMBLABLE'
,p_display_order=>2040
,p_column_identifier=>'GV'
,p_column_label=>'Xtr Assembled Assemblable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154105155752222549)
,p_db_column_name=>'XTR_INTERLOCKING_ROW'
,p_display_order=>2050
,p_column_identifier=>'GW'
,p_column_label=>'Xtr Interlocking Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154105224559222550)
,p_db_column_name=>'XTR_COUMPOUND_ROW'
,p_display_order=>2060
,p_column_identifier=>'GX'
,p_column_label=>'Xtr Coumpound Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154109840645222501)
,p_db_column_name=>'XTR_DAMAGEABLE_CLAMP'
,p_display_order=>2070
,p_column_identifier=>'GY'
,p_column_label=>'Xtr Damageable Clamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110028453222502)
,p_db_column_name=>'XTR_SAFEGUARDED'
,p_display_order=>2080
,p_column_identifier=>'GZ'
,p_column_label=>'Xtr Safeguarded'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110193570222503)
,p_db_column_name=>'STK_SECONDARY_CLAMP_Z'
,p_display_order=>2090
,p_column_identifier=>'HA'
,p_column_label=>'Stk Secondary Clamp Z'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110284597222504)
,p_db_column_name=>'STK_SECONDARY_CLAMP_Y'
,p_display_order=>2100
,p_column_identifier=>'HB'
,p_column_label=>'Stk Secondary Clamp Y'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110310672222505)
,p_db_column_name=>'STK_SECONDARY_CLAMP_X'
,p_display_order=>2110
,p_column_identifier=>'HC'
,p_column_label=>'Stk Secondary Clamp X'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110470397222506)
,p_db_column_name=>'STK_PRIMARY_CLAMP_Z'
,p_display_order=>2120
,p_column_identifier=>'HD'
,p_column_label=>'Stk Primary Clamp Z'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110585945222507)
,p_db_column_name=>'STK_PRIMARY_CLAMP_Y'
,p_display_order=>2130
,p_column_identifier=>'HE'
,p_column_label=>'Stk Primary Clamp Y'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110639560222508)
,p_db_column_name=>'STK_PRIMARY_CLAMP_X'
,p_display_order=>2140
,p_column_identifier=>'HF'
,p_column_label=>'Stk Primary Clamp X'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110755048222509)
,p_db_column_name=>'STK_TERTIARY_STACK_TER_ROW'
,p_display_order=>2150
,p_column_identifier=>'HG'
,p_column_label=>'Stk Tertiary Stack Ter Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110877748222510)
,p_db_column_name=>'STK_TERTIARY_STACK_SEC_ROW'
,p_display_order=>2160
,p_column_identifier=>'HH'
,p_column_label=>'Stk Tertiary Stack Sec Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154110992114222511)
,p_db_column_name=>'STK_TERTIARY_STACK_PRI_ROW'
,p_display_order=>2170
,p_column_identifier=>'HI'
,p_column_label=>'Stk Tertiary Stack Pri Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111044547222512)
,p_db_column_name=>'STK_SECONDARY_STACK_TER_ROW'
,p_display_order=>2180
,p_column_identifier=>'HJ'
,p_column_label=>'Stk Secondary Stack Ter Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111273640222513)
,p_db_column_name=>'STK_SECONDARY_STACK_SEC_ROW'
,p_display_order=>2190
,p_column_identifier=>'HK'
,p_column_label=>'Stk Secondary Stack Sec Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111306279222514)
,p_db_column_name=>'STK_SECONDARY_STACK_PRI_ROW'
,p_display_order=>2200
,p_column_identifier=>'HL'
,p_column_label=>'Stk Secondary Stack Pri Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111404454222515)
,p_db_column_name=>'STK_PRIMARY_STACK_TER_ROW'
,p_display_order=>2210
,p_column_identifier=>'HM'
,p_column_label=>'Stk Primary Stack Ter Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111561551222516)
,p_db_column_name=>'STK_PRIMARY_STACK_SEC_ROW'
,p_display_order=>2220
,p_column_identifier=>'HN'
,p_column_label=>'Stk Primary Stack Sec Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111648325222517)
,p_db_column_name=>'STK_PRIMARY_STACK_PRI_ROW'
,p_display_order=>2230
,p_column_identifier=>'HO'
,p_column_label=>'Stk Primary Stack Pri Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111738980222518)
,p_db_column_name=>'STK_TERTIARY_ROW'
,p_display_order=>2240
,p_column_identifier=>'HP'
,p_column_label=>'Stk Tertiary Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111826344222519)
,p_db_column_name=>'STK_SECONDARY_ROW'
,p_display_order=>2250
,p_column_identifier=>'HQ'
,p_column_label=>'Stk Secondary Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154111935692222520)
,p_db_column_name=>'STK_PRIMARY_ROW'
,p_display_order=>2260
,p_column_identifier=>'HR'
,p_column_label=>'Stk Primary Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112077374222521)
,p_db_column_name=>'STK_MAX_FACT_STOWAGE_HEIGHT'
,p_display_order=>2270
,p_column_identifier=>'HS'
,p_column_label=>'Stk Max Fact Stowage Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112122599222522)
,p_db_column_name=>'STK_MAX_FACT_STOWAGE'
,p_display_order=>2280
,p_column_identifier=>'HT'
,p_column_label=>'Stk Max Fact Stowage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112276117222523)
,p_db_column_name=>'STK_MAX_STOWAGE_HEIGHT'
,p_display_order=>2290
,p_column_identifier=>'HU'
,p_column_label=>'Stk Max Stowage Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112384585222524)
,p_db_column_name=>'CANTIDAD_POR_PALLET'
,p_display_order=>2300
,p_column_identifier=>'HV'
,p_column_label=>'Cantidad Por Pallet'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112472024222525)
,p_db_column_name=>'PKG_TERTIARY_DEPTH'
,p_display_order=>2310
,p_column_identifier=>'HW'
,p_column_label=>'Pkg Tertiary Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112575977222526)
,p_db_column_name=>'PKG_TERTIARY_HEIGHT'
,p_display_order=>2320
,p_column_identifier=>'HX'
,p_column_label=>'Pkg Tertiary Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112637567222527)
,p_db_column_name=>'PKG_TERTIARY_WIDTH'
,p_display_order=>2330
,p_column_identifier=>'HY'
,p_column_label=>'Pkg Tertiary Width'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112715324222528)
,p_db_column_name=>'PKG_TERTIARY_WEIGHT'
,p_display_order=>2340
,p_column_identifier=>'HZ'
,p_column_label=>'Pkg Tertiary Weight'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112855210222529)
,p_db_column_name=>'PKG_TERTIARY_QUANTITY'
,p_display_order=>2350
,p_column_identifier=>'IA'
,p_column_label=>'Pkg Tertiary Quantity'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154112952757222530)
,p_db_column_name=>'PKG_SECONDARY_DEPTH'
,p_display_order=>2360
,p_column_identifier=>'IB'
,p_column_label=>'Pkg Secondary Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113048123222531)
,p_db_column_name=>'PKG_SECONDARY_HEIGHT'
,p_display_order=>2370
,p_column_identifier=>'IC'
,p_column_label=>'Pkg Secondary Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113100853222532)
,p_db_column_name=>'PKG_SECONDARY_WIDTH'
,p_display_order=>2380
,p_column_identifier=>'ID'
,p_column_label=>'Pkg Secondary Width'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113230078222533)
,p_db_column_name=>'PKG_SECONDARY_WEIGHT'
,p_display_order=>2390
,p_column_identifier=>'IE'
,p_column_label=>'Pkg Secondary Weight'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113323330222534)
,p_db_column_name=>'PKG_SECONDARY_QUANTITY'
,p_display_order=>2400
,p_column_identifier=>'IF'
,p_column_label=>'Pkg Secondary Quantity'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113493197222535)
,p_db_column_name=>'PKG_MAIN_PACKAGING'
,p_display_order=>2410
,p_column_identifier=>'IG'
,p_column_label=>'Pkg Main Packaging'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113545090222536)
,p_db_column_name=>'PKG_PRIMARY_DEPTH'
,p_display_order=>2420
,p_column_identifier=>'IH'
,p_column_label=>'Pkg Primary Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113630212222537)
,p_db_column_name=>'PKG_PRIMARY_HEIGHT'
,p_display_order=>2430
,p_column_identifier=>'II'
,p_column_label=>'Pkg Primary Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113727728222538)
,p_db_column_name=>'PKG_PRIMARY_WIDTH'
,p_display_order=>2440
,p_column_identifier=>'IJ'
,p_column_label=>'Pkg Primary Width'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113827832222539)
,p_db_column_name=>'PKG_PRIMARY_WEIGHT'
,p_display_order=>2450
,p_column_identifier=>'IK'
,p_column_label=>'Pkg Primary Weight'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154113994920222540)
,p_db_column_name=>'PKG_PRIMARY_QUANTITY'
,p_display_order=>2460
,p_column_identifier=>'IL'
,p_column_label=>'Pkg Primary Quantity'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114072086222541)
,p_db_column_name=>'CANTIDAD_MINIMA_LISTA_PRECIO'
,p_display_order=>2470
,p_column_identifier=>'IM'
,p_column_label=>'Cantidad Minima Lista Precio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114254883222542)
,p_db_column_name=>'NRO_REGISTRO_SANITARIO'
,p_display_order=>2480
,p_column_identifier=>'IO'
,p_column_label=>'Nro Registro Sanitario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114332906222543)
,p_db_column_name=>'VENCIMIENTO_REGISTRO_SANITARIO'
,p_display_order=>2490
,p_column_identifier=>'IP'
,p_column_label=>'Vencimiento Registro Sanitario'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114441893222544)
,p_db_column_name=>'OBSERVACION_ART'
,p_display_order=>2500
,p_column_identifier=>'IQ'
,p_column_label=>'Observacion Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114556509222545)
,p_db_column_name=>'TIPO_ALMACENAMIENTO_ADAIA'
,p_display_order=>2510
,p_column_identifier=>'IR'
,p_column_label=>'Tipo Almacenamiento Adaia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114640306222546)
,p_db_column_name=>'PRECIO_MO_ANT_STA'
,p_display_order=>2520
,p_column_identifier=>'IT'
,p_column_label=>'Precio Mo Ant Sta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114710015222547)
,p_db_column_name=>'FEC_ULT_NO_STOCK'
,p_display_order=>2530
,p_column_identifier=>'IU'
,p_column_label=>'Fec Ult No Stock'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154114869623222548)
,p_db_column_name=>'ROW_ID'
,p_display_order=>2540
,p_column_identifier=>'IV'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154232048498115488)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1542321'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_ART_CORTO:COD_ARTICULO:DESCRIPCION:COD_CATEGORIA:COD_FAMILIA:COD_MARCA:COD_DIVISION:COD_LINEA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153438116792039640)
,p_plug_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154114972925222549)
,p_plug_name=>'VARIABLES A ENVIAR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154308663946956305)
,p_button_sequence=>1020
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153438215020039641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153438390073039642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153438423460039643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154308599399956304)
,p_branch_name=>'BR_LLAMAR_PAG_504'
,p_branch_action=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.::P504_P_ROW_ID_ARTICULO:&P509_P_ROW_ID_ENVIAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'REDIRECT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154308961409956308)
,p_branch_name=>'BR_VOLVER_PAG_504'
,p_branch_action=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.::P504_P_ROW_ID_ARTICULO:&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'VOLVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154115015481222550)
,p_name=>'P509_P_ROW_ID_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154114972925222549)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309095717956309)
,p_name=>'P509_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('C\00F3d. Articulo Corto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_art_corto || '' - '' || descripcion D,',
'       cod_art_corto R ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_rubro = ''MO''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309116301956310)
,p_name=>'P509_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('C\00F3d. Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo || '' - '' || descripcion D,',
'       cod_articulo R ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_rubro = ''MO''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309241575956311)
,p_name=>'P509_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' || descripcion D, ',
'       cod_categoria R',
'  from st_categorias ',
' where cod_empresa = :P_COD_EMPRESA',
'  and  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309336187956312)
,p_name=>'P509_FAMILIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia || '' - '' || descripcion D,',
'       cod_familia R ',
'from st_familia ',
'where cod_empresa = :P_COD_EMPRESA  ',
'and nvl(estado,''P'') NOT IN (''I'',''N'')  ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309450786956313)
,p_name=>'P509_MARCA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca || '' - '' || descripcion D,',
'       cod_marca R',
'from st_marcas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309547229956314)
,p_name=>'P509_DIVISION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division || '' - ''|| desc_division D, ',
'       cod_division R',
'from st_division_articulos',
'where  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309628598956315)
,p_name=>'P509_LINEA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea || '' - '' || descripcion D,',
'       cod_linea R ',
'from st_linea ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309752480956316)
,p_name=>'P509_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('Descripci\00F3n')
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154308215320956301)
,p_name=>'DA_LLAMAR_PAG_504'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P509_P_ROW_ID_ENVIAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154308352923956302)
,p_event_id=>wwv_flow_imp.id(154308215320956301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REDIRECT'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154308774285956306)
,p_name=>'DA_VOLVER_PAG_504'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154308663946956305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154308814326956307)
,p_event_id=>wwv_flow_imp.id(154308774285956306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VOLVER'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154309800313956317)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153438423460039643)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154309977614956318)
,p_event_id=>wwv_flow_imp.id(154309800313956317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153438085683039639)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154310079943956319)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153438390073039642)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154310177018956320)
,p_event_id=>wwv_flow_imp.id(154310079943956319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P509_COD_ART_CORTO,P509_COD_ARTICULO,P509_DESCRIPCION,P509_CATEGORIA,P509_FAMILIA,P509_MARCA,P509_DIVISION,P509_LINEA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154310233385956321)
,p_name=>'DA_CREAR_PAG_504'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153438215020039641)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154310466892956323)
,p_event_id=>wwv_flow_imp.id(154310233385956321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VOLVER'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
