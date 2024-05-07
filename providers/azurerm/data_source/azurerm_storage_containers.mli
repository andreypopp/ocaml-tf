(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type containers = {
  data_plane_id : string prop;  (** data_plane_id *)
  name : string prop;  (** name *)
  resource_manager_id : string prop;  (** resource_manager_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_containers

val azurerm_storage_containers :
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  unit ->
  azurerm_storage_containers

val yojson_of_azurerm_storage_containers :
  azurerm_storage_containers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  containers : containers list prop;
  id : string prop;
  name_prefix : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
