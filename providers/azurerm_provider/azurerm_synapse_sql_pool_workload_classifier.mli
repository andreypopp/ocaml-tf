(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool_workload_classifier__timeouts
type azurerm_synapse_sql_pool_workload_classifier

val azurerm_synapse_sql_pool_workload_classifier :
  ?context:string prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?importance:string prop ->
  ?label:string prop ->
  ?start_time:string prop ->
  ?timeouts:azurerm_synapse_sql_pool_workload_classifier__timeouts ->
  member_name:string prop ->
  name:string prop ->
  workload_group_id:string prop ->
  string ->
  unit
