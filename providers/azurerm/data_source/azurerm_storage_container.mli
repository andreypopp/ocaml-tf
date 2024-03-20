(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_container

val azurerm_storage_container :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  unit ->
  azurerm_storage_container

val yojson_of_azurerm_storage_container :
  azurerm_storage_container -> json

(** RESOURCE REGISTRATION *)

type t = private {
  container_access_type : string prop;
  has_immutability_policy : bool prop;
  has_legal_hold : bool prop;
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
