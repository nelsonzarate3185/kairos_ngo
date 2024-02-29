prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>59
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVMRGPRO'
,p_alias=>'FVMRGPRO'
,p_step_title=>'FVMRGPRO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doShowHide(){',
'    var mostrar = $v("P59_MOSTRAR_BTN_CONFIRMAR");',
'    if(mostrar == 2){',
'        $(''#BOTON'').hide()',
'    }else{',
'        $(''#BOTON'').show()',
'    }',
'}',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P59_ACCION'',''AGREGAR'');',
'      $s(''P59_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P59_ACCION'',''QUITAR'');',
'      $s(''P59_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #003A85;',
'  color: yellow;',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#PARAMETROS{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P94_FECHA_FIN, #P94_FECHA_INI, #P94_ORIGEN, #P94_ESTADO, #P94_CLIENTE {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
' .a-IRR-header{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'',
'',
'#btn{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'#btn2, #btn3, #btn4{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'',
'',
'',
'',
' ',
'',
'',
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}',
'',
'#btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231229084131'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45805192254056647)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>80
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49054230919350233)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48478701235391520)
,p_plug_name=>'REPORTE_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,        ',
'        C001 COD_EMPRESA,',
'        C002 COD_ARTICULO, ',
'        to_number(C003) PRECIO ,--PRECIO DE VENTA, ',
'        to_number(C004) PORC_DTO1 ,--DESC %, ',
'        to_number(C005) PRECIO_NETO,--PRECIO VTA. NETO ',
'        to_number(C006) COSTO_ART ,--COSTO OPN, ',
'        to_number(C007) UTILIDAD ,--UTIL ',
'        to_number(C008) PORC_MARGEN, --MARGEN ',
'        to_number(C009) PORC_DTO2, -- DESC %',
'        to_number(C010) PRECIO_NETO2, --PRECIO VTA. NETO ',
'        to_number(C011) COSTO_PROMO2,',
'        to_number(C012) PORC_DESCUENTO2, ',
'        to_number(C013) UTILIDAD2, --UTILIDAD ',
'        to_number(C014) PORC_MARGEN2, --MARGEN',
'        C015 USUARIO, ',
'        C016 FECHA,',
'        C017 COD_MONEDA,',
'        to_number(C018) Costo_total, ',
'        C019 NRO_PROMO_margen,',
'        C020 COD_ART_CORTO, --ARTICULO,',
'        to_number(C021) PORC_MARGEN_MK, --MAKUP',
'        to_number(c022) PORC_MARGEN_MK2, --MAKUP',
'        C023 COD_USUARIO, ',
'        C024 FECHA_ALTA,',
'        C025 USUARIO_AUT_COMERCIAL, ',
'        C026 FECHA_AUT_COMERCIAL, ',
'        C027 OBSERVACION, ',
'        C028 DESPACHO, ',
'        C029 NRO_PROMO,',
'        c031 RID,',
'        C032 CF_DESCRIPCION_ARTICULO, --DESCRIPCION,',
'        c033 CF_MON, --MON,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C046',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as  INCLUIR_LISTADO,   ',
'         C050 RIDM,',
'        TO_NUMBER(C034) CF_PRECIO_BRUTO ,--PRECIO VTA. BRUTO,',
'        null detalle,',
'        null Editar,',
'        null Eliminar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'AND nvl(c030, ''O'') <> ''B''',
'ORDER BY 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE'
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
 p_id=>wwv_flow_imp.id(48478857105391521)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>48478857105391521
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48478936535391522)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549445405631627)
,p_db_column_name=>'P_ID'
,p_display_order=>20
,p_column_identifier=>'AD'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549943510631632)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'AH'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551232135631645)
,p_db_column_name=>'USUARIO'
,p_display_order=>190
,p_column_identifier=>'AU'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551333316631646)
,p_db_column_name=>'FECHA'
,p_display_order=>200
,p_column_identifier=>'AV'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551463064631647)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>210
,p_column_identifier=>'AW'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551633882631649)
,p_db_column_name=>'NRO_PROMO_MARGEN'
,p_display_order=>230
,p_column_identifier=>'AY'
,p_column_label=>'Nro Promo Margen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551772891631650)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>240
,p_column_identifier=>'AZ'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051204264350203)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>270
,p_column_identifier=>'BC'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051345230350204)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>280
,p_column_identifier=>'BD'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051431374350205)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>290
,p_column_identifier=>'BE'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051554216350206)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>300
,p_column_identifier=>'BF'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051641636350207)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>310
,p_column_identifier=>'BG'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051768773350208)
,p_db_column_name=>'DESPACHO'
,p_display_order=>320
,p_column_identifier=>'BH'
,p_column_label=>'Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051812638350209)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>330
,p_column_identifier=>'BI'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051940695350210)
,p_db_column_name=>'RID'
,p_display_order=>340
,p_column_identifier=>'BJ'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49052911735350220)
,p_db_column_name=>'PORC_DESCUENTO2'
,p_display_order=>440
,p_column_identifier=>'BT'
,p_column_label=>'Porc Descuento2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49053277367350223)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>470
,p_column_identifier=>'BW'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590053863414425)
,p_db_column_name=>'PRECIO'
,p_display_order=>530
,p_column_identifier=>'CD'
,p_column_label=>'Precio de Vta.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590272153414427)
,p_db_column_name=>'PRECIO_NETO'
,p_display_order=>550
,p_column_identifier=>'CE'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590399558414428)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>560
,p_column_identifier=>'CF'
,p_column_label=>'Util'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590556535414430)
,p_db_column_name=>'PRECIO_NETO2'
,p_display_order=>580
,p_column_identifier=>'CG'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590649676414431)
,p_db_column_name=>'COSTO_PROMO2'
,p_display_order=>590
,p_column_identifier=>'CH'
,p_column_label=>'Costo Promo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590766932414432)
,p_db_column_name=>'PORC_DTO1'
,p_display_order=>600
,p_column_identifier=>'CI'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590844515414433)
,p_db_column_name=>'COSTO_ART'
,p_display_order=>610
,p_column_identifier=>'CJ'
,p_column_label=>'Costo OPN'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590905122414434)
,p_db_column_name=>'PORC_MARGEN'
,p_display_order=>620
,p_column_identifier=>'CK'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591014329414435)
,p_db_column_name=>'PORC_DTO2'
,p_display_order=>630
,p_column_identifier=>'CL'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591149196414436)
,p_db_column_name=>'UTILIDAD2'
,p_display_order=>640
,p_column_identifier=>'CM'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591251933414437)
,p_db_column_name=>'PORC_MARGEN2'
,p_display_order=>650
,p_column_identifier=>'CN'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591317453414438)
,p_db_column_name=>'CF_DESCRIPCION_ARTICULO'
,p_display_order=>660
,p_column_identifier=>'CO'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591434184414439)
,p_db_column_name=>'CF_MON'
,p_display_order=>670
,p_column_identifier=>'CP'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591651008414441)
,p_db_column_name=>'PORC_MARGEN_MK'
,p_display_order=>690
,p_column_identifier=>'CR'
,p_column_label=>'Makup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591739734414442)
,p_db_column_name=>'PORC_MARGEN_MK2'
,p_display_order=>700
,p_column_identifier=>'CS'
,p_column_label=>'Makup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549631920631629)
,p_db_column_name=>'EDITAR'
,p_display_order=>720
,p_column_identifier=>'AF'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_EDITAR_ART'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549726061631630)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>730
,p_column_identifier=>'AG'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_ELIMINAR_ART'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49730896588898001)
,p_db_column_name=>'CF_PRECIO_BRUTO'
,p_display_order=>740
,p_column_identifier=>'CT'
,p_column_label=>'Precio Vta. Bruto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52913061213696428)
,p_db_column_name=>'DETALLE'
,p_display_order=>750
,p_column_identifier=>'CU'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52913459780696432)
,p_db_column_name=>'RIDM'
,p_display_order=>760
,p_column_identifier=>'CV'
,p_column_label=>'Ridm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52915035875696448)
,p_db_column_name=>'INCLUIR_LISTADO'
,p_display_order=>770
,p_column_identifier=>'CW'
,p_column_label=>'Incluir Listado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48533233198595400)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'485333'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ARTICULO:COD_ART_CORTO:CF_DESCRIPCION_ARTICULO:CF_MON:PRECIO:COSTO_ART:CF_PRECIO_BRUTO:PORC_DTO1:PRECIO_NETO:UTILIDAD:PORC_MARGEN:PORC_MARGEN_MK:PORC_DTO2:PRECIO_NETO2:UTILIDAD2:PORC_MARGEN_MK2:PORC_MARGEN2:COSTO_TOTAL:DETALLE:ELIMINAR:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49055047262350241)
,p_plug_name=>'AGREGAR/EDITAR ARTICULO'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50496235532541928)
,p_plug_name=>'B_BLOQUE'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108046622007228031)
,p_plug_name=>'REPORTE_DETALLE_ABM_BLOQUEADOS'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,        ',
'        C001 COD_EMPRESA,',
'        C002 COD_ARTICULO, ',
'        to_number(C003) PRECIO ,--PRECIO DE VENTA, ',
'        to_number(C004) PORC_DTO1 ,--DESC %, ',
'        to_number(C005) PRECIO_NETO,--PRECIO VTA. NETO ',
'        to_number(C006) COSTO_ART ,--COSTO OPN, ',
'        to_number(C007) UTILIDAD ,--UTIL ',
'        to_number(C008) PORC_MARGEN, --MARGEN ',
'        to_number(C009) PORC_DTO2, -- DESC %',
'        to_number(C010) PRECIO_NETO2, --PRECIO VTA. NETO ',
'        to_number(C011) COSTO_PROMO2,',
'        to_number(C012) PORC_DESCUENTO2, ',
'        to_number(C013) UTILIDAD2, --UTILIDAD ',
'        to_number(C014) PORC_MARGEN2, --MARGEN',
'        C015 USUARIO, ',
'        C016 FECHA,',
'        C017 COD_MONEDA,',
'        to_number(C018) Costo_total, ',
'        C019 NRO_PROMO_margen,',
'        C020 COD_ART_CORTO, --ARTICULO,',
'        to_number(C021) PORC_MARGEN_MK, --MAKUP',
'        to_number(c022) PORC_MARGEN_MK2, --MAKUP',
'        C023 COD_USUARIO, ',
'        C024 FECHA_ALTA,',
'        C025 USUARIO_AUT_COMERCIAL, ',
'        C026 FECHA_AUT_COMERCIAL, ',
'        C027 OBSERVACION, ',
'        C028 DESPACHO, ',
'        C029 NRO_PROMO,',
'        c031 RID,',
'        C032 CF_DESCRIPCION_ARTICULO, --DESCRIPCION,',
'        c033 CF_MON, --MON,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C046',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as  INCLUIR_LISTADO,   ',
'         C050 RIDM,',
'        TO_NUMBER(C034) CF_PRECIO_BRUTO --PRECIO VTA. BRUTO,',
'         ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'AND nvl(c030, ''O'') <> ''B''',
'ORDER BY 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE_ABM_BLOQUEADOS'
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
 p_id=>wwv_flow_imp.id(108046700378228032)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>108046700378228032
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046888378228033)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046959938228034)
,p_db_column_name=>'P_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047082135228035)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047124603228036)
,p_db_column_name=>'USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047223664228037)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047335481228038)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047431103228039)
,p_db_column_name=>'NRO_PROMO_MARGEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Promo Margen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047529047228040)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047622829228041)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047739282228042)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047854914228043)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047991896228044)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048046059228045)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048141446228046)
,p_db_column_name=>'DESPACHO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048280918228047)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048385844228048)
,p_db_column_name=>'RID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048468530228049)
,p_db_column_name=>'PORC_DESCUENTO2'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Porc Descuento2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048582937228050)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026017219414001)
,p_db_column_name=>'PRECIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Precio de Vta.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026169923414002)
,p_db_column_name=>'PRECIO_NETO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026266510414003)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Util'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026377427414004)
,p_db_column_name=>'PRECIO_NETO2'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026428871414005)
,p_db_column_name=>'COSTO_PROMO2'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Promo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026527848414006)
,p_db_column_name=>'PORC_DTO1'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026632784414007)
,p_db_column_name=>'COSTO_ART'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Costo OPN'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026704748414008)
,p_db_column_name=>'PORC_MARGEN'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026853769414009)
,p_db_column_name=>'PORC_DTO2'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026954641414010)
,p_db_column_name=>'UTILIDAD2'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027041160414011)
,p_db_column_name=>'PORC_MARGEN2'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027180555414012)
,p_db_column_name=>'CF_DESCRIPCION_ARTICULO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027206046414013)
,p_db_column_name=>'CF_MON'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027338993414014)
,p_db_column_name=>'PORC_MARGEN_MK'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Makup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027440719414015)
,p_db_column_name=>'PORC_MARGEN_MK2'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Makup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027780813414018)
,p_db_column_name=>'CF_PRECIO_BRUTO'
,p_display_order=>360
,p_column_identifier=>'AH'
,p_column_label=>'Precio Vta. Bruto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027948333414020)
,p_db_column_name=>'RIDM'
,p_display_order=>380
,p_column_identifier=>'AI'
,p_column_label=>'Ridm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109028041328414021)
,p_db_column_name=>'INCLUIR_LISTADO'
,p_display_order=>390
,p_column_identifier=>'AJ'
,p_column_label=>'Incluir Listado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109043343102420373)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1090434'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:COD_ARTICULO:CF_DESCRIPCION_ARTICULO:CF_MON:PRECIO:COSTO_ART:CF_PRECIO_BRUTO:PORC_DTO1:PRECIO_NETO2:UTILIDAD:PORC_MARGEN:PORC_MARGEN_MK:PORC_DTO2:PRECIO_NETO:UTILIDAD2:PORC_MARGEN2:PORC_MARGEN_MK2:COSTO_TOTAL:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49054451051350235)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45804989511056645)
,p_plug_name=>'C_PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45805056184056646)
,p_plug_name=>'AGREGAR/EDITAR PROMO'
,p_parent_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49731097884898003)
,p_plug_name=>'REPORTE_CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  ',
'        seq_id p_id,',
'        C001  COD_EMPRESA,',
'        C002 NRO_PROMO,',
'        C003 COD_MONEDA,',
'        C004 MONEDA,',
'        C005 NRO_DESPACHO,',
'        C006 ESTADO,',
'        C007 FECHA,',
'        C008 TIPO_CAMBIO,',
'        C009 OBSERVACION,',
'        C010 NRO_EMBARQUE,',
'        C011 COD_USUARIO,',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO, ',
'        C027 DESCUENTO_1, ',
'        C028 DESCUENTO_2,                  ',
'        c029 RID,',
'        C031 DESC_TIPO_CAMBIO,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'   ',
'    AND nvl(c030, ''O'') <> ''B''',
'    ORDER BY 1;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_CABECERA'
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
 p_id=>wwv_flow_imp.id(49732178257898014)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>49732178257898014
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732226783898015)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732320194898016)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732480341898017)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Promo'
,p_column_link=>'javascript:$s(''P59_NRO_PROMO_LINK'',''#NRO_PROMO#'');'
,p_column_linktext=>'#NRO_PROMO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732502492898018)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732670753898019)
,p_db_column_name=>'NRO_DESPACHO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732767581898020)
,p_db_column_name=>'ESTADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732852564898021)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732963039898022)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733012594898023)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733120498898024)
,p_db_column_name=>'NRO_EMBARQUE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Embarque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733209270898025)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733316282898026)
,p_db_column_name=>'USUARIO_VERIFICACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Usuario Verificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733448953898027)
,p_db_column_name=>'USUARIO_REVISADO_MKT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Usuario Revisado Mkt'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733571171898028)
,p_db_column_name=>'USUARIO_AUT_ADMINISTRACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Usuario Aut Administracion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733629854898029)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733771639898030)
,p_db_column_name=>'USUARIO_CONFIRMADO_DEPOSITO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Usuario Confirmado Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733802980898031)
,p_db_column_name=>'USUARIO_CONFIRMADO_COMERCIAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Usuario Confirmado Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49733901177898032)
,p_db_column_name=>'USUARIO_RECHAZO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Usuario Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734077392898033)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734181184898034)
,p_db_column_name=>'FECHA_VERIFICACION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Verificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734267756898035)
,p_db_column_name=>'FECHA_REVISADO_MKT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fecha Revisado Mkt'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734380586898036)
,p_db_column_name=>'FECHA_AUT_ADMINISTRACION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fecha Aut Administracion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734433230898037)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734557097898038)
,p_db_column_name=>'FECHA_CONFIRMADO_DEPOSITO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fecha Confirmado Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734658454898039)
,p_db_column_name=>'FECHA_CONFIRMADO_COMERCIAL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fecha Confirmado Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734722019898040)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734857513898041)
,p_db_column_name=>'DESCUENTO_1'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Descuento 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49734963021898042)
,p_db_column_name=>'DESCUENTO_2'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Descuento 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49735074831898043)
,p_db_column_name=>'RID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50495093148541916)
,p_db_column_name=>'EDITAR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_EDITAR_PRO'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50495141433541917)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_ELIMINAR_PROMO'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103969920981984643)
,p_db_column_name=>'MONEDA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103970043035984644)
,p_db_column_name=>'DESC_TIPO_CAMBIO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(49774882344021885)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'497749'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:NRO_PROMO:MONEDA:NRO_DESPACHO:ESTADO:FECHA:FECHA_ALTA:DESC_TIPO_CAMBIO:OBSERVACION:NRO_EMBARQUE:DESCUENTO_1:DESCUENTO_2:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51531685933865627)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51532961518865640)
,p_plug_name=>'REPORTE DE MARGENES'
,p_parent_plug_id=>wwv_flow_imp.id(51531685933865627)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51533943015865650)
,p_plug_name=>'REPORTE STMANPRO'
,p_parent_plug_id=>wwv_flow_imp.id(51531685933865627)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_empresa, ',
'    fec_alta, ',
'    fec_cierre,',
'    cod_articulo, ',
'    desc_articulo,',
'    cod_articulo_promo, ',
'    desc_art_promo,',
'     nro_promo,',
'    AUTORIZADO , ',
'    PORCENTAJE, ',
'    ACTIVO_DET',
'from (SELECT p.cod_empresa, ',
'        C.FECHA_INICIO FEC_ALTA,',
'        C.FECHA_FIN fec_cierre,',
'        C.AUTORIZADO activo, ',
'        p.cod_corto_art,        ',
'    case when  TIPO_PROMOCION =''PRINCIPAL'' THEN',
'        nvl(p.cod_articulo_principal,p.cod_articulo)',
'       ELSE ',
'         nvl(p.cod_articulo_principal,p.cod_articulo)',
'    END cod_articulo, ',
'    case when  TIPO_PROMOCION =''PRINCIPAL'' THEN',
'       a.descripcion',
'       ELSE ',
'         a.descripcion ',
'    END desc_articulo,',
'       ',
'    case when  TIPO_PROMOCION =''REGALO'' THEN',
'        p.cod_articulo ',
'        ELSE ',
'         NULL ',
'    END cod_articulo_promo, ',
'         ',
'    case when  TIPO_PROMOCION =''REGALO'' THEN',
'        s2.descripcion',
'        ELSE ',
'         NULL ',
'    END   desc_art_promo,',
'    C.EVENTID NRO_PROMO,',
'    P.TIPO_PROMOCION,',
'    CASE WHEN  nvl(C.AUTORIZADO ,''N'')=''S'' THEN',
'        ''ACTIVO''',
'        ELSE ',
'         ''INACTIVO'' ',
'    END AUTORIZADO ,',
'    P.PORCENTAJE,',
'    CASE WHEN  nvl(P.ESTADO ,''N'')=''N'' THEN',
'        ''ACTIVO''',
'        ELSE ',
'         ''INACTIVO'' ',
'    END ACTIVO_DET, ',
'    P.ACTIVO ACTIVOD1',
'    FROM ST_PROMOCION p, st_articulos a,   ST_PROMOCION_CAB C, st_articulos s2 ',
'        where C.cod_empresa         =   ''99''-- :P59_COD_EMPRESA',
'        AND C.COD_EMPRESA=P.COD_EMPRESA',
'        AND C.EVENTID=P.NRO_PROMO',
'        and ( NVL(C.AUTORIZADO,''N'')= :P59_B_ESTADO or :P59_B_ESTADO is null)',
'        and a.cod_empresa  = p.cod_empresa',
'        and a.cod_articulo = nvl(p.cod_articulo_principal,p.cod_articulo)',
'        and s2.cod_empresa = p.cod_empresa',
'        and s2.cod_articulo= nvl(p.cod_art_promo,p.cod_articulo)',
'        --and p.tipo_promocion=''REGALO''',
'        and  C.FECHA_INICIO >=  nvl( :P59_B_FECHA_DESDE, to_date( ''31/12/0001'', ''DD/MM/YYYY'' )) ',
'        and  C.FECHA_FIN  <= nvl( :P59_B_FECHA_HASTA, to_date( ''31/12/9999'', ''DD/MM/YYYY'' ) )  ',
'        and (a.cod_marca=:P59_B_COD_MARCA_DES or :P59_B_COD_MARCA_DES is null)                          ',
'        and (a.cod_categoria=:P59_B_COD_CATEGORIA or :P59_B_COD_CATEGORIA is null)      ',
'        and (p.cod_articulo = :P59_COD_ARTICULO or :P59_COD_ARTICULO is null)',
'    order by c.eventid, a.descripcion)',
'',
'                       ',
'group by cod_empresa, fec_alta, fec_cierre,',
'cod_articulo, desc_articulo,',
'cod_articulo_promo, desc_art_promo, nro_promo,AUTORIZADO ,PORCENTAJE, ACTIVO_DET'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_B_FECHA_DESDE,P59_B_FECHA_HASTA,P59_COD_EMPRESA,P59_B_COD_MARCA_DES,P59_B_COD_CATEGORIA,P59_B_ESTADO,P59_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE STMANPRO'
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
 p_id=>wwv_flow_imp.id(52910343446696401)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>52910343446696401
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910447572696402)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910555327696403)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910663609696404)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910782283696405)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910858963696406)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910912999696407)
,p_db_column_name=>'COD_ARTICULO_PROMO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Articulo Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911052808696408)
,p_db_column_name=>'DESC_ART_PROMO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desc Art Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911106696696409)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911232076696410)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911391101696411)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911461948696412)
,p_db_column_name=>'ACTIVO_DET'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Activo Det'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52919687238770103)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'529197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:FEC_ALTA:FEC_CIERRE:COD_ARTICULO:DESC_ARTICULO:COD_ARTICULO_PROMO:DESC_ART_PROMO:NRO_PROMO:AUTORIZADO:PORCENTAJE:ACTIVO_DET'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59348978367791041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'LIMPIAR'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547800427631611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055293214350243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_button_name=>'CANCELAR_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51533612204865647)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547692547631609)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055529981350246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_button_name=>'ACEPTAR_CREAR_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52913864917696436)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_button_name=>'LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'LIMPIAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055602523350247)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_button_name=>'ACEPTAR_EDITAR_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51533735802865648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547435078631607)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_button_name=>'ACEPTAR_CREAR_PROMO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547570217631608)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_button_name=>'ACEPTAR_EDIITAR_PROMO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138650125815528736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:373:&SESSION.::&DEBUG.:373::'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51532176243865632)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'LISTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'LISTAR'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48548083313631613)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'CONFIRMAR'
,p_button_static_id=>'btn3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                   ppage_id => :APP_PAGE_ID,',
'                                                papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055823801350249)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48478701235391520)
,p_button_name=>'AGREGAR_ART'
,p_button_static_id=>'btn2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547904817631612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'NUEVA_PROMO'
,p_button_static_id=>'BOTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nueva Promo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45805236122056648)
,p_name=>'P59_COD_USUARIO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45805377327056649)
,p_name=>'P59_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45805400133056650)
,p_name=>'P59_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48293949695818001)
,p_name=>'P59_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294111135818003)
,p_name=>'P59_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294243903818004)
,p_name=>'P59_NOM_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294498169818006)
,p_name=>'P59_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294553361818007)
,p_name=>'P59_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'FECHA'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294662743818008)
,p_name=>'P59_COD_MONEDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'MONEDA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_moneda AS COD_MONEDA, descripcion AS MONEDA, siglas AS SIGNO, tipo_cambio_dia AS TIPO',
' from monedas ',
' order by descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'TIPO:P59_TIPO_CAMBIO,SIGNO:P59_SIGNO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294773914818009)
,p_name=>'P59_MONEDA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294894511818010)
,p_name=>'P59_TIPO_CAMBIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'TIPO CAMBIO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294937304818011)
,p_name=>'P59_SIGNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'SIGNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295012323818012)
,p_name=>'P59_DESCUENTO_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'DESCUENTO 1 %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295131531818013)
,p_name=>'P59_DESCUENTO_2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'DESCUENTO 2 %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295249584818014)
,p_name=>'P59_USUARIO_REVISADO_MKT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295369974818015)
,p_name=>'P59_FECHA_REVISADO_MKT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295497712818016)
,p_name=>'P59_USUARIO_VERIFICACION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295583297818017)
,p_name=>'P59_FECHA_VERIFICACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295665588818018)
,p_name=>'P59_USUARIO_AUT_COMERCIAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295778040818019)
,p_name=>'P59_FECHA_AUT_COMERCIAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295882398818020)
,p_name=>'P59_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VERIFICADO;VERIFICADO,AUTORIZADO MKT;AUTORIZADOMKT,AUTORIZADO ADMINISTRACION;AUTORIZADOADM,AUTORIZADO COMERCIAL;AUTORIZADOCOM,CREADO;CREADO,ANULADO;RECHAZADO,CONFIRMADO DEPOSITO;CONFIRMADODEP,CONFIRMADO COMERCIAL;CONFIRMADO_COMERCIAL'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295906182818021)
,p_name=>'P59_FECHA_ALTA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296024995818022)
,p_name=>'P59_NRO_DESPACHO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'DESPACHO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296140293818023)
,p_name=>'P59_NRO_EMBARQUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'EMBARQUE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296299519818024)
,p_name=>'P59_OBSERVACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'OBSERVACION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296348847818025)
,p_name=>'P59_USUARIO_RECHAZO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296448637818026)
,p_name=>'P59_FECHA_RECHAZO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296540770818027)
,p_name=>'P59_USUARIO_AUT_ADMINISTRACION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296621864818028)
,p_name=>'P59_FECHA_AUT_ADMINISTRACION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296750529818029)
,p_name=>'P59_USUARIO_CONFIRMADO_DEPOSIT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296845102818030)
,p_name=>'P59_FECHA_CONFIRMADO_DEPOSITO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296916813818031)
,p_name=>'P59_USUARIO_CONFIRMADO_COMERCI'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48297080626818032)
,p_name=>'P59_FECHA_CONFIRMADO_COMERCIAL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48478476494391517)
,p_name=>'P59_P_NRO_PROMO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'Nro Promo'
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
 p_id=>wwv_flow_imp.id(48478593530391518)
,p_name=>'P59_FEC_DESDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(48478652868391519)
,p_name=>'P59_FEC_HASTA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(48546836949631601)
,p_name=>'P59_AUX_CONTROL_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48546943356631602)
,p_name=>'P59_AUX_MSJ_CONTROL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547024192631603)
,p_name=>'P59_SEQ_ID_EDITAR_PRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547134954631604)
,p_name=>'P59_SEQ_ID_ELIMINAR_ART'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547275207631605)
,p_name=>'P59_ACCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547396149631606)
,p_name=>'P59_SEQ_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49055109878350242)
,p_name=>'P59_A_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,cod_art_corto, TRIM(descripcion)descripcion  ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl( estado, ''S'' ) <> ''N'' ',
'and cod_rubro in(''PR'',''RE'')',
' order ',
'by cod_articulo,descripcion',
'',
''))
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
,p_attribute_06=>'3'
,p_attribute_08=>'800'
,p_attribute_09=>'400'
,p_attribute_10=>'COD_ART_CORTO:P59_A_COD_ART_CORTO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49588558943414410)
,p_name=>'P59_MOSTRAR_BTN_CONFIRMAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49589552898414420)
,p_name=>'P59_A_PRECIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_prompt=>'Precio'
,p_format_mask=>'999G999G999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(49589686253414421)
,p_name=>'P59_AUX_MSJ_CONTROL_ART'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50493686862541902)
,p_name=>'P59_SEQ_ID_EDITAR_ART'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50493750502541903)
,p_name=>'P59_SEQ_ID_ELIMINAR_PROMO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496180720541927)
,p_name=>'P59_A_COD_ART_CORTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496300752541929)
,p_name=>'P59_B_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496451336541930)
,p_name=>'P59_B_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496537601541931)
,p_name=>'P59_B_COD_ART_CORTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496647619541932)
,p_name=>'P59_B_COD_ARTICULO_PROMO1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496791061541933)
,p_name=>'P59_B_COD_ARTICULO_PROMO2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496827395541934)
,p_name=>'P59_B_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496938647541935)
,p_name=>'P59_B_COD_ARTICULO_MADRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Cod. Art. Madre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497068427541936)
,p_name=>'P59_B_PRECIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497127562541937)
,p_name=>'P59_B_DESC_ART'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497227444541938)
,p_name=>'P59_B_PRECIO_NETO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497308312541939)
,p_name=>'P59_B_COSTO_PROMOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497437499541940)
,p_name=>'P59_B_COSTO_PROMO_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497575398541941)
,p_name=>'P59_B_COSTO_PROMO_2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497730820541943)
,p_name=>'P59_B_COSTO_ART'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497824924541944)
,p_name=>'P59_B_PORC_MARGEN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497982116541945)
,p_name=>'P59_B_DESC_PROMO1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498055761541946)
,p_name=>'P59_B_DESC_PROMO2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498265884541948)
,p_name=>'P59_B_COSTO_TOTAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498385323541949)
,p_name=>'P59_B_UTIL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498400144541950)
,p_name=>'P59_B_UTILIDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529020666865601)
,p_name=>'P59_B_UTILIDAD2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529153362865602)
,p_name=>'P59_B_IVA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'IVA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529282956865603)
,p_name=>'P59_B_GRAVADA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Precio s/IVA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529321170865604)
,p_name=>'P59_B_PRECIO_NETO2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529406947865605)
,p_name=>'P59_B_PORC_MARGEN2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529591841865606)
,p_name=>'P59_B_UTIL2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529682204865607)
,p_name=>'P59_B_IND_INCLUIR_LISTADO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529771003865608)
,p_name=>'P59_B_COD_ART_CORTO_RELACION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529825775865609)
,p_name=>'P59_B_DESC_ART_RELACION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Articulo Relacionado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529975436865610)
,p_name=>'P59_B_PORC_MARGEN_MK'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51530077492865611)
,p_name=>'P59_B_PORC_MARGEN_MK2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51531498243865625)
,p_name=>'P59_AUX_PRECIO_CERO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51532669311865637)
,p_name=>'P59_AUX_CTROL_REPORTE_STMANPRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51533060541865641)
,p_name=>'P59_B_COD_MARCA_DES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'MARCA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(51533121068865642)
,p_name=>'P59_B_COD_CATEGORIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'CATEGORIA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'ORDER BY 1; '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(51533222078865643)
,p_name=>'P59_B_FECHA_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'FECHA DESDE'
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
 p_id=>wwv_flow_imp.id(51533376177865644)
,p_name=>'P59_B_FECHA_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'FECHA HASTA'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(51533410992865645)
,p_name=>'P59_B_DESC_MARCA_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51533584125865646)
,p_name=>'P59_B_DESC_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52912583480696423)
,p_name=>'P59_COD_ARTICULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,cod_art_corto, TRIM(descripcion)descripcion  ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl( estado, ''S'' ) <> ''N'' ',
'and cod_rubro in(''PR'',''RE'')',
' order ',
'by cod_articulo,descripcion',
'',
''))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52912737115696425)
,p_name=>'P59_B_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VERIFICADO;VERIFICADO,AUTORIZADO MKT;AUTORIZADOMKT,AUTORIZADO ADMINISTRACION;AUTORIZADOADM,AUTORIZADO COMERCIAL;AUTORIZADOCOM,CREADO;CREADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52913171957696429)
,p_name=>'P59_SEQ_ID_DETALLE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347166259791023)
,p_name=>'P59_B_COD_USUARIO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(59347289483791024)
,p_name=>'P59_B_USUARIO_VERIFICACION'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Verificacion'
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
 p_id=>wwv_flow_imp.id(59347325044791025)
,p_name=>'P59_B_USUARIO_REVISADO_MKT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Revisado MKT'
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
 p_id=>wwv_flow_imp.id(59347418943791026)
,p_name=>'P59_B_USUARIO_AUT_ADMIN'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Autorizado ADMIN'
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
 p_id=>wwv_flow_imp.id(59347561742791027)
,p_name=>'P59_B_FECHA_ALTA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha alta'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59347690030791028)
,p_name=>'P59_B_FECHA_VERIFICACION'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>unistr('Fecha Verificaci\00F3n')
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59347765252791029)
,p_name=>'P59_B_FECHA_USUARIO_REVISADO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha Revisado'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59347847438791030)
,p_name=>'P59_B_FECHA_USUARIO_AUT_ADMIN'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha Aut Admin'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59347924703791031)
,p_name=>'P59_B_USUARIO_AUT_COMERCIAL'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Autorizado Comercial'
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
 p_id=>wwv_flow_imp.id(59348042527791032)
,p_name=>'P59_B_USUARIO_CONFIRM_DEPO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Conf. Deposito'
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
 p_id=>wwv_flow_imp.id(59348127029791033)
,p_name=>'P59_B_USUARIO_CONFIRM_COMER'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Conf. Comercial'
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
 p_id=>wwv_flow_imp.id(59348251745791034)
,p_name=>'P59_B_USUARIO_RECHAZO'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Rechazado'
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
 p_id=>wwv_flow_imp.id(59348364405791035)
,p_name=>'P59_B_FECHA_AUT_COM'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha Aut Com'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59348414718791036)
,p_name=>'P59_B_FECHA_CONF_DEPO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha Conf Depo'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59348526739791037)
,p_name=>'P59_B_FECHA_CONF_COM'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha Conf Com'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59348677151791038)
,p_name=>'P59_B_FECHA_RECHAZO'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Fecha Rechazo'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(70412847810288617)
,p_name=>'P59_ESTADO_PROMO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VERIFICADO;VERIFICADO,AUTORIZADO MKT;AUTORIZADOMKT,AUTORIZADO ADMINISTRACION;AUTORIZADOADM,AUTORIZADO COMERCIAL;AUTORIZADOCOM,CREADO;CREADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75758535228816719)
,p_name=>'P59_NRO_PROMO_LINK'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968173815984625)
,p_name=>'P59_CONFIRMA_COMERCIAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968240658984626)
,p_name=>'P59_VERIFICACION_BRAND'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968354464984627)
,p_name=>'P59_CAMBIA_ESTADO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968407199984628)
,p_name=>'P59_AUTORIZA_MKT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968537195984629)
,p_name=>'P59_DERECHOS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968617414984630)
,p_name=>'P59_CODSISMENU'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968749506984631)
,p_name=>'P59_COD_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968818531984632)
,p_name=>'P59_NOM_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968915080984633)
,p_name=>'P59_NOM_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103969455391984638)
,p_name=>'P59_AUTORIZA_COMERCIAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109030479078414045)
,p_name=>'P59_ESTADO_AUX'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48548220775631615)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51533833081865649)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51531685933865627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103970421862984648)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C011 USUARIO,',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO',
'    INTO ',
'        :P59_B_COD_USUARIO,',
'        :P59_B_USUARIO_VERIFICACION,',
'        :P59_B_USUARIO_REVISADO_MKT,',
'        :P59_B_USUARIO_AUT_ADMIN,',
'        :P59_B_USUARIO_AUT_COMERCIAL,',
'        :P59_B_USUARIO_CONFIRM_DEPO,',
'        :P59_B_USUARIO_CONFIRM_COMER,        ',
'        :P59_B_USUARIO_RECHAZO,',
'        :P59_B_FECHA_ALTA,',
'        :P59_B_FECHA_VERIFICACION,',
'        :P59_B_FECHA_USUARIO_REVISADO,',
'        :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'        :P59_B_FECHA_AUT_COM,',
'        :P59_B_FECHA_CONF_DEPO,',
'        :P59_B_FECHA_CONF_COM,',
'        :P59_B_FECHA_RECHAZO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'   ',
'END;'))
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_REVISADO_MKT,P59_B_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_COMERCIAL,P59_B_USUARIO_CONFIRM_DEPO,P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_ALTA,P59_B_USUARIO_RECHAZO,P59_B_FECHA_VERIFICACION,P59_B_FECHA_USUARIO_REVIS'
||'ADO,P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_FECHA_AUT_COM,P59_B_FECHA_CONF_DEPO,P59_B_FECHA_CONF_COM,P59_B_FECHA_RECHAZO,P59_B_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108043813351228003)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028138846414022)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028492320414025)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028206400414023)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028305856414024)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48548407606631617)
,p_name=>'MOSTAR_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547800427631611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549819034631631)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P59_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P59_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;'))
,p_attribute_02=>'P59_AUX_CONTROL_REPORTE'
,p_attribute_03=>'P59_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48548624212631619)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF (:P59_P_NRO_PROMO IS NULL ',
'     AND :P59_FEC_DESDE IS NULL ',
'     AND :P59_FEC_HASTA IS NULL',
'     AND :P59_ESTADO_PROMO is null) THEN',
'     :P59_AUX_MSJ_CONTROL := ''INTRODUZCA UN VALOR'';',
' ELSE    ',
'    :P59_AUX_MSJ_CONTROL := null;',
'    BEGIN',
'      ',
'       FVMRGPRO.pr_crear_collection_cabecera(:P59_P_NRO_PROMO, :P59_FEC_DESDE, :P59_FEC_HASTA,:P59_COD_EMPRESA, :P59_ESTADO_PROMO);',
'',
'        :P59_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            :P59_AUX_MSJ_CONTROL := ''PARA LOS FILTROS INGRESADOS NO EXISTEN PROMOS'';',
'            APEX_DEBUG.ERROR(''ERROR EN PROCEDIMIENTO CREAR COLLECTION ''||SQLERRM);',
'            ',
'    END;',
' END IF;',
'',
''))
,p_attribute_02=>'P59_ESTADO_PROMO,P59_P_NRO_PROMO,P59_FEC_DESDE,P59_FEC_HASTA,P59_COD_EMPRESA'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59348884137791040)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO',
'    INTO ',
'        :P59_B_USUARIO_VERIFICACION,',
'        :P59_B_USUARIO_REVISADO_MKT,',
'        :P59_B_USUARIO_AUT_ADMIN,',
'        :P59_B_USUARIO_AUT_COMERCIAL,',
'        :P59_B_USUARIO_CONFIRM_DEPO,',
'        :P59_B_USUARIO_CONFIRM_COMER,        ',
'        :P59_B_USUARIO_RECHAZO,',
'        :P59_B_FECHA_ALTA,',
'        :P59_B_FECHA_VERIFICACION,',
'        :P59_B_FECHA_USUARIO_REVISADO,',
'        :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'        :P59_B_FECHA_AUT_COM,',
'        :P59_B_FECHA_CONF_DEPO,',
'        :P59_B_FECHA_CONF_COM,',
'        :P59_B_FECHA_RECHAZO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'   EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''NO SE ENCONTRARON ELEMENTOS''||SQLERRM);',
'   WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'END;'))
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_REVISADO_MKT,P59_B_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_COMERCIAL,P59_B_USUARIO_CONFIRM_DEPO,P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_ALTA,P59_B_USUARIO_RECHAZO,P59_B_FECHA_VERIFICACION,P59_B_FECHA_USUARIO_REVIS'
||'ADO,P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_FECHA_AUT_COM,P59_B_FECHA_CONF_DEPO,P59_B_FECHA_CONF_COM,P59_B_FECHA_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59349288778791044)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49735102170898044)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49587900352414404)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48548837843631621)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547904817631612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494884651541914)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_P_NRO_PROMO,P59_COD_MONEDA,P59_TIPO_CAMBIO,P59_SIGNO,P59_NRO_PROMO,P59_NRO_DESPACHO,P59_NRO_EMBARQUE,P59_OBSERVACION,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_B_FECHA_AUT_COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48548913521631622)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547570217631608)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549034121631623)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547435078631607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549114205631624)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48549247540631625)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547692547631609)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549359285631626)
,p_event_id=>wwv_flow_imp.id(48549247540631625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49053795594350228)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547435078631607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49053807922350229)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''CABECERA'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VERIFICACION_MARGENES'');',
':P59_AUX_MSJ_CONTROL := NULL;',
'IF :P59_FECHA IS NULL THEN',
'    :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR UNA FECHA'';',
'    ELSIF :P59_COD_MONEDA IS NULL THEN',
'            :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR UNA MONEDA'';',
'        ELSIF :P59_DESCUENTO_1 IS NULL THEN',
'        :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR EL DESCUENTO 1'';',
'            ELSIF :P59_DESCUENTO_2 IS NULL THEN',
'            :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR EL DESCUENTO 2'';',
'             ELSE',
'             :P59_AUX_MSJ_CONTROL := null;',
'                BEGIN',
'                 FVMRGPRO.pr_agregar_miembro_cabecera( ',
'                            PI_COD_EMPRESA => :P59_COD_EMPRESA ,',
'                            PI_COD_MONEDA  => :P59_COD_MONEDA,',
'                            PI_PORC_DTO  => :P59_DESCUENTO_1,',
'                            PI_PORC_DTO2  => :P59_DESCUENTO_2,',
'                            PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                            PI_FECHA  => :P59_FECHA,                             ',
'                            PI_USUARIO  => :P59_COD_USUARIO,',
'                            PI_NRO_DESPACHO => :P59_NRO_DESPACHO,',
'                            PI_NRO_EMBARQUE => :P59_NRO_EMBARQUE,',
'                            PI_ESTADO => :P59_ESTADO,',
'                            PI_OBSERVACION => :P59_OBSERVACION',
'           ) ;',
'  ',
'                 EXCEPTION',
'',
'                    WHEN OTHERS THEN',
'                        apex_debug.error(sqlerrm);',
'                END;',
'',
'END IF;'))
,p_attribute_02=>'P59_COD_EMPRESA,P59_B_FECHA_AUT_COM,P59_AUX_MSJ_CONTROL,P59_COD_MONEDA,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_B_COD_USUARIO,P59_SIGNO,P59_TIPO_CAMBIO,P59_NRO_DESPACHO,P59_NRO_EMBARQUE,P59_OBSERVACION,P59_FECHA'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL'
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
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49588368116414408)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT ',
'    C002 ',
'    INTO',
'    :P59_P_NRO_PROMO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    and seq_id = 1;',
'exception',
'  when others then',
'    apex_Debug.error(sqlerrm);',
'  apex_collection.create_or_truncate_collection(P_COLLECTION_NAME => ''VERIFICACION_MARGENES'');',
'  FVMRGPRO.pr_crear_collection(:P59_P_NRO_PROMO  ) ;',
'  ',
'end;'))
,p_attribute_02=>'P59_P_NRO_PROMO,P59_FEC_DESDE,P59_FEC_HASTA'
,p_attribute_03=>'P59_P_NRO_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49053929184350230)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P59_AUX_MSJ_CONTROL.',
''))
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49054634403350237)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'NUEVA PROMO CREADA'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49054595235350236)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494963596541915)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49054709213350238)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49588845105414413)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
' :P59_MOSTRAR_BTN_CONFIRMAR := 2;',
'end;'))
,p_attribute_03=>'P59_MOSTRAR_BTN_CONFIRMAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49588700219414412)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doShowHide();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912825771696426)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912918459696427)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49055313660350244)
,p_name=>'DA_CERRAR_REGION_ART'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055293214350243)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49055454668350245)
,p_event_id=>wwv_flow_imp.id(49055313660350244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49587697460414401)
,p_name=>'DA_ABRIR_CREAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055823801350249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70412492076288613)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_PRECIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49587715620414402)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49591882859414443)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055529981350246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49591969577414444)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055602523350247)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49588060474414405)
,p_name=>'DA_GUARDAR_ART'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055529981350246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50496047426541926)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select ',
'        C003, --COD_MONEDAA',
'        C006, --ESTADO,',
'        TO_DATE(C007),',
'        TO_NUMBER(C008), --TIPO',
'        TO_NUMBER(C027), --DESCUENTO_1, ',
'        TO_NUMBER(C028) --DESCUENTO_2,  ',
'        ',
'    into ',
'        :P59_COD_MONEDA,    ',
'        :P59_ESTADO,',
'        :P59_FECHA,',
'        :P59_TIPO_CAMBIO, --NUMBER',
'        :P59_DESCUENTO_1, -- NUMBER        ',
'        :P59_DESCUENTO_2 -- NUMBER        ',
'    ',
'    from APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'end;'))
,p_attribute_03=>'P59_COD_MONEDA,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_TIPO_CAMBIO,P59_B_FECHA_AUT_COM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589460986414419)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL_ART := NULL;',
'IF :P59_A_COD_ARTICULO IS NULL THEN',
'    :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UN ARTICULO'';',
'    ELSE',
'    declare',
'    vnro_promo number;',
'        BEGIN',
'begin',
'begin',
'    select C002        ',
'    into vnro_promo            ',
'    from APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'end;',
'end;',
'',
'       FVMRGPRO.pr_agregar_miembro_collection( ',
'                            PI_COD_ARTICULO => :P59_A_COD_ARTICULO,',
'                            PI_COD_ART_CORTO => :P59_A_COD_ART_CORTO,                            ',
'                            PI_NRO_PROMO => nvl(vnro_promo,:P59_P_NRO_PROMO),',
'                            PI_COD_EMPRESA => :P59_COD_EMPRESA ,',
'                            PI_COD_MONEDA  => :P59_COD_MONEDA,',
'                            PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                            PI_COD_USUARIO  => :P59_COD_USUARIO,',
'                            PI_NRO_DESPACHO => :P59_NRO_DESPACHO,',
'                            PI_DESCUENTO_1 => :P59_DESCUENTO_1, -- NUMBER        ',
'                            PI_DESCUENTO_2 => :P59_DESCUENTO_2, -- NUMBER        ',
'                            PI_OBSERVACION => :P59_OBSERVACION, ',
'                            PI_NRO_EMBARQUE => :P59_NRO_EMBARQUE,--NUMBER, ',
'                            PI_ESTADO => :P59_ESTADO  ,',
'                            PI_FECHA => :P59_FECHA                    ',
'        ) ;',
'',
'          ',
'        END;',
'',
'END IF;'))
,p_attribute_02=>'P59_AUX_MSJ_CONTROL_ART,P59_A_COD_ARTICULO,P59_A_PRECIO, P59_P_NRO_PROMO, P59_COD_EMPRESA , P59_COD_MONEDA, P59_B_COD_USUARIO P59_DESCUENTO_1,  P59_DESCUENTO_2,P59_A_COD_ART_CORTO,P59_TIPO_CAMBIO,P59_B_FECHA_AUT_COM'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL_ART,P59_AUX_PRECIO_CERO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589760465414422)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL_ART.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589801272414423)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589928625414424)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49588981082414414)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48548083313631613)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589006232414415)
,p_event_id=>wwv_flow_imp.id(49588981082414414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P59_MOSTRAR_BTN_CONFIRMAR := 1;'
,p_attribute_03=>'P59_MOSTRAR_BTN_CONFIRMAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589154332414416)
,p_event_id=>wwv_flow_imp.id(49588981082414414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doShowHide();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52913562532696433)
,p_event_id=>wwv_flow_imp.id(49588981082414414)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para confirmar'
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52913637070696434)
,p_event_id=>wwv_flow_imp.id(49588981082414414)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49592067117414445)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_EDITAR_ART'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494084031541906)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'         ',
'        c002,--cod_articulo,',
'        c003, --precio',
'        C020,',
'        c004, --descuento 1',
'        c009 --descuento 2',
'         ',
'    INTO',
'          ',
'        :P59_A_COD_ARTICULO,',
'        :P59_A_PRECIO,',
'        :P59_A_COD_ART_CORTO,',
'        :P59_DESCUENTO_1,',
'        :P59_DESCUENTO_2',
'         ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'    AND  SEQ_ID = :P59_SEQ_ID_EDITAR_ART;',
'',
'    SELECT',
'        c003, --COD MONEDA',
'        c008 --tipo cambio',
'    INTO',
'        :P59_COD_MONEDA,',
'        :P59_TIPO_CAMBIO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND  SEQ_ID = 1;',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_EDITAR_ART'
,p_attribute_03=>'P59_A_PRECIO,P59_A_COD_ARTICULO,P59_TIPO_CAMBIO,P59_COD_MONEDA,P59_A_COD_ART_CORTO,P59_COD_EMPRESA,P59_DESCUENTO_1,P59_DESCUENTO_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49592392625414448)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055529981350246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49592282211414447)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055602523350247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49592129616414446)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70412527582288614)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_PRECIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49592493037414449)
,p_name=>'DA_ELIMINAR_ART'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_ELIMINAR_ART'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494526195541911)
,p_event_id=>wwv_flow_imp.id(49592493037414449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494608849541912)
,p_event_id=>wwv_flow_imp.id(49592493037414449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRO.pr_borrar_miembro_collection(:P59_SEQ_ID_ELIMINAR_ART  ) ;',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_ELIMINAR_ART'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494752736541913)
,p_event_id=>wwv_flow_imp.id(49592493037414449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49735397976898046)
,p_name=>'DA_GUARDAR_EDITAR_ART'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055602523350247)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914620241696444)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL_ART := NULL;',
'IF :P59_A_PRECIO <= 0 THEN',
'    :P59_AUX_MSJ_CONTROL_ART := ''EL PRECIO DEBE SER MAYOR A CERO'';',
'    ELSE',
'        begin',
'        FVMRGPRO.pr_modificar_miembro_det(PI_SEQ_ID_EDITAR => :P59_SEQ_ID_EDITAR_ART,',
'                                PI_COD_ARTICULO => :P59_A_COD_ARTICULO, ',
'                                PI_COD_ART_CORTO => :P59_A_COD_ART_CORTO,',
'                                PI_PRECIO => :P59_A_PRECIO,',
'                                PI_COD_EMPRESA => :P59_COD_EMPRESA,',
'                                PI_COD_MONEDA => :P59_COD_MONEDA,                                ',
'                                PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                                PI_DESCUENTO_1 => :P59_DESCUENTO_1,',
'                                PI_DESCUENTO_2 => :P59_DESCUENTO_2,',
'                            PI_COD_USUARIO => :P59_COD_USUARIO );',
'',
'        end;',
'END IF;'))
,p_attribute_02=>'P59_A_COD_ART_CORTO,P59_COD_EMPRESA,P59_A_COD_ARTICULO,P59_A_PRECIO,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_B_COD_USUARIO,P59_TIPO_CAMBIO,P59_SEQ_ID_EDITAR_ART,P59_COD_MONEDA'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70412648496288615)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL_ART.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494253815541908)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494331687541909)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494432937541910)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO MODIFICADO CORRECTAMENTE'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50495264560541918)
,p_name=>'DA_ABRIR_EDITAR_PRO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_EDITAR_PRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51531100194865622)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT      ',
'        C002 NRO_PROMO,                ',
'        C003 COD_MONEDA,                     ',
'        C005 NRO_DESPACHO,',
'        C006 ESTADO,',
'        C007 FECHA,    ',
'        C008 TIPO_CAMBIO,                        ',
'        C009 OBSERVACION,',
'        C010 NRO_EMBARQUE,',
'        C027 DESCUENTO_1, ',
'        C028 DESCUENTO_2',
'',
'    into',
'    :P59_NRO_PROMO,',
'    :P59_COD_MONEDA,',
'    :P59_NRO_DESPACHO,',
'    :P59_ESTADO,',
'    :P59_FECHA,',
'    :P59_TIPO_CAMBIO,',
'    :P59_OBSERVACION,',
'    :P59_NRO_EMBARQUE,    ',
'    :P59_DESCUENTO_1,',
'    :P59_DESCUENTO_2',
'    ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = :P59_SEQ_ID_EDITAR_PRO;',
'',
'end;',
'',
':P59_ESTADO_AUX := :P59_ESTADO;'))
,p_attribute_02=>'P59_SEQ_ID_EDITAR_PRO'
,p_attribute_03=>'P59_ESTADO_AUX,P59_NRO_PROMO,P59_COD_MONEDA,P59_NRO_DESPACHO,P59_ESTADO,P59_FECHA,P59_OBSERVACION,P59_NRO_EMBARQUE,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_TIPO_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495329048541919)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547435078631607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495428268541920)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547570217631608)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495539941541921)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50495694231541922)
,p_name=>'DA_ELIMINAR_PROMO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_ELIMINAR_PROMO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495754138541923)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911873064696416)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRO.pr_borrar_miembro_cabecera(:P59_SEQ_ID_ELIMINAR_PROMO);',
'    EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_ELIMINAR_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495851153541924)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495971959541925)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911945234696417)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'ELIMINADO CORRECTAMENTE'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51530110682865612)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055823801350249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530592931865616)
,p_event_id=>wwv_flow_imp.id(51530110682865612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'        C001, --COD_EMPRESA',
'        C006, --ESTADO',
'        TO_NUMBER(C008), --TIPO_CAMBIO ',
'		TO_NUMBER(C027), --DESCUENTO1',
'        TO_NUMBER(C028) --DESCUENTO2					',
'							 ',
'    INTO ',
'        :P59_B_COD_EMPRESA,',
'        :P59_ESTADO,',
'        :P59_TIPO_CAMBIO,',
'        :P59_DESCUENTO_1,',
'        :P59_DESCUENTO_2',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME =''CABECERA''',
'    AND SEQ_ID = 1;',
'',
'END;',
'',
''))
,p_attribute_03=>'P59_B_COD_EMPRESA,P59_TIPO_CAMBIO,P59_DESCUENTO_1,P59_DESCUENTO_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530291079865613)
,p_event_id=>wwv_flow_imp.id(51530110682865612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--pre-insert',
' :P59_B_COD_EMPRESA := :P59_COD_EMPRESA;  ',
' :P59_B_NRO_PROMO := :P59_P_NRO_PROMO;',
' --WHEN-CREATED-RECORD Y POST-QUERY',
' FVMRGPRO.pr_agregar_detalle(PI_COD_EMPRESA => :P59_B_COD_EMPRESA,',
'                    PI_COD_ART_CORTO => :P59_B_COD_ART_CORTO,',
'                    PI_ESTADO => :P59_ESTADO,',
'                    PI_DESCUENTO_1 => :P59_DESCUENTO_1,',
'                    PI_DESCUENTO_2 => :P59_DESCUENTO_2,',
'                    PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                    PO_DESC_ART => :P59_B_DESC_ART,',
'                    PO_COD_ARTICULO_MADRE => :P59_B_COD_ARTICULO_MADRE,',
'                    PO_DESC_PROMO1 => :P59_B_DESC_PROMO1,',
'                    PO_PRECIO_NETO => :P59_B_PRECIO_NETO,',
'                    PO_UTILIDAD => :P59_B_UTILIDAD,',
'                    PO_PORC_MARGEN => :P59_B_PORC_MARGEN,',
'                    PO_PRECIO_NETO2 =>  :P59_B_PRECIO_NETO2,',
'                    PO_UTILIDAD2 => :P59_B_UTILIDAD2,                          ',
'                    PO_PORC_MARGEN2 =>  :P59_B_PORC_MARGEN2,',
'                    PO_PORC_MARGEN_MK => :P59_B_PORC_MARGEN_MK,',
'                    PO_PORC_MARGEN_MK2 =>  :P59_B_PORC_MARGEN_MK2,',
'                    PO_DESC_PROMO2 => :P59_B_DESC_PROMO2,',
'                    PO_DESC_ART_RELACION =>  :P59_B_DESC_ART_RELACION,',
'                    PO_COD_ART_CORTO_RELACION  =>  :P59_B_COD_ART_CORTO_RELACION,',
'                    PO_COSTO_ART => :P59_B_COSTO_ART,',
'                    PO_IND_INCLUIR_LISTADO => :P59_B_IND_INCLUIR_LISTADO );',
'END;'))
,p_attribute_02=>'P59_COD_EMPRESA,P59_P_NRO_PROMO,P59_B_COD_EMPRESA,P59_B_COD_ART_CORTO,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_TIPO_CAMBIO'
,p_attribute_03=>'P59_B_COD_EMPRESA,P59_B_NRO_PROMO,P59_B_COD_ART_CORTO, P59_DESCUENTO_1,P59_DESCUENTO_2,P59_TIPO_CAMBIO,P59_B_DESC_ART,P59_B_COD_ARTICULO_MADRE,P59_B_DESC_PROMO1,P59_B_PRECIO_NETO,P59_B_UTILIDAD,P59_B_PORC_MARGEN,P59_B_PRECIO_NETO2,P59_B_UTILIDAD2,P59'
||'_B_PORC_MARGEN2,P59_B_PORC_MARGEN_MK,P59_B_PORC_MARGEN_MK2,P59_B_DESC_PROMO2,P59_B_DESC_ART_RELACION,P59_B_COD_ART_CORTO_RELACION,P59_B_COSTO_ART,P59_B_IND_INCLUIR_LISTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51530669151865617)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547570217631608)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109030222983414043)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL := NULL;',
'BEGIN',
'FVMRGPRO.pr_validar_cambio_estado(PI_COD_USUARIO => :P59_B_COD_USUARIO,',
'                                PI_AUTORIZA_COMERCIAL=> :P59_AUTORIZA_COMERCIAL,',
'								PI_VERIFICACION_BRAND=> :P59_VERIFICACION_BRAND,',
'								PI_AUTORIZA_MKT=> :P59_AUTORIZA_MKT,',
'								PI_confirma_comercial=> :P59_CONFIRMA_COMERCIAL,',
'								PI_ESTADO=> :P59_ESTADO,',
'								PI_CAMBIA_ESTADO=> :P59_CAMBIA_ESTADO,',
'								PI_USUARIO_VERIFICACION=> :P59_B_USUARIO_VERIFICACION,',
'								PI_USUARIO_REVISADO_MKT=> :P59_B_USUARIO_REVISADO_MKT,',
'								PI_USUARIO_CONFIRMADO_DEPOSITO=> :P59_B_USUARIO_CONFIRM_DEPO,',
'								PI_nro_despacho=> :P59_NRO_DESPACHO,',
'								PI_USUARIO_AUT_COMERCIAL=> :P59_USUARIO_AUT_COMERCIAL,',
'								PO_ESTADO => :P59_ESTADO, ',
'								PO_FECHA_AUT_COMERCIAL => :P59_FECHA_AUT_COMERCIAL,',
'								PO_USUARIO_AUT_ADMINISTRACION => :P59_USUARIO_AUT_ADMINISTRACION,',
'								PO_FECHA_AUT_ADMINISTRACION => :P59_FECHA_AUT_ADMINISTRACION,								 ',
'								PO_USUARIO_REVISADO_MKT => :P59_USUARIO_REVISADO_MKT,',
'								PO_FECHA_REVISADO_MKT => :P59_FECHA_REVISADO_MKT,',
'								PO_USUARIO_VERIFICACION => :P59_USUARIO_VERIFICACION,',
'								PO_FECHA_VERIFICACION => :P59_FECHA_VERIFICACION,',
'								PO_USUARIO_RECHAZO => :P59_USUARIO_RECHAZO,',
'								PO_FECHA_RECHAZO => :P59_B_FECHA_RECHAZO,',
'								PO_USUARIO_CONFIRMADO_COMERCIA => :P59_USUARIO_CONFIRMADO_COMERCI,',
'								PO_FECHA_CONFIRMADO_COMERCIAL => :P59_FECHA_CONFIRMADO_COMERCIAL,',
'                                PO_USUARIO_AUT_COMERCIAL  => :P59_USUARIO_AUT_COMERCIAL,',
'                                PO_MENSAJE => :P59_AUX_MSJ_CONTROL);',
'                    IF(:P59_AUX_MSJ_CONTROL IS NOT NULL)THEN',
'                        :P59_ESTADO := :P59_ESTADO_AUX||'' DA_GUARDAR_EDITAR'';',
'                    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P59_AUTORIZA_COMERCIAL,P59_VERIFICACION_BRAND,P59_AUTORIZA_MKT,P59_CONFIRMA_COMERCIAL,P59_ESTADO, P59_CAMBIA_ESTADO,P59_USUARIO_VERIFICACION,P59_USUARIO_REVISADO_MKT,P59_USUARIO_CONFIRMADO_DEPOSIT, P59_NRO_DESPACHO,P59_ESTADO_AUX,P59_COD_USUARIO,P59_'
||'B_USUARIO_VERIFICACION'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL,P59_USUARIO_AUT_COMERCIAL,P59_ESTADO,P59_FECHA_AUT_COMERCIAL,P59_USUARIO_AUT_ADMINISTRACION,P59_FECHA_AUT_ADMINISTRACION,P59_USUARIO_REVISADO_MKT,P59_FECHA_REVISADO_MKT,P59_USUARIO_VERIFICACION,P59_FECHA_VERIFICACION,P59_USUARIO_R'
||'ECHAZO,P59_B_FECHA_RECHAZO,P59_USUARIO_CONFIRMADO_COMERCI,P59_FECHA_CONFIRMADO_COMERCIAL,P59_USUARIO_AUT_COMERCIAL'
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
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109030355185414044)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530789257865618)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL := null;',
'if  :P59_ESTADO =''AUTORIZADOCOM'' and  :P59_B_USUARIO_VERIFICACION is null then',
'	:P59_AUX_MSJ_CONTROL :='' Debe pasar por el estado de Verificado antes de pasar a Autorizado Comercial... '';',
' else',
'   ',
'',
'    declare ',
'        v_descuento_1_col number;',
'        v_descuento_2_col number;',
'        ',
'    BEGIN',
'          select',
'           c027,',
'           C028',
'           INTO ',
'           V_DESCUENTO_1_COL,',
'           V_DESCUENTO_2_COL',
'           FROM APEX_COLLECTIONS',
'           WHERE COLLECTION_NAME = ''CABECERA''',
'           AND SEQ_ID = 1;',
'          ',
'    FVMRGPRO.pr_modificar_promo(PI_SEQ_ID_EDITAR => :P59_SEQ_ID_EDITAR_PRO ,',
'                                PI_NRO_PROMO => :P59_NRO_PROMO,',
'                                PI_COD_EMPRESA => :P59_COD_EMPRESA ,',
'                                PI_COD_MONEDA  => :P59_COD_MONEDA,',
'                                PI_PORC_DTO => :P59_DESCUENTO_1,',
'                                PI_PORC_DTO2  => :P59_DESCUENTO_2,',
'                                PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                                PI_FECHA => :P59_FECHA,                            ',
'                                PI_COD_USUARIO  => :P59_COD_USUARIO,',
'                                PI_NRO_DESPACHO => :P59_NRO_DESPACHO,',
'                                PI_NRO_EMBARQUE => :P59_NRO_EMBARQUE,',
'                                PI_ESTADO => :P59_ESTADO,',
'                                PI_OBSERVACION => :P59_OBSERVACION );',
'          IF(V_DESCUENTO_1_COL <> :P59_DESCUENTO_1 OR V_DESCUENTO_2_COL <> :P59_DESCUENTO_2) THEN',
'                FVMRGPRO.pr_modificar_todos_los_reg(:P59_DESCUENTO_1, :P59_DESCUENTO_2,:P59_TIPO_CAMBIO);',
'           END IF;',
'',
'    END;',
'end if;'))
,p_attribute_02=>'P59_SEQ_ID_EDITAR_PRO ,P59_NRO_PROMO,P59_COD_MONEDA,P59_NRO_DESPACHO,P59_ESTADO,P59_FECHA,P59_OBSERVACION,P59_NRO_EMBARQUE,P59_DESCUENTO_1,P59_DESCUENTO_2,P59_TIPO_CAMBIO,P59_B_COD_USUARIO,P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_VERIFICACION'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530871103865619)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51531367169865624)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108043779099228002)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO',
'    INTO ',
'        :P59_B_USUARIO_VERIFICACION,',
'        :P59_B_USUARIO_REVISADO_MKT,',
'        :P59_B_USUARIO_AUT_ADMIN,',
'        :P59_B_USUARIO_AUT_COMERCIAL,',
'        :P59_B_USUARIO_CONFIRM_DEPO,',
'        :P59_B_USUARIO_CONFIRM_COMER,        ',
'        :P59_B_USUARIO_RECHAZO,',
'        :P59_B_FECHA_ALTA,',
'        :P59_B_FECHA_VERIFICACION,',
'        :P59_B_FECHA_USUARIO_REVISADO,',
'        :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'        :P59_B_FECHA_AUT_COM,',
'        :P59_B_FECHA_CONF_DEPO,',
'        :P59_B_FECHA_CONF_COM,',
'        :P59_B_FECHA_RECHAZO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'   ',
'END;'))
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_REVISADO_MKT,P59_B_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_COMERCIAL,P59_B_USUARIO_CONFIRM_DEPO,P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_ALTA,P59_B_USUARIO_RECHAZO,P59_B_FECHA_VERIFICACION,P59_B_FECHA_USUARIO_REVIS'
||'ADO,P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_FECHA_AUT_COM,P59_B_FECHA_CONF_DEPO,P59_B_FECHA_CONF_COM,P59_B_FECHA_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530950957865620)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51531000662865621)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO MODIFICADO CORRECTAMENTE'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51532264105865633)
,p_name=>'EJECUTAR_REPORTE'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51532176243865632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912326598696421)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532827635865639)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P59_AUX_CTROL_REPORTE_STMANPRO IS NULL THEN',
'        :P59_AUX_CTROL_REPORTE_STMANPRO := ''EJECUTAR'';',
'    END IF;',
'END;'))
,p_attribute_03=>'P59_AUX_CTROL_REPORTE_STMANPRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532325818865634)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054451051350235)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CTROL_REPORTE_STMANPRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532412555865635)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CTROL_REPORTE_STMANPRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532579455865636)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51531685933865627)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CTROL_REPORTE_STMANPRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52911554190696413)
,p_name=>'DA_MOSTRAR_REPORTE'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51533735802865648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911600366696414)
,p_event_id=>wwv_flow_imp.id(52911554190696413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51533943015865650)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911733006696415)
,p_event_id=>wwv_flow_imp.id(52911554190696413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51533943015865650)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52912130732696419)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055823801350249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912273023696420)
,p_event_id=>wwv_flow_imp.id(52912130732696419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_COD_ARTICULO,P59_A_PRECIO,P59_A_COD_ART_CORTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52913264233696430)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52913376588696431)
,p_event_id=>wwv_flow_imp.id(52913264233696430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    select ',
'         ROUND(NVL(C003,0)/11) IVA, ',
'         ROUND(NVL(C003,0)/1.1) GRAVADA,',
'         c039 COD_ARTICULO_MADRE,       ',
'         C020 COD_ART_CORTO',
'    into',
'        :P59_B_IVA,',
'        :P59_B_GRAVADA,',
'        :P59_B_COD_ARTICULO_MADRE,        ',
'        :P59_B_DESC_ART_RELACION',
'',
'         ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'    AND SEQ_ID = :P59_SEQ_ID_DETALLE;',
'  ',
' exception',
'	when others then',
'    apex_debug.error(sqlerrm);',
'    apex_debug.error(''ERROR EN MOSTRAR DETALLE '');',
'',
'',
'',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_DETALLE'
,p_attribute_03=>'P59_B_COD_ARTICULO_MADRE,P59_B_IVA,P59_B_GRAVADA,P59_B_DESC_ART_RELACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52913988452696437)
,p_name=>'DA_LIMPIAR_FILTROS'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52913864917696436)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914034959696438)
,p_event_id=>wwv_flow_imp.id(52913988452696437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_B_COD_MARCA_DES,P59_B_COD_CATEGORIA,P59_B_FECHA_DESDE,P59_B_FECHA_HASTA,P59_B_DESC_MARCA_DES,P59_B_DESC_CATEGORIA,P59_COD_ARTICULO,P59_B_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52914197413696439)
,p_name=>'DA_VOLVER'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51533612204865647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914263304696440)
,p_event_id=>wwv_flow_imp.id(52914197413696439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51531685933865627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914302655696441)
,p_event_id=>wwv_flow_imp.id(52914197413696439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054451051350235)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914453398696442)
,p_event_id=>wwv_flow_imp.id(52914197413696439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52915117938696449)
,p_name=>'DA_CHECK'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52915234729696450)
,p_event_id=>wwv_flow_imp.id(52915117938696449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FVMRGPRO.PR_CHECK(P_SEQ_ID => :P59_SEQ_ID,',
'                  P_ACCION => :P59_ACCION,',
'                  P_COLECCION => ''VERIFICACION_MARGENES'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P59_SEQ_ID,P59_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59349079596791042)
,p_name=>'DA_LIMPIAR_CAB'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59348978367791041)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59349184604791043)
,p_event_id=>wwv_flow_imp.id(59349079596791042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_P_NRO_PROMO,P59_FEC_DESDE,P59_FEC_HASTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75758664425816720)
,p_name=>'DA_MOSTRAR_ART'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_NRO_PROMO_LINK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758773786816721)
,p_event_id=>wwv_flow_imp.id(75758664425816720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    FVMRGPRO.pr_crear_collection(:P59_NRO_PROMO_LINK ) ;',
'END;'))
,p_attribute_02=>'P59_NRO_PROMO_LINK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48548765183631620)
,p_event_id=>wwv_flow_imp.id(75758664425816720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75758811424816722)
,p_name=>'DA_LIMPIAR_DET'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547800427631611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758974086816723)
,p_event_id=>wwv_flow_imp.id(75758811424816722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.create_or_truncate_collection(P_COLLECTION_NAME => ''VERIFICACION_MARGENES'');    ',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759051778816724)
,p_event_id=>wwv_flow_imp.id(75758811424816722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103969711567984641)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_TIPO_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103969859037984642)
,p_event_id=>wwv_flow_imp.id(103969711567984641)
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
 p_id=>wwv_flow_imp.id(109028533278414026)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028790398414028)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028823456414029)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028916445414030)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109029094954414031)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107240630177845216)
,p_name=>'DA_EVALUAR_ESTADO'
,p_event_sequence=>300
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107240761311845217)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107240825421845218)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107240901250845219)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107241007319845220)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52913728233696435)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVMRGPRO.pr_confirmar_accion( :P59_COD_USUARIO);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al guardar los datos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103968038193984624)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'pr_limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P59_P_NRO_PROMO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45804860822056644)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_COD_MODULO := NVL(:P_COD_MODULO,''FV'');',
':P59_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
':P59_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P59_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
':P59_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P59_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P59_COD_FORMA:=''FVMRGPRO'';',
'',
' :P59_VERIFICACION_BRAND := busca_permiso( :P59_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                           ''VERIFICACION_BRAND'' );      ',
'                                               ',
':P59_AUTORIZA_MKT := busca_permiso( :P59_COD_EMPRESA,',
'                                   :P59_COD_FORMA,',
'                                   :P59_COD_USUARIO,',
'                                               ''AUTORIZA_MKT'' );  ',
':P59_AUTORIZA_COMERCIAL := busca_permiso( :P59_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                               ''AUTORIZA_COMERCIAL'' ); ',
'  :P59_CAMBIA_ESTADO := busca_permiso( :P59_COD_EMPRESA,',
'                                               :P59_COD_FORMA,',
'                                               :P59_COD_USUARIO,',
'                                               ''CAMBIA_ESTADO'' );    ',
'',
':P59_CONFIRMA_COMERCIAL := busca_permiso(:P59_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                               ''CONFIRMA_COMERCIAL'' ); ',
':P59_AUX_PRECIO_CERO := NULL;',
':P59_MOSTRAR_BTN_CONFIRMAR := 0;',
':P59_AUX_CONTROL_REPORTE := NULL;',
':P59_AUX_CTROL_REPORTE_STMANPRO := NULL;',
'',
'if (:P59_P_NRO_PROMO IS NOT NULL)THEN   ',
'    :P59_NRO_PROMO_LINK := :P59_P_NRO_PROMO ;        ',
'',
'    FVMRGPRO.pr_crear_collection_cabecera(PI_NRO_PROMO => :P59_P_NRO_PROMO,',
'                                          PI_COD_EMPRESA => :P59_COD_EMPRESA,',
'                                          PO_ESTADO => :P59_ESTADO);',
'',
'    FVMRGPRO.pr_crear_collection(:P59_P_NRO_PROMO) ;',
'ELSE',
'    --:P59_NRO_PROMO_LINK := null;',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''CABECERA'');',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''VERIFICACION_MARGENES'');',
'    :P59_FECHA  := sysdate;',
'    :P59_COD_MONEDA  := ''1'';',
'    :P59_DESCUENTO_2 := 12.7;',
'    :P59_DESCUENTO_1 := 10;',
'    :P59_ESTADO :=''CREADO'';',
'    BEGIN',
'        select descripcion ,siglas',
'          into :P59_MONEDA , :P59_SIGNO ',
'          from monedas',
'         where cod_moneda = :P59_COD_MONEDA;',
'      EXCEPTION ',
'        when others then',
'          :P59_MONEDA := NULL; ',
'      END;',
'    begin',
'    	select max(nro_promo)+1',
'        into :P59_NRO_PROMO',
'        from fv_margen_cab',
'        where cod_empresa= :P59_COD_EMPRESA;',
'     exception',
'    	when others then',
'    	    null;   ',
'     end;',
'        apex_collection.add_member(',
'            p_collection_name => ''CABECERA'',',
'            P_C001 => :P59_COD_EMPRESA ,--COD_EMPRESA,',
'            P_C002 => NVL(:P59_NRO_PROMO,0),                     ',
'            P_C003 => :P59_COD_MONEDA,',
'            P_C004 => :P59_MONEDA,',
'            P_C005 => :P59_NRO_DESPACHO,',
'            P_C006 => :P59_ESTADO,',
'            P_C007 => :P59_FECHA,',
'            P_C008 => :P59_TIPO_CAMBIO,',
'            P_C009 => :P59_OBSERVACION,',
'            P_C010 => :P59_NRO_EMBARQUE,',
'            P_C011 => :P59_COD_USUARIO,  ',
'            P_C019 => SYSDATE,',
'            P_C027 => :P59_DESCUENTO_1, ',
'            P_C028 => :P59_DESCUENTO_2, ',
'            P_c030 => ''A'',',
'            P_C031 => :P59_SIGNO  );',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
