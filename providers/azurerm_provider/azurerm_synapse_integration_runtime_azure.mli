(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_integration_runtime_azure__timeouts
type azurerm_synapse_integration_runtime_azure

val azurerm_synapse_integration_runtime_azure :
  ?compute_type:string ->
  ?core_count:float ->
  ?description:string ->
  ?time_to_live_min:float ->
  ?timeouts:azurerm_synapse_integration_runtime_azure__timeouts ->
  location:string ->
  name:string ->
  synapse_workspace_id:string ->
  string ->
  unit
