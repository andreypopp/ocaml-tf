(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool_workload_classifier__timeouts
type azurerm_synapse_sql_pool_workload_classifier

val azurerm_synapse_sql_pool_workload_classifier :
  ?context:string ->
  ?end_time:string ->
  ?importance:string ->
  ?label:string ->
  ?start_time:string ->
  ?timeouts:azurerm_synapse_sql_pool_workload_classifier__timeouts ->
  member_name:string ->
  name:string ->
  workload_group_id:string ->
  string ->
  unit
