(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_role_assignment__timeouts
type azurerm_synapse_role_assignment

val azurerm_synapse_role_assignment :
  ?id:string ->
  ?principal_type:string ->
  ?synapse_spark_pool_id:string ->
  ?synapse_workspace_id:string ->
  ?timeouts:azurerm_synapse_role_assignment__timeouts ->
  principal_id:string ->
  role_name:string ->
  string ->
  unit
