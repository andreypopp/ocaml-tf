(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_datastore_fileshare__timeouts
type azurerm_machine_learning_datastore_fileshare

val azurerm_machine_learning_datastore_fileshare :
  ?account_key:string ->
  ?description:string ->
  ?id:string ->
  ?service_data_identity:string ->
  ?shared_access_signature:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_machine_learning_datastore_fileshare__timeouts ->
  name:string ->
  storage_fileshare_id:string ->
  workspace_id:string ->
  string ->
  unit
