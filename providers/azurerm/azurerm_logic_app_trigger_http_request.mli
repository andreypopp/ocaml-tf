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

type azurerm_logic_app_trigger_http_request

val azurerm_logic_app_trigger_http_request :
  ?id:string prop ->
  ?method_:string prop ->
  ?relative_path:string prop ->
  ?timeouts:timeouts ->
  logic_app_id:string prop ->
  name:string prop ->
  schema:string prop ->
  unit ->
  azurerm_logic_app_trigger_http_request

val yojson_of_azurerm_logic_app_trigger_http_request :
  azurerm_logic_app_trigger_http_request -> json

(** RESOURCE REGISTRATION *)

type t = private {
  callback_url : string prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  relative_path : string prop;
  schema : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?method_:string prop ->
  ?relative_path:string prop ->
  ?timeouts:timeouts ->
  logic_app_id:string prop ->
  name:string prop ->
  schema:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?method_:string prop ->
  ?relative_path:string prop ->
  ?timeouts:timeouts ->
  logic_app_id:string prop ->
  name:string prop ->
  schema:string prop ->
  string ->
  t Tf_core.resource
