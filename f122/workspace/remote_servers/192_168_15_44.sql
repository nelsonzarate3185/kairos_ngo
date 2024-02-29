prompt --workspace/remote_servers/192_168_15_44
begin
--   Manifest
--     REMOTE SERVER: 192-168-15-44
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(169821311815778111)
,p_name=>'192-168-15-44'
,p_static_id=>'192_168_15_44'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('192_168_15_44'),'http://192.168.15.44')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('192_168_15_44'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('192_168_15_44'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('192_168_15_44'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('192_168_15_44'),'')
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
