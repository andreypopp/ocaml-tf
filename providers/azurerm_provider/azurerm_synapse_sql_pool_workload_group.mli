(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool_workload_group__timeouts
type azurerm_synapse_sql_pool_workload_group

type t = private {
  id : string prop;
  importance : string prop;
  max_resource_percent : float prop;
  max_resource_percent_per_request : float prop;
  min_resource_percent : float prop;
  min_resource_percent_per_request : float prop;
  name : string prop;
  query_execution_timeout_in_seconds : float prop;
  sql_pool_id : string prop;
}

val azurerm_synapse_sql_pool_workload_group :
  ?id:string prop ->
  ?importance:string prop ->
  ?max_resource_percent_per_request:float prop ->
  ?min_resource_percent_per_request:float prop ->
  ?query_execution_timeout_in_seconds:float prop ->
  ?timeouts:azurerm_synapse_sql_pool_workload_group__timeouts ->
  max_resource_percent:float prop ->
  min_resource_percent:float prop ->
  name:string prop ->
  sql_pool_id:string prop ->
  string ->
  t
