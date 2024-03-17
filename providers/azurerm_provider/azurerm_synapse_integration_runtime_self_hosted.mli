(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_integration_runtime_self_hosted__timeouts
type azurerm_synapse_integration_runtime_self_hosted

val azurerm_synapse_integration_runtime_self_hosted :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_synapse_integration_runtime_self_hosted__timeouts ->
  name:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  unit
