(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type acl__access_policy = {
  expiry : string prop;  (** expiry *)
  permissions : string prop;  (** permissions *)
  start : string prop;  (** start *)
}

type acl = {
  access_policy : acl__access_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** access_policy *)
  id : string prop;  (** id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_table

val azurerm_storage_table :
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  unit ->
  azurerm_storage_table

val yojson_of_azurerm_storage_table : azurerm_storage_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acl : acl list prop;
  id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t Tf_core.resource
