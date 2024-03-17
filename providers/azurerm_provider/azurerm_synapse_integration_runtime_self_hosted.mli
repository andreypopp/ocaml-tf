(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_integration_runtime_self_hosted__timeouts
type azurerm_synapse_integration_runtime_self_hosted

val azurerm_synapse_integration_runtime_self_hosted :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_synapse_integration_runtime_self_hosted__timeouts ->
  name:string ->
  synapse_workspace_id:string ->
  string ->
  unit
