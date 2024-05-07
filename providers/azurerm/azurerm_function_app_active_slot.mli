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

type azurerm_function_app_active_slot

val azurerm_function_app_active_slot :
  ?id:string prop ->
  ?overwrite_network_config:bool prop ->
  ?timeouts:timeouts ->
  slot_id:string prop ->
  unit ->
  azurerm_function_app_active_slot

val yojson_of_azurerm_function_app_active_slot :
  azurerm_function_app_active_slot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  last_successful_swap : string prop;
  overwrite_network_config : bool prop;
  slot_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?overwrite_network_config:bool prop ->
  ?timeouts:timeouts ->
  slot_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?overwrite_network_config:bool prop ->
  ?timeouts:timeouts ->
  slot_id:string prop ->
  string ->
  t Tf_core.resource
