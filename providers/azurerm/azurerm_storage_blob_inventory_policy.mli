(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules__filter

val rules__filter :
  ?exclude_prefixes:string prop list ->
  ?include_blob_versions:bool prop ->
  ?include_deleted:bool prop ->
  ?include_snapshots:bool prop ->
  ?prefix_match:string prop list ->
  blob_types:string prop list ->
  unit ->
  rules__filter

type rules

val rules :
  ?filter:rules__filter list ->
  format:string prop ->
  name:string prop ->
  schedule:string prop ->
  schema_fields:string prop list ->
  scope:string prop ->
  storage_container_name:string prop ->
  unit ->
  rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_blob_inventory_policy

val azurerm_storage_blob_inventory_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  rules:rules list ->
  unit ->
  azurerm_storage_blob_inventory_policy

val yojson_of_azurerm_storage_blob_inventory_policy :
  azurerm_storage_blob_inventory_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  rules:rules list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  rules:rules list ->
  string ->
  t Tf_core.resource
