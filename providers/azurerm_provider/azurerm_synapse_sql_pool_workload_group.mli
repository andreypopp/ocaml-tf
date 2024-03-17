(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool_workload_group__timeouts
type azurerm_synapse_sql_pool_workload_group

val azurerm_synapse_sql_pool_workload_group :
  ?importance:string ->
  ?max_resource_percent_per_request:float ->
  ?min_resource_percent_per_request:float ->
  ?query_execution_timeout_in_seconds:float ->
  ?timeouts:azurerm_synapse_sql_pool_workload_group__timeouts ->
  max_resource_percent:float ->
  min_resource_percent:float ->
  name:string ->
  sql_pool_id:string ->
  string ->
  unit
