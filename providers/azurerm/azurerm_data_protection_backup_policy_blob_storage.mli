(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_protection_backup_policy_blob_storage

val azurerm_data_protection_backup_policy_blob_storage :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  retention_duration:string prop ->
  vault_id:string prop ->
  unit ->
  azurerm_data_protection_backup_policy_blob_storage

val yojson_of_azurerm_data_protection_backup_policy_blob_storage :
  azurerm_data_protection_backup_policy_blob_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  retention_duration : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  retention_duration:string prop ->
  vault_id:string prop ->
  string ->
  t
