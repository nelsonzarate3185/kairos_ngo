prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 122
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(40190752526263679)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(40090628970263651)
,p_default_dialog_template=>wwv_flow_imp.id(40080790783263649)
,p_error_template=>wwv_flow_imp.id(40078493853263648)
,p_printer_friendly_template=>wwv_flow_imp.id(40090628970263651)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(40078493853263648)
,p_default_button_template=>wwv_flow_imp.id(40187749278263678)
,p_default_region_template=>wwv_flow_imp.id(40125238939263661)
,p_default_chart_template=>wwv_flow_imp.id(40125238939263661)
,p_default_form_template=>wwv_flow_imp.id(40125238939263661)
,p_default_reportr_template=>wwv_flow_imp.id(40125238939263661)
,p_default_tabform_template=>wwv_flow_imp.id(40125238939263661)
,p_default_wizard_template=>wwv_flow_imp.id(40125238939263661)
,p_default_menur_template=>wwv_flow_imp.id(40134615190263663)
,p_default_listr_template=>wwv_flow_imp.id(40125238939263661)
,p_default_irr_template=>wwv_flow_imp.id(40123385688263660)
,p_default_report_template=>wwv_flow_imp.id(40147995650263667)
,p_default_label_template=>wwv_flow_imp.id(40186634462263678)
,p_default_menu_template=>wwv_flow_imp.id(40189153869263678)
,p_default_calendar_template=>wwv_flow_imp.id(40189284844263679)
,p_default_list_template=>wwv_flow_imp.id(40170594478263673)
,p_default_nav_list_template=>wwv_flow_imp.id(40181774267263676)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(40181774267263676)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(40179901847263676)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(40097820288263654)
,p_default_dialogr_template=>wwv_flow_imp.id(40096829222263653)
,p_default_option_label=>wwv_flow_imp.id(40186634462263678)
,p_default_required_label=>wwv_flow_imp.id(40186937130263678)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_imp.id(40173785249263674)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>76
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
