(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_datastore_datalake_gen2__timeouts
type azurerm_machine_learning_datastore_datalake_gen2

val azurerm_machine_learning_datastore_datalake_gen2 :
  ?authority_url:string ->
  ?client_id:string ->
  ?client_secret:string ->
  ?description:string ->
  ?id:string ->
  ?service_data_identity:string ->
  ?tags:(string * string) list ->
  ?tenant_id:string ->
  ?timeouts:
    azurerm_machine_learning_datastore_datalake_gen2__timeouts ->
  name:string ->
  storage_container_id:string ->
  workspace_id:string ->
  string ->
  unit
