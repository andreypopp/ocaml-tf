(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_datastore_fileshare__timeouts
type azurerm_machine_learning_datastore_fileshare

val azurerm_machine_learning_datastore_fileshare :
  ?account_key:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?service_data_identity:string prop ->
  ?shared_access_signature:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_machine_learning_datastore_fileshare__timeouts ->
  name:string prop ->
  storage_fileshare_id:string prop ->
  workspace_id:string prop ->
  string ->
  unit
