(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}

type key_vault_reference = {
  id : string prop;  (** id *)
  url : string prop;  (** url *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_batch_account

val azurerm_batch_account :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_batch_account

val yojson_of_azurerm_batch_account : azurerm_batch_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_endpoint : string prop;
  encryption : encryption list prop;
  id : string prop;
  key_vault_reference : key_vault_reference list prop;
  location : string prop;
  name : string prop;
  pool_allocation_mode : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
