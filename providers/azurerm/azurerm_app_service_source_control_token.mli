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

type azurerm_app_service_source_control_token

val azurerm_app_service_source_control_token :
  ?id:string prop ->
  ?token_secret:string prop ->
  ?timeouts:timeouts ->
  token:string prop ->
  type_:string prop ->
  unit ->
  azurerm_app_service_source_control_token

val yojson_of_azurerm_app_service_source_control_token :
  azurerm_app_service_source_control_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  token : string prop;
  token_secret : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?token_secret:string prop ->
  ?timeouts:timeouts ->
  token:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?token_secret:string prop ->
  ?timeouts:timeouts ->
  token:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
