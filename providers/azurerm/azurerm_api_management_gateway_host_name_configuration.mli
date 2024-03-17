(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway_host_name_configuration__timeouts
type azurerm_api_management_gateway_host_name_configuration

type t = private {
  api_management_id : string prop;
  certificate_id : string prop;
  gateway_name : string prop;
  host_name : string prop;
  http2_enabled : bool prop;
  id : string prop;
  name : string prop;
  request_client_certificate_enabled : bool prop;
  tls10_enabled : bool prop;
  tls11_enabled : bool prop;
}

val azurerm_api_management_gateway_host_name_configuration :
  ?http2_enabled:bool prop ->
  ?id:string prop ->
  ?request_client_certificate_enabled:bool prop ->
  ?tls10_enabled:bool prop ->
  ?tls11_enabled:bool prop ->
  ?timeouts:
    azurerm_api_management_gateway_host_name_configuration__timeouts ->
  api_management_id:string prop ->
  certificate_id:string prop ->
  gateway_name:string prop ->
  host_name:string prop ->
  name:string prop ->
  string ->
  t
