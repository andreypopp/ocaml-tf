(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace_aad_admin__timeouts
type azurerm_synapse_workspace_aad_admin

val azurerm_synapse_workspace_aad_admin :
  ?id:string ->
  ?timeouts:azurerm_synapse_workspace_aad_admin__timeouts ->
  login:string ->
  object_id:string ->
  synapse_workspace_id:string ->
  tenant_id:string ->
  string ->
  unit
