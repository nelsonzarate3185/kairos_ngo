prompt --application/pages/page_00587
begin
--   Manifest
--     PAGE: 00587
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
 p_id=>587
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'LISTORT'
,p_alias=>'LISTORT'
,p_step_title=>'LISTORT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230828101154'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196104769997368302)
,p_plug_name=>'LISTORT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       NOM_CLIENTE,',
'       DIRECCION,',
'       TELEFONO,',
'       RUC,',
'       GARANTIA,',
'       COD_FAMILIA,',
'       COD_ARTICULO,',
'       SERIE,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_DISTRIBUIDOR,',
'       COD_ORIGEN,',
'       CONDICION,',
'       PROBLEMA,',
'       COD_USUARIO,',
'       SENIA,',
'       CERRADO,',
'       FEC_CIERRE,',
'       TOT_MOBRA,',
'       TOT_REPUESTOS,',
'       TIP_COMPROBANTE_FAC,',
'       SER_COMPROBANTE_FAC,',
'       NRO_COMPROBANTE_FAC,',
'       SENIA_DEVUELTA,',
'       FEC_DEVOLUCION_SENIA,',
'       COD_PROVEEDOR,',
'       TIP_COMPROBANTE_SER,',
'       SER_COMPROBANTE_SER,',
'       NRO_COMPROBANTE_SER,',
'       IND_GARANTIA,',
'       IND_ENTREGA,',
'       FEC_ENTREGA,',
'       ANULADO,',
'       FEC_ANULADO,',
'       COD_MOTIVO_ANU,',
'       GARANTIA_TMP,',
'       NRO_COMPROBANTE_DISTR,',
'       ASIENTOS,',
'       PRESUPUESTO,',
'       FEC_COBRO_ADELANTO,',
'       FEC_ESTADO,',
'       ESTADO_PRESU,',
'       MONTO_ADELANTO,',
'       GARANTIA_OT,',
'       TIPO,',
'       CONT_OT,',
'       IND_RECLAMO,',
'       IND_INSTALACION,',
'       IND_COSTO,',
'       IND_ROTA,',
'       IND_FACTURADO,',
'       TOT_REPUESTOS_CALL,',
'       COD_ARTICULO_CALL,',
'       SITIO,',
'       NRO_LLAMADA,',
'       CREADO_POR,',
'       FEC_CREACION,',
'       HORA_CREACION,',
'       PRESUPUESTADO_POR,',
'       FEC_PRESUPUESTADO,',
'       HORA_PRESUPUESTO,',
'       VERIFICADO_POR,',
'       FEC_VERIFICADO,',
'       HORA_VERIFICACION,',
'       APROBADO_POR,',
'       FEC_APROBACION,',
'       HORA_APROBADA,',
'       RECHAZADO_POR,',
'       FEC_RECHAZO,',
'       HORA_RECHAZADO,',
'       FINALIZADO_POR,',
'       FEC_FINALIZADO,',
'       HORA_FINALIZADO,',
'       IND_IMPRESO,',
'       NRO_OT_PROVEEDOR,',
'       FECHA_CO_DISTRIBUIDOR,',
'       COMENTARIO,',
'       PENDIENTE_POR,',
'       FEC_PENDIENTE,',
'       HORA_PENDIENTE,',
'       FEC_MODIF_VERIFICADO,',
'       FEC_MODIF_PRESUPUESTO,',
'       FEC_MODIF_PENDIENTE,',
'       FEC_MODIF_APROBADO,',
'       FEC_MODIF_RECHAZADO,',
'       FEC_MODIF_CERRADO,',
'       ENTREGADO_POR,',
'       FEC_ENTREGADO,',
'       HORA_ENTREGADO,',
'       NRO_ORDEN,',
'       CI,',
'       NRO_OT_PLANTILLA,',
'       RECLAMO_ENTREGA,',
'       CAMBIO,',
'       NCR,',
'       AUTORIZADO_GAR_POR,',
'       FEC_AUTORIZADO_GAR_POR,',
'       HORA_AUTORIZADO_GAR_POR,',
'       FEC_MODIF_GAR,',
'       CONT_SER,',
'       CO_USUARIO_UTIL,',
'       FECHA_HORA_REAGENDA,',
'       COD_MOTIVO_MOROSIDAD,',
'       OBSERV,',
'       FECHAOT,',
'       IND_RETIRADO,',
'       FEC_RETIRADO,',
'       FEC_REPAR,',
'       COD_USUARIO_DEV_SEN,',
'       FECHA_RETIRADO,',
'       RETIRADO_POR,',
'       HORA_RETIRADO,',
'       NO_RETIRADA,',
'       IND_TRANSPORTE,',
'       IND_RECLAMO_SEGURO,',
'       FEC_AUT_NCR,',
'       FEC_REPARACION_STA,',
'       FEC_RENDIDO,',
'       IND_RENDIDO,',
'       IND_WEB,',
'       COD_USUARIO_ANU,',
'       CELULAR_CONTACTO,',
'       CORREO_CONTACTO,',
'       IND_DELIVERY,',
'       IND_CORREO_PRESU,',
'       IND_CARNEO,',
'       IND_VERIFICADO,',
'       COD_SUCURSAL,',
'       COD_USUARIO_RENDICION,',
'       IND_CORREO_PE,',
'       COD_SUCURSAL_DIST,',
'       COD_USUARIO_SIN_RP,',
'       FEC_SIN_REPUESTO,',
'       HORA_SIN_REPUESTO,',
'       REPARADO_IM_POR,',
'       FEC_IM,',
'       HORA_IM,',
'       TIP_SERVICIO,',
'       FEC_SERVICIO,',
'       NRO_SERVICIO,',
'       COD_UBICACION,',
'       OT_ANTERIOR,',
'       ID_REGISTRO_RENDICION,',
'       NO_UBICADA,',
'       IND_UBICADA,',
'       COD_SUCURSAL_SAL,',
'       COD_SUCURSAL_PED,',
'       NRO_ENVIO_PENDIENTE,',
'       IND_A_RETIRAR,',
'       TIP_SOL_CONF,',
'       SER_SOL_CONF,',
'       NRO_SOL_CONF,',
'       IND_ENVIADO,',
'       TIP_NOTA_ENVIO,',
'       SER_NOTA_ENVIO,',
'       NRO_NOTA_ENVIO,',
'       IND_INTERIOR,',
'       IND_VISITA,',
'       FEC_VISITA,',
'       PATH_INFORME,',
'       TIPO_CIERRE,',
'       FEC_SOL_ENVIO,',
'       IND_ADELANTO,',
'       HORA_PED_REP,',
'       USUARIO_PED_REP,',
'       FECHA_PED_REP,',
'       DELIVERY,',
'       UBICACION,',
'       ESTADO_ANT_PRES,',
'       TOT_MOBRA_COM,',
'       IND_LIQUIDA,',
'       FECHA_LIQUIDA,',
'       USUARIO_LIQUIDA,',
'       DERIVADO,',
'       AUTORIZADO,',
'       USR_SA_FMA,',
'       FCH_SA_FMA,',
'       SA_FMA,',
'       USR_PR_FMA,',
'       FCH_PR_FMA,',
'       PR_FMA,',
'       AUTORIZADO_POR,',
'       FEC_AUTORIZACION,',
'       RECHAZAR,',
'       FEC_RECHAZADO,',
'       ORDEN_AUTORIZADA,',
'       IND_ZONA,',
'       IND_ABANDONADO,',
'       IND_SNC,',
'       INTERIOR_ESTADO,',
'       NRO_TICKET,',
'       FECHA_TICKET,',
'       COD_DEPARTAMENTO,',
'       COD_CIUDAD,',
'       ID_TRANSACCION_APP,',
'       TIPO_RECLAMO,',
'       COD_MOTIVO_RECHAZO_PRESU,',
'       COD_MOTIVO_RECLAMO_STA,',
'       COD_MOTIVO_RECLAMO_SPP,',
'       IND_RECLAMO_STA,',
'       SER_OT_ANTERIOR,',
'       IND_INGRESO_ANTERIOR_STA,',
'       KM_FLETE,',
'       CANTIDAD_GAS,',
'       TIPO_GAS,',
'       IND_ADICIONAL,',
'       DATOS_DE_SP,',
'       REPARADO_POR,',
'       IND_IMPRESO_ORDEN,',
'       TIP_DOCUMENTO_GEN,',
'       SER_DOCUMENTO_GEN,',
'       NRO_DOCUMENTO_GEN,',
'       COD_MOTIVO_RECLAMO_JEFE,',
'       COD_PROBLEMA_RECLAMO,',
'       ESTADO_RECLAMO,',
'       COMENTARIO_RECLAMO,',
'       FECHA_FINALIZACION_RECLAMO,',
'       COD_SOLUCION_RECLAMO,',
'       IND_CANAL_VERDE,',
'       OBSERVACION_CANAL_VERDE,',
'       RESULTADO_CANAL_VERDE,',
'       COD_CONDICION_VENTA,',
'       IND_TEST_CLIENTE,',
'       NRO_SOLICITUD_ASISTENCIA,',
'       COD_MOTIVO_COMPRA_NUEVA,',
'       CONTADOR_FACT_ART_DIST,',
'       FECHA_ESTADO_COMPLICADO,',
'       COD_USUARIO_ESTADO_COMPLICADO,',
'       COD_LISTA_PRECIO,',
'       COD_STA,',
'       FECHA_MODIFICADO_GARANTIA,',
'       COD_USUARIO_MOD_GAR,',
'       FECHA_TILDE_SNC,',
'       COD_USUARIO_LIQUIDACION,',
'       FECHA_LIQUIDACION,',
'       FECHA_ABANDONADO,',
'       COD_USUARIO_ABANDONADO,',
'       IND_FLETE_ADICIONAL,',
'       USUARIO_AUTORIZA_FLETE_AD,',
'       FECHA_AUTORIZA_FLETE_AD,',
'       HORA_AUTORIZA_FLETE_AD,',
'       USR_IND_SNC,',
'       FEC_IND_SNC, ',
'       null ver_ot',
'  from VT_ORDENES_TRABAJO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'LISTORT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(196104824997368302)
,p_name=>'LISTORT'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk2=>'SER_COMPROBANTE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:RP,:P588_NRO_COMPROBANTE,P588_SER_COMPROBANTE:\#NRO_COMPROBANTE#\,\#SER_COMPROBANTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>196104824997368302
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196106443199368289)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>0
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196106831858368289)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>0
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196105620054368289)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196106001695368289)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196107274413368288)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196107601355368288)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196108098310368288)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196108499186368288)
,p_db_column_name=>'DIRECCION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196108808678368288)
,p_db_column_name=>'TELEFONO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196109234988368287)
,p_db_column_name=>'RUC'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196109678375368287)
,p_db_column_name=>'GARANTIA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Garantia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196110097357368287)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196110453841368287)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196110842257368287)
,p_db_column_name=>'SERIE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196111284036368286)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196111620821368286)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196112052531368286)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196112482268368286)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196112832513368286)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196113242749368285)
,p_db_column_name=>'CONDICION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Condicion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196113690947368285)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Problema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196114087355368285)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196114414084368285)
,p_db_column_name=>'SENIA'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Senia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196114844042368285)
,p_db_column_name=>'CERRADO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cerrado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196115232817368284)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196115606165368284)
,p_db_column_name=>'TOT_MOBRA'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Tot Mobra'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196116064514368284)
,p_db_column_name=>'TOT_REPUESTOS'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Tot Repuestos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196116497513368284)
,p_db_column_name=>'TIP_COMPROBANTE_FAC'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Tip Comprobante Fac'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196116858484368284)
,p_db_column_name=>'SER_COMPROBANTE_FAC'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Ser Comprobante Fac'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196117216467368283)
,p_db_column_name=>'NRO_COMPROBANTE_FAC'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Nro Comprobante Fac'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196117629827368283)
,p_db_column_name=>'SENIA_DEVUELTA'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Senia Devuelta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196118077907368283)
,p_db_column_name=>'FEC_DEVOLUCION_SENIA'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Fec Devolucion Senia'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196118476553368283)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196118845915368282)
,p_db_column_name=>'TIP_COMPROBANTE_SER'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Tip Comprobante Ser'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196119297141368282)
,p_db_column_name=>'SER_COMPROBANTE_SER'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Ser Comprobante Ser'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196119605259368282)
,p_db_column_name=>'NRO_COMPROBANTE_SER'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Nro Comprobante Ser'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196120009586368282)
,p_db_column_name=>'IND_GARANTIA'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Ind Garantia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196120441132368282)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196120895962368281)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196121249845368281)
,p_db_column_name=>'ANULADO'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196121644949368281)
,p_db_column_name=>'FEC_ANULADO'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Fec Anulado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196122017566368281)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196122463372368280)
,p_db_column_name=>'GARANTIA_TMP'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Garantia Tmp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196122851996368280)
,p_db_column_name=>'NRO_COMPROBANTE_DISTR'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Nro Comprobante Distr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196123280341368280)
,p_db_column_name=>'ASIENTOS'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Asientos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196123609105368280)
,p_db_column_name=>'PRESUPUESTO'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Presupuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196124008337368280)
,p_db_column_name=>'FEC_COBRO_ADELANTO'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Fec Cobro Adelanto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196124409387368279)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196124821008368279)
,p_db_column_name=>'ESTADO_PRESU'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Estado Presu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196125248804368279)
,p_db_column_name=>'MONTO_ADELANTO'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Monto Adelanto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196125642498368279)
,p_db_column_name=>'GARANTIA_OT'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Garantia Ot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196126052750368278)
,p_db_column_name=>'TIPO'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196126403235368278)
,p_db_column_name=>'CONT_OT'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Cont Ot'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196126859086368278)
,p_db_column_name=>'IND_RECLAMO'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Ind Reclamo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196127267373368278)
,p_db_column_name=>'IND_INSTALACION'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Ind Instalacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196127653073368278)
,p_db_column_name=>'IND_COSTO'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Ind Costo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196128020658368277)
,p_db_column_name=>'IND_ROTA'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Ind Rota'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196128481756368277)
,p_db_column_name=>'IND_FACTURADO'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Ind Facturado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196128804957368277)
,p_db_column_name=>'TOT_REPUESTOS_CALL'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Tot Repuestos Call'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196129246961368277)
,p_db_column_name=>'COD_ARTICULO_CALL'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Cod Articulo Call'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196129634468368277)
,p_db_column_name=>'SITIO'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Sitio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196130024925368276)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196130418828368276)
,p_db_column_name=>'CREADO_POR'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196130886369368276)
,p_db_column_name=>'FEC_CREACION'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Fec Creacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196131299780368276)
,p_db_column_name=>'HORA_CREACION'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Hora Creacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196131639181368275)
,p_db_column_name=>'PRESUPUESTADO_POR'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Presupuestado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196132036424368275)
,p_db_column_name=>'FEC_PRESUPUESTADO'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Fec Presupuestado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196132408534368275)
,p_db_column_name=>'HORA_PRESUPUESTO'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Hora Presupuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196132897147368275)
,p_db_column_name=>'VERIFICADO_POR'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Verificado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196133286301368275)
,p_db_column_name=>'FEC_VERIFICADO'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Fec Verificado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196133697616368274)
,p_db_column_name=>'HORA_VERIFICACION'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Hora Verificacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196134008520368274)
,p_db_column_name=>'APROBADO_POR'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Aprobado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196134490824368274)
,p_db_column_name=>'FEC_APROBACION'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Fec Aprobacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196134823983368274)
,p_db_column_name=>'HORA_APROBADA'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Hora Aprobada'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
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
 p_id=>wwv_flow_imp.id(196135277360368274)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196135670252368273)
,p_db_column_name=>'FEC_RECHAZO'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Fec Rechazo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196136085859368273)
,p_db_column_name=>'HORA_RECHAZADO'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Hora Rechazado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196136497823368273)
,p_db_column_name=>'FINALIZADO_POR'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Finalizado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196136865739368273)
,p_db_column_name=>'FEC_FINALIZADO'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Fec Finalizado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196137248820368272)
,p_db_column_name=>'HORA_FINALIZADO'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Hora Finalizado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196137645823368272)
,p_db_column_name=>'IND_IMPRESO'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Ind Impreso'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196138007111368272)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Nro Ot Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196138482218368272)
,p_db_column_name=>'FECHA_CO_DISTRIBUIDOR'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Fecha Co Distribuidor'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196138806551368272)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196139228132368271)
,p_db_column_name=>'PENDIENTE_POR'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Pendiente Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196139645491368271)
,p_db_column_name=>'FEC_PENDIENTE'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Fec Pendiente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196140005359368271)
,p_db_column_name=>'HORA_PENDIENTE'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Hora Pendiente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196140425226368271)
,p_db_column_name=>'FEC_MODIF_VERIFICADO'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Fec Modif Verificado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196140837186368271)
,p_db_column_name=>'FEC_MODIF_PRESUPUESTO'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Fec Modif Presupuesto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196141270520368270)
,p_db_column_name=>'FEC_MODIF_PENDIENTE'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Fec Modif Pendiente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196141620370368270)
,p_db_column_name=>'FEC_MODIF_APROBADO'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Fec Modif Aprobado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196142035511368270)
,p_db_column_name=>'FEC_MODIF_RECHAZADO'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Fec Modif Rechazado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196142498491368270)
,p_db_column_name=>'FEC_MODIF_CERRADO'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Fec Modif Cerrado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196142809952368270)
,p_db_column_name=>'ENTREGADO_POR'
,p_display_order=>95
,p_column_identifier=>'CQ'
,p_column_label=>'Entregado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196143282096368269)
,p_db_column_name=>'FEC_ENTREGADO'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Fec Entregado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196143600703368269)
,p_db_column_name=>'HORA_ENTREGADO'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Hora Entregado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196144054266368269)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>98
,p_column_identifier=>'CT'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196144470397368269)
,p_db_column_name=>'CI'
,p_display_order=>99
,p_column_identifier=>'CU'
,p_column_label=>'Ci'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196144809008368269)
,p_db_column_name=>'NRO_OT_PLANTILLA'
,p_display_order=>100
,p_column_identifier=>'CV'
,p_column_label=>'Nro Ot Plantilla'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196145227302368268)
,p_db_column_name=>'RECLAMO_ENTREGA'
,p_display_order=>101
,p_column_identifier=>'CW'
,p_column_label=>'Reclamo Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196145658891368268)
,p_db_column_name=>'CAMBIO'
,p_display_order=>102
,p_column_identifier=>'CX'
,p_column_label=>'Cambio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196146012957368268)
,p_db_column_name=>'NCR'
,p_display_order=>103
,p_column_identifier=>'CY'
,p_column_label=>'Ncr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196146413486368268)
,p_db_column_name=>'AUTORIZADO_GAR_POR'
,p_display_order=>104
,p_column_identifier=>'CZ'
,p_column_label=>'Autorizado Gar Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196146867794368267)
,p_db_column_name=>'FEC_AUTORIZADO_GAR_POR'
,p_display_order=>105
,p_column_identifier=>'DA'
,p_column_label=>'Fec Autorizado Gar Por'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196147210009368267)
,p_db_column_name=>'HORA_AUTORIZADO_GAR_POR'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Hora Autorizado Gar Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196147652386368267)
,p_db_column_name=>'FEC_MODIF_GAR'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Fec Modif Gar'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196148035677368267)
,p_db_column_name=>'CONT_SER'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Cont Ser'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196148409007368266)
,p_db_column_name=>'CO_USUARIO_UTIL'
,p_display_order=>109
,p_column_identifier=>'DE'
,p_column_label=>'Co Usuario Util'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196148836227368266)
,p_db_column_name=>'FECHA_HORA_REAGENDA'
,p_display_order=>110
,p_column_identifier=>'DF'
,p_column_label=>'Fecha Hora Reagenda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196149245049368266)
,p_db_column_name=>'COD_MOTIVO_MOROSIDAD'
,p_display_order=>111
,p_column_identifier=>'DG'
,p_column_label=>'Cod Motivo Morosidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196149656013368266)
,p_db_column_name=>'OBSERV'
,p_display_order=>112
,p_column_identifier=>'DH'
,p_column_label=>'Observ'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196150038721368266)
,p_db_column_name=>'FECHAOT'
,p_display_order=>113
,p_column_identifier=>'DI'
,p_column_label=>'Fechaot'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196150417533368265)
,p_db_column_name=>'IND_RETIRADO'
,p_display_order=>114
,p_column_identifier=>'DJ'
,p_column_label=>'Ind Retirado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196150826690368265)
,p_db_column_name=>'FEC_RETIRADO'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Fec Retirado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196151248504368265)
,p_db_column_name=>'FEC_REPAR'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Fec Repar'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196151695223368265)
,p_db_column_name=>'COD_USUARIO_DEV_SEN'
,p_display_order=>117
,p_column_identifier=>'DM'
,p_column_label=>'Cod Usuario Dev Sen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196152016402368264)
,p_db_column_name=>'FECHA_RETIRADO'
,p_display_order=>118
,p_column_identifier=>'DN'
,p_column_label=>'Fecha Retirado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196152472413368264)
,p_db_column_name=>'RETIRADO_POR'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Retirado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196152860743368264)
,p_db_column_name=>'HORA_RETIRADO'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Hora Retirado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196153223026368264)
,p_db_column_name=>'NO_RETIRADA'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'No Retirada'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196153695754368263)
,p_db_column_name=>'IND_TRANSPORTE'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Ind Transporte'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196154061850368263)
,p_db_column_name=>'IND_RECLAMO_SEGURO'
,p_display_order=>123
,p_column_identifier=>'DS'
,p_column_label=>'Ind Reclamo Seguro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196154410416368263)
,p_db_column_name=>'FEC_AUT_NCR'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Fec Aut Ncr'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196154857542368263)
,p_db_column_name=>'FEC_REPARACION_STA'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Fec Reparacion Sta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196155289337368263)
,p_db_column_name=>'FEC_RENDIDO'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Fec Rendido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196155619130368262)
,p_db_column_name=>'IND_RENDIDO'
,p_display_order=>127
,p_column_identifier=>'DW'
,p_column_label=>'Ind Rendido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196156060248368262)
,p_db_column_name=>'IND_WEB'
,p_display_order=>128
,p_column_identifier=>'DX'
,p_column_label=>'Ind Web'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196156496236368262)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>129
,p_column_identifier=>'DY'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196156800905368262)
,p_db_column_name=>'CELULAR_CONTACTO'
,p_display_order=>130
,p_column_identifier=>'DZ'
,p_column_label=>'Celular Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196157260165368262)
,p_db_column_name=>'CORREO_CONTACTO'
,p_display_order=>131
,p_column_identifier=>'EA'
,p_column_label=>'Correo Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196157620757368261)
,p_db_column_name=>'IND_DELIVERY'
,p_display_order=>132
,p_column_identifier=>'EB'
,p_column_label=>'Ind Delivery'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196158043848368261)
,p_db_column_name=>'IND_CORREO_PRESU'
,p_display_order=>133
,p_column_identifier=>'EC'
,p_column_label=>'Ind Correo Presu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196158478164368261)
,p_db_column_name=>'IND_CARNEO'
,p_display_order=>134
,p_column_identifier=>'ED'
,p_column_label=>'Ind Carneo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196158827580368261)
,p_db_column_name=>'IND_VERIFICADO'
,p_display_order=>135
,p_column_identifier=>'EE'
,p_column_label=>'Ind Verificado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196159239097368260)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>136
,p_column_identifier=>'EF'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196159620792368260)
,p_db_column_name=>'COD_USUARIO_RENDICION'
,p_display_order=>137
,p_column_identifier=>'EG'
,p_column_label=>'Cod Usuario Rendicion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196160006082368260)
,p_db_column_name=>'IND_CORREO_PE'
,p_display_order=>138
,p_column_identifier=>'EH'
,p_column_label=>'Ind Correo Pe'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196160450377368260)
,p_db_column_name=>'COD_SUCURSAL_DIST'
,p_display_order=>139
,p_column_identifier=>'EI'
,p_column_label=>'Cod Sucursal Dist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196160878619368259)
,p_db_column_name=>'COD_USUARIO_SIN_RP'
,p_display_order=>140
,p_column_identifier=>'EJ'
,p_column_label=>'Cod Usuario Sin Rp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196161286187368259)
,p_db_column_name=>'FEC_SIN_REPUESTO'
,p_display_order=>141
,p_column_identifier=>'EK'
,p_column_label=>'Fec Sin Repuesto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196161690054368259)
,p_db_column_name=>'HORA_SIN_REPUESTO'
,p_display_order=>142
,p_column_identifier=>'EL'
,p_column_label=>'Hora Sin Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196162032658368259)
,p_db_column_name=>'REPARADO_IM_POR'
,p_display_order=>143
,p_column_identifier=>'EM'
,p_column_label=>'Reparado Im Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196162494500368258)
,p_db_column_name=>'FEC_IM'
,p_display_order=>144
,p_column_identifier=>'EN'
,p_column_label=>'Fec Im'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196162824961368258)
,p_db_column_name=>'HORA_IM'
,p_display_order=>145
,p_column_identifier=>'EO'
,p_column_label=>'Hora Im'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196163270836368258)
,p_db_column_name=>'TIP_SERVICIO'
,p_display_order=>146
,p_column_identifier=>'EP'
,p_column_label=>'Tip Servicio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196163681878368258)
,p_db_column_name=>'FEC_SERVICIO'
,p_display_order=>147
,p_column_identifier=>'EQ'
,p_column_label=>'Fec Servicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196164094597368258)
,p_db_column_name=>'NRO_SERVICIO'
,p_display_order=>148
,p_column_identifier=>'ER'
,p_column_label=>'Nro Servicio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196164427289368257)
,p_db_column_name=>'COD_UBICACION'
,p_display_order=>149
,p_column_identifier=>'ES'
,p_column_label=>'Cod Ubicacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196164830521368257)
,p_db_column_name=>'OT_ANTERIOR'
,p_display_order=>150
,p_column_identifier=>'ET'
,p_column_label=>'Ot Anterior'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196165216165368257)
,p_db_column_name=>'ID_REGISTRO_RENDICION'
,p_display_order=>151
,p_column_identifier=>'EU'
,p_column_label=>'Id Registro Rendicion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196165653406368257)
,p_db_column_name=>'NO_UBICADA'
,p_display_order=>152
,p_column_identifier=>'EV'
,p_column_label=>'No Ubicada'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196166034605368256)
,p_db_column_name=>'IND_UBICADA'
,p_display_order=>153
,p_column_identifier=>'EW'
,p_column_label=>'Ind Ubicada'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196166403891368256)
,p_db_column_name=>'COD_SUCURSAL_SAL'
,p_display_order=>154
,p_column_identifier=>'EX'
,p_column_label=>'Cod Sucursal Sal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196166832972368256)
,p_db_column_name=>'COD_SUCURSAL_PED'
,p_display_order=>155
,p_column_identifier=>'EY'
,p_column_label=>'Cod Sucursal Ped'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196167262540368256)
,p_db_column_name=>'NRO_ENVIO_PENDIENTE'
,p_display_order=>156
,p_column_identifier=>'EZ'
,p_column_label=>'Nro Envio Pendiente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196167684250368255)
,p_db_column_name=>'IND_A_RETIRAR'
,p_display_order=>157
,p_column_identifier=>'FA'
,p_column_label=>'Ind A Retirar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196168087239368255)
,p_db_column_name=>'TIP_SOL_CONF'
,p_display_order=>158
,p_column_identifier=>'FB'
,p_column_label=>'Tip Sol Conf'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196168447723368255)
,p_db_column_name=>'SER_SOL_CONF'
,p_display_order=>159
,p_column_identifier=>'FC'
,p_column_label=>'Ser Sol Conf'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196168839468368255)
,p_db_column_name=>'NRO_SOL_CONF'
,p_display_order=>160
,p_column_identifier=>'FD'
,p_column_label=>'Nro Sol Conf'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196169202841368255)
,p_db_column_name=>'IND_ENVIADO'
,p_display_order=>161
,p_column_identifier=>'FE'
,p_column_label=>'Ind Enviado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196169695888368254)
,p_db_column_name=>'TIP_NOTA_ENVIO'
,p_display_order=>162
,p_column_identifier=>'FF'
,p_column_label=>'Tip Nota Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196170021848368254)
,p_db_column_name=>'SER_NOTA_ENVIO'
,p_display_order=>163
,p_column_identifier=>'FG'
,p_column_label=>'Ser Nota Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196170429947368254)
,p_db_column_name=>'NRO_NOTA_ENVIO'
,p_display_order=>164
,p_column_identifier=>'FH'
,p_column_label=>'Nro Nota Envio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196170878910368254)
,p_db_column_name=>'IND_INTERIOR'
,p_display_order=>165
,p_column_identifier=>'FI'
,p_column_label=>'Ind Interior'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196171235227368254)
,p_db_column_name=>'IND_VISITA'
,p_display_order=>166
,p_column_identifier=>'FJ'
,p_column_label=>'Ind Visita'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196171609024368253)
,p_db_column_name=>'FEC_VISITA'
,p_display_order=>167
,p_column_identifier=>'FK'
,p_column_label=>'Fec Visita'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196172038504368253)
,p_db_column_name=>'PATH_INFORME'
,p_display_order=>168
,p_column_identifier=>'FL'
,p_column_label=>'Path Informe'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196172481327368253)
,p_db_column_name=>'TIPO_CIERRE'
,p_display_order=>169
,p_column_identifier=>'FM'
,p_column_label=>'Tipo Cierre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196172813676368253)
,p_db_column_name=>'FEC_SOL_ENVIO'
,p_display_order=>170
,p_column_identifier=>'FN'
,p_column_label=>'Fec Sol Envio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196173236724368253)
,p_db_column_name=>'IND_ADELANTO'
,p_display_order=>171
,p_column_identifier=>'FO'
,p_column_label=>'Ind Adelanto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196173674328368252)
,p_db_column_name=>'HORA_PED_REP'
,p_display_order=>172
,p_column_identifier=>'FP'
,p_column_label=>'Hora Ped Rep'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196174087918368252)
,p_db_column_name=>'USUARIO_PED_REP'
,p_display_order=>173
,p_column_identifier=>'FQ'
,p_column_label=>'Usuario Ped Rep'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196174470269368252)
,p_db_column_name=>'FECHA_PED_REP'
,p_display_order=>174
,p_column_identifier=>'FR'
,p_column_label=>'Fecha Ped Rep'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196174897536368252)
,p_db_column_name=>'DELIVERY'
,p_display_order=>175
,p_column_identifier=>'FS'
,p_column_label=>'Delivery'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196175287678368251)
,p_db_column_name=>'UBICACION'
,p_display_order=>176
,p_column_identifier=>'FT'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196175646041368251)
,p_db_column_name=>'ESTADO_ANT_PRES'
,p_display_order=>177
,p_column_identifier=>'FU'
,p_column_label=>'Estado Ant Pres'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
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
 p_id=>wwv_flow_imp.id(196176021396368251)
,p_db_column_name=>'TOT_MOBRA_COM'
,p_display_order=>178
,p_column_identifier=>'FV'
,p_column_label=>'Tot Mobra Com'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196176483442368251)
,p_db_column_name=>'IND_LIQUIDA'
,p_display_order=>179
,p_column_identifier=>'FW'
,p_column_label=>'Ind Liquida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196176865819368251)
,p_db_column_name=>'FECHA_LIQUIDA'
,p_display_order=>180
,p_column_identifier=>'FX'
,p_column_label=>'Fecha Liquida'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196177265471368250)
,p_db_column_name=>'USUARIO_LIQUIDA'
,p_display_order=>181
,p_column_identifier=>'FY'
,p_column_label=>'Usuario Liquida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196177608145368250)
,p_db_column_name=>'DERIVADO'
,p_display_order=>182
,p_column_identifier=>'FZ'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196178068798368250)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>183
,p_column_identifier=>'GA'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196178453262368250)
,p_db_column_name=>'USR_SA_FMA'
,p_display_order=>184
,p_column_identifier=>'GB'
,p_column_label=>'Usr Sa Fma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196178862901368250)
,p_db_column_name=>'FCH_SA_FMA'
,p_display_order=>185
,p_column_identifier=>'GC'
,p_column_label=>'Fch Sa Fma'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196179270040368249)
,p_db_column_name=>'SA_FMA'
,p_display_order=>186
,p_column_identifier=>'GD'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196179653563368249)
,p_db_column_name=>'USR_PR_FMA'
,p_display_order=>187
,p_column_identifier=>'GE'
,p_column_label=>'Usr Pr Fma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196180058133368249)
,p_db_column_name=>'FCH_PR_FMA'
,p_display_order=>188
,p_column_identifier=>'GF'
,p_column_label=>'Fch Pr Fma'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196180429760368249)
,p_db_column_name=>'PR_FMA'
,p_display_order=>189
,p_column_identifier=>'GG'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196180872128368248)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>190
,p_column_identifier=>'GH'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196181251860368248)
,p_db_column_name=>'FEC_AUTORIZACION'
,p_display_order=>191
,p_column_identifier=>'GI'
,p_column_label=>'Fec Autorizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196181637669368248)
,p_db_column_name=>'RECHAZAR'
,p_display_order=>192
,p_column_identifier=>'GJ'
,p_column_label=>'Rechazar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196182044856368248)
,p_db_column_name=>'FEC_RECHAZADO'
,p_display_order=>193
,p_column_identifier=>'GK'
,p_column_label=>'Fec Rechazado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196182473440368247)
,p_db_column_name=>'ORDEN_AUTORIZADA'
,p_display_order=>194
,p_column_identifier=>'GL'
,p_column_label=>'Orden Autorizada'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196182883775368247)
,p_db_column_name=>'IND_ZONA'
,p_display_order=>195
,p_column_identifier=>'GM'
,p_column_label=>'Ind Zona'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196183249509368247)
,p_db_column_name=>'IND_ABANDONADO'
,p_display_order=>196
,p_column_identifier=>'GN'
,p_column_label=>'Ind Abandonado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196183609825368247)
,p_db_column_name=>'IND_SNC'
,p_display_order=>197
,p_column_identifier=>'GO'
,p_column_label=>'Ind Snc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196184029003368246)
,p_db_column_name=>'INTERIOR_ESTADO'
,p_display_order=>198
,p_column_identifier=>'GP'
,p_column_label=>'Interior Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196184445827368246)
,p_db_column_name=>'NRO_TICKET'
,p_display_order=>199
,p_column_identifier=>'GQ'
,p_column_label=>'Nro Ticket'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196184878600368246)
,p_db_column_name=>'FECHA_TICKET'
,p_display_order=>200
,p_column_identifier=>'GR'
,p_column_label=>'Fecha Ticket'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196185277548368246)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>201
,p_column_identifier=>'GS'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196185610306368245)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>202
,p_column_identifier=>'GT'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196186020630368245)
,p_db_column_name=>'ID_TRANSACCION_APP'
,p_display_order=>203
,p_column_identifier=>'GU'
,p_column_label=>'Id Transaccion App'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196186444190368245)
,p_db_column_name=>'TIPO_RECLAMO'
,p_display_order=>204
,p_column_identifier=>'GV'
,p_column_label=>'Tipo Reclamo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196186874863368245)
,p_db_column_name=>'COD_MOTIVO_RECHAZO_PRESU'
,p_display_order=>205
,p_column_identifier=>'GW'
,p_column_label=>'Cod Motivo Rechazo Presu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196187278685368244)
,p_db_column_name=>'COD_MOTIVO_RECLAMO_STA'
,p_display_order=>206
,p_column_identifier=>'GX'
,p_column_label=>'Cod Motivo Reclamo Sta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196187690807368244)
,p_db_column_name=>'COD_MOTIVO_RECLAMO_SPP'
,p_display_order=>207
,p_column_identifier=>'GY'
,p_column_label=>'Cod Motivo Reclamo Spp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196188019033368244)
,p_db_column_name=>'IND_RECLAMO_STA'
,p_display_order=>208
,p_column_identifier=>'GZ'
,p_column_label=>'Ind Reclamo Sta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196188499754368244)
,p_db_column_name=>'SER_OT_ANTERIOR'
,p_display_order=>209
,p_column_identifier=>'HA'
,p_column_label=>'Ser Ot Anterior'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196188854048368244)
,p_db_column_name=>'IND_INGRESO_ANTERIOR_STA'
,p_display_order=>210
,p_column_identifier=>'HB'
,p_column_label=>'Ind Ingreso Anterior Sta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196189228467368243)
,p_db_column_name=>'KM_FLETE'
,p_display_order=>211
,p_column_identifier=>'HC'
,p_column_label=>'Km Flete'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196189605252368243)
,p_db_column_name=>'CANTIDAD_GAS'
,p_display_order=>212
,p_column_identifier=>'HD'
,p_column_label=>'Cantidad Gas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196190011018368243)
,p_db_column_name=>'TIPO_GAS'
,p_display_order=>213
,p_column_identifier=>'HE'
,p_column_label=>'Tipo Gas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196190487315368243)
,p_db_column_name=>'IND_ADICIONAL'
,p_display_order=>214
,p_column_identifier=>'HF'
,p_column_label=>'Ind Adicional'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196190887247368242)
,p_db_column_name=>'DATOS_DE_SP'
,p_display_order=>215
,p_column_identifier=>'HG'
,p_column_label=>'Datos De Sp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196191258962368242)
,p_db_column_name=>'REPARADO_POR'
,p_display_order=>216
,p_column_identifier=>'HH'
,p_column_label=>'Reparado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196191693456368242)
,p_db_column_name=>'IND_IMPRESO_ORDEN'
,p_display_order=>217
,p_column_identifier=>'HI'
,p_column_label=>'Ind Impreso Orden'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196192068107368242)
,p_db_column_name=>'TIP_DOCUMENTO_GEN'
,p_display_order=>218
,p_column_identifier=>'HJ'
,p_column_label=>'Tip Documento Gen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196192417146368242)
,p_db_column_name=>'SER_DOCUMENTO_GEN'
,p_display_order=>219
,p_column_identifier=>'HK'
,p_column_label=>'Ser Documento Gen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196192819731368241)
,p_db_column_name=>'NRO_DOCUMENTO_GEN'
,p_display_order=>220
,p_column_identifier=>'HL'
,p_column_label=>'Nro Documento Gen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196193240753368241)
,p_db_column_name=>'COD_MOTIVO_RECLAMO_JEFE'
,p_display_order=>221
,p_column_identifier=>'HM'
,p_column_label=>'Cod Motivo Reclamo Jefe'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196193635830368241)
,p_db_column_name=>'COD_PROBLEMA_RECLAMO'
,p_display_order=>222
,p_column_identifier=>'HN'
,p_column_label=>'Cod Problema Reclamo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196194027896368241)
,p_db_column_name=>'ESTADO_RECLAMO'
,p_display_order=>223
,p_column_identifier=>'HO'
,p_column_label=>'Estado Reclamo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196194466691368241)
,p_db_column_name=>'COMENTARIO_RECLAMO'
,p_display_order=>224
,p_column_identifier=>'HP'
,p_column_label=>'Comentario Reclamo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196194898597368240)
,p_db_column_name=>'FECHA_FINALIZACION_RECLAMO'
,p_display_order=>225
,p_column_identifier=>'HQ'
,p_column_label=>'Fecha Finalizacion Reclamo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196195286014368240)
,p_db_column_name=>'COD_SOLUCION_RECLAMO'
,p_display_order=>226
,p_column_identifier=>'HR'
,p_column_label=>'Cod Solucion Reclamo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196195698893368240)
,p_db_column_name=>'IND_CANAL_VERDE'
,p_display_order=>227
,p_column_identifier=>'HS'
,p_column_label=>'Ind Canal Verde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196196002836368239)
,p_db_column_name=>'OBSERVACION_CANAL_VERDE'
,p_display_order=>228
,p_column_identifier=>'HT'
,p_column_label=>'Observacion Canal Verde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196196423541368239)
,p_db_column_name=>'RESULTADO_CANAL_VERDE'
,p_display_order=>229
,p_column_identifier=>'HU'
,p_column_label=>'Resultado Canal Verde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196196886826368239)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>230
,p_column_identifier=>'HV'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196197290267368239)
,p_db_column_name=>'IND_TEST_CLIENTE'
,p_display_order=>231
,p_column_identifier=>'HW'
,p_column_label=>'Ind Test Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196197675977368238)
,p_db_column_name=>'NRO_SOLICITUD_ASISTENCIA'
,p_display_order=>232
,p_column_identifier=>'HX'
,p_column_label=>'Nro Solicitud Asistencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196198010056368238)
,p_db_column_name=>'COD_MOTIVO_COMPRA_NUEVA'
,p_display_order=>233
,p_column_identifier=>'HY'
,p_column_label=>'Cod Motivo Compra Nueva'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196198438347368238)
,p_db_column_name=>'CONTADOR_FACT_ART_DIST'
,p_display_order=>234
,p_column_identifier=>'HZ'
,p_column_label=>'Contador Fact Art Dist'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196198855054368238)
,p_db_column_name=>'FECHA_ESTADO_COMPLICADO'
,p_display_order=>235
,p_column_identifier=>'IA'
,p_column_label=>'Fecha Estado Complicado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196199270654368237)
,p_db_column_name=>'COD_USUARIO_ESTADO_COMPLICADO'
,p_display_order=>236
,p_column_identifier=>'IB'
,p_column_label=>'Cod Usuario Estado Complicado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196199675325368237)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>237
,p_column_identifier=>'IC'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196200017246368237)
,p_db_column_name=>'COD_STA'
,p_display_order=>238
,p_column_identifier=>'ID'
,p_column_label=>'Cod Sta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196200475066368236)
,p_db_column_name=>'FECHA_MODIFICADO_GARANTIA'
,p_display_order=>239
,p_column_identifier=>'IE'
,p_column_label=>'Fecha Modificado Garantia'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196200884813368236)
,p_db_column_name=>'COD_USUARIO_MOD_GAR'
,p_display_order=>240
,p_column_identifier=>'IF'
,p_column_label=>'Cod Usuario Mod Gar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196201274577368236)
,p_db_column_name=>'FECHA_TILDE_SNC'
,p_display_order=>241
,p_column_identifier=>'IG'
,p_column_label=>'Fecha Tilde Snc'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196201643771368236)
,p_db_column_name=>'COD_USUARIO_LIQUIDACION'
,p_display_order=>242
,p_column_identifier=>'IH'
,p_column_label=>'Cod Usuario Liquidacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196202088388368235)
,p_db_column_name=>'FECHA_LIQUIDACION'
,p_display_order=>243
,p_column_identifier=>'II'
,p_column_label=>'Fecha Liquidacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196202472109368235)
,p_db_column_name=>'FECHA_ABANDONADO'
,p_display_order=>244
,p_column_identifier=>'IJ'
,p_column_label=>'Fecha Abandonado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196202827640368235)
,p_db_column_name=>'COD_USUARIO_ABANDONADO'
,p_display_order=>245
,p_column_identifier=>'IK'
,p_column_label=>'Cod Usuario Abandonado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196203296664368235)
,p_db_column_name=>'IND_FLETE_ADICIONAL'
,p_display_order=>246
,p_column_identifier=>'IL'
,p_column_label=>'Ind Flete Adicional'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196203694760368234)
,p_db_column_name=>'USUARIO_AUTORIZA_FLETE_AD'
,p_display_order=>247
,p_column_identifier=>'IM'
,p_column_label=>'Usuario Autoriza Flete Ad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196204066104368234)
,p_db_column_name=>'FECHA_AUTORIZA_FLETE_AD'
,p_display_order=>248
,p_column_identifier=>'IO'
,p_column_label=>'Fecha Autoriza Flete Ad'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196204472181368234)
,p_db_column_name=>'HORA_AUTORIZA_FLETE_AD'
,p_display_order=>249
,p_column_identifier=>'IP'
,p_column_label=>'Hora Autoriza Flete Ad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196204806345368234)
,p_db_column_name=>'USR_IND_SNC'
,p_display_order=>250
,p_column_identifier=>'IQ'
,p_column_label=>'Usr Ind Snc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(196205263026368234)
,p_db_column_name=>'FEC_IND_SNC'
,p_display_order=>251
,p_column_identifier=>'IR'
,p_column_label=>'Fec Ind Snc'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(195727698151446404)
,p_db_column_name=>'VER_OT'
,p_display_order=>261
,p_column_identifier=>'IT'
,p_column_label=>'Ver Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(196206978184367701)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1962070'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:COD_EMPRESA:TIP_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:DIRECCION:TELEFONO:RUC:GARANTIA:COD_FAMILIA:COD_ARTICULO:SERIE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_DISTRIBUIDOR:COD_ORIGEN'
||':CONDICION:PROBLEMA:COD_USUARIO:SENIA:CERRADO:FEC_CIERRE:TOT_MOBRA:TOT_REPUESTOS:TIP_COMPROBANTE_FAC:SER_COMPROBANTE_FAC:NRO_COMPROBANTE_FAC:SENIA_DEVUELTA:FEC_DEVOLUCION_SENIA:COD_PROVEEDOR:TIP_COMPROBANTE_SER:SER_COMPROBANTE_SER:NRO_COMPROBANTE_SER'
||':IND_GARANTIA:IND_ENTREGA:FEC_ENTREGA:ANULADO:FEC_ANULADO:COD_MOTIVO_ANU:GARANTIA_TMP:NRO_COMPROBANTE_DISTR:ASIENTOS:PRESUPUESTO:FEC_COBRO_ADELANTO:FEC_ESTADO:ESTADO_PRESU:MONTO_ADELANTO:GARANTIA_OT:TIPO:CONT_OT:IND_RECLAMO:IND_INSTALACION:IND_COSTO:'
||'IND_ROTA:IND_FACTURADO:TOT_REPUESTOS_CALL:COD_ARTICULO_CALL:SITIO:NRO_LLAMADA:CREADO_POR:FEC_CREACION:HORA_CREACION:PRESUPUESTADO_POR:FEC_PRESUPUESTADO:HORA_PRESUPUESTO:VERIFICADO_POR:FEC_VERIFICADO:HORA_VERIFICACION:APROBADO_POR:FEC_APROBACION:HORA_'
||'APROBADA:RECHAZADO_POR:FEC_RECHAZO:HORA_RECHAZADO:FINALIZADO_POR:FEC_FINALIZADO:HORA_FINALIZADO:IND_IMPRESO:NRO_OT_PROVEEDOR:FECHA_CO_DISTRIBUIDOR:COMENTARIO:PENDIENTE_POR:FEC_PENDIENTE:HORA_PENDIENTE:FEC_MODIF_VERIFICADO:FEC_MODIF_PRESUPUESTO:FEC_MO'
||'DIF_PENDIENTE:FEC_MODIF_APROBADO:FEC_MODIF_RECHAZADO:FEC_MODIF_CERRADO:ENTREGADO_POR:FEC_ENTREGADO:HORA_ENTREGADO:NRO_ORDEN:CI:NRO_OT_PLANTILLA:RECLAMO_ENTREGA:CAMBIO:NCR:AUTORIZADO_GAR_POR:FEC_AUTORIZADO_GAR_POR:HORA_AUTORIZADO_GAR_POR:FEC_MODIF_GAR'
||':CONT_SER:CO_USUARIO_UTIL:FECHA_HORA_REAGENDA:COD_MOTIVO_MOROSIDAD:OBSERV:FECHAOT:IND_RETIRADO:FEC_RETIRADO:FEC_REPAR:COD_USUARIO_DEV_SEN:FECHA_RETIRADO:RETIRADO_POR:HORA_RETIRADO:NO_RETIRADA:IND_TRANSPORTE:IND_RECLAMO_SEGURO:FEC_AUT_NCR:FEC_REPARACI'
||'ON_STA:FEC_RENDIDO:IND_RENDIDO:IND_WEB:COD_USUARIO_ANU:CELULAR_CONTACTO:CORREO_CONTACTO:IND_DELIVERY:IND_CORREO_PRESU:IND_CARNEO:IND_VERIFICADO:COD_SUCURSAL:COD_USUARIO_RENDICION:IND_CORREO_PE:COD_SUCURSAL_DIST:COD_USUARIO_SIN_RP:FEC_SIN_REPUESTO:HOR'
||'A_SIN_REPUESTO:REPARADO_IM_POR:FEC_IM:HORA_IM:TIP_SERVICIO:FEC_SERVICIO:NRO_SERVICIO:COD_UBICACION:OT_ANTERIOR:ID_REGISTRO_RENDICION:NO_UBICADA:IND_UBICADA:COD_SUCURSAL_SAL:COD_SUCURSAL_PED:NRO_ENVIO_PENDIENTE:IND_A_RETIRAR:TIP_SOL_CONF:SER_SOL_CONF:'
||'NRO_SOL_CONF:IND_ENVIADO:TIP_NOTA_ENVIO:SER_NOTA_ENVIO:NRO_NOTA_ENVIO:IND_INTERIOR:IND_VISITA:FEC_VISITA:PATH_INFORME:TIPO_CIERRE:FEC_SOL_ENVIO:IND_ADELANTO:HORA_PED_REP:USUARIO_PED_REP:FECHA_PED_REP:DELIVERY:UBICACION:ESTADO_ANT_PRES:TOT_MOBRA_COM:I'
||'ND_LIQUIDA:FECHA_LIQUIDA:USUARIO_LIQUIDA:DERIVADO:AUTORIZADO:USR_SA_FMA:FCH_SA_FMA:SA_FMA:USR_PR_FMA:FCH_PR_FMA:PR_FMA:AUTORIZADO_POR:FEC_AUTORIZACION:RECHAZAR:FEC_RECHAZADO:ORDEN_AUTORIZADA:IND_ZONA:IND_ABANDONADO:IND_SNC:INTERIOR_ESTADO:NRO_TICKET:'
||'FECHA_TICKET:COD_DEPARTAMENTO:COD_CIUDAD:ID_TRANSACCION_APP:TIPO_RECLAMO:COD_MOTIVO_RECHAZO_PRESU:COD_MOTIVO_RECLAMO_STA:COD_MOTIVO_RECLAMO_SPP:IND_RECLAMO_STA:SER_OT_ANTERIOR:IND_INGRESO_ANTERIOR_STA:KM_FLETE:CANTIDAD_GAS:TIPO_GAS:IND_ADICIONAL:DATO'
||'S_DE_SP:REPARADO_POR:IND_IMPRESO_ORDEN:TIP_DOCUMENTO_GEN:SER_DOCUMENTO_GEN:NRO_DOCUMENTO_GEN:COD_MOTIVO_RECLAMO_JEFE:COD_PROBLEMA_RECLAMO:ESTADO_RECLAMO:COMENTARIO_RECLAMO:FECHA_FINALIZACION_RECLAMO:COD_SOLUCION_RECLAMO:IND_CANAL_VERDE:OBSERVACION_CA'
||'NAL_VERDE:RESULTADO_CANAL_VERDE:COD_CONDICION_VENTA:IND_TEST_CLIENTE:NRO_SOLICITUD_ASISTENCIA:COD_MOTIVO_COMPRA_NUEVA:CONTADOR_FACT_ART_DIST:FECHA_ESTADO_COMPLICADO:COD_USUARIO_ESTADO_COMPLICADO:COD_LISTA_PRECIO:COD_STA:FECHA_MODIFICADO_GARANTIA:COD_'
||'USUARIO_MOD_GAR:FECHA_TILDE_SNC:COD_USUARIO_LIQUIDACION:FECHA_LIQUIDACION:FECHA_ABANDONADO:COD_USUARIO_ABANDONADO:IND_FLETE_ADICIONAL:USUARIO_AUTORIZA_FLETE_AD:FECHA_AUTORIZA_FLETE_AD:HORA_AUTORIZA_FLETE_AD:USR_IND_SNC:FEC_IND_SNC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(196205700471368233)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(196104769997368302)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:588'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(196206018885368233)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(196104769997368302)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(196206549006368233)
,p_event_id=>wwv_flow_imp.id(196206018885368233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196104769997368302)
);
wwv_flow_imp.component_end;
end;
/
