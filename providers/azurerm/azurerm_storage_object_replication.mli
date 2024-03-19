(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rules

val rules :
  ?copy_blobs_created_after:string prop ->
  ?filter_out_blobs_with_prefix:string prop list ->
  destination_container_name:string prop ->
  source_container_name:string prop ->
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

type azurerm_storage_object_replication

val azurerm_storage_object_replication :
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_storage_account_id:string prop ->
  source_storage_account_id:string prop ->
  rules:rules list ->
  unit ->
  azurerm_storage_object_replication

val yojson_of_azurerm_storage_object_replication :
  azurerm_storage_object_replication -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destination_object_replication_id : string prop;
  destination_storage_account_id : string prop;
  id : string prop;
  source_object_replication_id : string prop;
  source_storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_storage_account_id:string prop ->
  source_storage_account_id:string prop ->
  rules:rules list ->
  string ->
  t
