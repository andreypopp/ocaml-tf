(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_static_web_app_function_app_registration

val azurerm_static_web_app_function_app_registration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  function_app_id:string prop ->
  static_web_app_id:string prop ->
  unit ->
  azurerm_static_web_app_function_app_registration

val yojson_of_azurerm_static_web_app_function_app_registration :
  azurerm_static_web_app_function_app_registration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  function_app_id : string prop;
  id : string prop;
  static_web_app_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  function_app_id:string prop ->
  static_web_app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  function_app_id:string prop ->
  static_web_app_id:string prop ->
  string ->
  t Tf_core.resource
