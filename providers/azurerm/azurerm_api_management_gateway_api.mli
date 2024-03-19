(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_api_management_gateway_api

val azurerm_api_management_gateway_api :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_id:string prop ->
  gateway_id:string prop ->
  unit ->
  azurerm_api_management_gateway_api

val yojson_of_azurerm_api_management_gateway_api :
  azurerm_api_management_gateway_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  gateway_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_id:string prop ->
  gateway_id:string prop ->
  string ->
  t
