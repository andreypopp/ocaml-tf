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

type azurerm_storage_queue

val azurerm_storage_queue :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  unit ->
  azurerm_storage_queue

val yojson_of_azurerm_storage_queue : azurerm_storage_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t Tf_core.resource
