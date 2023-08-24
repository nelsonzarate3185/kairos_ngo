prompt --application/shared_components/navigation/lists/agendamientos
begin
--   Manifest
--     LIST: AGENDAMIENTOS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(188150031729729606)
,p_name=>'AGENDAMIENTOS'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(188151443402729600)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Paso 1'
,p_list_item_link_target=>'f?p=&APP_ID.:589:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(188154545516729597)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Paso 2'
,p_list_item_link_target=>'f?p=&APP_ID.:590:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(188158340737729596)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Paso 3'
,p_list_item_link_target=>'f?p=&APP_ID.:591:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(188162192612729595)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Paso 4'
,p_list_item_link_target=>'f?p=&APP_ID.:592:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(188165989832729593)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Paso 5'
,p_list_item_link_target=>'f?p=&APP_ID.:593:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
