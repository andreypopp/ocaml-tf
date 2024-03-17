(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_role_assignment__timeouts
type azurerm_synapse_role_assignment

val azurerm_synapse_role_assignment :
  ?id:string prop ->
  ?principal_type:string prop ->
  ?synapse_spark_pool_id:string prop ->
  ?synapse_workspace_id:string prop ->
  ?timeouts:azurerm_synapse_role_assignment__timeouts ->
  principal_id:string prop ->
  role_name:string prop ->
  string ->
  unit
