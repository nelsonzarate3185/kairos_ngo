prompt --application/pages/page_00403
begin
--   Manifest
--     PAGE: 00403
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
 p_id=>403
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Contacto del Usuario'
,p_alias=>'CONTACTO-DEL-USUARIO'
,p_page_mode=>'MODAL'
,p_step_title=>'Contacto del Usuario'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'#body{overflow: hidden;}'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230816113724'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116056119599387805)
,p_plug_name=>'Tarjeta de Contacto'
,p_region_name=>'TC'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--accent1:t-Region--textContent:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'VAPELLIDOS VARCHAR2(200):= ''Trinidad Galeano'';',
'VNOMBRES VARCHAR2(200):= ''Elias'';',
'VEMPRESA VARCHAR2(200) := ''CPH S.A'';',
'VCARGO VARCHAR2(200) := ''Analista Desarrollador''; ',
'VDIRECCION VARCHAR2(200) := ''Central - Asuncion'';',
'VTELEFONO VARCHAR2(200) := ''+595984766870'';',
'VEMAIL VARCHAR2(200) := ''elias.trinidad@ngosaeca.com.py'';',
'VPAGINAWEB VARCHAR2(200):= ''ngosaeca.com.py'';',
'vwhatsapp VARCHAR2(200):= ''https://wa.me/595982700313'';',
'/*VAPELLIDO VARCHAR2(200);*/',
'',
'BEGIN',
'/*VAPELLIDOS VARCHAR2(200):= ''Trinidad Galeano'';',
'VNOMBRES VARCHAR2(200):= ''Elias'';',
'VEMPRESA VARCHAR2(200) := ''CPH S.A'';',
'VCARGO VARCHAR2(200) := ''Analista Desarrollador''; ',
'VDIRECCION VARCHAR2(200) := ''Central - Asuncion'';',
'VTELEFONO VARCHAR2(200) := ''+595984766870'';',
'VEMAIL VARCHAR2(200) := ''elias.trinidad@ngosaeca.com.py'';',
'VPAGINAWEB VARCHAR2(200):= ''ngosaeca.com.py'';',
'*/',
'',
'SELECT E.NOMBRE VNOMBRE,',
'       E.APELLIDO VAPELLIDO,',
'       EMP.DESCRIPCION VEMPRESA,',
'       E.CARGO VCARGO,',
'       E.DIRECCION VDIRECCION,',
'       E.TELEFONO VTELEFONO,',
'       E.EMAIL VEMAIL,',
'       EMP.PAGINA_WEB VPAGINAWEB, ''https%3A%2F%2Fwa.me%2F''||e.whatsapp',
'  INTO VNOMBRES,',
'       VAPELLIDOS,',
'       VEMPRESA,',
'       VCARGO,',
'       VDIRECCION,',
'       VTELEFONO,',
'       VEMAIL,',
'       VPAGINAWEB,vwhatsapp',
'  FROM V_EMPLEADOS E,',
'       EMPRESAS EMP,',
'       USUARIOS U ',
' WHERE EMP.COD_EMPRESA = E.COD_EMPRESA',
'   AND E.COD_PERSONA   = U.COD_PERSONA ',
'   AND U.COD_USUARIO   = :APP_USER ;',
'   ',
'   ',
'   ',
'',
'   --out_out(''https://chart.googleapis.com/chart?cht=qr&chl=BEGIN%3AVCARD%0AVERSION%3A3.0%0AN%3A''||VAPELLIDOS||''%3B''||VNOMBRES||''%20%0AFN%3A''||VNOMBRES||''%20%20''||VAPELLIDOS||''%0AORG%3A''||VEMPRESA||''%0ATITLE%3A''||VCARGO||''%0AADR%3A%3B%3B''||VDIRECCION'
||'||''%0ATEL%3BWORK%3BVOICE%3A%0ATEL%3BCELL%3A''||VTELEFONO||''%0ATEL%3BFAX%3A%0AEMAIL%3BWORK%3BINTERNET%3A''||VEMAIL||''%0AURL%3A''||VPAGINAWEB||''%0AURL%3A''||vwhatsapp||''%0AEND%3AVCARD&chs=380x380&choe=UTF-8&chld=L|2'');',
'  ',
'htp.p(''<center><pre><a href="https://www.qr-code-generator.com"  style="cursor:default"></a>',
'<img src="https://chart.googleapis.com/chart?cht=qr&chl=BEGIN%3AVCARD%0AVERSION%3A3.0%0AN%3A''||VAPELLIDOS||''%3B''||VNOMBRES||''%20%0AFN%3A''||VNOMBRES||''%20%20''||VAPELLIDOS||''%0AORG%3A''||VEMPRESA||''%0ATITLE%3A''||VCARGO||''%0AADR%3A%3B%3B''||VDIRECCION||''%'
||'0ATEL%3BWORK%3BVOICE%3A%0ATEL%3BCELL%3A''||VTELEFONO||''%0ATEL%3BFAX%3A%0AEMAIL%3BWORK%3BINTERNET%3A''||VEMAIL||''%0AURL%3A''||VPAGINAWEB||''%0AURL%3A''||vwhatsapp||''%0AEND%3AVCARD&chs=380x380&choe=UTF-8&chld=L|2"></a>'');',
'END ;',
'',
'',
'',
'',
'',
'',
'       '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.NOMBRE VNOMBRE,',
'       E.APELLIDO VAPELLIDO,',
'       --EMP.DESCRIPCION VEMPRESA,',
'       E.CARGO VCARGO,',
'       E.DIRECCION VDIRECCION,',
'       CASE WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 10 THEN',
'            ''+595''||TO_NUMBER(REPLACE(REPLACE(E.TELEFONO,''.''),'' ''))',
'            WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 12 THEN',
'              ''+''||REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'            ELSE',
'                REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'       END VTELEFONO,',
'       E.EMAIL VEMAIL',
'       --EMP.PAGINA_WEB VPAGINAWEB',
'       ',
'  FROM V_EMPLEADOS E,',
'       EMPRESAS EMP,',
'       USUARIOS U ',
' WHERE EMP.COD_EMPRESA = E.COD_EMPRESA',
'   AND E.COD_PERSONA   = U.COD_PERSONA ',
'   AND U.COD_USUARIO   = :APP_USER'))
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(116056434306387808)
,p_name=>'Datos'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--hiddenOverflow'
,p_component_template_options=>'u-colors:t-BadgeList--small:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_01'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.NOMBRE VNOMBRE,',
'       E.APELLIDO VAPELLIDO,',
'       --EMP.DESCRIPCION VEMPRESA,',
'       E.CARGO VCARGO,',
'       E.DIRECCION VDIRECCION,',
'       CASE WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 10 THEN',
'            ''+595''||TO_NUMBER(REPLACE(REPLACE(E.TELEFONO,''.''),'' ''))',
'            WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 12 THEN',
'              ''+''||REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'            ELSE',
'                REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'       END VTELEFONO,',
'       E.EMAIL VEMAIL',
'       --EMP.PAGINA_WEB VPAGINAWEB',
'       ',
'  FROM V_EMPLEADOS E,',
'       EMPRESAS EMP,',
'       USUARIOS U ',
' WHERE EMP.COD_EMPRESA = E.COD_EMPRESA',
'   AND E.COD_PERSONA   = U.COD_PERSONA ',
'   AND U.COD_USUARIO   = :APP_USER '))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.NOMBRE VNOMBRE,',
'       E.APELLIDO VAPELLIDO,',
'       --EMP.DESCRIPCION VEMPRESA,',
'       E.CARGO VCARGO,',
'       E.DIRECCION VDIRECCION,',
'       CASE WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 10 THEN',
'            ''+595''||TO_NUMBER(REPLACE(REPLACE(E.TELEFONO,''.''),'' ''))',
'            WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 12 THEN',
'              ''+''||REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'            ELSE',
'                REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'       END VTELEFONO,',
'       E.EMAIL VEMAIL',
'       --EMP.PAGINA_WEB VPAGINAWEB',
'       ',
'  FROM V_EMPLEADOS E,',
'       EMPRESAS EMP,',
'       USUARIOS U ',
' WHERE EMP.COD_EMPRESA = E.COD_EMPRESA',
'   AND E.COD_PERSONA   = U.COD_PERSONA ',
'   AND U.COD_USUARIO   = :APP_USER'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40137194923263664)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116056516873387809)
,p_query_column_id=>1
,p_column_alias=>'VNOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre(s)'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116056699310387810)
,p_query_column_id=>2
,p_column_alias=>'VAPELLIDO'
,p_column_display_sequence=>20
,p_column_heading=>'Apellido(s)'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116056792925387811)
,p_query_column_id=>3
,p_column_alias=>'VCARGO'
,p_column_display_sequence=>30
,p_column_heading=>'Cargo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116056895953387812)
,p_query_column_id=>4
,p_column_alias=>'VDIRECCION'
,p_column_display_sequence=>40
,p_column_heading=>unistr('Direcci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116056973885387813)
,p_query_column_id=>5
,p_column_alias=>'VTELEFONO'
,p_column_display_sequence=>50
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116057022669387814)
,p_query_column_id=>6
,p_column_alias=>'VEMAIL'
,p_column_display_sequence=>60
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169358542573455456)
,p_plug_name=>unistr('No se ha encontrado el C\00F3digo de Empleado')
,p_region_template_options=>'t-Alert--colorBG:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(40093179053263652)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.NOMBRE VNOMBRE,',
'       E.APELLIDO VAPELLIDO,',
'       --EMP.DESCRIPCION VEMPRESA,',
'       E.CARGO VCARGO,',
'       E.DIRECCION VDIRECCION,',
'       CASE WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 10 THEN',
'            ''+595''||TO_NUMBER(REPLACE(REPLACE(E.TELEFONO,''.''),'' ''))',
'            WHEN LENGTH(REPLACE(REPLACE(E.TELEFONO,''.''),'' '')) = 12 THEN',
'              ''+''||REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'            ELSE',
'                REPLACE(REPLACE(E.TELEFONO,''.''),'' '')',
'       END VTELEFONO,',
'       E.EMAIL VEMAIL',
'       --EMP.PAGINA_WEB VPAGINAWEB',
'       ',
'  FROM V_EMPLEADOS E,',
'       EMPRESAS EMP,',
'       USUARIOS U ',
' WHERE EMP.COD_EMPRESA = E.COD_EMPRESA',
'   AND E.COD_PERSONA   = U.COD_PERSONA ',
'   AND U.COD_USUARIO   = :APP_USER'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
