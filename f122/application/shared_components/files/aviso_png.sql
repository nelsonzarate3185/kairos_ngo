prompt --application/shared_components/files/aviso_png
begin
--   Manifest
--     APP STATIC FILES: 122
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000000473424954080808087C0864880000000970485973000000EC000000EC01792871BD0000001974455874536F667477617265007777772E696E6B73636170652E';
wwv_flow_imp.g_varchar2_table(2) := '6F72679BEE3C1A00000475494441545885ED975B4C14671886DFD9F977760E0BC32EC7AE0888D0468C6083298784546B88C51E828A8470D1E35D1B2F7A5BD182C6A60D1482B415D39A963631D658831224B682722CB44D6A4B6CD2065DC1C41A5829873D';
wwv_flow_imp.g_varchar2_table(3) := '0D3BB37F2F7617179685DD46D336E99B7C57FFFB3DDF37FF3103FC07A56359B6CA6C30FCCCB3ACDDA0D3A9EB05E116CFB2AF01D0450B63A2F41B4C1CD79E2A4925C7F2F3A5C2C44450AB15FD73733876E78EF70F8F67E49EDBBD03801229908DA6BA6C30';
wwv_flow_imp.g_varchar2_table(4) := 'B4142525955FDEB54B7C5C96513F3A8AE1C949BC9A92829792929891F9F9D479AF37DDAEAAED9132A399328BE6F5BEFC794989A0D785A61186C1898D1B1987AA5603487D140D3C53B66E1D8DE3B8B0863842506A32B1004A1F46030700507FD4024859AF';
wwv_flow_imp.g_varchar2_table(5) := 'D78BDE99190482BADD60781EBAB8B8C5488B8D0580247F4E20FFC0DF69201E401D7C1BB516C0D4C4EC2C349B6D31A8D3094614C126242CC66D55750018F7E7307E467CB82264950696ABEBCAF4B436ADAAC44C7C696FA7A5419F95B568F8736101DD77EF';
wwv_flow_imp.g_varchar2_table(6) := '3200AE450A8D660F4CC610F2E59B376F520FA5008077272670F4FA750080C7EBC5EBFDFD4E006D00EE45C18D4A9C85E77BF36363B573393974A2A080DAAAABE9859D3BE91693695EE6B82E4437ABABAAD61F216281EA0D82F05B0C210ACFB28E449EFF81';
wwv_flow_imp.g_varchar2_table(7) := '05AAA2E5FC6BC58BA278D26030CC19787E561084160086A07173149C568EE31C1CC7D9799E3FB18CB3B244513C595058E8B87CA59B7EDBDD438B8A8B1D922435FB87DF00F02322784344516C5DCE1104E1A3E5BE10905EAF77755CEAE293939301009393';
wwv_flow_imp.g_varchar2_table(8) := '93287FE1F95997CB6502D002A001C0EDB51AE038CE7EB1F39214CC79F1B9DD76455162827D21C790520A7685BB1EBE1BCD06E095B58A07B49C43FDC777D506388E6B3B7CA8C6699B9AC27D9B0D870F1E74EA74BAB6488B064408F962398765D9CFD6CA2B';
wwv_flow_imp.g_varchar2_table(9) := '8D95E5613CB8C329216400801EBEE5FA104046843D708490C160962CCB2308F750198DC63AB3D9EC6C686CA403DF0DD3AB7D7DF4FDFA069A9090681724E93DBF2DE24D284952BDC562996F6A3E4E7B7AFB684F6F1F6D6A3E4E2D16CBBCD1683C12F00540';
wwv_flow_imp.g_varchar2_table(10) := '3BCCF1F19DE7DB2F08B22C2F014D4F4FA3B2629FE3BECDB617C037F01DC3C7003C0520DC94EEDE909979FACC576765CEB0F4E42D280AAA2A2B67ACD65B7B005C630140964D676A0ED5646CCAC959348E8D8DC161B72325250566B399FB7E646493A66931';
wwv_flow_imp.g_varchar2_table(11) := 'A228B58AA2F096A228FBE17BE94224CBF2E977EA8E64A66764848CB184203D23831FE81F784251DCA70800B8DDCECD8545C54B8CBFDEB881E6A646646567836118685EEFD667CBCA72CAF7EC15F3B76D43FED6BC301F0FB85CAECDB979E1C773F3F2A028';
wwv_flow_imp.g_varchar2_table(12) := 'AE2DC08325A03FFD321A62F4783CB8DAD30300787AFB76E8743A0C0D0EE0FCB9AFED4343838CAAAAC6303556E405EBC95C5FFDB02FD7A94F3F81D56AC5BE8A0A1096E083867AB5B3A3C3C3B2ECEF4EA7F3634DD3CEAE5A2142856DA0A2623F3A3A2EE268';
wwv_flow_imp.g_varchar2_table(13) := '5D1DBC9A86F1F17102201B11DC82D168D525085660CA22E446CC8BFA4FE661EBFF06000084905904DDD92B85DFF38FF01EA9FE0277F6B484856C161F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(17040546556816558)
,p_file_name=>'aviso.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/