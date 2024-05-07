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

type azurerm_logic_app_action_custom

val azurerm_logic_app_action_custom :
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  logic_app_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_logic_app_action_custom

val yojson_of_azurerm_logic_app_action_custom :
  azurerm_logic_app_action_custom -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  id : string prop;
  logic_app_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  logic_app_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  logic_app_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
