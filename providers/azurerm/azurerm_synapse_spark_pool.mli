(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_pause

val auto_pause : delay_in_minutes:float prop -> unit -> auto_pause

type auto_scale

val auto_scale :
  max_node_count:float prop ->
  min_node_count:float prop ->
  unit ->
  auto_scale

type library_requirement

val library_requirement :
  content:string prop ->
  filename:string prop ->
  unit ->
  library_requirement

type spark_config

val spark_config :
  content:string prop -> filename:string prop -> unit -> spark_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_spark_pool

val azurerm_synapse_spark_pool :
  ?cache_size:float prop ->
  ?compute_isolation_enabled:bool prop ->
  ?dynamic_executor_allocation_enabled:bool prop ->
  ?id:string prop ->
  ?max_executors:float prop ->
  ?min_executors:float prop ->
  ?node_count:float prop ->
  ?session_level_packages_enabled:bool prop ->
  ?spark_events_folder:string prop ->
  ?spark_log_folder:string prop ->
  ?spark_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?auto_pause:auto_pause list ->
  ?auto_scale:auto_scale list ->
  ?library_requirement:library_requirement list ->
  ?spark_config:spark_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  node_size:string prop ->
  node_size_family:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_spark_pool

val yojson_of_azurerm_synapse_spark_pool :
  azurerm_synapse_spark_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cache_size : float prop;
  compute_isolation_enabled : bool prop;
  dynamic_executor_allocation_enabled : bool prop;
  id : string prop;
  max_executors : float prop;
  min_executors : float prop;
  name : string prop;
  node_count : float prop;
  node_size : string prop;
  node_size_family : string prop;
  session_level_packages_enabled : bool prop;
  spark_events_folder : string prop;
  spark_log_folder : string prop;
  spark_version : string prop;
  synapse_workspace_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?cache_size:float prop ->
  ?compute_isolation_enabled:bool prop ->
  ?dynamic_executor_allocation_enabled:bool prop ->
  ?id:string prop ->
  ?max_executors:float prop ->
  ?min_executors:float prop ->
  ?node_count:float prop ->
  ?session_level_packages_enabled:bool prop ->
  ?spark_events_folder:string prop ->
  ?spark_log_folder:string prop ->
  ?spark_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?auto_pause:auto_pause list ->
  ?auto_scale:auto_scale list ->
  ?library_requirement:library_requirement list ->
  ?spark_config:spark_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  node_size:string prop ->
  node_size_family:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t

val make :
  ?cache_size:float prop ->
  ?compute_isolation_enabled:bool prop ->
  ?dynamic_executor_allocation_enabled:bool prop ->
  ?id:string prop ->
  ?max_executors:float prop ->
  ?min_executors:float prop ->
  ?node_count:float prop ->
  ?session_level_packages_enabled:bool prop ->
  ?spark_events_folder:string prop ->
  ?spark_log_folder:string prop ->
  ?spark_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?auto_pause:auto_pause list ->
  ?auto_scale:auto_scale list ->
  ?library_requirement:library_requirement list ->
  ?spark_config:spark_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  node_size:string prop ->
  node_size_family:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t Tf_core.resource
