prompt --application/pages/page_00340
begin
--   Manifest
--     PAGE: 00340
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
 p_id=>340
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'PRUEBA DRIVE'
,p_alias=>'PRUEBA-DRIVE'
,p_step_title=>'PRUEBA DRIVE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230321101311'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85581997754170138)
,p_plug_name=>'AGREGAR IMAGENES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93769435922234312)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85582364352170142)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85581997754170138)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Guardar'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85582097394170139)
,p_name=>'P340_IMAGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85581997754170138)
,p_prompt=>'Nuevo'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85582119608170140)
,p_name=>'P340_ENLACE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85581997754170138)
,p_prompt=>'Enlace'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85582238225170141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_PRC.KADEYEMIAPEX.SAVETOGOOGLEDRIVE'
,p_process_name=>'Guardar archivo en Google Drive'
,p_attribute_01=>'1//04WxNqMZ6y2_kCgYIARAAGAQSNwF-L9IrMBMEx00vpHiZ-W0GfAbq80-r-WdR3oLBNFLntmhLa-xtwn1zfkRfxjarIMwaVMVwPZE'
,p_attribute_02=>'318246104286-gm2hctnbtojbsnv0bpb6tmn1l7fs99fs.apps.googleusercontent.com'
,p_attribute_03=>'dwgL0cpBP5HhoaDI65-CIZnp'
,p_attribute_04=>'AIzaSyBCqLrj0qUk6By1ik2nO1JmBE0cKUdJK24'
,p_attribute_05=>'reader'
,p_attribute_06=>'anyone'
,p_attribute_09=>'P340_IMAGEN'
,p_attribute_10=>'P340_ENLACE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
