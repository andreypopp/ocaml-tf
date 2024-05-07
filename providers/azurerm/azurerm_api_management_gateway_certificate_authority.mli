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

type azurerm_api_management_gateway_certificate_authority

val azurerm_api_management_gateway_certificate_authority :
  ?id:string prop ->
  ?is_trusted:bool prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  certificate_name:string prop ->
  gateway_name:string prop ->
  unit ->
  azurerm_api_management_gateway_certificate_authority

val yojson_of_azurerm_api_management_gateway_certificate_authority :
  azurerm_api_management_gateway_certificate_authority -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_id : string prop;
  certificate_name : string prop;
  gateway_name : string prop;
  id : string prop;
  is_trusted : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_trusted:bool prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  certificate_name:string prop ->
  gateway_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?is_trusted:bool prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  certificate_name:string prop ->
  gateway_name:string prop ->
  string ->
  t Tf_core.resource
