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

type azurerm_storage_mover_target_endpoint

val azurerm_storage_mover_target_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_container_name:string prop ->
  storage_mover_id:string prop ->
  unit ->
  azurerm_storage_mover_target_endpoint

val yojson_of_azurerm_storage_mover_target_endpoint :
  azurerm_storage_mover_target_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  storage_account_id : string prop;
  storage_container_name : string prop;
  storage_mover_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_container_name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_container_name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t Tf_core.resource
