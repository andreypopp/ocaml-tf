(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_sql_pool_workload_group

val azurerm_synapse_sql_pool_workload_group :
  ?id:string prop ->
  ?importance:string prop ->
  ?max_resource_percent_per_request:float prop ->
  ?min_resource_percent_per_request:float prop ->
  ?query_execution_timeout_in_seconds:float prop ->
  ?timeouts:timeouts ->
  max_resource_percent:float prop ->
  min_resource_percent:float prop ->
  name:string prop ->
  sql_pool_id:string prop ->
  unit ->
  azurerm_synapse_sql_pool_workload_group

val yojson_of_azurerm_synapse_sql_pool_workload_group :
  azurerm_synapse_sql_pool_workload_group -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?importance:string prop ->
  ?max_resource_percent_per_request:float prop ->
  ?min_resource_percent_per_request:float prop ->
  ?query_execution_timeout_in_seconds:float prop ->
  ?timeouts:timeouts ->
  max_resource_percent:float prop ->
  min_resource_percent:float prop ->
  name:string prop ->
  sql_pool_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?importance:string prop ->
  ?max_resource_percent_per_request:float prop ->
  ?min_resource_percent_per_request:float prop ->
  ?query_execution_timeout_in_seconds:float prop ->
  ?timeouts:timeouts ->
  max_resource_percent:float prop ->
  min_resource_percent:float prop ->
  name:string prop ->
  sql_pool_id:string prop ->
  string ->
  t Tf_core.resource
