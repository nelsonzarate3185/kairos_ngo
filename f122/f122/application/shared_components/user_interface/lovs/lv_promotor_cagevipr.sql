prompt --application/shared_components/user_interface/lovs/lv_promotor_cagevipr
begin
--   Manifest
--     LV_PROMOTOR_CAGEVIPR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(200139372976339987)
,p_lov_name=>'LV_PROMOTOR_CAGEVIPR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_persona, nvl(p.nombre,p.nomb_fantasia)Promotor',
'    from vt_asignacion_promotora a,',
'         rh_empleados e,',
'         personas p',
'    where a.cod_empresa=:P_cod_empresa',
'    and   nvl(a.estado,''S'')=''S''',
'    and   a.cod_empleado=e.cod_empleado',
'    and   e.cod_persona=p.cod_persona',
'',
'union all',
'select  ''269932'',''SILVIO DAVID ALFONSO BAREIRO'' from dual',
'    order by 2 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'COD_PERSONA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(200139849780337536)
,p_query_column_name=>'COD_PERSONA'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(200140218089337535)
,p_query_column_name=>'PROMOTOR'
,p_heading=>'Promotor'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
