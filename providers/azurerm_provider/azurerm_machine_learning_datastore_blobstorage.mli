(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_datastore_blobstorage__timeouts
type azurerm_machine_learning_datastore_blobstorage

val azurerm_machine_learning_datastore_blobstorage :
  ?account_key:string ->
  ?description:string ->
  ?id:string ->
  ?is_default:bool ->
  ?service_data_auth_identity:string ->
  ?shared_access_signature:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_machine_learning_datastore_blobstorage__timeouts ->
  name:string ->
  storage_container_id:string ->
  workspace_id:string ->
  string ->
  unit
