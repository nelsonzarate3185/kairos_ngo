prompt --application/shared_components/plugins/dynamic_action/com_jk64_report_google_map_da_r1
begin
--   Manifest
--     PLUGIN: COM.JK64.REPORT_GOOGLE_MAP_DA_R1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1501145227114753
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1840556155121556487)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.JK64.REPORT_GOOGLE_MAP_DA_R1'
,p_display_name=>'JK64 Report Google Map R1 Action'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.JK64.REPORT_GOOGLE_MAP_DA_R1'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- jk64 ReportMap Action v1.0 Aug 2020',
'-- https://github.com/jeffreykemp/jk64-plugin-reportmap',
'-- Copyright (c) 2020 Jeffrey Kemp',
'-- Released under the MIT licence: http://opensource.org/licenses/mit-license',
'',
'subtype plugin_attr is varchar2(32767);',
'',
'function render ',
'    ( p_dynamic_action apex_plugin.t_dynamic_action',
'    , p_plugin         apex_plugin.t_plugin ',
'    ) return apex_plugin.t_dynamic_action_render_result is',
'',
'    l_action         plugin_attr := p_dynamic_action.attribute_01;',
'    l_source_type    plugin_attr := p_dynamic_action.attribute_02;',
'    l_page_item      plugin_attr := p_dynamic_action.attribute_03;',
'    l_selector       plugin_attr := p_dynamic_action.attribute_04;',
'    l_static_value   plugin_attr := p_dynamic_action.attribute_05;',
'    l_js_expression  plugin_attr := p_dynamic_action.attribute_06;',
'    l_option         plugin_attr := p_dynamic_action.attribute_07;',
'    ',
'    l_action_js      varchar2(32767);',
'    l_val_js         varchar2(32767);',
'    l_result         apex_plugin.t_dynamic_action_render_result;',
'',
'begin',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_dynamic_action',
'            (p_plugin         => p_plugin',
'            ,p_dynamic_action => p_dynamic_action);',
'    end if;',
'    ',
'    l_action_js := case l_action',
'        when ''deleteAllFeatures'' then',
'            ''$("#map_"+e.id).reportmap("deleteAllFeatures");''',
'        when ''deleteSelectedFeatures'' then',
'            ''$("#map_"+e.id).reportmap("deleteSelectedFeatures");''',
'        when ''fitBounds'' then',
'            ''$("#map_"+e.id).reportmap("fitBounds",#VAL#);''',
'        when ''geolocate'' then',
'            ''$("#map_"+e.id).reportmap("geolocate");''',
'        when ''getAddressByPos'' then',
'            ''var pos = $("#map_"+e.id).reportmap("instance").parseLatLng(#VAL#);''',
'         || ''$("#map_"+e.id).reportmap("getAddressByPos",pos.lat(),pos.lng());''',
'        when ''gotoAddress'' then',
'            ''$("#map_"+e.id).reportmap("gotoAddress",#VAL#);''',
'        when ''gotoPosByString'' then',
'            ''$("#map_"+e.id).reportmap("gotoPosByString",#VAL#);''',
'        when ''hideMessage'' then',
'            ''$("#map_"+e.id).reportmap("hideMessage");''',
'        when ''loadGeoJsonString'' then',
'            ''$("#map_"+e.id).reportmap("loadGeoJsonString",#VAL#);''',
'        when ''panTo'' then',
'            ''$("#map_"+e.id).reportmap("panToByString",#VAL#);''',
'        when ''restrictTo'' then',
'            ''$("#map_"+e.id).reportmap("instance").map.setOptions({restriction:{latLngBounds:#VAL#}});''        ',
'        when ''restrictToStrict'' then',
'            ''$("#map_"+e.id).reportmap("instance").map.setOptions({restriction:{latLngBounds:#VAL#,strictBounds:true}});''  ',
'        when ''setOption'' then',
'            ''$("#map_"+e.id).reportmap("option","'' || l_option || ''",#VAL#);''',
'        when ''showMessage'' then',
'            ''$("#map_"+e.id).reportmap("showMessage",#VAL#);''',
'        end;',
'    ',
'    if l_action_js is null then',
'        raise_application_error(-20000, ''Plugin error: unrecognised action ('' || l_action || '')'');',
'    end if;',
'    ',
'    if instr(l_action_js,''#VAL#'') > 0 then',
'    ',
'        l_action_js := replace(l_action_js, ''#VAL#'', ''val'');',
'        ',
'        l_val_js :=    ',
'            case l_source_type',
'            when ''triggeringElement'' then',
'                ''var val=$v(this.triggeringElement);''',
'            when ''pageItem'' then',
'                ''var val=$v("'' || apex_javascript.escape(l_page_item) || ''");''',
'            when ''jquerySelector'' then',
'                ''var val=$("'' || apex_javascript.escape(l_selector) || ''").val();''',
'            when ''javascriptExpression'' then',
'                ''var val='' || l_js_expression || '';''',
'            when ''static'' then',
'                ''var val="'' || apex_javascript.escape(l_static_value) || ''";''',
'            end;',
'        ',
'        if l_val_js is null then',
'            raise_application_error(-20000, ''Plugin error: unrecognised source type ('' || l_source_type || '')'');',
'        end if;',
'',
'    end if;',
'',
'    l_result.javascript_function',
'        := ''function(){''',
'        ||     ''apex.debug("ReportMap Action:","''|| l_action || ''");''',
'        ||     l_val_js',
'        ||     ''this.affectedElements.each(function(i,e){''',
'        ||         l_action_js',
'        ||     ''});''',
'        || ''}'';',
'',
'    return l_result;',
'exception',
'    when others then',
'        apex_debug.error(sqlerrm);',
'        apex_debug.message(dbms_utility.format_error_stack);',
'        apex_debug.message(dbms_utility.format_call_stack);',
'        raise;',
'end render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'REGION:REQUIRED'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Use this to perform the selected action on a map region. This plugin is to be used in conjunction with a <strong>JK64 Report Google Map R1</strong> region on the page.',
'</p><p>',
'Refer to the wiki for documentation: <strong>https://github.com/jeffreykemp/jk64-plugin-reportmap/wiki</strong>.',
'</p><p>',
'Please raise any bugs or enhancements on GitHub: <strong>https://github.com/jeffreykemp/jk64-plugin-reportmap/issues</strong>.',
'</p>'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://jeffreykemp.github.io/jk64-plugin-reportmap/'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Copyright (c) 2020 Jeffrey Kemp',
'Released under the MIT licence: http://opensource.org/licenses/mit-license'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1840558806652741553)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Action'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'setOption'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the action to execute for the selected map.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840992449712360547)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>10
,p_display_value=>'Set Option'
,p_return_value=>'setOption'
,p_help_text=>'Set a map option.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840559514352744505)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>20
,p_display_value=>'Search map by Address'
,p_return_value=>'gotoAddress'
,p_help_text=>'Search the map for the given address (e.g. "Koombana Drive, Bunbury, Western Australia"), point of interest ("Fern Pool, Karijini, Western Australia"), or lat/long (e.g. "-33.64392 115.34432").'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840908235041767309)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>30
,p_display_value=>'Get Address at Location'
,p_return_value=>'getAddressByPos'
,p_help_text=>'Find the closest address to a given location by lat/long. When this action is executed, the address is returned via the addressFound event.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840570567406827405)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>40
,p_display_value=>'Place Marker'
,p_return_value=>'gotoPosByString'
,p_help_text=>'Move or place the marker at a given position (lat, long). Position may be provided as a LatLngLiteral, e.g. {"lat":-34, "lng":151}'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840572341612937620)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>50
,p_display_value=>'Go to Device Location'
,p_return_value=>'geolocate'
,p_help_text=>'Search for the user device''s location using navigator.geolocation.getCurrentPosition, if possible (and allowed by the user).'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840849007489271380)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>60
,p_display_value=>'Fit Bounds'
,p_return_value=>'fitBounds'
,p_help_text=>'Pan/Zoom the map so that it fits the specified bounds. The value must be provided as a LatLngBounds object or a LatLngBoundsLiteral, e.g. {"south":-37.71010, "west":87.56120, "north":-9.95828, "east":150.66667}'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840650228928373344)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>70
,p_display_value=>'Pan To'
,p_return_value=>'panTo'
,p_help_text=>'Move the map centered on the given point. Value must be a Lat,Long (e.g. "27.1751448 78.0421422").'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1782804442912504047)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>80
,p_display_value=>'Restrict to bounds'
,p_return_value=>'restrictTo'
,p_help_text=>'When set, a user can only pan and zoom inside the given bounds. Bounds can restrict both longitude and latitude, or can restrict latitude only. For latitude-only bounds use west and east longitudes of -180 and 180, respectively. For example: {north:6'
||'0, south:-60, west:-180, east:180}'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1782804838017510985)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>90
,p_display_value=>'Restrict to bounds (strict mode)'
,p_return_value=>'restrictToStrict'
,p_help_text=>'When set, a user can only pan and zoom inside the given bounds. Bounds can restrict both longitude and latitude, or can restrict latitude only. For latitude-only bounds use west and east longitudes of -180 and 180, respectively. For example: {north:6'
||'0, south:-60, west:-180, east:180}. Strict mode reduces how far a user can zoom out, ensuring that everything outside of the restricted bounds stays hidden.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840821059893207477)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>100
,p_display_value=>'Load GeoJSON'
,p_return_value=>'loadGeoJsonString'
,p_help_text=>'Load one or more features specified in a GeoJSON document.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840883587578951708)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>110
,p_display_value=>'Delete All Features'
,p_return_value=>'deleteAllFeatures'
,p_help_text=>'Remove all features (e.g. those loaded via GeoJson, or drawn by the user).'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840884046549952877)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>120
,p_display_value=>'Delete Selected Features'
,p_return_value=>'deleteSelectedFeatures'
,p_help_text=>'Remove selected features (e.g. those loaded via GeoJson, or drawn by the user).'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840573478178960480)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>200
,p_display_value=>'Show Message'
,p_return_value=>'showMessage'
,p_help_text=>'Show a Warning/Error message. The message is shown in a light yellow box centered left in the viewing window.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840573893703962375)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_display_sequence=>210
,p_display_value=>'Hide Message'
,p_return_value=>'hideMessage'
,p_help_text=>'Hide the Warning/Error message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1840561007383010954)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>30
,p_prompt=>'Source Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'triggeringElement'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'setOption,fitBounds,getAddressByPos,gotoAddress,gotoPosByString,loadGeoJsonString,panTo,showMessage,restrictTo,restrictToStrict'
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840561726024014713)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_display_sequence=>10
,p_display_value=>'Triggering Element'
,p_return_value=>'triggeringElement'
,p_help_text=>'Get the value from the item that the Dynamic Action is on.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840564012588038638)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_display_sequence=>30
,p_display_value=>'Page Item'
,p_return_value=>'pageItem'
,p_help_text=>'Specify an item on the page to provide the source value for the action.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840562447942018821)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_display_sequence=>40
,p_display_value=>'jQuery Selector'
,p_return_value=>'jquerySelector'
,p_help_text=>'Specify a jQuery Selector to provide the source value for the action'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840623333361999803)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_display_sequence=>50
,p_display_value=>'JavaScript Expression'
,p_return_value=>'javascriptExpression'
,p_help_text=>'Set the value using a JavaScript expression.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1840577933116034819)
,p_plugin_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_display_sequence=>60
,p_display_value=>'Static Value'
,p_return_value=>'static'
,p_help_text=>'Set a single static value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1840562850329026884)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>40
,p_prompt=>'Page Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'pageItem'
,p_help_text=>'Specify the page item to provide the source value for the action.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1840564413757049037)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>50
,p_prompt=>'jQuery Selector'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'jquerySelector'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Specify the jQuery selector to identify the source value for the action.',
'',
'e.g.',
'<code>',
'#itemId',
'</code>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1840580543082042042)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>60
,p_prompt=>'Value'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'static'
,p_help_text=>'Enter the value to be used. Substitution syntax allowed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1840631298246014042)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'JavaScript Expression'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1840561007383010954)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'javascriptExpression'
,p_help_text=>'Specify the JavaScript expression to use to set the value for the action.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1841131014342410564)
,p_plugin_id=>wwv_flow_imp.id(1840556155121556487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>20
,p_prompt=>'Option'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'zoom'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1840558806652741553)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'setOption'
,p_lov_type=>'STATIC'
,p_help_text=>'Specify the option or parameter that should be changed by this dynamic action.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841183374240901916)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>10
,p_display_value=>'Clickable Icons'
,p_return_value=>'clickableIcons'
,p_help_text=>'set to false to make map icons (points of interest) unclickable'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841184085610905528)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>30
,p_display_value=>'Disable default UI'
,p_return_value=>'disableDefaultUI'
,p_help_text=>'set to true to disable all the default UI'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841184576439909557)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>40
,p_display_value=>'Full Screen control'
,p_return_value=>'fullscreenControl'
,p_help_text=>'true/false to enable/disable the Fullscreen control'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841306618836782165)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>50
,p_display_value=>'Gesture Handling'
,p_return_value=>'gestureHandling'
,p_help_text=>'set to "cooperative", "greedy", "none", or "auto" (default)'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841307059609783327)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>60
,p_display_value=>'Heading'
,p_return_value=>'heading'
,p_help_text=>'heading for aerial imagery in degrees measured clockwise from cardinal direction North'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841307431554784714)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>70
,p_display_value=>'Keyboard shortcuts'
,p_return_value=>'keyboardShortcuts'
,p_help_text=>'true/false to enable/disable keyboard shortcuts'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841307781185785842)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>80
,p_display_value=>'Map Type control'
,p_return_value=>'mapTypeControl'
,p_help_text=>'true/false to enable/disable the Map type control'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841322749789791085)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>90
,p_display_value=>'Map Type'
,p_return_value=>'mapType'
,p_help_text=>'Change the map type. "hybrid", "roadmap" (default), "satellite", or "terrain"'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841323164011793151)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>100
,p_display_value=>'Maximum Zoom level'
,p_return_value=>'maxZoom'
,p_help_text=>'the maximum zoom level to be displayed (0..23)'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841323537995794563)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>110
,p_display_value=>'Minimum Zoom level'
,p_return_value=>'minZoom'
,p_help_text=>'the minimum zoom level to be displayed (0..23)'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841157360065421651)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>120
,p_display_value=>'Restrict search to Country'
,p_return_value=>'restrictCountry'
,p_help_text=>'Restrict address search results to a selected country.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841323935926795733)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>130
,p_display_value=>'Rotate control'
,p_return_value=>'rotateControl'
,p_help_text=>'true/false to enable/disable the Rotate control'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841324306774796720)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>140
,p_display_value=>'Scale control'
,p_return_value=>'scaleControl'
,p_help_text=>'true/false to enable/disable the Scale control'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841324685146798027)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>150
,p_display_value=>'Street View Pegman control'
,p_return_value=>'streetViewControl'
,p_help_text=>'true/false to enable/disable the Street View Pegman control'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841325141261799435)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>160
,p_display_value=>'Styles'
,p_return_value=>'styles'
,p_help_text=>'set the map styles'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841325493241800823)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>170
,p_display_value=>'Tilt'
,p_return_value=>'tilt'
,p_help_text=>unistr('set to 0 (no tilt allowed) or 45 (automatically switch to 45\00B0 imagery where available for the current zoom level and viewport)')
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841150648602418586)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>180
,p_display_value=>'Zoom level'
,p_return_value=>'zoom'
,p_help_text=>'Set or change the map zoom level (typically 1..23, although not all areas can be zoomed to all levels; if the map does not provide tiles to the chosen zoom level, it will zoom as far as it can).'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1841340389858803413)
,p_plugin_attribute_id=>wwv_flow_imp.id(1841131014342410564)
,p_display_sequence=>190
,p_display_value=>'Zoom control'
,p_return_value=>'zoomControl'
,p_help_text=>'true/false to enable/disable the Zoom control'
);
wwv_flow_imp.component_end;
end;
/
