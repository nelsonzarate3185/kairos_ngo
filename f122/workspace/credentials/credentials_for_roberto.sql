prompt --workspace/credentials/credentials_for_roberto
begin
--   Manifest
--     CREDENTIAL: Credentials for roberto
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(169821035600778111)
,p_name=>'Credentials for roberto'
,p_static_id=>'Credentials_for_roberto'
,p_authentication_type=>'BASIC'
,p_valid_for_urls=>'http://192.168.15.44'
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
