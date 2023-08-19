prompt --application/pages/page_00589
begin
--   Manifest
--     PAGE: 00589
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
 p_id=>589
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VERIFICA_CLIENTE'
,p_alias=>'VERIFICA-CLIENTE'
,p_step_title=>'VERIFICA_CLIENTE'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-items {',
'    margin-top: 10px;',
'}',
'',
'',
'.t-Body-mainContent, .t-Footer, .t-Header',
'                    { background-color:  #001b3f;',
'                    background-image:  linear-gradient(15deg, #0f4667 0%, #2a6973 150%)  !important;',
'            ',
'                    }',
'                    ',
'.t-Header-branding, #floating-menu { visibility: hidden;}',
'',
'',
'#DATOS {',
'        background-color:  darkblue;',
'        border-color: #FFED00 !important; ',
'        /*  position: fixed;',
'      top: 40%;',
'        left: 50%;',
'        transform: translate(-50%, -50%);',
'        height: 45%; ',
'        width: 60%;      */',
'',
'        border-radius: 0.5rem; ',
'        box-shadow: 0px 0px 30px 1px #9499ac; ',
'} ',
' .t-Form-fieldContainer--stacked .t-Form-labelContainer {',
'     text-align: center!important; }',
'',
' #P589_RUC_LABEL{',
'     font-size: 25px;   ',
'     margin-bottom: 2%;',
'     font-family: ''Oswald'', sans-serif;',
'     color: darkblue;',
' }',
'',
'#P589_NOMBRE_LABEL ',
'{ ',
'     font-size: 25px;   ',
'     margin-bottom: 1%;',
'     font-family: ''Oswald'', sans-serif;',
'     color: darkblue; ',
'',
'}',
'',
'.t-Login-region { ',
'        margin-left: 40%;;',
'        }',
' ',
' #btn1{',
'            border: 1px solid #487ab8; ',
'            color:darkblue ;  ',
'            font-size:  30px;',
'            height: 60px;       ',
'            border-radius: 0.5rem;',
'            background-color: yellow;',
'            background-image: linear-gradient(0deg, #f0e79a 10%, #FFED00 100%, YELLOW 30%);',
'            margin-left: 43%;',
' ',
'    }',
'',
' #btn1, #btn2, #btn3, #btn4, #btn5, #btn6, #btn7 {',
'            border: 1px solid #487ab8; ',
'            color: #001d3d ;  ',
'            font-size:  30px;',
'            height: 60px;       ',
'            border-radius: 0.5rem;',
'            background-color: #FFED00;',
'            background-image: linear-gradient(0deg, #f0e79a 10%, #FFED00 100%, YELLOW 30%); ',
'            ',
' ',
'    }',
'',
' #BTN_NOMBRE{',
'     ',
'            background-color: #c4ffb8; ',
'            color: #ff0000 ;  ',
'            font-size:  30px;',
'            height: 60px;       ',
'            border-radius: 0.5rem;',
'    }',
'',
'',
'',
'.t-Login-body .t-Form-inputContainer{padding: 0%; margin: 0%;}',
'',
' #P589_RUC{',
'     font-weight: bold;',
'     font-family:  ''Helvetica Neue'', Helvetica, Arial;',
'     border-radius: 1rem;  ',
'     font-size: 100px;   ',
'     height: 110px;  ',
'',
' }',
'',
'',
'#P589_NOMBRE ',
'{    border-radius: 1rem;',
'     color: #1b1b1b;',
'     font-size: 40px;  ',
'     font-weight: bold;',
'     width:100%;',
'     height: 60px; ',
'     ',
'',
'}',
' ',
'#P589_DATOS, #P589_DATOS1, #P589_TICKET ,#P589_RUC1 {',
'    text-align: center;',
'    background-color: transparent;',
'    border-color: transparent;',
'    font-weight: bold; ',
'    padding: 0%;',
'    margin: 0%;',
'}  ',
'',
'',
'#P589_DATOS, #P589_DATOS1 ,#P589_RUC1 {',
'    text-align: center;',
'    background-color: transparent;',
'    border-color: transparent;',
'    font-weight: bold; ',
'    padding: 0%;',
'    margin: 0%;',
'    font-family: "Times New Roman", Times, serif;',
'}  ',
'',
'#serv_selec .t-Region-body {padding: 0% !important;}',
'#serv_selec .a-ListView-item {',
'                                font-size: 20px !important;',
'                                color: #001d3d;    ',
'                             }',
'',
'.center{',
'  display: block;',
'  margin-left: auto;',
'  margin-right: auto;}',
'',
' ',
'#opciones .a-CardView-items { padding: 10px;}',
'',
'.a-CardView ,.a-CardView-item{',
'        border-radius: 40px !important;           ',
'        text-align: center;  ',
'        box-shadow: #0000002b 0px -23px 25px 0px inset, #00000026 0px -36px 30px 0px inset, #0000001a 0px -10px 10px 0px inset, 0 0px 3px 3px #f5ffc98c;',
'        /*',
'        background-color: #003f91;',
'        background: linear-gradient(145deg, #15224eea 0%, #0066ff 100%);',
'        /*#0000000f 0px 2px 1px, #f5ffc98c 0px 4px 2px, #f5ffc98c 0px 8px 4px, #f5ffc98c 0px 16px 8px, #f5ffc98c 0px 32px 16px;*/',
'      /*  rgb(33 150 243);',
'        box-shadow: 0 0px 3px 3px #f5ffc98c;*/ ',
'   }',
'',
'',
'    /*.a-CardView-header {background-color:#2196f3;}*/',
'   .a-CardView-title{    color: #01015a;/* #2196f3;*/  ',
'     }',
'',
'',
'  #opciones  .a-CardView-title{ ',
'    font-weight: bold;  ',
'    font-size: 50px; ',
'    }',
'   ',
'',
'  #servicios  .a-CardView-title{ ',
'    font-weight: bold;  ',
'    font-size: 25px; ',
'    }',
' ',
'.slide-in-bck-center {',
'	-webkit-animation: bounce-in-top 1.1s both;',
'	        animation: bounce-in-top 1.1s both;',
'}',
'',
'@-webkit-keyframes bounce-in-top {',
'  0% {',
'    -webkit-transform: translateY(-500px);',
'            transform: translateY(-500px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'    opacity: 0;',
'  }',
'  38% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'    opacity: 1;',
'  }',
'  55% {',
'    -webkit-transform: translateY(-65px);',
'            transform: translateY(-65px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  72% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  81% {',
'    -webkit-transform: translateY(-28px);',
'            transform: translateY(-28px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  90% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  95% {',
'    -webkit-transform: translateY(-8px);',
'            transform: translateY(-8px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'}',
'@keyframes bounce-in-top {',
'  0% {',
'    -webkit-transform: translateY(-500px);',
'            transform: translateY(-500px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'    opacity: 0;',
'  }',
'  38% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'    opacity: 1;',
'  }',
'  55% {',
'    -webkit-transform: translateY(-65px);',
'            transform: translateY(-65px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  72% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  81% {',
'    -webkit-transform: translateY(-28px);',
'            transform: translateY(-28px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  90% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'  95% {',
'    -webkit-transform: translateY(-8px);',
'            transform: translateY(-8px);',
'    -webkit-animation-timing-function: ease-in;',
'            animation-timing-function: ease-in;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    -webkit-animation-timing-function: ease-out;',
'            animation-timing-function: ease-out;',
'  }',
'}',
'',
'',
'',
'.slide-in-bottom {',
'	-webkit-animation: slide-in-bottom 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;',
'	        animation: slide-in-bottom 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;',
'}',
'@-webkit-keyframes slide-in-bottom {',
'  0% {',
'    -webkit-transform: translateY(1000px);',
'            transform: translateY(1000px);',
'    opacity: 0;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    opacity: 1;',
'  }',
'}',
'@keyframes slide-in-bottom {',
'  0% {',
'    -webkit-transform: translateY(1000px);',
'            transform: translateY(1000px);',
'    opacity: 0;',
'  }',
'  100% {',
'    -webkit-transform: translateY(0);',
'            transform: translateY(0);',
'    opacity: 1;',
'  }',
'}',
'',
'/*',
'#servicios .a-CardView-items {',
'        display: inline-flex !important;  ',
'',
'}',
'#servicios .a-CardView  { ',
'        background: url(''https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/giant-bg.jpg'');',
'',
'}',
' */',
'#resumen .a-CardView  { background-color: #ffd166; align-items: center !important; }',
'',
'/*#servicios*/ .titserv{',
' margin-top: 1%;',
'    margin-bottom: 3%;',
'    color: #FFED00;',
'    font-weight: bold;  ',
'    font-size: 50px; ',
'    text-align: center;',
'}  ',
'',
'',
'#servicios .check    ',
'{   background-color: lightblue !important;',
'    background: lightblue !important;',
'    border: 5px solid;',
'    border-color: lightseagreen ; ',
'}',
'',
'',
'#servicios  .a-CardView-body { padding-top: 0px;',
'                    margin-top: 0px;',
'                    visibility:hidden;',
'                 } ',
'',
'',
'',
'/* --------------------- keyboard --------------------------- */',
'',
' body {',
'  margin: 0;',
'  height: 100vh;',
'  background: radial-gradient(circle at top, skyblue, steelblue);',
'  overflow: hidden;',
'}',
'',
'textarea {',
'  display: block;',
'  margin: 1em auto;',
'  padding: 0.4em;',
'  width: 90%;',
'  height: 30%;',
'  resize: none;',
'  font-size: 1.2em;',
'  font-family: system-ui, monospace;',
'  border-radius: 5px;',
'}',
'',
'.keyboard {',
'  position: fixed;',
'  left: 0;',
'  bottom: 0;',
'  width: 100%;',
'  padding: 5px 0;',
'  background:  #16697a; ',
'  box-shadow: 0 0 50px rgba(0, 0, 0, 0.5);',
'  user-select: none;',
'  transition: bottom 0.4s;',
'}',
'',
'.keyboard-hidden {',
'  bottom: -100%;',
'}',
'',
'.keyboard-keys {',
'  text-align: center;',
'}',
'',
'.keyboard-key {',
'  height: 45px;',
'  width: 6%;',
'  max-width: 90px;',
'  margin: 3px;',
'  border-radius: 4px;',
'  border: none;',
'  background: rgba(255, 255, 255, 0.2);',
'  color: #fff;',
'  font-size: 2rem;',
'  outline: none;',
'  cursor: pointer;',
'  display: inline-flex;',
'  align-items: center;',
'  justify-content: center;',
'  vertical-align: top;',
'  padding: 0;',
'  -webkit-tap-highlight-color: transparent;',
'  position: relative;',
'}',
'',
'.keyboard-key:active {',
'  background: rgba(255, 255, 255, 0.12);',
'}',
'',
'.keyboard-wide {',
'  width: 12%;',
'}',
'',
'.keyboard-extrawide {',
'  width: 36%;',
'  max-width: 500px;',
'}',
'',
'.keyboard-active::after {',
'  content: "";',
'  top: 10px;',
'  right: 10px;',
'  position: absolute;',
'  width: 8px;',
'  height: 8px;',
'  background: rgba(0, 0, 0, 0.4);',
'  border-radius: 50%;',
'}',
'',
'.keyboard-check::after {',
'  background: #08ff00;',
'}',
'',
'.keyboard-dark {',
'  background: #00000040;',
'}',
'',
'',
'/* --------------------- keyboard --------------------------- */',
'',
'#imprimir_reporte {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230802112840'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188150931252729600)
,p_plug_name=>'VERIFICA_CLIENTE'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_imp.id(40135621624263664)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(188150031729729606)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(40175990854263675)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186264697983274150)
,p_plug_name=>'DATOS'
,p_region_name=>'DATOS'
,p_parent_plug_id=>wwv_flow_imp.id(188150931252729600)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188179338300669303)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(186264697983274150)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188152310485729599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(188150931252729600)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188152600293729599)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(188150931252729600)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Siguiente'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(188153356049729598)
,p_branch_action=>'f?p=&APP_ID.:590:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(188152600293729599)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188179113347669301)
,p_name=>'P589_RUC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(186264697983274150)
,p_prompt=>'RUC/CI'
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
 p_id=>wwv_flow_imp.id(188179209662669302)
,p_name=>'P589_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(186264697983274150)
,p_prompt=>'NOMBRE'
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
 p_id=>wwv_flow_imp.id(188179472489669304)
,p_name=>'P589_COD_PERSONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(186264697983274150)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188179585544669305)
,p_name=>'P589_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(186264697983274150)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188179620849669306)
,p_name=>'P589_RUC1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(186264697983274150)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(188179716558669307)
,p_validation_name=>'Valida ruc'
,p_validation_sequence=>10
,p_validation=>'P589_RUC'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Debe ingresar CI/RUC'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188188038911642327)
,p_name=>'da_trae_datos'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(188179338300669303)
,p_condition_element=>'P589_RUC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188191383494642322)
,p_event_id=>wwv_flow_imp.id(188188038911642327)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar el NCI/RUC y Nombre.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188189873312642323)
,p_event_id=>wwv_flow_imp.id(188188038911642327)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCOUNT NUMBER;',
'    VERROR EXCEPTION;',
'BEGIN ',
'    :P589_NOMBRE :=NULL;',
'    select NVL(length(trim(TRANSLATE(:P589_RUC, ''1234567890-'', '' ''))),0)',
'    INTO VCOUNT',
'    from dual',
'    ;',
'',
'    IF VCOUNT<>0 THEN',
'        RAISE VERROR;',
'    END IF;',
'',
'',
'            BEGIN',
'                select P.COD_PERSONA, p.nombre',
'                INTO :P589_COD_PERSONA, :P589_NOMBRE',
'                from personas p,',
'                     ident_personas ci ',
'                where p.cod_persona=ci.cod_persona  ',
'                and   CI.COD_IDENT = ''CI''',
unistr('                and   ci.numero = TRANSLATE(:P589_RUC,'',.-:;!"\00B7$%&/()=?^*\00E7_{}\00AC\20AC~#@|\005C/'','' '')    '),
'                and   rownum=1;',
'            EXCEPTION',
'                WHEN NO_DATA_FOUND THEN',
'                        BEGIN',
'                        select P.COD_PERSONA, p.nombre',
'                        INTO :P589_COD_PERSONA, :P589_NOMBRE',
'                        from personas p, ',
'                             ident_personas ru     ',
'                        where p.cod_persona=ru.cod_persona',
'                        and   RU.COD_IDENT = ''RUC''',
unistr('                        and   ru.numero =  TRANSLATE(:P589_RUC,'',.:;!"\00B7$%&/()=?^*\00E7_{}\00AC\20AC~#@|\005C/'','' '')    '),
'                        and   rownum=1;',
'                        EXCEPTION',
'                            WHEN NO_DATA_FOUND THEN',
'                                    BEGIN',
'                                        select NOMBRES ||'' ''|| APELLIDOS',
'                                        INTO :P589_NOMBRE',
'                                        from cedulas_per',
unistr('                                        where numero=TRANSLATE(:P589_RUC,'',.-:;!"\00B7$%&/()=?^*\00E7_{}\00AC\20AC~#@|\005C/'','' '')'),
'                                        and   rownum=1;',
'                                    EXCEPTION                ',
'                                        WHEN OTHERS THEN         ',
'                                            :P589_COD_PERSONA:=NULL;',
'                                            :P589_COD_CLIENTE:=NULL; ',
'                                    END;',
'                            WHEN OTHERS THEN                       ',
'                                    :P589_NOMBRE :=NULL;',
'                                    :P589_COD_PERSONA:=NULL;',
'                                    :P589_COD_CLIENTE:=NULL; ',
'                        END; ',
'                WHEN OTHERS THEN ',
'                    :P589_NOMBRE :=NULL;',
'                    :P589_COD_PERSONA:=NULL;',
'                    :P589_COD_CLIENTE:=NULL; ',
'            END;',
'',
'',
'EXCEPTION',
'    WHEN VERROR THEN           ',
'                    :P589_NOMBRE :=NULL;',
'                    :P589_COD_PERSONA:=NULL;',
'                    :P589_COD_CLIENTE:=NULL;  ',
'            raise_application_error(-20000, ''Debe cargar correctamente el RUC/CI'' );',
'    WHEN OTHERS THEN    ',
'                    :P589_NOMBRE :=NULL;',
'                    :P589_COD_PERSONA:=NULL;',
'                    :P589_COD_CLIENTE:=NULL; ',
'END;'))
,p_attribute_02=>'P589_RUC,P589_NOMBRE'
,p_attribute_03=>'P589_COD_PERSONA,P589_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188190867936642322)
,p_event_id=>wwv_flow_imp.id(188188038911642327)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P589_NOMBRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188190309141642322)
,p_event_id=>wwv_flow_imp.id(188188038911642327)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :P589_RUC IS NOT NULL AND :P589_NOMBRE IS NOT NULL THEN',
'    IF :P589_COD_PERSONA IS NOT NULL THEN',
'        BEGIN',
'                SELECT COD_CLIENTE',
'                INTO :P589_COD_CLIENTE',
'                FROM CC_CLIENTES',
'                WHERE COD_EMPRESA=:P_COD_EMPRESA',
'                AND   COD_PERSONA=:P589_COD_PERSONA',
'                ;',
'        EXCEPTION ',
'            WHEN OTHERS THEN',
'                :P589_COD_CLIENTE:=NULL;',
'        END ;',
'    END IF;',
'    :P589_RUC1:=:P589_RUC;',
' ELSE',
'     :P589_NOMBRE:=Null;',
'     raise_application_error(-20000, ''Debe completar los datos: RUC/Nombre'');',
' END IF;',
''))
,p_attribute_02=>'P589_RUC,P589_NOMBRE,P589_COD_PERSONA'
,p_attribute_03=>'P589_COD_CLIENTE,P589_RUC1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
