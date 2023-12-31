prompt --application/shared_components/user_interface/lovs/lv_deposito_repuestos
begin
--   Manifest
--     LV_DEPOSITO_REPUESTOS
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
 p_id=>wwv_flow_imp.id(144657972712470494)
,p_lov_name=>'LV_DEPOSITO_REPUESTOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL || '' - '' || nombre D,',
'        cod_sucursal R',
'FROM cm_proveedores pro, personas p',
'where cod_empresa = :p482_cod_empresa',
'and pro.cod_persona=p.cod_persona',
'and pro.ind_servicio_tecnico=''STNGO'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
