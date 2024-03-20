(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_gateway_host_name_configuration

val azurerm_api_management_gateway_host_name_configuration :
  ?http2_enabled:bool prop ->
  ?id:string prop ->
  ?request_client_certificate_enabled:bool prop ->
  ?tls10_enabled:bool prop ->
  ?tls11_enabled:bool prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  certificate_id:string prop ->
  gateway_name:string prop ->
  host_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_api_management_gateway_host_name_configuration

val yojson_of_azurerm_api_management_gateway_host_name_configuration :
  azurerm_api_management_gateway_host_name_configuration -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?http2_enabled:bool prop ->
  ?id:string prop ->
  ?request_client_certificate_enabled:bool prop ->
  ?tls10_enabled:bool prop ->
  ?tls11_enabled:bool prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  certificate_id:string prop ->
  gateway_name:string prop ->
  host_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?http2_enabled:bool prop ->
  ?id:string prop ->
  ?request_client_certificate_enabled:bool prop ->
  ?tls10_enabled:bool prop ->
  ?tls11_enabled:bool prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  certificate_id:string prop ->
  gateway_name:string prop ->
  host_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
