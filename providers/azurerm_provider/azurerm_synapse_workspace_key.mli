(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace_key__timeouts
type azurerm_synapse_workspace_key

val azurerm_synapse_workspace_key :
  ?customer_managed_key_versionless_id:string ->
  ?id:string ->
  ?timeouts:azurerm_synapse_workspace_key__timeouts ->
  active:bool ->
  customer_managed_key_name:string ->
  synapse_workspace_id:string ->
  string ->
  unit
