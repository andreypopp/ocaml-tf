(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_managed_private_endpoint__timeouts
type azurerm_synapse_managed_private_endpoint

val azurerm_synapse_managed_private_endpoint :
  ?id:string ->
  ?timeouts:azurerm_synapse_managed_private_endpoint__timeouts ->
  name:string ->
  subresource_name:string ->
  synapse_workspace_id:string ->
  target_resource_id:string ->
  string ->
  unit
