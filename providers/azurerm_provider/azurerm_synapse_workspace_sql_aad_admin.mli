(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace_sql_aad_admin__timeouts
type azurerm_synapse_workspace_sql_aad_admin

val azurerm_synapse_workspace_sql_aad_admin :
  ?id:string prop ->
  ?timeouts:azurerm_synapse_workspace_sql_aad_admin__timeouts ->
  login:string prop ->
  object_id:string prop ->
  synapse_workspace_id:string prop ->
  tenant_id:string prop ->
  string ->
  unit
